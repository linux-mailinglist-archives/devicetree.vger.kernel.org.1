Return-Path: <devicetree+bounces-252697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D684D02049
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7FAF930010CF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C70243DA24;
	Thu,  8 Jan 2026 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i1KFadyP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jnWoNeNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC343CEC6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864373; cv=none; b=IEIRu5N2BybZffIeJ6E9jAAOq5vfJoFkaX7qcbwFbEiiHWZ4j5PSGPAiQx3KufdeMcSyflLWIj1UZLpNwl86g8jFP3fNUDRzRiFDkhx/Scm5zauLqL0/EdwnEcSD4OIXocSHWPDS5AjD01YntjbT1jQ9nAdgE0lkisf31qJbJgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864373; c=relaxed/simple;
	bh=YxfSzJM8WsRExxZK3xx9eB8U/XL9UNXuUHdsSmToY6w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OwwM4dF6X2w83U+lY7F3Wd3zeQsWiGs5PkKtWEZLdUSELf5K2T8mPyFjI3bxVXrzPFyyrNlubx9aZjBRS+ZcBU89so8Mjr8xZ0cQATfFlczZH86u5knqgeiuHi5Dhg31BedczAVaHSjt2zL9zsx3jOap1DpgiUMGwQB0KYoqHFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i1KFadyP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jnWoNeNa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6081xPHi126653
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+pZSCBtS5fM
	5xx/JeqGU1/g+SQHMYaZuRPbzDAb9H80=; b=i1KFadyP7VEdNzgwrNDXpiKVIva
	O2qzjF6omCRs9AUnVLE6u9vlkECI/pKqFKb6zagyNRuFkQCrUfH6JC3Ubs4Izd/k
	N1MatyvFCkye6bFwY7IuCOsnNMKlrOiDf8wYoup+MF70gfAfOQBVzjs5QMMidqjc
	NHvH9LqEZqhENGWQp2dRKKPUXlWFnQIerY2UuULx5xBJbkqA1vId53/EYHi+sFah
	LycZIfQFnPxartsSAG6usb78+DLxKQjAN0bBbTbg2awZD4CHOFyZ6cEE4Y/4ULNA
	ao7ASQuk/Q6ip7pKgS9tbhdC6HX3sq0zv8fW2UnRXmnNby0Btdt9ZoTrS2g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj3d698bd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:26:00 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a2f8e7d8dso86410956d6.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864360; x=1768469160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+pZSCBtS5fM5xx/JeqGU1/g+SQHMYaZuRPbzDAb9H80=;
        b=jnWoNeNa1j43e5Kqxxjtln92p8euvxSd8HEM3AaU8wgTsZDZsBF6H7wapi8PTp/yOs
         XIxPYlbu+hOEa0rUG7pqfEUWHqGTmPR6NUb9Qx5YwiWRIvaQKldpzOiaE3Hwne7LJXre
         rWFFVA7GGhcMQKrZV8w5e3Y79Tyglr2Jf5RZt3u5a6xQKAz5jZmKEvS6Rg7K/VgoIbRd
         HzOlmBop2lUKwL7coGNgVrKKPZsLZFxCXJKVNUzu/CMsAuCHTUbyRXcdr3GRpDfrybwh
         6NXlCjXpM+GmXlE7dB0KixRc1iYNSl7MKMZntXQe7prVlCsxF/ADYV3C5873Uao2K86l
         jtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864360; x=1768469160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+pZSCBtS5fM5xx/JeqGU1/g+SQHMYaZuRPbzDAb9H80=;
        b=AzY1/x5E0olN0ldBjy7AY0ZUVrvSOWZ9Jvv3LHdAhp+z+CKIrDaS1t5hefOzAdujqa
         Hk1AXDfI6bD4rD+t8/r0XpxT170hemMBmfztO/NkKZuxfJLkXk031G+lOhBoyhBUTVze
         xUMLnkgL1wCfHVfGM67YzL0ggLmD+BmcJKPpCx5ifAJoSj7GOpraFF1BSVmuyvGjAqmZ
         okjHoq7FSfrz2UVG3Av5tRwBBRr0HGPxok0oTdAwtMyQq71affmcJHCKShP3hSpFT5gO
         C+pmok9LIPNBUYAkj2EmLga2kXo6bV8d+6ak9MsUFcDlec8xsc1zuu5JMj7NsL49pEt+
         6PsA==
