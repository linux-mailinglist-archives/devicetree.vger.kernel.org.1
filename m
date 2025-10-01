Return-Path: <devicetree+bounces-222919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13048BAF6AE
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81BE3178C1D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AA5273805;
	Wed,  1 Oct 2025 07:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o1vEMLjy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB9727144E
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304051; cv=none; b=ubpWyDdH7M+7J2fUUo/CCwv3K/gtY5WU10yIywfKnpIlCrge6D/pZXQ80tmVGqkCmmgIx4/dJGHnJFqrRf+nsV98V4sS91gKR2Swqa6365Qx9lrUevuSEpOAogRhY8kHxvU/MDCb5C4/+jc7QfV5UmP7D7Ajtcn4LlNMmzLdbxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304051; c=relaxed/simple;
	bh=LzYC1jG3vaEWlmKbl0QenPi4ZGyQJHOiHpelOB+tbiM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Czo4vAmQbcL8BPGCO1bygyUk8n1gFYeSNyyj3O+Dl7XcdMsi0V7PdBx9FrtjtM3C/O2F8H14nuZ20vUV4ImL76DLwGlTA52dTat9IhT7X2xenDL/BpmSORSbMs1oo8QLPZL8sGkY4BWRuzV+P6r9Fm1drCaJuwzf0eai3uatzcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o1vEMLjy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UKqpKH027451
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 07:34:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=pp07pEUrCGLz
	DIs+Sa04jo+3a7TQCSPNLP1KjYGlBDg=; b=o1vEMLjy3GoDGECoKyxvayd5gxPL
	UHGXr4GmoC5uLEJw/DWlHeNMn2IJnVPvr2O4hGxs4cqt55BkmvQonxMgC+s7zn0G
	QDHE0KznlHYTEDPqXgybCTjDK2a/IIbZ8E7w11FtB4Oa2w9TQcH1hnGLEaKBa63m
	8WxTGeI4nNH3v5bHq2aE0g+bwc5KXSqHw7fAlbcjabZ97RHBtYB6zQMltEVhUAB+
	gxWsgqpD2PQqzPuO4OToWD8jevSIr859zslI0E+gIV8PmPm9IJkddIcS43fJX/4G
	Toj2kuoVHMU220EopoXxseIh/uYJ80pz2U4cj3F6FfasJ8sqd7O3wAFcfA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851kqcs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:34:07 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32eb864fe90so9701434a91.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:34:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759304047; x=1759908847;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pp07pEUrCGLzDIs+Sa04jo+3a7TQCSPNLP1KjYGlBDg=;
        b=CnC4McRB6FtzM6Ak9izxre2EhaDPFqJL++GvHJDhgMpRH+7Kjz/SCS+4MCOJz57e6z
         Cp3EVk8IeiKTCN2ukZTZ/fXIUuToVR+7KxzoZsqp8Wz21hMDg+f41UMjBb5vcOeRhv3A
         1Jqsn13F79COSVBXlPL7bFvlSX3RSi+pv4c66Obgsn82ybXA9HjnBhShtqT3Vpg1Nybi
         zFmPqkQpKfxcjJt4MLZjz4TFhSH9DpXdVirEkLg9H2ITpo0l241uvRiZB0T3zyt3FGu3
         zi8oHlPQmTe7VRM5JsZpfk7KxHyCJ7D+pldMYhjxE0K1L9f5CPWTUB7Jv0zRMCJm9Nan
         giew==
X-Forwarded-Encrypted: i=1; AJvYcCVCHoEYHGFEeJpt2CbCYCW/CHth50tp1nECykSYjMStex7RoGldpO6W2DXmwjspq3YRUJCb/GdoyjJY@vger.kernel.org
X-Gm-Message-State: AOJu0YzPi5fiVfejrNDF/NwBI+iBHtId6WFvX10mh6oocQXlCTAn5yk6
	ufaBpOE910vxcIjguOQ2AB7u05nuY3Jk65LqeAsu+pLUGSqQv6RtfP/dDbHyg8k4HCtyp8rMOKZ
	WhoMU/Wrq2gLnkw/KNvleRusgxtN7lO03dLfye9c1m/n3/fDY+q1ylpdzZZdqyJYK
