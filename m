Return-Path: <devicetree+bounces-253113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7254AD07AB8
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C10CD3010052
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6625B2FBDF0;
	Fri,  9 Jan 2026 08:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bFsVvqex";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iFOgQWyW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70E22FD1B3
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945617; cv=none; b=SMRvCye3kGGG06lAyg5UdkjjKmQgNf5zx9adXrMtaVqAqB+If8BrERP3k5MIbiHBnkdu/8z7GilRBCzANXlEEeS7jr4mLg+6slDgkzb0kNL0jWcnnsj+Eyt2pVCDrHmAajs41e9SEtYfufxNIVoPxk0LIIj7foWwRWxgUz3kTB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945617; c=relaxed/simple;
	bh=TxIABztGOxMCT6KjlGvBhONzbwVAySlcD5Nn1lNtVWg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jbgz5K2WfKqzEjHqRkKLJi+g5Wzpvj7L13WCx3N51ZopAIJm3gcu6K0F53ebVHH88qMzwBGNJm6FzMokNprGCVoI3/CrSPE3k/AuB7HIlatt0UMrYKa3H6mOhIbDTmT8suBT26AXR8Lv8com3cQA58eoJT6AW4Wxh6nIZkW9iFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bFsVvqex; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iFOgQWyW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6091qSGW3324857
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 08:00:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ml4IUEmjn59UwQP/YRggnWXAhMe9MUXbm693jybTycU=; b=bFsVvqexIKnW+tkL
	1vwDOl4F9aOFImwr59WIy+unoBBAWWIatE9+pIHeUJ6CNwojITkBWF/th7B6pTAU
	XOCl39vW+8vCJLdLZecdt4/pbu9Srx2TU2jdxvu3R5TaaVQ47KVBhPrS49Hi14lG
	mQnIp9OIeTERdbFiZhebjNqOgoTf9G6DYVXkfzm7bLoI1xdnVdIgFxmGv9yLoIn4
	vObNGfKqQQOniIKABLzJk+Saa9rohblbv3GPHCUVmN+Kp7LvO/DWRde7bS8z89nD
	8dnARvyNqd7kqIe5zVkiv2xhfyScgzKqis0cmN3p/zfQ1VMPtG4gGt7AJgC5T1JB
	KqR99g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjrd6gwvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:00:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0f4822f77so78120565ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767945611; x=1768550411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ml4IUEmjn59UwQP/YRggnWXAhMe9MUXbm693jybTycU=;
        b=iFOgQWyWrUGzMvPFvLs1oNdJOzedxt/slEa0UodtOP5GPQ4Op5cpZuFQbRZDEYMH35
         5VDppcBhBio+cyFYu7/aa+yVzE5PMSWx3V9KInQW40QibT2KMEO33COHYw5dfmyFiHTV
         KcKiQAMtE6Nqkfa4bDdkTgvWJjKlv+8fNBbUNPS7OuIp9FPwPy5wmU/ny6Peq/qyrlv8
         Lh2WJoLllHwUuhS3IDmXZ9yCNlwX0li0WqBf5GAlRLVB2bwMDedQY5KPeoPKBGRsN8yz
         3ekih/kOO9OgZeL7GM2vLNnjID6L1ZaHnExjXFBAjMiVXiuxlEH9HTgP2iVZBE39RNFh
         SAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767945611; x=1768550411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ml4IUEmjn59UwQP/YRggnWXAhMe9MUXbm693jybTycU=;
        b=hFpG5xQ7GNWy3Wu18urtPRcAwyDfnhN+PjvAfVVEc9AU2QYHzRT2ngsWkyUCyiiC/S
         KcEaa237pMr96ed6OkA5B6/wgc0yTQ89AcASaEhBN5eKuENTOjjc3YfXkvhKWdLof2Ui
         okYtU3GGm342VcbVoS5GEAGsAJznRJ4tvpNoxFCj1hoNc1ejTf8YLEwddt5lX2qyuxuh
         OqY2x1821TNCufaLPXhyk/vNi3CxxpnYtekUFbaPwxIwiWDzei6EN4EOOEcrk+hCIzKN
         7xaROxv8FowJu8Jn7dC8tGLtYiTLmIbBZ32/hzJats4NXLKjvV1W1DFb1e0vwFz+hK6d
         6Mbw==
X-Forwarded-Encrypted: i=1; AJvYcCVYPtr7oJ+vV8yjAtkMcPQaqNjQ0m/b0OQa54MGRg9xnZphqfL0IClyUC12yOVoq7RfOSTm3tHlthT7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7cJ+y75xTTVPBn6/CSd+6WQRvJlcx1SDIxlhA6mbGH1aalgM8
	2DRFc0CceUcTxkySSfsgxAiOB674C1jGtDmkOpT2z85x5r2dKc8HarM0RHhIJmok0wP8o9CRWn8
	FwkteXIFKhyD5RibuCq0MtD0tU8TYvWVJg+/kW1mrWDh7BOOTNQz77QMIy5ndgpxL
