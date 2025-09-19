Return-Path: <devicetree+bounces-219294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6EB89E5A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E26F8A04BF9
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D89E313273;
	Fri, 19 Sep 2025 14:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUjREkX7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71DF221F13
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758291828; cv=none; b=t/li/TIyjtl5NBa1Ww7Uf4wGEcRpbNqcD6yuUBJnsewqlySSs5v7kbxOzVlt6NB1VmOU9Z1NikslC4r2l0bDCwFGU7kwVswrtH8d/ZTHRxlObKGOlP8jAEpuC4eB64vY+4ktxD1Q/T3LthLIyBAc3UohjvknpYkcnl/9F/wJG8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758291828; c=relaxed/simple;
	bh=WrctqBG5yal8gLgqGrzL6aanaaRl0HBq6tsGt6dAVGE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fPKM7LQ2xEKxhYzc3TNnpUnerAidYbB5vf03PiM8w9gwyAiapgjoBHYZSgA/odhpJ5UVw4iUAPPkcqbgDNTs2mRJewt2w/hEoQfTIkerGdr45twbymkzZgJbxF7mndEKMJ/5GXYmVXF8SqKqX9t9uEq4ovBmTAnzy5rVvMDTr1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUjREkX7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JE6GrL018237
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=H0MOngd9nnOaMlhiVp3d7MqH4YoWgLyveqG
	b+3qi4Vc=; b=CUjREkX7e+91P4hZSHghPs8G3g49mWfx+bJA8NQAcxe5eKd0wmP
	G8dFbKIhCur0NciKhFAQMaPN5ry1OeyuvUZFqt6DqQxqACQjK5Oly2zW9LuHH2OD
	kJOIbySvNFsxAMol1MGiHnGoeA4PPk/vtGKQ1wqlOnQ4ySE2IFNtAejJzyYHdmtM
	+bu8HMH10Wv+JG2jux7sDsW53Sk/kKlXbTJUeNxUB3VxQTY1tmdbuxZmj5KTxwXV
	yrlrYvKmEXHwxak3PN8c4vtLa5LLisL7+W11gQowbqqIBsz66YT3i/U37/nXMUxW
	f5thC3XPz8Ugv+PE9VLq7p7BIWWLN3SAblQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwjpbm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:23:46 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77ec1f25fedso846070b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291825; x=1758896625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0MOngd9nnOaMlhiVp3d7MqH4YoWgLyveqGb+3qi4Vc=;
        b=ZJTMTzzWEkEM08Bg06T/eXx755szaNoewgOOW4Y870+kyDh87HsOvMlC0I2Cg53Pxg
         V2hdi+SrrU8HpeHnV33pyzxsewIUdqVx8NVBtd/cvXQNtKGfkIhMtFKe+F8Dan6ehhzF
         wG7frC81BDR1y6ovbyEtuViJcEj/dAAoWWmVuojD8CTd33oHQpQo3OHUpgtn7zDVevTr
         lV0JY9RagmucsoaDvWGVU0UyLaNxwUmZ+uHR6FzpWUYiLu9jnhbwLAdZS28LTjyz8FXC
         jSxWzB8IJnwX4HTzi9gZ811QhicYzkfCwKhVolnOvHckERZuuw5Vw6NwrTkiMiKvvZQr
         EyUg==
X-Forwarded-Encrypted: i=1; AJvYcCUhNr2uQPdufDpaOi7dmmOpOFyEhctkXkFHvxxmSDE2NyKTVXMAIdQSw9b/osPQHZ3ExUiJ7Zb7Kb2H@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/XM0ZOHIQBHqJsoYgDNawFStidCImu38RJmnCDLntxWEOGJLe
	RHmre3fe1tM5WTZM2qvszUQ5l4Gev0iq3J2iH2aHQMZ9SCpnNlY3QboDj/mJQTf3RUgflsT7if2
	SCmkDFkrxAxHFT1rQSvC/I+nED7Qk7QFxUCec83lcyR954U3iQJRTlEulrdWuXkfh