X-Forwarded-Encrypted: i=1; AJvYcCXJe5thYc3rctHuQIa4saUnryjD+s8rdT0d3KYe1jLoIFsosp7TZN6Lgljsy/rSdbdoDxvUCCAqi2KM@vger.kernel.org
X-Gm-Message-State: AOJu0YwfS94QEG1VMbdd8LWVqB4vyjE1iU17xEhaAXna+6gNLesfLvo7
	WAcJthIyGwiBW26ctg1FtDnGF5FaEHhmoSY8yh9vEzxkAhjzPXJmYpxrDT3RckHtJwhOseYLGrr
	xeFb4Fn5x2NSkJbkOe8w+17DyKgjbbPzR7gTpVBVo30E7AcaJ5P+2BVcBJ7XX/NYL1kIZm9bF
X-Gm-Gg: AY/fxX4xEU/SyFXUNE43yYOIvJ+rEFXWLyqc2yXVK5AXhBtJTInOhG77g5CNn4uHccK
	P/BEi2fmlh5nXNjaCRD9QywVa5YqYBF6XJ0TH8QyO40zgnor62c6Nva7xx3iHhlkGhPTpkDvt0Q
	2aPiu3BwuMD6l2X24wQIqVIyrCqpQzpaWfuNw0RbXgwFQW4FCbNrlBs8SKTbsXBgXaQ206taVXL
	n9ZvpOpPxwey7sM4E/yxmnLO52CJP3PlUIaCjpqhjJNl929DDxiv5R8SYwDmRJaVvya/a2Seb67
	Dm8mSyPiIvC1Bu7QAmNGomPbuSH2hLyKGkSNGk1LiKws2sxaiqzqP5jiq4QZBrQYkPPE3zGk27Z
	qr8A3N9bVJ1XXSLmkDLIzPtQNX4WysTeuBRJ70VygzxmptkAP2NPnJhdpvlae3v74SUI=
X-Received: by 2002:a05:620a:700f:b0:8b9:d2cc:cded with SMTP id af79cd13be357-8c389405df9mr756915185a.52.1767864359449;
        Thu, 08 Jan 2026 01:25:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQ1NIcONMBFoJQ74tPsHmfkCYsTjqTUVkeGjcWQASh57OmFjRt5qk9Uq9UK3uAAkDUCgzQbQ==
X-Received: by 2002:a05:620a:700f:b0:8b9:d2cc:cded with SMTP id af79cd13be357-8c389405df9mr756912985a.52.1767864358968;
        Thu, 08 Jan 2026 01:25:58 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770ce659sm49279916d6.10.2026.01.08.01.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 01:25:58 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com
Subject: [PATCH v2 1/2] arm64: dts: qcom: talos: switch to interrupt-cells 4 to add PPI partitions
Date: Thu,  8 Jan 2026 17:25:41 +0800
Message-Id: <20260108092542.1371-2-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8f05KjHbqnkL7Ht8bhOfBtOL3mtKvR4u
X-Authority-Analysis: v=2.4 cv=APfYzRIR c=1 sm=1 tr=0 ts=695f7828 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WKGTdzOb-NdnYUcqrnwA:9 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX72cMh1fsZQWU
 wHZfiWZ4vWCYIYeD2pY4MRZMQEkFtTwtr7CVCIAVRgYWE4+CA7GDzbyrNpj6fCWbrD9mtbfp5Ls
 LKZtqgKykezVXGr5GoOvYJi8/j9hGg8Ilr0BoaZ1RVfxvWtAZhcgfCIw/dnUjrRzVaXNnQ4KppO
 siA2P13lCUP/Tk7el6mXUpX8aAkulWo4xTLlUuutHoSVqXHrKNy+NVsfmMvqvGszML1BWhgNSI/
 8MPnG7u60Qn7g7Id0FZpsZyxV17lJosrDY/l8pqSlcYnq2wRKvsOKXkEpJy1CcQw2BQoewrMkZs
 pqkOKd2FDNH+QpLUH9kZzU4VZPFmRMneywMcwykfid/wPT286XR9n/VVKZ0eWrtkq9erpMo/ef7
 zaRz9umDJZh0bHpU4CtI59TjnK9OTIc77m9WoWevHTMwehexAM/iQ7sFwqFOgee/jQIuRxPrSPz
 B/MSPldsf6xkuoEyGcQ==
