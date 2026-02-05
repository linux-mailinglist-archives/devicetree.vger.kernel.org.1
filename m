Return-Path: <devicetree+bounces-262904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOWTI21ehGnS2gMAu9opvQ
	(envelope-from <devicetree+bounces-262904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:10:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3864CF05AB
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2976630E71E9
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E24B39A7F6;
	Thu,  5 Feb 2026 08:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e1c1P8Ym";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R41NAm/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB1039A7E5
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281992; cv=none; b=iPDgCJUKqHp1WZfD39PvIs3Pr81tkO3rfki27kUIbqOngSODU79mjMrS2o6TcYUYOF2H/XDXlw4L7RqUqX9o/qtZM41P1deqpnn/DvE3hvod6CkEwZd3QbztCUzBVLXLA1F+vKBAYXZwOighWMZ7Fc0SLhtQXRs1cCqgxtf+xEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281992; c=relaxed/simple;
	bh=LvwaXqsi+CGXRLv/jrULMfrEq2H2ZTLomPFgmnp1re0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Kc6Q2xCYhj9NiCywCNMkib2cd0Q8LiFnOQtA6gjH/Rzj8r9COJQIrnJrGuSM5+Hz0bv8Akgv2IHatYyeskjI3tPSRFKymiTjJ5C1fu2m4bSxItdF3BrX4NMy2WhoJ4m2k31K/DjarnTp6EAjW8meybQUGdpn1GsFMdgCcfyqM5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e1c1P8Ym; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R41NAm/H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dkxp3238164
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:59:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=C4nJZIEag1u
	yaDhBuxtETW0kqamrp42BiH+hXZXLzF8=; b=e1c1P8YmfxMm86FMVXOs6Xk8PhU
	CLvSAFpPH1zFmvfhb8bSQzfp+aNEzyFsvF3T5tqTD+pkOT6KyKlx5FnsWFqH6dhC
	FiLckWy3b98xzRCRXpwOYJQ/seBRn4tlUcs+m+RPx4W5yTvYEaQrNjyX11guMZDV
	aXaAeW6lXBQamE0dXiNzMRNHb79H5sBNWnAdYSqDFL8fm9Nn9oFdSQkxaLFiyDzv
	k4v3g/ogiIF2iBA8c4soJWu8Meb9B6uHKCrBWplqfMml8qxkMuVykGSBBzlGCdA1
	9xhoSL+jQlX6lvT5AxSvIrx3WhGqdxyBuknMBl4sB3/SoLY8sVju4TulAKw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4cp51xfh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:59:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso1734215a91.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281991; x=1770886791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4nJZIEag1uyaDhBuxtETW0kqamrp42BiH+hXZXLzF8=;
        b=R41NAm/HYYSFRgYa/7/RHKNO4OhIGuHmcR8kQJ/DPcGDjOcphbDgeDXUMMKGkikT/8
         8rO42ttXkz0AcRObIJ5sk3TImrBM5SOVBy3NZOO55+ICGa/1DrNI+BGsExhlGQpTtWJi
         adTBejzCGqz0kEedfgE5gPAnAg9og0Vu/4cn5M1isIY3yHQa6d/ug0USfecxtyAlQivO
         KqbJphFd+e/te3sN4VTxvaM/7//6SqVsjav56rnhFnrOlYcJAyBWogJgaY+QcbfOZXTu
         Nn/0bd3npCJFBersR3g4XXztxE/2x2vKxvb0fSZNNzIW5YQ9U/iLi45zzokS/2ZSZdyY
         DCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281991; x=1770886791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C4nJZIEag1uyaDhBuxtETW0kqamrp42BiH+hXZXLzF8=;
        b=TnRIxOsQmtZgEm0FiQAKl5yUGRvOX+ab0btn4FdFan/RVd8GRMgLpKWTrHoWkj9x43
         GrkcUg4TOvOb2yI3F5SE6ifuiMFBtYy8tbyXgTjpLusRbRFh7RYMDIIC8HsrQ9wro9jQ
         VyafiPnrxqctDrWb6uZTJ4VMZSxheCgkXiJxz2Uoh+Bz8zDoFV/Mj87TEsLBXC7qepkx
         K5CgQlKoM7IkbWtzf5q/ZDRNuXzjPH6X17WVbXXVm/lVk82IiMkFbR4YqbvcR+gNuiyI
         MH+m0TrgBn6+PeH4rv9wo8fxiAY8sDnTCEI6RXi0pIpu9+srb8s6c7LboEVmaIAmrIrk
         2jkw==
X-Forwarded-Encrypted: i=1; AJvYcCXMr5JlAyDl9rSWl1+D0wjyrub2uZI3jXuap8Wadrne+Ja5btDIDFnjbCeyWMh9kG+PCZeK7/qFYATf@vger.kernel.org
X-Gm-Message-State: AOJu0YwkmHnzZVoJTeMNh6yc28UZzMOy9yUfkmSc1Qasd8sf3vdgMMky
	w81ABHXFAohXWyco3j/s1e4m1+ErkcmpJ29inYCYfqIsYyakTsrT8d5QRPTb4E4m2LXbB1IM0AH
	CJSIbmLb6JgGH44CVTwFvwZua9V3pdcPbldOSZ0of65M9mg9zu6HTkreuDfrjVoLE
X-Gm-Gg: AZuq6aIhmB8x6f20syYrW19GnoD+gKJ1716OYSgiYrsfSWXtfVc5jSGTvk2Ng5K3xB3
	D7aerAEBT4bKIIQ0vCS4jfRcHsQTsvQ53fCf3uVfC2Kd2MEEACWNzr9BXeDowI2rJrlAm3XnxI0
	W4LVkBmOvK2L19JcA2gx1iUN0ONevxm8c8EzuH74+jfs82kmkd3GkuxhPqBDHeYRBdIGzeiZn3U
	nV2gZD8nskDuSLrYGj+TOFtCXi7pEopTPf9JKaf04IIum3hXZ6nYGzoZGj6M1DppjV14fNN9aFO
	X8GfDXmj7oPTlCsILXps77GsctQIXUJAX49vYRYjGtLDwqP2nY7/+cXVOGTG4w8+IKfy7mZ4Jhq
	yncb5nq0zwvFr7ZamgQgLRYw4khKjL90zgaWpwkfpSc1FJNLRqCdcBYVIw83GXDanpAIi4awdLC
	tOqjHCJV4KfhFWmrKsOcINqlv7dVtVTq8prrXi+O0=
X-Received: by 2002:a17:90b:3c49:b0:353:356c:6840 with SMTP id 98e67ed59e1d1-354870e76abmr4646270a91.14.1770281990979;
        Thu, 05 Feb 2026 00:59:50 -0800 (PST)
X-Received: by 2002:a17:90b:3c49:b0:353:356c:6840 with SMTP id 98e67ed59e1d1-354870e76abmr4646246a91.14.1770281990455;
        Thu, 05 Feb 2026 00:59:50 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8572b4e7sm4361984a12.33.2026.02.05.00.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 00:59:50 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 1/4] arm64: dts: qcom: ipq9574: Add details for eMMC
