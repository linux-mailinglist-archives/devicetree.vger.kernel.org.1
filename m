Return-Path: <devicetree+bounces-255740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 630ADD27CB1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8DAD830859B2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54FC93D1CC2;
	Thu, 15 Jan 2026 18:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fHxNnQjz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iMh3Bqno"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B723D1CA4
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502956; cv=none; b=sh/1cf6ovkyIf/0gWgTg30gva7jUvKN36SQglz2YdfhaNnx48tgchouUjQK1XD+pOuX82pjhqxLXiiVzRwVZI+8sdbsMYJAAvjxpv4aWoMH+jhPChbeBW8Xju0haKsbQEWeNBYMzqRxVppk23I9ok7lkuzV5e5xDxlPCYodBE+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502956; c=relaxed/simple;
	bh=XKFoXPdixBTV3dzgqHP7NW2/mzQEqc5k7uIZdpXCHqw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C5ORdALoxuND8YeUnx5lHpk4Hk6pAXy99iTAB8kcuzOQc0vd40rBf+/lz0y8tMWIFnbTTZ8HnZ0ZJFArTqyG3xsWHj0xJLLFOCxlwBmOcamhoR5WOLy1lViIdxmKllm61ulUb6JADOWFPE8EJVzTkcEV5dAJPkIMEeGlZPSQxZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fHxNnQjz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iMh3Bqno; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYDjY347773
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ax1DNyjYEvF
	qUiFYZeWFqhe/AVDMnk1gl70ukeZMJIQ=; b=fHxNnQjzoT810GAy6kvXHes9j/q
	gbumlIotb6/FryYDucW3w03dsVzBg+lJ2onz9gFFB0OWWoBzefY+p7wW+dbvLPhZ
	Skus17dt0nGKIlD8ohPq4Dls5jbRWzuHpXYUl/RWyX/1lLqBZKKg8F/+g9Tt2pEd
	o9APjfpfCCMjRit7YS06pKiLSUaT8nZCvPPbyoDnoPueeM4jZqkHNPCiXWvwI8i0
	+HGolUQJoe4o/QS/oZiEV+XKBPqzMEXDN+j/NnoSMrvs1DTxb8+RvT1GSUpoUztg
	3XunVWZyY5fBj7DyoOtSOLOFGF1AUNtuoJf+bHW1tdjiDbvlTU23UsmopNg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpy07sdmt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52bb3ac7bso220667085a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768502947; x=1769107747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ax1DNyjYEvFqUiFYZeWFqhe/AVDMnk1gl70ukeZMJIQ=;
        b=iMh3Bqnod+or8+1Sg9/qjngSnPb2W9z3oAwqfAwuv+wzTlhnwVeEnmOKFUzjF8e91m
         8RN2l4cEJvKIkDSJrt9fMYYUzQTPYeDujID7+K+7do/3skNDmYQPpc6PTY3/684FMaKJ
         IyJqvx/qX5Ku8Ie2hpuA8kT/tEihT+iAMMWcH0W9BqgkGEHtAGPYkcqUqczmHochasn1
         hJmYQOuD4+nebDNEXTd3OIUbtV/pjp5Fav1P4Bw+hq/LtlU6IRuc2cbg1vfIEY1MOYxU
         JoFM5Gfc+OXyZwbBG2yHXIZuM79sKvEuYD1G9N8to3+En6k7FS4s+A8BxcELR4j+ro/q
         2oGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768502947; x=1769107747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ax1DNyjYEvFqUiFYZeWFqhe/AVDMnk1gl70ukeZMJIQ=;
        b=v4xd47017MeXqZKRjoJ7ZLbJTGcPu6M/of4kdJv6n11F6cCACx2ioTrkaQd8GAbXmK
         6BMNHjjiG0iqWT9ImtesS1khPg4lGaHWccrDD3OXZ4hB06Y/r9v19Tr/A4FKbpXd6Zn8
         HCGhSHJADXSt8000r+iQEgoT3IL82iBWZ+to2sO3UpaoV9CjWESnBMEEdYCJtjBYfk2w
         7tnTfWl3HylJHsUpBw1jwYpCjQbr0knTEVm2qEM//i1bhuAymFdNhpeYANsOa/79N+w7
         2cqSG78s9HxoRhZbQFbCPfXJla3Uuh8L5AFz3GjiN2oOrmXkshEJQ/pM9pgI6qRw/9JY
         5kpg==
X-Forwarded-Encrypted: i=1; AJvYcCUAxuESGWHwEZEQlp/BOc2kL+/fdanNZrv7thRp57MdGMEnsXraZawr5+0Bp4msRm9bpbEzE3srQDWE@vger.kernel.org
X-Gm-Message-State: AOJu0YyI7vLgZz0YSER3TjSIvAtAAyDFcgW7UYzGtOEXCjJ5L+w09Efk
	NDkgTAlv7VQAHNil9dUUJOfGCBT8hJaFN5x5Re160MJpfUvBThofeSJ+d084y/+ed1I+1D3T4Xs
	zmu5nVqPXLJ9NhNizl7KHhpumg/EnFWw0WTiifVJArpC8CcEFB/9Y1P6UzWwC4lE2
