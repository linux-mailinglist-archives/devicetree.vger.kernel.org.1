Return-Path: <devicetree+bounces-249469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC7CDBF61
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C102D30424BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7823C2F39AB;
	Wed, 24 Dec 2025 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k8PxPkYd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aGvabVSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D4E2836A0
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766571635; cv=none; b=ZByEpHDzGV+4heKsBfOlDVGwvscuXymq01CCOYXVmpfrnBM6eavdt4vgd7td+2yEzL9bYRxDPYATYbVLuchiYG9qFqjLMeXZCxTO0nA5tut7DIDMhM8lMXZDh/NwCUbp+xMHnpr/TDQg6J1uMz18vBIJ1SIaeL6lu+d5lpM+XfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766571635; c=relaxed/simple;
	bh=9RmhvMyaZZ5e34lSfaxzMXFo0arYi8LVGWz3MTD5+NY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=CFe2AzJXe91YXtWL7yMkg6VqNvhRa27vpYvEKCckUtvk6LWP/Whet6aEpBtVn97m0eYzKX6B95G/HrsdgMwQJn9wXLw7MV51QaqW4Dcdf7aL5BviXczRo7ISbP8gn7UVI177/DxVskQoHVdNVrPXqwu9ETLyEOcv6oZEpyCXXX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k8PxPkYd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aGvabVSL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO6wFn81245478
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=HpLnN7aPK2c+91HezIkwL7
	2d3oosY+si26VN888iGvI=; b=k8PxPkYdHyUW/g1E7XuDpxpNvrqpLpBTOvcoLB
	rnJnluw6PGn13154Yc9TjkmSYKTtdfUgfsz4M5/SLE0f0QPrUPrr3DoRJiuaQYbQ
	x96eu9v/Iwgvd5/g0RjnbEzbdu1G/+K9fxEFAsAfk2RsgJU+QjfxI8yT49ARM+2X
	Pa1D6bY6v9At9kH5VnO8AT2TJb3GCGuVB8bAsUUY7q+MiqwSkSAGVSZZ3doWY3a2
	4UcFTRGf8DX3NGrLECkE3eXvwXabMFIX5j4g6h1zg4l/M1zw+fiwiqKpGXtlO7oD
	wUvp2t2NZUhy1UUuTWaLo/BnzAjBzUko/hWBWfXCBDl3zcTQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9cu875-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:20:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0e9e0fd49so68835365ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766571632; x=1767176432; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HpLnN7aPK2c+91HezIkwL72d3oosY+si26VN888iGvI=;
        b=aGvabVSLiuVQGmKwQKghlQ/ZutN4dJVF+05P1flIPDhLtFqFjugYD48/6j1Fvr/L1/
         SXozOFZkzU7sLMOWn0UUKvqWLH9oSyi1Y1Z3+VA3Vha35B6uiqmP0s3mhbKEe2ZgMi23
         wijEHWaeFHhUfYP3uLXBSHxmpFBNUrpxF4OEmdcMylPYfYUl3dsZmlwlw2fiG/QacYZz
         PJ0ZE/r6xLewhggBYKns43phTG0xw7EO/oohX9IINj57SLz+AVpM8XudKkh/lQNptFV2
         LEwA5wyW5zETY02e+bMP0SzOwh3bn36shkv8M8CsIN+VMcPrQnSwgp0Tl/ZA4QOoo3wV
         gLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766571632; x=1767176432;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HpLnN7aPK2c+91HezIkwL72d3oosY+si26VN888iGvI=;
        b=gDOGqfa8fq/TM3ZJdNG+Q8lMqO+0RyGOnFpUflc84Pr4eL4/eOk4juXjW4VYpMC7Tw
         2biwURCryQpvFqXFpwpYlKkZTv7Y14MqELc9F7TfuicxTWeFHWx5z1kzBh7bDQMeezbQ
         1AVWGB16j4ta/PnKBHEA1IQgO7vBLomjb0kSSwtcvKhqcC9+pWI0fK80Fj8QLnUf1+wm
         0F3AheNB4Mk1YCHyOvqsPLZgswV/NAYgDGXajOPEJoThUL7BMXtTJ+ecle91FGrhukEu
         8+pXpxeCbE/vPCQp7UtA4ALUPfMrEBrlBx65iS1cAJ2Pm1MAdoKNM5Md7b4LkSJ7GpLb
         gNSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSPq10rHJKe1tx1Lcfg5+zN3/r+pQn529WvPbL9ty0KWHJAUPKfvoDJMXuTxN6wyY/tAsh0BoJs51B@vger.kernel.org
X-Gm-Message-State: AOJu0YxNbH1tYfx1x+xlhcIwNLxpUw5cO8+t8LeNPfSx58/EI1Qx9ryH
	LKKHPqyFg0KAXxoMQCAWUYm5qH7EUmm+mJ92fY0ixtfcUK1iwUv90Aj9jyLf86qJuwf4vSNl3R3
	0FvvPs0LzPAc1dNdDvDvbC6jxR69BDntvWgEVYsDXSfRvqUFVQ5CujV+bJ0TQdMcu