Date: Thu,  5 Feb 2026 14:29:33 +0530
Message-Id: <20260205085936.3220108-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205085936.3220108-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260205085936.3220108-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Oc2VzxTY c=1 sm=1 tr=0 ts=69845c07 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DDd1rAVsgBFtUBlyKmEA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: KPa47CKHwKupbSC1LsxHNF8wa9TwDPs8
X-Proofpoint-GUID: KPa47CKHwKupbSC1LsxHNF8wa9TwDPs8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NCBTYWx0ZWRfX/PsuXXB8t/08
 EWVsDltGPbKaFWVxXv8MiIJyYJGB6SKv+ffkrt0SUOygjMI97bCJf7WDAVcpg/7Mapc/Ey60fPS
 kZbR2xFp9iocNDz9GmuO1qqMBdrlDS7Kt9wXr+kqft3I5nBgkbTXc91O7nlg2l3nkpH+BPKCks0
 oa6a0zIVz2XtREeodvcr4KX9C7HCjbdVT2uQyAU7L0g6A2whHspMrDqw/i6UgvTEMalHF3Sa/Jo
 g+gPoGJZbVWB7MCArEp6vYxcwjbhYfMcIVZdfj+nUygpFF2aHCBPGNbdj1RDqwFTjWoEIR0Pn9f
 AfHc8Cs4IVoSIJk+aIpefAamx/QozNOsvbFH9xdwZT4XgyrsHdDC10iHpxZoU/TLDStDP4TCHc9
 okseZY7kpKmqKmZf1q7B+WIvIcjEjHNuA7ED2h9rOPRCiB5hctDvX4wz6RblCvhXOYKIPoZGOiN
 AYOBd0TwiKY4UCVLSzw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-262904-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3864CF05AB
X-Rspamd-Action: no action

RDP433 and RDP418 has NAND and eMMC variants. Presently, only NAND
variant is supported. To enable support for eMMC variant, add the
relevant GPIO and regulator information.

Do not enable NAND or eMMC by default in ipq9574-rdp-common.dtsi. Enable
it in board specific DTS as applicable.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v5: Cleanup the enable/disable of NAND/eMMC between the common and
    board specific DT files.
    Add regulator info
    Remove sdhc info duplication in RDP418 dts
v4: Move sdhc properties from emmc dts to SoC dtsi

v3: Disable nand in ipq9574-rdp-common.dtsi and enable it where required.
    Add 'Reviewed-by: Konrad Dybcio'
