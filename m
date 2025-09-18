Return-Path: <devicetree+bounces-218877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74992B853A8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C72417E62E
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8570B30C113;
	Thu, 18 Sep 2025 14:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oC3361X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B632C15B1
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758205085; cv=none; b=JgXUS6sRvyupJJxJ+xKhFWkxQQUA4HmI1gY1NuWBI+VG7SkwDbuN4k5TWYMP5qA/mB3R7cAI/FQwlBizvBodBliTPcVePS6a9wT6HHNfB0c9PELtismenTw7aStGRX8xfCtF5EeQOGXLrov5MnlBHRUZ1NfEo091G8wvgmIXTWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758205085; c=relaxed/simple;
	bh=FeBX+HSSs9IEe71buzXePciBnj1ZprF+m2AhT79/71c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YdXBPgyQaan3p4RjQkDhK+WHgCWEI2yQW28jVdQ59Y3MIfiTOSXjLH99TAuZ75qsxnnea4By26s/dC79nQac4XADfoyJqvfWYedywqYbGapMLrAoDRmGmzZJWXxb561uqH+4otkwWj7uL/rXr6xWHmOPkPr/5uMpYyb5YAnGglY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oC3361X0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ICXQOM017951
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=gbUpwgl2gVJtGvPZLoqAOrcxVHhW3Mn4hcy
	2C7dvYMc=; b=oC3361X02xe8pa/PrFejyspvCbv/WSukDoQ9yoYrMYfTw6N05ps
	gnTJoWedS/pok+mX97DZBaGKu9kMEmDwWcI3sDOkON6/ibd95rLmbkdNuB81hJpS
	QxHhAP9PEdhY4cinIGGZcI29g3MM9zzvrsAJ4aWPidtRUEYYu2F3M8UV3IVP74Y7
	LiLi9u6EKQ9bZmg+uZWhvua2bX5PfJWjEpHloU8TIeiY3bhZ/sYr9ySA7ZhjVG55
	DWf3oxjD6emZWdZSnpi5VY233YixoTYZDToNLwhyMr4o9lUhaNCR+1o0ziPkhvn7
	wf784iAyyavdbhtXVb7R8UOBSsiOxAXeRhA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4982deb6m8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:18:02 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25177b75e38so13754485ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 07:18:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758205081; x=1758809881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gbUpwgl2gVJtGvPZLoqAOrcxVHhW3Mn4hcy2C7dvYMc=;
        b=U7AVp7Z9xXfKsJdoVd5UdhEhldz8NiDyd9iYRegz5fJE3Iw2/IWzcwxoql0IJbutbm
         LZrV74cfXC/wR3PnjYkA3KPgoKuE5vCcicRrrL4Uo0FFyahTQZphYDe6G0ZQ6PttSnwY
         N5p0ZqzdgOE7Uxf+F1PxfVfA40he/N2Bfd+6yq9HWA1G8K3rmbckFWvVGMm4jtfnir65
         vCRh1jxDrHcQv3djr80g4OMUrd37heubmtiHZ5bdJOhs29RkNnz8e3W/ATvUy7t+FgYh
         Spud70v1BApkTjBVSv34mulIKVjWDykluhM0TBbK68QaW4XXofLH0y/DqFCJLyAnxjcY
         i4NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVw7HX1fEggl5M/ghpFYqCNrA6oqxPj4FXFdpWlJOSlSo2ySk+eUkVdFqY/KOCjAbWVO3F3OgU2daO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywal3O7LOoxAI1O9Oj0z+NREXIpbewwC7O/UxnnIXA1SrvZRJ8o
	IvR1pCGUMnFYDjwiIjTqg+2LRYUlYXP80rgGJJRuYLCYUoIeNYiJOWR505j5HGd18ZIvQVFzqyE
	NsjHqiY68nXNEsyJgDgqdrA77/wYnlbvtO9bdTRRJ6Nm7MapSWiYEqOAEg2rJRe50
X-Gm-Gg: ASbGncs68upD7f2t6P+9SsY54gBMzKoAgA/ZEdzoFv/LB0AhOINi6bvLpBCzA2TVWyW
	xSgjOzmrVv2tSo2fxMLlzEVEfsFohisgMs1Lcru0NFhmiE1nGQgnDS7enk4Fb98YVQjyXs+4G0+
	qwYNLvMKbG/CYoO29DgHwDg+HSKgT8sRFfbN16jL9zopVIGy76K5uGRr+Vg93oBriAURiRaK3IU
	BJdtDlmmFmm0HWtE4kfjD7RbZ3lmvHk1UI5HeutMNFPARWk2+f7RQ1yLiH5kuktQJioRIyOT9gS
	tVcuvQkxrIukBp0VYBKtwS3BP4MBW3y6fZ4Xh6555fGrFX4w8IXBvP79MxrHn1Vgb0UAubcdb0x
	CdTDJ1/NyQVuC9I0xaWIjzR0388f7ColB21kyle21rtahU3hJIkgqHAYhdzZO
X-Received: by 2002:a17:902:cccc:b0:24c:6125:390a with SMTP id d9443c01a7336-268118b95cdmr67967885ad.10.1758205081258;
        Thu, 18 Sep 2025 07:18:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMTr+Hviu5xVz64sb+cRHSIYzwwRe51hCX57g4JuYl5QlZXywoi9MT8CptGQ2hO9UuNMtKlg==
X-Received: by 2002:a17:902:cccc:b0:24c:6125:390a with SMTP id d9443c01a7336-268118b95cdmr67967445ad.10.1758205080726;
        Thu, 18 Sep 2025 07:18:00 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053da4sm27692365ad.20.2025.09.18.07.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 07:18:00 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robimarko@gmail.com,
        quic_gurus@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: firmware: qcom,scm: Document Glymur scm
Date: Thu, 18 Sep 2025 19:47:38 +0530
Message-Id: <20250918141738.2524269-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YfO95xRf c=1 sm=1 tr=0 ts=68cc149a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=DJLe3x1ex_q8U2ZOUMYA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: kX-KFicN6rj1lqVLk0lVK-HJ5cumCgar
X-Proofpoint-ORIG-GUID: kX-KFicN6rj1lqVLk0lVK-HJ5cumCgar
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDE4MiBTYWx0ZWRfX7h3NPOSo7Zo8
 G1ze2g+BckeVftJ5bGICq7InM+Az7HXcmywaKTWbs3ZSUdD8ij5iltvgbOAgq6pDDOUdFFCU3/c
 Td0YtWBoZnA0L9+uEaR7RdyaW6jvUSy4VdPaVPlt/xPYhT6+RFOJLZIu7Butff9tsSAGqanYYWv
 4YqumENKFYWz+vZZ4XchsNO+njQ/LvmUTAC2pavqDZ1csf7jHcT6w01LFt8lLkkaDAOeIzo60T9
 yX9c+Punu5wPgkrNs7Leu7kWKRx4QNrdXvjObQLI4tAeDYPWOEmKP56MxLcceQqQ47KYpMsYgKR
 OrLKMr/daBnooBypqZ3AaFkKt4pE0MljgpPgWi4dcqjk8kXTCBxJmRbL4b9Z2vHUphhvXJrVplA
 P3cXc6ki
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170182

Document the SCM compatible for Qualcomm Glymur SoC.
Secure Channel Manager(SCM) is used to communicate
with secure firmware.

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index ef97faac7e47..38c64c3783f8 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -23,6 +23,7 @@ properties:
       - enum:
           - qcom,scm-apq8064
           - qcom,scm-apq8084
+          - qcom,scm-glymur
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
           - qcom,scm-ipq5332
-- 
2.34.1