X-Gm-Gg: AY/fxX775cafYIKhPld1l9YovBv800HCVZx/wJ6MTw9ANrsMIbsvSvB0/L0pzgY0Sm/
	4IwZZBgtxSx4yl5iMc09ZnE6+fV19n4vhsxQonZpFm26hRP9lCasbaAV5ChIR/q/VuMqQzVpKus
	RMNTWG000XFv7K7er1Bo3BlHrPO+AmWyMQyOZU9SWB1Y4p9506YTHsCC1zt61iozQmzBOTKk1vY
	k8XuDwgXumcQ/+gcr23SDqEss4QcFXyvoNpJVHEKR2xf3OU71uQTwSRhgJPNz2ZLY8eEnDuDVvW
	I4m6vsH5is3LSF9h0HNQ/LttB9+Xu+xc3A28TssPYueHglwF3MpV0fBkancFJrtxwnhZHpyZ/Xi
	TBPKGGUwkqXRkLxVJfzUt7CMz+dYoIYCGcegdzLG1GX80rl4=
X-Received: by 2002:a17:902:dace:b0:2a0:eaf5:5cd8 with SMTP id d9443c01a7336-2a2caab6e40mr199822405ad.9.1766571631586;
        Wed, 24 Dec 2025 02:20:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaEYLB2rKs1wQB4ymJi2MCOdPUTqckXuQkeo584DrKSI8kymNPiZTmkBcFqCvMhXNNDJ7pAw==
X-Received: by 2002:a17:902:dace:b0:2a0:eaf5:5cd8 with SMTP id d9443c01a7336-2a2caab6e40mr199822195ad.9.1766571631097;
        Wed, 24 Dec 2025 02:20:31 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66473sm129685195ad.13.2025.12.24.02.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:20:30 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 15:50:24 +0530
Subject: [PATCH v2] arm64: dts: qcom: lemans: add QCrypto node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-enable-qualcomm-crypto-engine-for-lemans-v2-1-a707e3d38765@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAGe+S2kC/42NwQqDMBBEf0Vy7kqzUZCe+h/FQ4wbDWhisyoV8
 d+bCt57GXgDM28XTNERi0e2i0irYxd8ArxlwvTadwSuTSzwjqVERCCvm4HgvejBhHEEE7dpDqn
 unCewIcJAo/YMBUpFVYOqLBqR7qZI1n1O1atO3DueQ9xO8yp/7SVR/0tWCRIsmspWVFhl2mdgz
 q9dnkLUx3F8AXnk0+rnAAAA
X-Change-ID: 20251222-enable-qualcomm-crypto-engine-for-lemans-4213e8b2354b
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: OFBpKWHlM04pE_a2nHmcFrc4J0JFyyDN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4OSBTYWx0ZWRfX43kqSNwhw1m+
 aki3vkw/+x7T+GC9F8Tjk8wrO7sc2dJqk5xXg/jwNoN+dRmXf/ONrGSeyqATtOW1ZdYOh9y0gwp
 ZoxqTREM0rhOfUKp7B3TsuBKJ0ssY3cgiiQI2GK1iOtpX9ygyeWMv/hQ0FzNZwI3KbfTlw89t8J
 7AIMZQatmGEvgG/wuBsSMWBFxER2XQGdLBKq2C+LlB6ipO8gCZaxI5Ldz84QJmpbjZ/jD/gsb+0
 qSDQfm1soe3uhSskCaW7H+9Mj3BIbJsG0NuTuBwBk091ZJoxdrTiij9lQICOPHDbYdw3KKfvf7O
 agw8cChNVrAV4OX0ZCC/0bFGjwbHpPd/197fsOxZFi9Rk3y3D0NyhVemUATNHBHbFYtAuIeoVU6
 Z5+ZLvPoLlZdhV3FnYP2kNKQbXXwdlLT+AOmGszdnkHP4wJoMDhKyJgi++DNUFv76t62Pq1bIi0
 7MgvxmQ5UY1eKWo7+FQ==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694bbe70 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=w4gSpCwTmaNIqBQonZ0A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: OFBpKWHlM04pE_a2nHmcFrc4J0JFyyDN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240089

Add Qualcomm Crypto Engine device node for LeMans platform.

QCE and Crypto DMA nodes patch was applied as part of the
commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add QCrypto nodes"),
however was partially reverted by commit 92979f12a201 ("arm64: dts: qcom:
sa8775p: Partially revert "arm64: dts: qcom: sa8775p: add QCrypto nodes"")
due to compatible-string being miss-matched against schema.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
QCE device node was reverted for LeMans platform as compatible-string
did not match with bindings schema.

This patch is intended in resubmitting the enablement of
QCE device node for LeMans platform with compatible-string
being aligned with qcom-qce.

Bindings and Crypto DMA nodes for the same platform is already
present in the tree.
---
Changes in v2:
- Update the commit message and cover-letter description.
- Set the interconnect tag to QCOM_ICC_TAG_ALWAYS instead of passing 0(no TAG).
- Link to v1: https://lore.kernel.org/r/20251223-enable-qualcomm-crypto-engine-for-lemans-v1-1-f2c8f8e4f3cd@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24e69a9d900f06bbb22baa2781cc3f..6751ed4ebb3c40ee2724fbc7efcec84a2a0fb1ad 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2769,6 +2769,18 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x481 0x00>;
 		};
 
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sa8775p-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x480 0x0>,
+				 <&apps_smmu 0x481 0x0>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+		};
+
 		ctcu@4001000 {
 			compatible = "qcom,sa8775p-ctcu";
 			reg = <0x0 0x04001000 0x0 0x1000>;

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251222-enable-qualcomm-crypto-engine-for-lemans-4213e8b2354b

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