---
 .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 48 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts   | 44 +----------------
 arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts   |  4 ++
 arch/arm64/boot/dts/qcom/ipq9574-rdp449.dts   |  4 ++
 arch/arm64/boot/dts/qcom/ipq9574-rdp453.dts   |  4 ++
 arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts   |  4 ++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  9 ++++
 7 files changed, 72 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index bdb396afb992..6b53fb344cf6 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -22,6 +22,15 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	regulator_fixed_1p8: s1800 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-name = "fixed_1p8";
+	};
+
 	regulator_fixed_3p3: s3300 {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <3300000>;
@@ -121,6 +130,11 @@ mp5496_l5: l5 {
 	};
 };
 
+&sdhc_1 {
+	vmmc-supply = <&regulator_fixed_3p3>;
+	vqmmc-supply = <&regulator_fixed_1p8>;
+};
+
 &sleep_clk {
 	clock-frequency = <32000>;
 };
@@ -169,6 +183,38 @@ data-pins {
 			bias-disable;
 		};
 	};
+
+	sdc_default_state: sdc-default-state {
+		clk-pins {
+			pins = "gpio5";
+			function = "sdc_clk";
+			drive-strength = <8>;
+			bias-disable;
+		};
+
+		cmd-pins {
+			pins = "gpio4";
+			function = "sdc_cmd";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		data-pins {
+			pins = "gpio0", "gpio1", "gpio2",
+			       "gpio3", "gpio6", "gpio7",
+			       "gpio8", "gpio9";
+			function = "sdc_data";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		rclk-pins {
+			pins = "gpio10";
+			function = "sdc_rclk";
+			drive-strength = <8>;
+			bias-pull-down;
+		};
+	};
 };
 
 &qpic_bam {
@@ -179,8 +225,6 @@ &qpic_nand {
 	pinctrl-0 = <&qpic_snand_default_state>;
 	pinctrl-names = "default";
 
-	status = "okay";
-
 	flash@0 {
 		compatible = "spi-nand";
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts
index f4f9199d4ab1..23d4cba7c6b6 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts
@@ -16,48 +16,6 @@ / {
 
 };
 
-&sdhc_1 {
-	pinctrl-0 = <&sdc_default_state>;
-	pinctrl-names = "default";
-	mmc-ddr-1_8v;
-	mmc-hs200-1_8v;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
-	max-frequency = <384000000>;
-	bus-width = <8>;
+&qpic_nand {
 	status = "okay";
 };
-
-&tlmm {
-	sdc_default_state: sdc-default-state {
-		clk-pins {
-			pins = "gpio5";
-			function = "sdc_clk";
-			drive-strength = <8>;
-			bias-disable;
-		};
-
-		cmd-pins {
-			pins = "gpio4";
-			function = "sdc_cmd";
-			drive-strength = <8>;
-			bias-pull-up;
-		};
-
-		data-pins {
-			pins = "gpio0", "gpio1", "gpio2",
-			       "gpio3", "gpio6", "gpio7",
-			       "gpio8", "gpio9";
-			function = "sdc_data";
-			drive-strength = <8>;
-			bias-pull-up;
-		};
-
-		rclk-pins {
-			pins = "gpio10";
-			function = "sdc_rclk";
-			drive-strength = <8>;
-			bias-pull-down;
-		};
-	};
-};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
index 5a546a14998b..73091067bad2 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
@@ -55,6 +55,10 @@ &pcie3 {
 	status = "okay";
 };
 
+&qpic_nand {
+	status = "okay";
+};
+
 &tlmm {
 
 	pcie1_default: pcie1-default-state {
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp449.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp449.dts
index d36d1078763e..cbc9047cfe92 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp449.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp449.dts
@@ -15,3 +15,7 @@ / {
 	compatible = "qcom,ipq9574-ap-al02-c6", "qcom,ipq9574";
 
 };
+
+&qpic_nand {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp453.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp453.dts
index c30c9fbedf26..d233ec530cc3 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp453.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp453.dts
@@ -15,3 +15,7 @@ / {
 	compatible = "qcom,ipq9574-ap-al02-c8", "qcom,ipq9574";
 
 };
+
+&qpic_nand {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts
index 0dc382f5d5ec..f2334b9e0ed4 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp454.dts
@@ -14,3 +14,7 @@ / {
 	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C9";
 	compatible = "qcom,ipq9574-ap-al02-c9", "qcom,ipq9574";
 };
+
+&qpic_nand {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc9..4b8c58982869 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -467,6 +467,15 @@ sdhc_1: mmc@7804000 {
 			clock-names = "iface", "core", "xo", "ice";
 			non-removable;
 			supports-cqe;
+			pinctrl-0 = <&sdc_default_state>;
+			pinctrl-names = "default";
+			mmc-ddr-1_8v;
+			mmc-hs200-1_8v;
+			mmc-hs400-1_8v;
+			mmc-hs400-enhanced-strobe;
+			max-frequency = <384000000>;
+			bus-width = <8>;
+
 			status = "disabled";
 		};
 
-- 
2.34.1


