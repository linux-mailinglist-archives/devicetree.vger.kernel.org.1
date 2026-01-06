Return-Path: <devicetree+bounces-251818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAACCF769F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78D0B30D8FF0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE38630FF29;
	Tue,  6 Jan 2026 09:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jf3EqVE2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fQvP1ahx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDA230CD99
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690478; cv=none; b=paVjAlWlcq/nfyobLYdlh4nzOaagKvEO+mgRD7YjPf5WwNY5wRzBIkW5I/9Py84GOvMVX2tzylNVe3ir0xCk/BI18HphNnbVvidZNemymSuLFMce8MztdXJlQbmzIwghQ71lAZEV+9sTWL11XRO1k78Uv77FggdDRYWfzTccekk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690478; c=relaxed/simple;
	bh=XZKHSLfKnaCStQuwIR8XQ5sScRsPOC3JSol86KJhTz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o1b37rlKQtgs+N7ZETJlf8FH7n8NRIDhcQ/p/Wu73ckxrvynvD27jQidmg0ctJqpGv6xU0wbmAe2jVK4NstOnWVG8HIe+1eNxlsXB7i/8kWMqvlbkdBPk6KYNVWYd9mfafpi8PJ8aJjC625TPxIuxaYk4gT+n2oXSgUDj0ztjEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jf3EqVE2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fQvP1ahx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063Q8Pa3442292
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:07:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E2SmuvPCVqq0JBZ8LkFKL6n1k9MjwPDgyuzThfCREOM=; b=Jf3EqVE29MOzHrWA
	Ra+X2afH+AdOcEP5wYDxE9AnSwsDdI2X0p15S3g065Vuu3zI6ACwUt/S86A9e3KA
	rj+CeeKdZv2FoQ/4IjELpKPqfqWXa6OMqOSBUMtxh/wDCDiqJncPbyAFB0E+xx4t
	QGZTD35QG5G4b5z5CLMuxjzSj72SVlNwsHWTIcLsIwZdHC3MZXyxghLc0ZqLFHYX
	1525fs83nXJAzkfLnurWJ5BI2qN2Uwpm5aihNJgGdIt7voqPm2P+26ULVG1Kill4
	4jSu7MQ7diaY/0BVmdwti0t7zfnubzALQuFvu6ij/6hl5VshNgLXjqjEe4dtBJgi
	wdiADw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgmnh9tg4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:07:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0488e746so17746551cf.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690475; x=1768295275; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2SmuvPCVqq0JBZ8LkFKL6n1k9MjwPDgyuzThfCREOM=;
        b=fQvP1ahx9jwQ3DYSaQvlIPV1IHeIoqpeJd3Ig1X4zRQTELuCj6SZgsS0RNAMSyLwy6
         uuG7lLXmhOUCp6fDPztXe4d6PHEI+CziIrxyZJolQY+5xgkf3Bn39236uj9FMNvvF88f
         2C2ptq99KAB5vHViOD93GGprxVnu61Nc5kVldoasaqElvU9j/UmouD0+7TeCFv14k37h
         2QZyGe9rg0MsTZL4HlsHDE7Csmr17ayfAF99yGLWSDHSaBgpRa7Mu6f0pHRh7XQ2rby3
         sOvxwDt2Bc/oTCNTTAZTZt+b54O6l1Mgk+hcVSWmYN1sj4iBzgjhqtCl45b0X2CM6BB7
         3N0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690475; x=1768295275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E2SmuvPCVqq0JBZ8LkFKL6n1k9MjwPDgyuzThfCREOM=;
        b=xHqqkj3sg4uga5xu0gBAXXsiL0vRJqglx7kQMjK1s6NWWTjVcKNHPZRMgFNMwSGSeC
         cKGRxjZuyjm46p70B+RiNS9ym3fybHCHAMSqG8uSjwekVwEn4nZSEIFC9KuUokC60w2w
         ZOEharIjAOjLSPKyuPUdJEPF+bJV4FRNy7R8B37d4kV2+IOt6LcMYVNPT1KCFiTWR2wu
         5pLQsdiQP80tJxuhiAqdQdmUWq5ElmZwn6cRj4ZI6uToXFPabeA8wN6U0+WcmEUNk81Y
         bzIYyKMwkUmweXgSUYoVxrMWN/ixlHycuJPAQJbAORUp/0g+2FljYKIEKMHGiu5Gx8op
         w6aA==