X-Gm-Gg: ASbGncu96FCpuolTf6R2ChqNl+NkF7UUTtbTP1a+xHy1mB+/xYiJehy83j5QINJ9NOb
	yt6W5Tk/pgU7Prx1mDts0upyHtfmKszNf9KwbI4q3qylZMj2nsQOtTK/WIa1zo6UoNB4C+v5knA
	FjBCJd1kkBO9C34hYYjb3Ij9/ibYvm8jSEAih0n6KhkYn4Qckbq+gMgrINeJKFvVq1iwAKwO/5/
	Jdx9TaIPL9HKlupxhBHzRUb/ANFAPtt6D8WYk8ZreRV9xs2iiXTiCBQUnCNb1tZeAKaOvP6dldN
	ZEfHZjibg21YK17BvarbkIy+hlSRsQNYpRjjGPNdpkzq8BYb0lMJm98X+btuvKkdYF5qsOk/O23
	fkIc=
X-Received: by 2002:a17:90b:3850:b0:32e:e150:8937 with SMTP id 98e67ed59e1d1-339a6e2821dmr2984154a91.6.1759304046905;
        Wed, 01 Oct 2025 00:34:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4wCdRDYc1kF9kYi2y0x882T/fk3TpUqLUiTJTCRQG5Z3IT69LYgUd1RC3VsNXoEp1qGQSAA==
X-Received: by 2002:a17:90b:3850:b0:32e:e150:8937 with SMTP id 98e67ed59e1d1-339a6e2821dmr2984111a91.6.1759304046398;
        Wed, 01 Oct 2025 00:34:06 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6effe77sm1642127a91.17.2025.10.01.00.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:34:05 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Enable QoS configuration on SA8775P
Date: Wed,  1 Oct 2025 13:03:41 +0530
Message-Id: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dcd96f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=myv7mu_oF8MPm2fSyvIA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX+u4tqXHvDdjQ
 G3fZqRWM4fplIeNkbpQzjGPM+tlohGarmfqsTZYnp72jFfrBoGNuKjXd5UnUKASJjOHli27C1Ja
 zL1RfRqM2trIEAnG3tsVYaxn95k0lJXjaZb3kajdsvwFbza1cs5MWz1teXbpt1zUVJCK1ODIk8J
 QRHkXNNOoAWfVvLPMWdqqYFSEnTeVkuqmSLEtrXDowVy3AJT5Ckf+yCGbW0sdx0J5loV/gt0vzt
 pc3sGxeKf7IUhxDSyo+5aKvnMeiG05JQGdc/G0/xQ1c6laTvw0PsVhBpZUd8Vu2dppPb6CM2NON
 soVHmk/GOj7TfUicYPYMfLmz+PaGoWpmvbtnOGJWKd0bu4xIVdyu+k3jJgOcm8hqVxXKOtoyXSU
 Akwj0jkVLsqzU3JrzgtfYNxnFmEefg==
X-Proofpoint-ORIG-GUID: OdEPcOo2Hi9QDOmEu2iX04_99sP5gtQS
X-Proofpoint-GUID: OdEPcOo2Hi9QDOmEu2iX04_99sP5gtQS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This series enables QoS configuration for QNOC type device which
can be found on SA8775P platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip). 
The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Changes since v1:
  - Updated 'reg' and 'clocks' properties as optional.
  - Removed leading zeros in devicetree change.
  - Updated commit message for binding change with justification.

Odelu Kukatla (3):
  dt-bindings: interconnect: add reg and clocks properties to enable QoS
    on sa8775p
  interconnect: qcom: sa8775p: enable QoS configuration
  arm64: dts: qcom: sa8775p: Add reg and clocks for QoS configuration

 .../interconnect/qcom,sa8775p-rpmh.yaml       |  50 +-
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 163 ++++---
 drivers/interconnect/qcom/sa8775p.c           | 439 ++++++++++++++++++
 3 files changed, 579 insertions(+), 73 deletions(-)

-- 
2.17.1


