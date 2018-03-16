petlinic-alb:
    Type: "AWS::EC2::SecurityGroup"
    Properties:
      GroupDescription: "alb used by end users"
      SecurityGroupEgress:
      - IpProtocol: "-1"
        CidrIp: "0.0.0.0/0"
      SecurityGroupIngress:
      - CidrIp: "0.0.0.0/0"
        FromPort: "80"
        IpProtocol: "tcp"
        ToPort: "80"
     
      VpcId: !Ref "petclinicvpc"