X-Forwarded-Encrypted: i=1; AJvYcCVLWiCli36UAGY0TdA3zrMwvvxnn1h4HVz9k7mCGLYMvw1NhG6y11kYmi7nOlM1O4JEZVhsZAWB5Fg5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5PW1bMUiu2EobjNFKqj/b8W3EvaW8H4IY4NhfdlnClaQZhhkl
	bA0xZXvhjtTu1O3cH6NCjx4eEZe2G2RwXYTtQ1q7e7SLnZaViPFly7rGJiKHyJOT//dust5zExy
	2b9jyyapmm4P5sq9YgUIUMRKaZifbytw0GX7EZ05bvDiTchA4TI8J3S4DxuCyQHjUWwDx7SC8
X-Gm-Gg: AY/fxX4mzPNalaIIZsAObSOkmjPNPkIj3pBvjbVegjfaMDfou6CgBXtTIo0kFZjJYI1
	iouSSTqvAw7Q/hqiwKMWFQWl51IpBtaZwE+Po3spAUSZ0gcJ2OTGP2EkOQ2/EvHszckMrj2vlkX
	czKu/Met6HgZ6/yKIw2Q9at2VpX5OclXOqwaf6bKin+DhLX9o7ehfuf9uxvroRPBqvFnvvrOXc2
	NmbkP7qG7zMZ9cKKhabX2BnAUi+PFNTnFCAYGcWtxVbGFH6sJ+8K7rreZRNp6obMtqR9eevgU3t
	nzpt3klk6loHpe+vO2uo/wTa3yO6IX+Bepw1gyvXzxThLlEfiKneST+ObAjLJByjqAy8xFaEuFC
	QxY+elUOUyFgXUnowsiVKF0v1y8+cjAx9AQ==
X-Received: by 2002:ac8:5dcc:0:b0:4ff:5ad1:5c36 with SMTP id d75a77b69052e-4ffa83bc8edmr23701251cf.5.1767690474938;
        Tue, 06 Jan 2026 01:07:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXL/0awbooALQR5pNaoDU6qUvvZ/3IcGQdxQdTU6h9Wf27CddMTz0YqvHAKbqJeuKp0vgkkQ==
X-Received: by 2002:ac8:5dcc:0:b0:4ff:5ad1:5c36 with SMTP id d75a77b69052e-4ffa83bc8edmr23701021cf.5.1767690474457;
        Tue, 06 Jan 2026 01:07:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2bcd30sm176270166b.28.2026.01.06.01.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:07:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:07:39 +0100