X-Proofpoint-ORIG-GUID: 8f05KjHbqnkL7Ht8bhOfBtOL3mtKvR4u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080062

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The ARM PMUs shares the same per-cpu (PPI) interrupt, so we need to switch
to interrupt-cells = <4> in the GIC node to allow adding an interrupt
partition map phandle as the 4th cell value for GIC_PPI interrupts.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 308 ++++++++++++++--------------
 1 file changed, 154 insertions(+), 154 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 8171ec482be0..084386f76a61 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -489,7 +489,7 @@ mc_virt: interconnect-2 {
 	smp2p-adsp {
 		compatible = "qcom,smp2p";
 		qcom,smem = <443>, <429>;
-		interrupts = <GIC_SPI 172 IRQ_TYPE_EDGE_RISING>;
+		interrupts = <GIC_SPI 172 IRQ_TYPE_EDGE_RISING 0>;
 		/* On this platform, bit 26 (normally SLPI) is repurposed for ADSP */
 		mboxes = <&apss_shared 26>;
 
@@ -511,7 +511,7 @@ adsp_smp2p_in: slave-kernel {
 	smp2p-cdsp {
 		compatible = "qcom,smp2p";
 		qcom,smem = <94>, <432>;
-		interrupts = <GIC_SPI 576 IRQ_TYPE_EDGE_RISING>;
+		interrupts = <GIC_SPI 576 IRQ_TYPE_EDGE_RISING 0>;
 		mboxes = <&apss_shared 6>;
 
 		qcom,local-pid = <0>;
@@ -689,8 +689,8 @@ sdhc_1: mmc@7c4000 {
 				    "cqhci",
 				    "ice";
 
-			interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "hc_irq",
 					  "pwr_irq";
 
@@ -751,14 +751,14 @@ gpi_dma0: dma-controller@800000  {
 			compatible = "qcom,qcs615-gpi-dma", "qcom,sdm845-gpi-dma";
 			reg = <0x0 0x800000 0x0 0x60000>;
 			#dma-cells = <3>;
-			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH 0>;
 			dma-channels = <8>;
 			dma-channel-mask = <0xf>;
 			iommus = <&apps_smmu 0xd6 0x0>;
@@ -785,7 +785,7 @@ uart0: serial@880000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_uart0_tx>, <&qup_uart0_rx>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH 0>;
 				interconnects = <&aggre1_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
@@ -802,7 +802,7 @@ i2c1: i2c@884000 {
 				reg = <0x0 0x884000 0x0 0x4000>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c1_data_clk>;
@@ -830,7 +830,7 @@ i2c2: i2c@888000 {
 				reg = <0x0 0x888000 0x0 0x4000>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c2_data_clk>;
@@ -856,7 +856,7 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
 			spi2: spi@888000 {
 				compatible = "qcom,geni-spi";
 				reg = <0x0 0x00888000 0x0 0x4000>;
-				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
 				clock-names = "se";
 				pinctrl-0 = <&qup_spi2_data_clk>, <&qup_spi2_cs>;
@@ -881,7 +881,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			uart2: serial@888000 {
 				compatible = "qcom,geni-uart";
 				reg = <0x0 0x00888000 0x0 0x4000>;
-				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
 				clock-names = "se";
 				pinctrl-0 = <&qup_uart2_cts>, <&qup_uart2_rts>,
@@ -903,7 +903,7 @@ i2c3: i2c@88c000 {
 				reg = <0x0 0x88c000 0x0 0x4000>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c3_data_clk>;
@@ -931,14 +931,14 @@ gpi_dma1: dma-controller@a00000 {
 			compatible = "qcom,qcs615-gpi-dma", "qcom,sdm845-gpi-dma";
 			reg = <0x0 0xa00000 0x0 0x60000>;
 			#dma-cells = <3>;
-			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH 0>;
 			dma-channels = <8>;
 			dma-channel-mask = <0xf>;
 			iommus = <&apps_smmu 0x376 0x0>;
@@ -965,7 +965,7 @@ i2c4: i2c@a80000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c4_data_clk>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -993,7 +993,7 @@ spi4: spi@a80000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_spi4_data_clk>, <&qup_spi4_cs>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1019,7 +1019,7 @@ uart4: serial@a80000 {
 				pinctrl-0 = <&qup_uart4_cts>, <&qup_uart4_rts>,
 					    <&qup_uart4_tx>, <&qup_uart4_rx>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
@@ -1038,7 +1038,7 @@ i2c5: i2c@a84000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c5_data_clk>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1066,7 +1066,7 @@ i2c6: i2c@a88000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c6_data_clk>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1094,7 +1094,7 @@ spi6: spi@a88000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_spi6_data_clk>, <&qup_spi6_cs>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1120,7 +1120,7 @@ uart6: serial@a88000 {
 				pinctrl-0 = <&qup_uart6_cts>, <&qup_uart6_rts>,
 					    <&qup_uart6_tx>, <&qup_uart6_rx>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
@@ -1139,7 +1139,7 @@ i2c7: i2c@a8c000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_i2c7_data_clk>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1167,7 +1167,7 @@ spi7: spi@a8c000 {
 				clock-names = "se";
 				pinctrl-0 = <&qup_spi7_data_clk>, <&qup_spi7_cs>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
@@ -1193,7 +1193,7 @@ uart7: serial@a8c000 {
 				pinctrl-0 = <&qup_uart7_cts>, <&qup_uart7_rts>,
 					    <&qup_uart7_tx>, <&qup_uart7_rx>;
 				pinctrl-names = "default";
-				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH 0>;
 				interconnects = <&aggre1_noc MASTER_BLSP_1 QCOM_ICC_TAG_ALWAYS
 						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
@@ -1260,15 +1260,15 @@ pcie: pcie@1c08000 {
 			linux,pci-domain = <0>;
 			num-lanes = <1>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "msi0",
 					  "msi1",
 					  "msi2",
@@ -1281,10 +1281,10 @@ pcie: pcie@1c08000 {
 
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &intc GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map = <0 0 0 1 &intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 2 &intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 3 &intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH 0>,
+					<0 0 0 4 &intc GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
 				 <&gcc GCC_PCIE_0_AUX_CLK>,
@@ -1388,7 +1388,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			reg-names = "std",
 				    "ice";
 
-			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
@@ -1497,7 +1497,7 @@ ufs_mem_phy: phy@1d87000 {
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x24000>;
-			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>;
 			#dma-cells = <1>;
 			qcom,ee = <0>;
 			qcom,controlled-remotely;
@@ -1536,7 +1536,7 @@ tlmm: pinctrl@3100000 {
 			reg-names = "east",
 				    "west",
 				    "south";
-			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH 0>;
 			gpio-ranges = <&tlmm 0 0 124>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -3463,7 +3463,7 @@ remoteproc_cdsp: remoteproc@8300000 {
 			compatible = "qcom,qcs615-cdsp-pas", "qcom,sm8150-cdsp-pas";
 			reg = <0x0 0x08300000 0x0 0x4040>;
 
-			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING 0>,
 					      <&cdsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&cdsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
 					      <&cdsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
@@ -3490,7 +3490,7 @@ remoteproc_cdsp: remoteproc@8300000 {
 			status = "disabled";
 
 			glink-edge {
-				interrupts = <GIC_SPI 574 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 574 IRQ_TYPE_EDGE_RISING 0>;
 				mboxes = <&apss_shared 4>;
 				label = "cdsp";
 				qcom,remote-pid = <5>;
@@ -3550,7 +3550,7 @@ compute-cb@6 {
 		pmu@90b6300 {
 			compatible = "qcom,qcs615-cpu-bwmon", "qcom,sdm845-bwmon";
 			reg = <0x0 0x090b6300 0x0 0x600>;
-			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH 0>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
 					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ACTIVE_ONLY>;
 
@@ -3572,7 +3572,7 @@ opp-1 {
 		pmu@90cd000 {
 			compatible = "qcom,qcs615-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
 			reg = <0x0 0x090cd000 0x0 0x1000>;
-			interrupts = <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH 0>;
 			interconnects = <&mc_virt MASTER_LLCC QCOM_ICC_TAG_ACTIVE_ONLY
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
 
@@ -3624,8 +3624,8 @@ sdhc_2: mmc@8804000 {
 			reg = <0x0 0x08804000 0x0 0x1000>;
 			reg-names = "hc";
 
-			interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "hc_irq",
 					  "pwr_irq";
 
@@ -3698,7 +3698,7 @@ gem_noc: interconnect@9680000 {
 		venus: video-codec@aa00000 {
 			compatible = "qcom,qcs615-venus", "qcom,sc7180-venus";
 			reg = <0x0 0x0aa00000 0x0 0x100000>;
-			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			clocks = <&videocc VIDEO_CC_VENUS_CTL_CORE_CLK>,
 				 <&videocc VIDEO_CC_VENUS_AHB_CLK>,
@@ -3809,7 +3809,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 				 <&gcc GCC_DISP_HF_AXI_CLK>,
 				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
 
-			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
@@ -4082,7 +4082,7 @@ pdc: interrupt-controller@b220000 {
 		aoss_qmp: power-management@c300000 {
 			compatible = "qcom,qcs615-aoss-qmp", "qcom,aoss-qmp";
 			reg = <0x0 0x0c300000 0x0 0x400>;
-			interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
+			interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING 0>;
 			mboxes = <&apss_shared 0>;
 
 			#clock-cells = <0>;
@@ -4114,71 +4114,71 @@ apps_smmu: iommu@15000000 {
 			#global-interrupts = <1>;
 			dma-coherent;
 
-			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
 		spmi_bus: spmi@c440000 {
@@ -4207,9 +4207,9 @@ intc: interrupt-controller@17a00000 {
 			compatible = "arm,gic-v3";
 			reg = <0x0 0x17a00000 0x0 0x10000>,     /* GICD */
 			      <0x0 0x17a60000 0x0 0x100000>;    /* GICR * 8 */
-			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
 			#address-cells = <0>;
-			#interrupt-cells = <3>;
+			#interrupt-cells = <4>;
 			interrupt-controller;
 			#redistributor-regions = <1>;
 			redistributor-stride = <0x0 0x20000>;
@@ -4225,7 +4225,7 @@ apss_shared: mailbox@17c00000 {
 		watchdog: watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-qcs615", "qcom,kpss-wdt";
 			reg = <0x0 0x17c10000 0x0 0x1000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&sleep_clk>;
 		};
 
@@ -4240,49 +4240,49 @@ frame@17c21000 {
 				reg = <0x17c21000 0x1000>,
 				      <0x17c22000 0x1000>;
 				frame-number = <0>;
-				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
-					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH 0>,
+					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH 0>;
 			};
 
 			frame@17c23000 {
 				reg = <0x17c23000 0x1000>;
 				frame-number = <1>;
-				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 
 			frame@17c25000 {
 				reg = <0x17c25000 0x1000>;
 				frame-number = <2>;
-				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 
 			frame@17c27000 {
 				reg = <0x17c27000 0x1000>;
 				frame-number = <3>;
-				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 
 			frame@17c29000 {
 				reg = <0x17c29000 0x1000>;
 				frame-number = <4>;
-				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 
 			frame@17c2b000 {
 				reg = <0x17c2b000 0x1000>;
 				frame-number = <5>;
-				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 
 			frame@17c2d000 {
 				reg = <0x17c2d000 0x1000>;
 				frame-number = <6>;
-				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
 				status = "disabled";
 			};
 		};
@@ -4296,9 +4296,9 @@ apps_rsc: rsc@18200000 {
 				    "drv-1",
 				    "drv-2";
 
-			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH 0>;
 
 			qcom,drv-id = <2>;
 			qcom,tcs-offset = <0xd00>;
@@ -4488,8 +4488,8 @@ usb_1: usb@a6f8800 {
 					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
-					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 8 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 6 IRQ_TYPE_LEVEL_HIGH>;
@@ -4515,7 +4515,7 @@ usb_1_dwc3: usb@a600000 {
 				reg = <0x0 0x0a600000 0x0 0xcd00>;
 
 				iommus = <&apps_smmu 0x140 0x0>;
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
@@ -4552,8 +4552,8 @@ usb_2: usb@a8f8800 {
 					  <&gcc GCC_USB20_SEC_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 663 IRQ_TYPE_LEVEL_HIGH>,
-					      <&intc GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 663 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 11 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 10 IRQ_TYPE_EDGE_BOTH>;
 			interrupt-names = "pwr_event",
@@ -4579,7 +4579,7 @@ usb_2_dwc3: usb@a800000 {
 				reg = <0x0 0x0a800000 0x0 0xcd00>;
 
 				iommus = <&apps_smmu 0xe0 0x0>;
-				interrupts = <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH 0>;
 
 				phys = <&usb_hsphy_2>;
 				phy-names = "usb2-phy";
@@ -4598,8 +4598,8 @@ tsens0: thermal-sensor@c263000 {
 			compatible = "qcom,qcs615-tsens", "qcom,tsens-v2";
 			reg = <0x0 0x0c263000 0x0 0x1000>,
 			      <0x0 0x0c222000 0x0 0x1000>;
-			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "uplow", "critical";
 			#qcom,sensors = <16>;
 			#thermal-sensor-cells = <1>;
@@ -4609,7 +4609,7 @@ remoteproc_adsp: remoteproc@62400000 {
 			compatible = "qcom,qcs615-adsp-pas", "qcom,sm8150-adsp-pas";
 			reg = <0x0 0x62400000 0x0 0x4040>;
 
-			interrupts-extended = <&intc GIC_SPI 162 IRQ_TYPE_EDGE_RISING>,
+			interrupts-extended = <&intc GIC_SPI 162 IRQ_TYPE_EDGE_RISING 0>,
 					      <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&adsp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
 					      <&adsp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
@@ -4636,7 +4636,7 @@ remoteproc_adsp: remoteproc@62400000 {
 			status = "disabled";
 
 			glink_edge: glink-edge {
-				interrupts = <GIC_SPI 170 IRQ_TYPE_EDGE_RISING>;
+				interrupts = <GIC_SPI 170 IRQ_TYPE_EDGE_RISING 0>;
 				mboxes = <&apss_shared 24>;
 				label = "lpass";
 				qcom,remote-pid = <2>;
@@ -4695,10 +4695,10 @@ cpufreq_hw: cpufreq@18323000 {
 
 	arch_timer: timer {
 		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
-			     <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
-			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
-			     <GIC_PPI 0 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
+		interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>,
+			     <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>,
+			     <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>,
+			     <GIC_PPI 0 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>;
 	};
 
 	thermal-zones {
-- 
2.34.1


