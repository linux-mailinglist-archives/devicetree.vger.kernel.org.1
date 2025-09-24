Return-Path: <devicetree+bounces-220964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE72B9C9E4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 99E594E33C7
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4DE2C11E6;
	Wed, 24 Sep 2025 23:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZF5Jd/xX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4981C2C032C
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756920; cv=none; b=r8FWXXgWz7/n/9MpJMXBZbnU5z8Db1xOBt/WiflbP4tX+rJLppO+5Etjpn+gyorxe29T6B2F5S3MUSf5c/yxs2aSwjbIqAW/tfiB4HuV8/2bWKFUpaSne8Ms/93wEcsCvZwXqUMaCSs7GUEaX9Oq2rbtfrJs4BWjkjuRO25WrFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756920; c=relaxed/simple;
	bh=1bXx4X8K3luI0CC7vMBOPOroIotF0KmdCwUlUnOIjlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=trfEgummMTR7hbiY1hAy2WokRy5rn4/Hs5LymcibBJ6Rv+bFv6vv5y1GYsOhxsD8snihb/dyBJMg/wYhxJn7eHtvWTsDlSAKho2/hpRsE5tR42+k09O9cLd5SBK6SsV3Wmkcg/ZXROj/JwMkUXbm++3ZoOy71ZdBjGcp640kUCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZF5Jd/xX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCfvbc016528
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qsRs8ls5zJtoYnaDklfCGZl0u7nCPvApwl5lvQLG0Yw=; b=ZF5Jd/xX/VX0t8CS
	2PWhZuR/oVUw3EI2nBhXUvDrxzJaDI61R6w5++96N0pk8hpuy/lT+HHB2WAa1cKx
	ScXsbitD5SsGqcHNfKnd7/Hpr/ydo3GUcOLWoZQTHhQTefJcjxzxffDs0fEgHxBO
	4rmDbOJd6jEnsLRf3r9ZXn674S2sUQqeNYB2efXT818iEj29/sFG+fil20dD7skL
	8C9HTnFsoLWhybuM3PVSlIdkTvqdgYKyyoY5PEmySTS37oyBL8O7Gp74MVHqVnMc
	V9WlBQ+QRfro1du33zmH0yi4dDfUuwu5DjNNYOEAqEXB1DfqZ4vyAs8lDuW/H0Sd
	n68w7w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhv5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5535902495so255692a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756912; x=1759361712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsRs8ls5zJtoYnaDklfCGZl0u7nCPvApwl5lvQLG0Yw=;
        b=DIiHhwhmQaK3nZ4IhYNfJmElhjQ9ifXHKbR0SgDL0ItW7KiPc4a9a9ZZ0H0R98UL1c
         j6jLdeqIjHSgtkhh48J6+hF4mYDUdh2MX1TV5GrjQqo1rtJIIyi1GuOTMBaG9f5aYApq
         z+IJ8CjJPDUu0NyU6pCw+/P8uscqOmlt+DiHC/Vh8td4XuvNTgZqQf5oMiN1fu5K0VMc
         6GeGR8/iYk4iWJlD/xA9LJtqzbt+Eflukd8MnqhR8cbY+VyUzGANoUeX+dSVtybGD4eJ
         zBdc3lWhs+S6z/damvYrO8jYOB5DY9EA5Q9yXKlKyueZLsSAja/JZ+8f1zC8h9Bd1fRv
         ftrg==
X-Forwarded-Encrypted: i=1; AJvYcCVWtItmVYiDDm0/qNt4sqt+irIu2cDyGGqx/0OdSOE7sneV2dsAj+/pDa1CjAFf78GboFpUYFQ3ZIkk@vger.kernel.org
X-Gm-Message-State: AOJu0YxUdN8niVTwHVnie6KlQ6tRhtFkU+xru0DSRygzwBqV7oc9pldK
	N/DTS7FUT9HXsJj9+2Tx/m2Y/y9Oka01bdmtaAedjXhsfav4OdGJv+wZJuy9IP0piKjhhd8Yilg
	zfwD5NYXR4pLPrm9mB7eOaGeY0TNhBmCL+sGhKuXP4VZgAFxSn3+D1DEE4mn7GBHE