X-Gm-Gg: AY/fxX5ea0K/djeRldl8hNHV9YHzjp+d/nRbWjHC5XRFs0d3MZePEgJ12R6ZSOE4UpC
	j6d07GBFF9K+oBpJ+c0My8+RRp/FRDm3m/rvCff0kE4MsuDQH8G6RmaN18sxkypjc+MAbXSxGlO
	JGVoV0X6QYOwnF6YgUk3ue4xvPIUDg6tNVPBdAVvip8sheNx5Je2IOiBrduypxqjQwYmR/vPu4c
	l6ole2AGg+BgeGvRJ3g4HKl6jsqYf/BBdEnq5tngKfvpzRpv5lYQhCWiLWJG7JLTVKVhw9xxuGq
	mn9wv+HOZgsXZSsDgnfeWJfFRq6vsRdaojvL+ca82+1v1aZo6xRYsVZ787WiLVFKQvEx/43fXwn
	DsmFCyu/BmjKGfw/Hf/Eo4EN86JkcEDjm3oaV3wZmEjhk0eoNONPMv1TR/Hfl0sjEbaX/8gUl0p
	c=
X-Received: by 2002:a17:903:32d1:b0:298:3892:3279 with SMTP id d9443c01a7336-2a3ee4363abmr88140955ad.17.1767945611182;
        Fri, 09 Jan 2026 00:00:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEO/Q/HCc6sRK8eCIon2vdXEafi0MIZvoT0qCqqlDk72otebFrx2RXwZYT2+zdvPZ/+4Xv8qQ==
X-Received: by 2002:a17:903:32d1:b0:298:3892:3279 with SMTP id d9443c01a7336-2a3ee4363abmr88140585ad.17.1767945610695;
        Fri, 09 Jan 2026 00:00:10 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a56bsm96808445ad.20.2026.01.09.00.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 00:00:10 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: [PATCH v2 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Date: Fri,  9 Jan 2026 15:59:53 +0800
Message-Id: <20260109080000.606603-3-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1NSBTYWx0ZWRfX/q1RBYAv+++C
 dBxEIOL+LD9zn2p6ciH0NKJXGcH2Tbbd18yyb58U9Cn5LN4Ej6o8RQBnwQBm/7zOshOSF1vRWPe
 cEFEn6B9U+O/j6PjTVDjACj7dvlz1/vaihg+bf8fLR6ABkYNuprhGgCd5KJS5b+q5HNf4+GIU7M
 u7pzcTgvFAxGHHwjJOy/4VhVbL5p5pZTJ5B9/Ah/8aIPcCp4KB5hfWkhQJ4RMuojqJuybcco/wO
 9ObbeSjSorj/a59l0/IuMzU3FXzDRa2aEJcd63diMdb2GTgt9SPHCRq3iqs4zSihAIX9k1g9nYH
 b2IzBmpEM8Bck5UveZJy92GN3NLjXdfzWKjuD6qH5PkPPDN7UzGAi7apLWZ2zRJDq0kKUnbqFT2
 ZHeLF/aj1+Bh6a8y10BngbrR57+Ih8/nlJ0hQZ+IAHhTBKTU6rXofzNlsMsRf0FPfcvoXmBW222
 zCV2ySBF92qJ2FiMAPQ==
X-Proofpoint-GUID: ZM0ESkMd8WsUlJRIaPiCELddQUD8Fapz
X-Proofpoint-ORIG-GUID: ZM0ESkMd8WsUlJRIaPiCELddQUD8Fapz
X-Authority-Analysis: v=2.4 cv=Xtf3+FF9 c=1 sm=1 tr=0 ts=6960b58b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=93V5M4jBH0hLqW-x8QsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090055

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-SOM is a compact computing module that integrates a System
on Chip (SoC) — specifically the x1p42100 — along with essential
components optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

Make the following peripherals on the SOM enabled:
- Regulators on the SOM
- Reserved memory regions
- PCIe6a and its PHY
- PCIe4 and its PHY
- USB0 through USB6 and their PHYs
- ADSP, CDSP
- Graphic

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 .../dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)
 copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
similarity index 99%
copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index 4a69852e9176..16f11a81163e 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -3,7 +3,7 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
-#include "hamoa.dtsi"
+#include "purwa.dtsi"
 #include "hamoa-pmics.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
@@ -378,16 +378,12 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
-&iris {
-	status = "okay";
-};
-
 &gpu {
 	status = "okay";
 };
 
 &gpu_zap_shader {
-	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
+	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
 &pcie4 {
-- 
2.34.1