X-Gm-Gg: AY/fxX4K95SX67C75tSSNnlUh/PopmC4jF60hJe7SdYlCPoeywLPDBlRsFho9Kfdg+U
	X7eFxF6Z6pNrlQjBFiTMZjZNBWdHZ+D2JK4OTkrjGXLv8ItZAHpqLhWfGtRGCZ8iP7zPMVbcVlU
	wEIwnj+m4uSAJ9VR0UtWytV78DuxVZCDjDVtbxMmfB5O8SB7VykKiHg0dSvRLSP2nu9raDwgH6K
	c+OKIZvgmB925pKrsXpsDcznBWPmYYRP+wJBWr9Q9KZXkpskuEatNypOwBnm5VXpjZB/q4IOTiP
	rN8z1MiNPRo144FQSBtCdxAlsom0XzF6lfnAZF85lBdbg2DfWhP/e9o+rOKdrVv8tXzH69Ca3dF
	gV17wmRGwjfNulAkuF02q9w0DVw==
X-Received: by 2002:a05:620a:319f:b0:8c6:a539:55c8 with SMTP id af79cd13be357-8c6a66e92c3mr74556785a.11.1768502946581;
        Thu, 15 Jan 2026 10:49:06 -0800 (PST)
X-Received: by 2002:a05:620a:319f:b0:8c6:a539:55c8 with SMTP id af79cd13be357-8c6a66e92c3mr74552585a.11.1768502946111;
        Thu, 15 Jan 2026 10:49:06 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168c6dsm14408166b.19.2026.01.15.10.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 10:49:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/5] arm64: tegra: Drop unneeded status=okay on Tegra194
Date: Thu, 15 Jan 2026 19:48:42 +0100
Message-ID: <20260115184840.310191-7-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3578; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=XKFoXPdixBTV3dzgqHP7NW2/mzQEqc5k7uIZdpXCHqw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpaTaLLDofW4LYcpQCbgx0WrY8bhi83i7g7w89X
 76UZEX4rxGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWk2iwAKCRDBN2bmhouD
 14ZBD/9+bhkdh61WA66TkrWtg9mx90/1zlrHjkcv3PRvR04n+Gq4ALWV+TUCbXJIqGNL9GaI6pf
 8T6bj168hMHrbEvhiQidn6Q8sGjNmkz5MD0IX9beV45rrOBp6uTt4ntIyfd2bncZ7KkNpwrg6nZ
 h7Wmmp/wORyGq4A6k0dwtzvnK02QaIfq/ZBvNiUmjDDsh4e9FnweAOnwvQHaf7gvm6D4TESI7Nf
 qlXKKqD2wrCQ3bqKbAuXlaKm6DfIxfOH/mZYYDR/8KLgMfLebyObf7nI+cOaOp4/dTklggF+zwd
 FE8QUqqbCbsQyy4to8WEnS1Fhfe/TSundhGY2rAdmMf5VZX1nKt95dM1KZbCul3BPtu+5QAyjwO
 b4/q2rLx3U1DMHT/kandqAnW0P1zjb9e4u0gQEMx18j0gMkOrLfiMh6gcrGxyiAer9r08TLUGvw
 V8HtV3aEONvmgIgpwLSIcrvGz163duVc9X9FUfhWGYQnH9C3lSXu6LCCbx0GWO+vKG1JuNaVziS
 p2DFQLi7S3rExEmoLG9Bz+5/1piFKyHRjaitpuP+uncM/Vuqj/Jg0LKZBP2vw/UXwm7ZPTIoKrN
 x0kgKhL40edsj7eEgP/ohHiWt3XqjwPoC6THIwiNFjQ4IoOJLx/crZCkU+9m4hQ/uhv/V+n2dtG znkuK/I+4ld33Jw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: WzS3PwQMqhUjg31gQFMzgQDVrYDd8Spf