Subject: [PATCH v4 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-b4-sm8750-iris-dts-v4-1-97db1d1df3dd@oss.qualcomm.com>
References: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
In-Reply-To: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4573;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=XZKHSLfKnaCStQuwIR8XQ5sScRsPOC3JSol86KJhTz0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNDlGUt61IfWCl1e1ajcWh8xbuaHFckLm85Ya
 uDCKAzcAGiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzQ5QAKCRDBN2bmhouD
 18hjD/4jFIky94qEnhHHJNAnFpCKXC8tKf2P50wO3tapFAYlqJtrmnWsXRDDVGQrFV3sbxuzTZz
 mKgbFeSs8IOQywF490eqvfIG/2nxDxVZzfZ9tXUH8K5o7yAwtZ/jzHfDY6WiriG4L3/E7fAPEEm
 3Eh7/eGTaZd5R5kh5I0ufRmPGuaKq96oimAsip2/PciQgLJI24FFQLg4hg+3tJYuSzEUXAfV5xZ
 3OYQQDsCfg9/rfrCLg4QKJKa9g2IeJZxbgxx4fbDp/zvZ5jmDec5weuCnhkpfhgAgEmzrW1+JZN
 I7MPgkBdiN3EITgyNhOvZ9FLMppBM6gXCN9Rs3akXfvKBM7IRai8Mm85yI0Ikc5pn42xGxtWOYw
 QT6AK23UP0QewzkFAJy4W5Kzl0cPYoA/L/f7roAVL30WH4evvvqLtEuKQEkwJG6MCEfyhMo+VbA
 IFxV0+GoNkfAcu1kbaJGyjV0COPtfgsdsw4VLdYRucxD7HtK7kM1br6YlKbC53mRSXn2GeQGe3N
 WSJ5NXn4AzXgyTCicrkEDx2zcIICod6hQ6gICFhHIRSJwDs/QuKN7DHiKhdp8u0XDZW6nWUlvXq
 IzVcx3F77EsZ/2NTVNPCIDBoYX5FUWgjTNDyOA8TUTD/oNO2DRZBSQI392CdYOmyNCGFdPTC3Ul
 hXoODhJOjpukbnQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: vkq0-jU3FsHvFE8_NGLBBxFsVlApbTn6
X-Proofpoint-ORIG-GUID: vkq0-jU3FsHvFE8_NGLBBxFsVlApbTn6
X-Authority-Analysis: v=2.4 cv=Vscuwu2n c=1 sm=1 tr=0 ts=695cd0eb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Yr21au9kmXLV3PNpF4EA:9
 a=o3-suD8ac2OVTRx1:21 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfX/U+hcs1vdRPk
 EQZA/RO8NdqsJLQPl3PVH0Bo3ubyLRvTd6ggBlniBcnn4X3f3iB9R3jLRbSziWy81AlTt0YQ4Ye
 WyRKAf4D+WMU/2OCQlUu1o64+wL9PRiEBnY2HNVxdl6fRJSLLTh1Hrbb8vQuukyeL0DMmjyBsjK
 /IeqyU+ihNWz2Y1P1+EsGtGfUp3UTeJ+hL6BFnYqkuuY6/lkZ+V1hgpL5rAoQRNcbOSXXvR99Ry
 n3AJOCsVOfndSGaCFtI43L/BfUKyFHGBLciDzyiEs+qDc3DKR1rF8ysc4Za1obkDlaJQcNKVOhv
 HuRva5eq1QeS69DUoP6f/MfZ3ehhFrp1fdiMOE/bGDC2tl+oerXdxLQLJxUtAUK/z0C8Cn+PHHe
 GzEinoT2q0m+EuNcbXE1/29nHT62Pb/j/B0y/ux+tUFIokAcs/GpG0o18WPxQgMfT9jBp8qs5hj
 f2R91SU6Ce5QNl4kUFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060076

Add Iris video codec to SM8750 SoC, which comes with significantly
different powering up sequence than previous SM8650, thus different
clocks and resets.  For consistency keep existing clock and clock-names
naming, so the list shares common part.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 121 +++++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 0a6f2a449c20..a76bf5193a70 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
+#include <dt-bindings/clock/qcom,sm8750-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
@@ -2811,6 +2812,126 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,sm8750-iris";
+			reg = <0x0 0x0aa00000 0x0 0xf0000>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>,
+				 <&gcc GCC_VIDEO_AXI1_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK>,
+				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core",
+				      "iface1",
+				      "core_freerun",
+				      "vcodec0_core_freerun";
+
+			dma-coherent;
+			iommus = <&apps_smmu 0x1940 0>,
+				 <&apps_smmu 0x1947 0>;
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_MVP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			memory-region = <&video_mem>;
+
+			operating-points-v2 = <&iris_opp_table>;
+
+			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
+					<&videocc VIDEO_CC_MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mxc",
+					     "mmcx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&gcc GCC_VIDEO_AXI1_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK_ARES>;
+			reset-names = "bus0",
+				      "bus1",
+				      "core",
+				      "vcodec0_core";
+
+			/*
+			 * IRIS firmware is signed by vendors, only
+			 * enable in boards where the proper signed firmware
+			 * is available.
+			 */
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-420000000 {
+					opp-hz = /bits/ 64 <420000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-533333334 {
+					opp-hz = /bits/ 64 <533333334>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-570000000 {
+					opp-hz = /bits/ 64 <570000000>;
+					required-opps = <&rpmhpd_opp_nom_l1>,
+							<&rpmhpd_opp_nom_l1>;
+				};
+
+				opp-630000000 {
+					opp-hz = /bits/ 64 <630000000>;
+					required-opps = <&rpmhpd_opp_turbo>,
+							<&rpmhpd_opp_turbo>;
+				};
+			};
+		};
+
+		videocc: clock-controller@aaf0000 {
+			compatible = "qcom,sm8750-videocc";
+			reg = <0x0 0x0aaf0000 0x0 0x10000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_VIDEO_AHB_CLK>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

-- 
2.51.0


