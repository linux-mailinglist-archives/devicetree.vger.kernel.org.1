Return-Path: <devicetree+bounces-182616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FF8ACD7EE
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:36:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1BC53A34AD
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 06:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7266122A7F2;
	Wed,  4 Jun 2025 06:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A+DW+7Nf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACC71F4CAA
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 06:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749018980; cv=none; b=VFAz8uIi9duHvt+hmjiXtUXPRIWFYmDBqAtGPj9TsYZ54KNnxhzMMU+K/J3jRl7l4aiCcQIFy6+ljwbFTYApME2TsUHcvHloPZqr5TtTJG7YOsMhMihUnqa9faUi1NQNmi/I6ij7ppg2aGjma0y6LvrSgcd6Zq2gJbWubwDJ/S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749018980; c=relaxed/simple;
	bh=E1iCTcsS77v3G62P/uVyBrWR5kONQvXzXySre5an/lQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kdc9CZZuzEof2/tQAXj/e5mqYiKcLew+EPQfTELUVAKiLEZA4Cp1kTJjEFUdpsjZRuBc23a6/zHWpwqQpD6AuRuOcvqy5+sQsm1SZi1mGO4Mg/utd/rcEhhSzrUwQevoZMUHZYxosjjSEjwKZ//y2qfxcU4qdPRSpC7bePDXKF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A+DW+7Nf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553K9CmA000701
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 06:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=; b=A+DW+7NfbnOVrecX
	Q/3y9hyWuoVEq1tSMIwYUgtRV83bZz7TCEntCV4GgO/zu6ko+wofK1f80tw8SBQF
	H28UK8Xoi78nzTw6yyJxLddZTrTneDGDFcR6EIZy/JMgl8seqQaFVLYY1isgBiFH
	hDaPqNOCoh4OefL4k77lmszkc3qdTVfIVBXCXqAPVzeYjwpw5AV9vWJv7sULrakO
	ftFiufoRx6clDrHMSFQvY8AlC6y9yLBmqaO/qr9wdsyTQ/oAwOu6zmqXztsnla0D
	1n1uXsySqxkjzluwvUJXq+zsWXFAHKomv+IrOsbezlrZWITO0WhCUo0icglZtiM+
	2Z6iMg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q534g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:36:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-311f4f2e6baso6259787a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 23:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018976; x=1749623776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMz4Fnkw42dvFNGDnmgQxE1WfqY819g/Fp920zyfuTA=;
        b=kUhvBj9/n1Mds1UsN0sz8te8L35pyvMQqo1CjAk0Rg5I4cteRWpHVCtCW1FPvMhiec
         1VCdl2kIUH+cDmzY1dIOywIqJhFuLCEyae6vA86IW/tnH0eVe3ILnQccli5jreTayyjO
         30U+8Nx1y15VBiq3xDlaJMrVxYtQHAGuS8TQeEQL/3e9Pf82x6pCGUVShg7+E2fp9miL
         bU8vpt5zCo5kofn4P2Nzy3BKlOPZFfTPkpuVLat2qdS7kQEcxzYjlxCLtX8ubOHAHd/m
         UwgYe2y1WIsrQ+BgDzFiuSnSJPtBdDeFcInQwddWTQE8VAEvt7Yes/2dp5PWSu8GUyaA
         HiEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGKc8z3MemaTbXwfhjlIHL0TRy57ondEVxljcHhfkoLC7nuuJNUjK+6nN/09no2E+J5OGOM16PvqlB@vger.kernel.org
X-Gm-Message-State: AOJu0YwHk7iUCGNko3+TrHezXrjO2gn45oUm47AsOxric473Vyj1T0qN
	5ROz4hzhswBQenApJcMZbdsHHY9c322g4mr22EX+lnphQ28GmFpBUDquTx/PX8DEd8cjllyzsDg
	tVSZnqR/Yg3BBOnXda1hPqfqRTnE0UKEQym6l2I/sLzVK6I6qNn4QZjhL2Hzt/GHC
X-Gm-Gg: ASbGncs/HqPAgf+7OCFM2oDtZTBzbvkL9O0ulDz3w7V1s55E33u5qgsUycp7UOKEOqj
	07kiE+SFZXWuRm7aIvTUVVxCF8LuXZbaYHUprmhvAtEIA8Bti5PoqzAwlcMscvI7c+/95CCldQm
	k0/YWr1d8vt+GxH272v1clQrgcqzMio5VSzcCA1pNMtaa+HV2//LS/EbC5J+I/Xlgkdy6Lytdam
	RQOUUulxUtxzYZMD6hOxFRCBRlzu7UKVaXGPTK0vpnCYEI2pyb5w4iHRt15r4DPduACSTo5lqkd
	SvOKwOHYH022uXVJKamxKemKULciq9tlSsay/jxYo/1jzco=
X-Received: by 2002:a17:90b:3d90:b0:311:d670:a10d with SMTP id 98e67ed59e1d1-3130cdad83fmr2116095a91.26.1749018976299;
        Tue, 03 Jun 2025 23:36:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErugzH1I0kOV1ZKQianUQa1udSChg3Br+Vd6Gcvz1HCaUItCnG3yPgl2RgODUZkyEd/0WlHw==
X-Received: by 2002:a17:90b:3d90:b0:311:d670:a10d with SMTP id 98e67ed59e1d1-3130cdad83fmr2116074a91.26.1749018975912;
        Tue, 03 Jun 2025 23:36:15 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2c298esm8286693a91.15.2025.06.03.23.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 23:36:15 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Wed, 04 Jun 2025 12:05:58 +0530
Subject: [PATCH v4 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-update_phy-v4-2-d04b12bb89f2@quicinc.com>
References: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
In-Reply-To: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749018959; l=1245;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=LUKDegSuWnJr6hX0g+GfZVrGfuVOoWm4/cMbstjOQQ4=;
 b=ga9wKHPtEQhKKr1XnSo5DF/fyNhWYMWOOB+cY7IY7PY9EAcbVbRqkScCf9ZdnY/CTgyarhQyN
 Ou4mVQc4FvhB+agnjJWbXJump6NS+JbgDG+AzaahV89xnBb5zvNioYF
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: wpBj5SAK7jz_J0YDqmVM1up23x72HIfy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA1NSBTYWx0ZWRfX7pffeX3gGk04
 HqF6Uk16Q2LjeeGIs2GA3JgzVM8D1ROGWJQLwfzgAQ21uuWFKAAGX11h7e9u6p821MNo67ZHLXz
 yMG1UdKQV8I+VG2p4OLj0+yYr7a/i2VJo/DR3bSLbbwrortYKAl6mZayqX3h/2fVkAenY8nzzhl
 YtzOyD5tg3A16Vwrn6AIDwp7lzF0ccUFnFMCF+DXyE3iia4n36jgPBCk5A16JXnJ3f9xsM5R1Hq
 ON5SPKvhJZaPuki/4O4mglyc2/wb5VGdrFAO5/U7/59/2fX0UXRB9Z1nV9kVwQjgh5KdLAoElLO
 ZIEWzay3UX5yRBng9sz25MKA0ocssdQk7n/EOnacNrmLCR6us+Ja9zirzjsNutuKu0DvhUoaCw2
 XlFkGOCfJsShZOE7ScUquL1uo/cxboE0WAE/9pWkJ1brUfCySLaFopQBnh2YB0cOyNEsZvwl
X-Proofpoint-ORIG-GUID: wpBj5SAK7jz_J0YDqmVM1up23x72HIfy
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=683fe961 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=868 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040055

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

As Gen4 equalization is already supported by the PCIe controller
driver, remove the max-link-speed property.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