X-Gm-Gg: ASbGncsksiMjLQ0UIxLceAJ3hzt7Js7+kWU9evhBsVYpiJOrEwiD7J1AdUlEFGwAayD
	NBQ9gCmW4/5+U2ykyu7tsFTX0n90U3R6iRIL2YEqbEB6nIzEg+BKxgFd84Ru3uImIpIlFaFPJkn
	vtuSjqMHo2TRepqT1LQeBFWRKOfion50FADsmP5csipi3AJOvqY4eYua2myl3Hmm76kFNojuut+
	jpiGavz9jCqExUwzsuIBza5F/T+7S2EzqBdXNJwTW7X06WSoyuLZdGjcuokE0840V/aha5DOoGs
	n4xEj+Vav4oC9vwrKXE90CjrW9bo/BNQhQOJVPOfEjixV3GTSGYoYealDsq3h8sKCGn+/QX0CwY
	FlHxLBTZCtygjR8cCdo9u9J0wgrcO9tYIeaW9v3wA4klWVA7TfW5uXCIn4JEO
X-Received: by 2002:a05:6a20:7485:b0:262:23dd:2e93 with SMTP id adf61e73a8af0-2923a323a25mr5577754637.0.1758291824898;
        Fri, 19 Sep 2025 07:23:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsFVhcjm0X3oNhORINQVqZ5ZFstDem6nqXS91CKPxgvJ43nQqgJn2edyW48rEB6IkCNBZ2ng==
X-Received: by 2002:a05:6a20:7485:b0:262:23dd:2e93 with SMTP id adf61e73a8af0-2923a323a25mr5577720637.0.1758291824430;
        Fri, 19 Sep 2025 07:23:44 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f097b60e7sm1335147b3a.1.2025.09.19.07.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:23:44 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
        mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: PCI: qcom,pcie-x1e80100: Set clocks minItems for the fifth Glymur PCIe Controller
Date: Fri, 19 Sep 2025 19:53:25 +0530
Message-Id: <20250919142325.1090059-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cd6772 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=UB6fr0ZYtwJW8fNbdQgA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+MtiPuyd5g7t
 3IXgTa5ijfGTs+iSEW9shuiP2QGNwM9XGmP+JVHsKNU/olEIsi83gL8WqXoYuJbOms6O1frMV6a
 +W6YplKZrK23Jc3wNYVBq8W2XCyk4hS2EWx4WwDH8TKg6Pxkf+78lBjvKhlqnx8K38zUJNXWjuH
 tXaNCjXM34eUSaHSNAD2lLFGYUjYtbI4NyWO5NIXKtUh0+CtmChOzVVwcgURgmfVy4nQKKASR+9
 Ws+GwOgvaHOF0yMRHzW0Be9OHEuLH0EpX/t4yzDJ4Zn6mPVht5DiVvh9kGLjLDq96YGO7qtjeuP
 85c1ioGWWfR4J1MeKELc9+F1r9u0CjRUt5aF2i+NRczVvj32vcsukyg1qhc0gOrHj33x1hhLm6T
 n95LNv8H
X-Proofpoint-GUID: kOv6uWjv9mSrxgN7vIWZXUwM-DTDuYEV
X-Proofpoint-ORIG-GUID: kOv6uWjv9mSrxgN7vIWZXUwM-DTDuYEV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

On the Qualcomm Glymur platform, the fifth PCIe host is compatible with
the DWC controller present on the X1E80100 platform, but does not have
cnoc_sf_axi clock. Hence, set minItems of clocks and clock-names to six.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 257068a18264..61581ffbfb24 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -32,10 +32,11 @@ properties:
       - const: mhi # MHI registers
 
   clocks:
-    minItems: 7
+    minItems: 6
     maxItems: 7
 
   clock-names:
+    minItems: 6
     items:
       - const: aux # Auxiliary clock
       - const: cfg # Configuration clock
-- 
2.34.1


