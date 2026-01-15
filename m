Return-Path: <devicetree+bounces-255739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1161BD27E70
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F647311D238
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936463D1CBA;
	Thu, 15 Jan 2026 18:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XrDnAhi4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZB0Pu2G7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6044F3C1FFC
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502955; cv=none; b=csci9passxdj3g6gnQP6iTkGsGjAr4mjnEvn28s1o/fciCYOLQPmoRja9SRYHsjIsjqFjiDt/na/lSv/C+1bY+Fv54qaUq/XmBwbSHAn9DLGF11MYzDTUsXRihVy5hqH2apeRzEh5dAnzIGBnBXjhu5lYX/wWt8WA8efcFk3N0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502955; c=relaxed/simple;
	bh=6YeryhmREc4dO0HCdpYe1JglCQ+CebAVk+iMczQuXkA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rQsvdDK7B0g0//HFkzPoMFK/1mvYziLTxi0qej8IAGxlv6fpo9mgiV/MOF+NI89HjO9AnJPbdwAeFbXOR5gnSH5dQZNbWffMDT4RnkbyNBzWTVyZk5wDbD40dLxpMibjl02WDr9QbVgyOlmAP4WB85z21aU66VXae4NWBq27dgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XrDnAhi4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZB0Pu2G7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYge1348177
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KbfQ2UAAVMB
	fP+nuZvR07sE4ywE55LLtOLcTY1Ujq2Y=; b=XrDnAhi4BQWtwDEvQSmUcqYquEJ
	jrXhXJYjPtfYWGXbwj/CsRzfYz0XTlw0x807ztQFi837FTFUsNXMiuNagn4IWwUy
	navWiXWEemF5BSj2uLblpOl1ie50OIS7HLYGYlpIvbyfKiyDhKWuF2PRYARXm8BH
	dz/V1Uy8jEhL5P2/hDES7NH+qxGmDNzpuU4M/n91VCCBxaOFK934kchS3r9Kh/4Z
	wa1zWYdOks9kiXMW8TzWzdXZpUGxGP8V+HWDD2ZD8LkVzGl7oEPeaj+5atMpYRAq
	fsfAL+N85qU5oopNc1ijGb+r7KzljMMotr9Mvo8p4K5IrCDSUCyWu+ULH+A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpy07sdmu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52c67f65cso462194085a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768502949; x=1769107749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KbfQ2UAAVMBfP+nuZvR07sE4ywE55LLtOLcTY1Ujq2Y=;
        b=ZB0Pu2G7Ml3G5YKhLJsWGn5DlqiItazYMSeQ327d30qG2HrzaaxSLF/W9HegcOThtM
         qxqrQuolk3mhHT6hl8fNiZ4z/mzvRDTF5/rWNfAiVB1K52N9V8al7M8KC+6aMkM8WUoq
         OK8jmu5mfMikYZXGPVoQ8iiNmNIM5P91iCy5ZuePQwW+vahH3g+b8RvKqPfZkuIp5Rdw
         EpkUAOC/Uwf+oaeQncXWG8zKfSahxB69ItPM5GW/d/u7o/UPlvFDet5midsW6MVdaLTD
         n0UE82HEfNUiJRFe19ztoOX9lGI/oEhwaEUzQetD6JLi8rCUNipaH0tULPTQnvT2BFat
         ZP5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768502949; x=1769107749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KbfQ2UAAVMBfP+nuZvR07sE4ywE55LLtOLcTY1Ujq2Y=;
        b=tUktxziIGaeFYy5JAqSmrLJz/5jMlHlGka6wx3xPnfCRQSgdEs+QjDfwxUjhJMD8N9
         b/XW35vKFckBrq4PLNjLY7DGu+4hvcXSgL4EhveWxmNSEYSDNCbbnB7pRdUVS5Wl+LwS
         ikCIAbubqPu0Rih5pxUznzLMLDYHGosBuzPJLg55ZtoTcjKFWGsf2w9pimA9+UpQ1Y+Y
         QDd11mLbTLvumshQ47BnHls9P2t28ZIzclms4nvnfPL7M0biPgYe+mPtk6wacqNw/m6c
         Mz/AlWo9KrMtcbt6W2AqHYMgqXlLHstdXCPfHe2b9tTG203GXXDdcfrK3g3FFnfveF1Z
         6K1g==
X-Forwarded-Encrypted: i=1; AJvYcCVijVECK/wYyhUACtT5PJMfmRtw7PHi7rQqj+Lb/g1iMZ9d8rYfaLW67t6nDWRxkJcuYZAoQT77TMwY@vger.kernel.org
X-Gm-Message-State: AOJu0YxSjPvJ7MeJ1hdnPM2Yg8dctpAD3OFyln58+hsqz9zjexZFUtWm
	3VPPao3Qe6u1e/kl8aDbo1SdiuAixTJlA2FGXm9IyOLWjodSEV48OnoZQiHAghrDC712p7Tr/PU
	IzrHB1MvjL8AiEy1A9y4NRdiKpNZIElHezf9gpZSqCwOtd4SbNomX/LGdQ1EpLuZN