X-Gm-Gg: ASbGncv6rUL+4It6IyNNTJkHzhXEh6F02PmFdQ0f2VrjncL70fV/qbvj2vSlhvfoWul
	b/ikmQGv7ukWuVfGpvcy507iCSBJTjcoJ9m/SZFGpZYs8xIhin9WwhLY20m6ySWSt5ShrdpnH8L
	sj+/Q1trNoXC/Q0SqDG/YvFhxPJiBuOm6HHC6JAjtpUdKPD1T4SV6HBTbzYgB4w5BQ1kXtSU9F0
	M7rCcS2hiT7JtxdyL/TOAX3dPFgEUONPaWOFCURSRAWl9ufWQm+Mva+xV9zPPKvJ+AApEbon+rW
	/lLf07cjSEA274tFn2ssVc/rerutnxwytXhVc4u8S72s0VeI3XSSKic9mf57lyN8fHcjlIPvQG+
	ALGrjJTmzyaJkWac=
X-Received: by 2002:a05:6a20:549d:b0:2df:37cb:6b6e with SMTP id adf61e73a8af0-2e7c131dc55mr1576801637.21.1758756912064;
        Wed, 24 Sep 2025 16:35:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGpAEuz61cvT2XhW4ukIQOiLZa0lY4y1zPa4PxH5HTxcEkQBKtmoEjAu6kkyiQl93f/pSVRg==
X-Received: by 2002:a05:6a20:549d:b0:2df:37cb:6b6e with SMTP id adf61e73a8af0-2e7c131dc55mr1576776637.21.1758756911641;
        Wed, 24 Sep 2025 16:35:11 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:11 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:56 -0700
Subject: [PATCH 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-usb-v1-3-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1499;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=dp2q1UnWq2Lp4eoHzNa7ZpgQgVJ3NSAs/37jv9/dDmU=;
 b=ZSbenoW+opMmdOZe+iejbQ9oTpdwsntbX+yvALQI42r6ic0SoOqHbqvzWDNjnLh57Jf+Ltcp0
 S9QFXqsfwFzDnFaokXqdCkDODuQH0rbhL0P7RXaNQxN/BdSnF4F9IlA
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d48035 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=c8SvkZ6Bq0hLoSk93noA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: y0fwiITNL7ZGe3ulS1cwcWiwCC53ND3W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX8QLgGjSeD03j
 yjlIwvthQsUWQh6rZk5HwMh2ER0DN7EWGvCAaC2+3R9CfQ4+KqzAflL61XL68k6SDrXCuZpJVM3
 72KJ+SnOJ3fSZwiVaHR6M1QOxkfAJdqryaPb7jz7/7QFkSrXZychb6BxA1Ya7piNRzp7lQR+8Mb
 suqtRi9g1BNK+/OZSIuRvrZly4My9BZXKCLohLaEsV23WnGiQJw3d0zxI/1YImc8PJMlF7vEm8N
 wNjUK02A4nWEJbMwamtCldnFlXQGzeGIK4dB/+jjnXe8wPTvEIriF0d6SPWoVTR2vhumv28vDDi
 2ID/Lxzw0NExNeVMNIrIAi36Gm9Hes2rbQ9J6cReasSwtvna1OiDC59c/TjFyqiECYOJPhMDwwb
 rvR3ImVg
X-Proofpoint-ORIG-GUID: y0fwiITNL7ZGe3ulS1cwcWiwCC53ND3W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Kaanapali uses a single-node USB controller architecture with the Synopsys
DWC3 controller. Add this to the compatibles list to utilize the DWC3 QCOM
and DWC3 core framework.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..88124149142d 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
           - qcom,ipq9574-dwc3
+          - qcom,kaanapali-dwc3
           - qcom,milos-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
@@ -199,6 +200,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq9574-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8953-dwc3
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
@@ -476,6 +478,7 @@ allOf:
             enum:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3

-- 
2.25.1


