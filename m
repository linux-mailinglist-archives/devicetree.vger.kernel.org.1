Return-Path: <devicetree+bounces-230999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A68FC08767
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D792318943E3
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127201F131A;
	Sat, 25 Oct 2025 00:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkE5zmEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D461EB195
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353279; cv=none; b=OxPawmeXMpF+FgjQv3wYVhrgnFsT42ZeFvbTlRI0ibqemCvO3xgHWTbYMi8eGnRM7VAa5BEohLusgKSQm5/HZRl+MK0CNbM7hu2XvVXTV7pgVh7IETtrJmc0v9+8lQb7x4lje6yJIDHg7uBLT5KQ/EMhwMRLqW/llBc1AUF35mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353279; c=relaxed/simple;
	bh=1Ss4IHvUR0Qc/qOVO/ljfPe73HHlUmVAfb94GZe7OO0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L48ebgzq4S9gsnzsN76YAMhTEWYb2EHG6Zt9XFICVpSHPNKHHdiQcJf4e+WNk2HNm6ULZbcQE5M/QXnjAsADj5XEubtaIsbHcIMiv7Z+60zF2sAuf2qLsa0Wv88b/OXttmWp175ZUkUDX5HZDexZBT73J6SoI/+Z8RlbhWMtKaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkE5zmEL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lQhN027246
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F/a1kob5ZcmeRBTwqpB3Ugws3u5wdaGjY6oAzB1/mpc=; b=kkE5zmELkqhqNl71
	yqLxN9Msfga82XSsXF3aU8T7ff1XDbEeM+1gwcfCFQFj0iVurFJvvdwxOlpmArFe
	chMsXHXrcAlq+Dxkhm+PkCtLjAiTlafamNDb6xhTwb9DbGsuG7jBx9XK3X/OwE3z
	TiXOgw/jomfLlB3Z90HFPW6AaqLyjzRINdYeyEd07P8oFiIWnxc91vAWYAN5924N
	MMvsEo2Gnij/VoRc4xkklI3qmEIp+lkZZbdSyear8bQnrRfNkwUbRlgutPlyThAq
	khb4N4MNPxKpvcrctggsge+ZRndW4gqeQmeKUEBKiU3M0/yUPKQ3xiMZvOIvX+1s
	yQuL2g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jdh4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:56 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bba464b08so2460953a91.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353275; x=1761958075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/a1kob5ZcmeRBTwqpB3Ugws3u5wdaGjY6oAzB1/mpc=;
        b=RTgCbkYRG5Eo4zzjtwsgVNlMXjeoCQakhfCzxcgDNBjyDrha6RrE58CwBVO9Qr8zHZ
         Btpz6Eb8aLygLYtRlFyuWeJ/H9LBTFG3x29R22jz6LeWVclT9J8hzTp8Nhr8nF1MEaci
         n1wGmEcgV62T2TV8inLhm6NQ63mHbZ5Th0FIVTOqBibkceVFOhcNNUBtq5ykSaChO1Ke
         KX/YoAV0vRoMRFeT39k9DmHzw1pDvJABA2S0f/hMPj98HnORkyFQq7h/QP0Co/j1hTuB
         9/+9C6QAfx6/x3UDmpbnSviRpMFe2UDFlWemT3JXVxRXMzgCWj6ebLxQul0Joq9WMFGM
         tHJA==
X-Forwarded-Encrypted: i=1; AJvYcCXoZgNa+nEZPFkS2bje6smxlJA++N94SuhTSv4Q9XcG41jYj+Brg5n0NLJbSNOkWM0Z3OpoCStQO467@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ7N8xT0hPvLdFlf3l522vQ6su30JozD/J+BLHbWOLHzz/IJ5T
	lpTXofM+bWR+UvupW6kK59waZc9vG1U+XtFw9tsQgepLwUkeJxcajXTFa/sS76VEclhIbUySw9C
	XUUHzkNq7HWd5hqDCjbVDeuHN4IRvoQ7L3qZsvgp6zs4zJEX2M9Ro16lx/druT8kv
X-Gm-Gg: ASbGnct7/+0LjwBTW9RBtuCi1kSqsiDFDdI6jWglwylOD7ftxjJNcLFrkZKDCD6kGoQ
	xN7esUxFOyP8RQOAkKb/FtOGgsw62PIX9/4FifRqdr/H3yWrMjU03HzbLRH1diS0B9R5VkKx881
	Ehjvm1ecaSLwjRUzDy+rRX3+8tJRMkixOqAfBCCMNg60b48osnCA0YcAMVt9HVyTmeh1ONMjSE1
	alNO6Pm1A3rkLHVUavu7KbIoZPNLSDz0eE/cw5DnmpY54aS0KkCNG1hzJWoeZ/h1ndvp4aK82EL
	nQqI6ZJJXexCNHmuOHQfiM7xXZZfdr8F0oc0x4PDMouF+l1dIr9Y/Ew/iQOhe0XoYM703Ao0sTV
	JbteAwvuqy7KIkwFqncX+6DvQxJQapsUyWHp7VZSKJnNDT7LrUrE=
X-Received: by 2002:a17:90b:28c4:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-33bcf8e4f50mr38230870a91.24.1761353274897;
        Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsWduzpj9A0+6O0Mb4Y5n3tBIAhWy4IVRZU2n2C8/tYxem2hrCBYq4qjS6B1Ab7R1Pf4uGJA==
X-Received: by 2002:a17:90b:28c4:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-33bcf8e4f50mr38230842a91.24.1761353274331;
        Fri, 24 Oct 2025 17:47:54 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:53 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:39 -0700
Subject: [PATCH v6 1/8] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Glymur compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-glymur_usb-v6-1-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX6FhJIpfE4svH
 EzVRFPPXOOzoO4sCugz9FjiCZERGGojzwQ+YpAwdFUNdLc5yF2Tqm7DtjDKXXCjXVz/iqYhGt4V
 JYiYEvCvpNKe1DUr9Sl/BBDfBpqaKcGNSbw/ZIURtYlzwt7mXMEUPXOADNXNJoUWMar431m3lx3
 ep2p9nFu0GK+mBPCaiAWn4X/Yj+B22rkrOCa02NDWnqZ/zzdAyLytqMwzAVE+gW5LilvXI1qz+x
 8ppErwZf24YnvKhep7iWf09G64YM60xaBzEgEQcYmVawOra7iFrCKWOCZveo9Rc+rMVn0xzMdEU
 oZuH1Pyg2/FL3tYnl/41RWKywlSUw058jQPHwuroLMZB8irKy7erDgmhNyKIUzDEBRf+pE0X0Gm
 ok3heTeDMfSrvODee/xrdPGoeC4fCQ==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fc1e3c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=10t125jH_Dd_vgTH4ywA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: l353MPf1wipiw5dW-RIFhpwX1js2JdYg
X-Proofpoint-ORIG-GUID: l353MPf1wipiw5dW-RIFhpwX1js2JdYg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..915e6024d3e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -128,6 +131,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +146,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