X-Gm-Gg: AY/fxX4vJoH1udIijaufcxcmXSgO1kLRfDX6ZvCOdT53qZ47JhDKz9MU9bwRGJLGT+1
	NTL5wRJ3B1PSVqpUffYbfOdjZ8Fqt7dKQS6+tIDX0nuK5UBhVuKFcq8KIoZh8cH4jZE4OvAxq3I
	V0ZsFMioJ5tdN+sSuXkV90RCW3PX1dOBeSZ8mv69ZvL3VvSKNwHNXoRi+6gi7ynD+6lEw2Pw0d8
	fFCj5A5kCebUmBKaOBTX4OpAQm5oADqd8pc92qpDDzQat45e2fxZ7Sw8ZS5rjHJHBlClk6kdD32
	W0LIqZqBso/LlYtd88aYPYNKkzGmRCdeCeDuK5zj4VFJABS1UU1+PjpapnJUwykzzWBLCRiDwv9
	6U4O9U/rNBuk3x04zfmB/7SURLw==
X-Received: by 2002:a05:620a:d88:b0:8c6:a0a4:b796 with SMTP id af79cd13be357-8c6a68d2fbemr52981985a.2.1768502949145;
        Thu, 15 Jan 2026 10:49:09 -0800 (PST)
X-Received: by 2002:a05:620a:d88:b0:8c6:a0a4:b796 with SMTP id af79cd13be357-8c6a68d2fbemr52977285a.2.1768502948619;
        Thu, 15 Jan 2026 10:49:08 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168c6dsm14408166b.19.2026.01.15.10.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 10:49:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 3/5] arm64: tegra: Drop unneeded status=okay on Tegra234
Date: Thu, 15 Jan 2026 19:48:43 +0100
Message-ID: <20260115184840.310191-8-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3727; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=6YeryhmREc4dO0HCdpYe1JglCQ+CebAVk+iMczQuXkA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpaTaMfNUYzFoyGDnGE0z47b1BrDOgFTAeCHEt8
 +Vhz+RDAgmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWk2jAAKCRDBN2bmhouD
 16rBD/90ZhEDFklmnT+xz5DV+tG8aAMPSyBpJIV5kgS8Ukns4ew/1hr3wvC4YVfBbp826uMgeob
 bXJ5EgpGpjhbLIL7tHMYb/lRf64vmAsVTM4qIg4+S+ASahKMqto/foggAigIvzp8cygXMkZQ9M8
 wRTM6Z8Izz7iwtYxUsMsQx7+5aKEyJ5dFzuiI5hoVaDbZjEjejSRD+loN2K0wcbgbft4xA10ZNf
 1dVmp+LqwSph0sAD4M6du601abh6Wn/Oe1kcu1d1HOgFvYmLve23iAnT0ROFjJdS0UXbognRWaB
 3WtUPRXGNCfpm2qgnF38/Nu0C09o96XH9jMjlgshGLo3eTWe+sIQr2r6svSxA5gtwa9UDkg/TJD
 lsaFtX4aojxbcgqsKF8mAy035Ti5REAye/jHN6msVvORdUTHt/l9gSD6G1OQstK4AsxfmkfCdd7
 2SDAGDr074UZD0ztPne55+W8YFyyiVaXJK5JZ+t+0ZYs1Lmn2G7phbMRNQl8pgfbBgSiNcLuT/9
 J4GVG1zkWV5X2Ruh37MOxRK9XkdSnflsYWlxSFyJ4HREo8S52Pxu6BhS7hq8K6ZJ1k1MQFULnBS
 Hh2dh0SNV7XiubClSjoLl+AOIdeGW+KGysVqa52Kp4uMf5uObaZYxWReQjYFGAj0VrebUXJM9ws dV9eWpkDodAl1IQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: wW6DFCqmUTJm5DE6We5wHX3eZzVKG7tl