X-Authority-Analysis: v=2.4 cv=fMw0HJae c=1 sm=1 tr=0 ts=696936a5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=I45XjhtnlnKqqfCYoOgA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: WzS3PwQMqhUjg31gQFMzgQDVrYDd8Spf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE0NCBTYWx0ZWRfX4G+oZuqCFGAN
 s+Ju2dgQD/b0st8sHvHydXX8CCaXkUp574Fv5tE1hzu4dDLSqPQ/VyPw+/mNqDPclpnE3dDanYx
 msCXhXqruHMXqVylj2aOwR1Vx2HnYsvu9VYVMKrxIQUBN5yLvQdRln3kd4jXm5zXH0QHDYo/6uQ
 J6OgmZnOfwd8If6lQDgbgrxWNQNittwA2JwUDIo8bi3FKOU9sTUnRv8r3o6jrq1ragZnsCdGRja
 ouTZa2/e7d8BTNY688J1NTrE8ZoURKdbI4EOszS/cYXjeimJ00xauzftP1vaZnn6/pKA8pTGSA5
 gk8wj2DUVPrsoZbeGzxq2YlyciDvGHlPETGoI1ocHqUiLPCvwRBDM/f2ma74jNU4XRRXSrFoqgI
 PfHw5lxcq8fGgMHvBj05nSZ9DBGr8mSkS4zifzDuJMNlr4qI4Y5OfSlVeCF2w/4SwCX5seSnR2j
 MKMhIpU2Vhulfy6FqBQ==
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
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index b782f8db1288..849694f751d9 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -97,7 +97,6 @@ cbb-noc@2300000 {
 				     <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
 			nvidia,axi2apb = <&axi2apb>;
 			nvidia,apbmisc = <&apbmisc>;
-			status = "okay";
 		};
 
 		axi2apb: axi2apb@2390000 {
@@ -108,13 +107,11 @@ axi2apb: axi2apb@2390000 {
 			      <0x0 0x23c0000 0x0 0x1000>,
 			      <0x0 0x23d0000 0x0 0x1000>,
 			      <0x0 0x23e0000 0x0 0x1000>;
-			status = "okay";
 		};
 
 		pinmux: pinmux@2430000 {
 			compatible = "nvidia,tegra194-pinmux";
 			reg = <0x0 0x2430000 0x0 0x17000>;
-			status = "okay";
 
 			pex_clkreq_c5_bi_dir_state: pinmux-pex-clkreq-c5-bi-dir {
 				clkreq {
@@ -208,7 +205,6 @@ gpcdma: dma-controller@2600000 {
 			iommus = <&smmu TEGRA194_SID_GPCDMA_0>;
 			dma-coherent;
 			dma-channel-mask = <0xfffffffe>;
-			status = "okay";
 		};
 
 		aconnect@2900000 {
@@ -737,7 +733,6 @@ timer@3010000 {
 				     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-			status = "okay";
 		};
 
 		uarta: serial@3100000 {
@@ -1359,7 +1354,6 @@ hte_lic: hardware-timestamp@3aa0000 {
 			nvidia,int-threshold = <1>;
 			nvidia,slices = <11>;
 			#timestamp-cells = <1>;
-			status = "okay";
 		};
 
 		hsp_top0: hsp@3c00000 {
@@ -1547,7 +1541,6 @@ sce-noc@b600000 {
 				     <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
 			nvidia,axi2apb = <&axi2apb>;
 			nvidia,apbmisc = <&apbmisc>;
-			status = "okay";
 		};
 
 		rce-noc@be00000 {
@@ -1557,7 +1550,6 @@ rce-noc@be00000 {
 				     <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
 			nvidia,axi2apb = <&axi2apb>;
 			nvidia,apbmisc = <&apbmisc>;
-			status = "okay";
 		};
 
 		hsp_aon: hsp@c150000 {
@@ -1582,7 +1574,6 @@ hte_aon: hardware-timestamp@c1e0000 {
 			nvidia,int-threshold = <1>;
 			nvidia,slices = <3>;
 			#timestamp-cells = <1>;
-			status = "okay";
 		};
 
 		gen2_i2c: i2c@c240000 {
@@ -1668,8 +1659,6 @@ gpio_aon: gpio@c2f0000 {
 		pinmux_aon: pinmux@c300000 {
 			compatible = "nvidia,tegra194-pinmux-aon";
 			reg = <0x0 0xc300000 0x0 0x4000>;
-
-			status = "okay";
 		};
 
 		pwm4: pwm@c340000 {
@@ -1722,7 +1711,6 @@ aon-noc@c600000 {
 			interrupts = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>;
 			nvidia,apbmisc = <&apbmisc>;
-			status = "okay";
 		};
 
 		bpmp-noc@d600000 {
@@ -1732,7 +1720,6 @@ bpmp-noc@d600000 {
 				     <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
 			nvidia,axi2apb = <&axi2apb>;
 			nvidia,apbmisc = <&apbmisc>;
-			status = "okay";
 		};
 
 		iommu@10000000 {
@@ -1886,7 +1873,6 @@ smmu: iommu@12000000 {
 			#iommu-cells = <1>;
 
 			nvidia,memory-controller = <&mc>;
-			status = "okay";
 		};
 
 		host1x@13e00000 {
@@ -3106,7 +3092,6 @@ pmu {
 
 	psci {
 		compatible = "arm,psci-1.0";
-		status = "okay";
 		method = "smc";
 	};
 
-- 
2.51.0