X-Authority-Analysis: v=2.4 cv=fMw0HJae c=1 sm=1 tr=0 ts=696936a6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cTQqHujFmXnwVRAJhDYA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: wW6DFCqmUTJm5DE6We5wHX3eZzVKG7tl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE0NCBTYWx0ZWRfX/9CiHOgOq1pM
 4H1zsTYWft+RssdvtUM7bODohtvdElcwlmM7+BbAATULsEH9tVK4+CmH7bJ6mFdDRPAkM0OWas9
 Qt7hyUU/iFamx6CqgmbyMiubgyr8xjz+EKwkLx38UvEomiGonAIX2zpmlgHHAigCH9R+xRn9AJm
 fit39x638Lf1hNIwKxl6vaqchQDZFw+p/oxPSZEj6s9bTjkgSUFfVVVr1fkX2AbEM21dGDKMmWv
 pw2oYYaabCsTy4nOM2+fQG1pu8zLr+RifQ8DM5wTpWIF4cIUIG59WcsykPJCQ9O3DN6ZQYh35CC
 PPcurdn8ZpjuTV9tuvfQD45EYt8DTxY1UkFilYen1ZBQtvMUi4OiFXDj6Da6kLWq7qbfIw1AK2o
 k7872ZJkgEa6A2gnMgUCPQexw3xIBE1P6ztyE9Or/kSvTPEAKO5icbfY0w+MAnWB9dpDzoR1F4a
 pw1iCkWnGUSn5hLrb6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150144

Device nodes are enabled by default and this DTSI file does not include
anything else, thus it is impossible that nodes were disabled before and
need to be re-enabled.  Adding redundant status=okay is just confusing
and suggests some other code flow.  Verified with dtx_diff.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/nvidia/tegra234.dtsi | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 827dbb420826..850c473235e3 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -40,7 +40,6 @@ misc@100000 {
 			compatible = "nvidia,tegra234-misc";
 			reg = <0x0 0x00100000 0x0 0xf000>,
 			      <0x0 0x0010f000 0x0 0x1000>;
-			status = "okay";
 		};
 
 		timer@2080000 {
@@ -62,7 +61,6 @@ timer@2080000 {
 				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		gpio: gpio@2200000 {
@@ -2780,7 +2778,6 @@ mc: memory-controller@2c00000 {
 				    "ch11", "ch12", "ch13", "ch14", "ch15";
 			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 			#interconnect-cells = <1>;
-			status = "okay";
 
 			#address-cells = <2>;
 			#size-cells = <2>;
@@ -2812,7 +2809,6 @@ emc: external-memory-controller@2c60000 {
 				interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&bpmp TEGRA234_CLK_EMC>;
 				clock-names = "emc";
-				status = "okay";
 
 				#interconnect-cells = <0>;
 
@@ -3888,7 +3884,6 @@ smmu_niso1: iommu@8000000 {
 			#iommu-cells = <1>;
 
 			nvidia,memory-controller = <&mc>;
-			status = "okay";
 		};
 
 		sce-fabric@b600000 {
@@ -3902,7 +3897,6 @@ rce-fabric@be00000 {
 			compatible = "nvidia,tegra234-rce-fabric";
 			reg = <0x0 0xbe00000 0x0 0x40000>;
 			interrupts = <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		hsp_aon: hsp@c150000 {
@@ -4064,28 +4058,24 @@ aon-fabric@c600000 {
 			compatible = "nvidia,tegra234-aon-fabric";
 			reg = <0x0 0xc600000 0x0 0x40000>;
 			interrupts = <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		bpmp-fabric@d600000 {
 			compatible = "nvidia,tegra234-bpmp-fabric";
 			reg = <0x0 0xd600000 0x0 0x40000>;
 			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		dce-fabric@de00000 {
 			compatible = "nvidia,tegra234-dce-fabric";
 			reg = <0x0 0xde00000 0x0 0x40000>;
 			interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		ccplex@e000000 {
 			compatible = "nvidia,tegra234-ccplex-cluster";
 			reg = <0x0 0x0e000000 0x0 0x5ffff>;
 			nvidia,bpmp = <&bpmp>;
-			status = "okay";
 		};
 
 		gic: interrupt-controller@f400000 {
@@ -4239,7 +4229,6 @@ smmu_iso: iommu@10000000 {
 			#iommu-cells = <1>;
 
 			nvidia,memory-controller = <&mc>;
-			status = "okay";
 		};
 
 		smmu_niso0: iommu@12000000 {
@@ -4381,14 +4370,12 @@ smmu_niso0: iommu@12000000 {
 			#iommu-cells = <1>;
 
 			nvidia,memory-controller = <&mc>;
-			status = "okay";
 		};
 
 		cbb-fabric@13a00000 {
 			compatible = "nvidia,tegra234-cbb-fabric";
 			reg = <0x0 0x13a00000 0x0 0x400000>;
 			interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		host1x@13e00000 {
@@ -5804,12 +5791,10 @@ dsu-pmu2 {
 	pmu {
 		compatible = "arm,cortex-a78-pmu";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-		status = "okay";
 	};
 
 	psci {
 		compatible = "arm,psci-1.0";
-		status = "okay";
 		method = "smc";
 	};
 
-- 
2.51.0


