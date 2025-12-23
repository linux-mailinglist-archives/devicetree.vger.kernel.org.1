Return-Path: <devicetree+bounces-249191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D6CCD9C52
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7C4D3027A35
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 163D52D5A19;
	Tue, 23 Dec 2025 15:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZtAil2yu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AFNmj9Es"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734E92C21DD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503508; cv=none; b=XG4O+fJv9dEt/vpKc6PbM6Ld3AjFdm62hQ65fgg2ny/l5oGCRN1BoaxHFd8hodL87qQ0YOiwDFN8G+w0GPCQgOAnnuQX3+ekwLDrRlxQjdDG1p0lrc+Crv68g7fHT1FVlWDgX1P7ifOOOIKDn4PgsyTiBURVpzYQYvIxT4dal0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503508; c=relaxed/simple;
	bh=kfBs5umcn6wnNbBT9wHQdh8n1yg5yAtvW9uywSpZS88=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h1pumRbR/e4GwY7l2praor3cEhfBn4ZsMnmDoR6Im/FFDIkfcggHsAkI3bbWezZ/YBdMsCh960vmz8D+jQzo7DeMHDC8SCp6bv7k1UGKNUPTD0k7ar7i7mVcUL3z1+7clhTxhHeQfcmWyMfSlTqI3e/m78BDytwPvTD2Mp5eDIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZtAil2yu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AFNmj9Es; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNBRFDN700694
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=i0SmkUAFgkh
	AyHiqKViysyG2Zix/5NH57pWSiE3UYUY=; b=ZtAil2yus2oec1vAHCtAMveo2+3
	LQkTOmZ1EA8lVAwPPTKzQEPt5Ir9hd277yYtyggHZlVrmJLLCkrhi6qmyBlTdcAC
	RRJMuUkEJbMo7FnYS3VBx2R/avumunYTyjUyanmhY8c4jcnjUh5hglEYlU54pF8E
	TwzLTaRQxQfvQgGkrGEkWQcVmlkBNXs/JIWVBHLNzzEbAnO/i8h/skZAATiFfw8y
	yT3NNribNRB9Yufu3S8SpM5C/gy6S7Nbepe3T0j0BrBNnbHfb213P1V92txG6Rx/
	r7qOYEcoxbh/TM33j8SUYLhOZ3MyP0F+1wrtkUUVz+jhl7/zHOCsEnbxMJw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jrmun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d60f037bso114479831cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503505; x=1767108305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0SmkUAFgkhAyHiqKViysyG2Zix/5NH57pWSiE3UYUY=;
        b=AFNmj9EsGX+0mGe6Y4Bt1ZtRWeLXyAX99Pfj2GSJ1o1d5QeM39PKSi88qfLIAx4GEy
         ctMliN53XetfiBpMcTU9kaVSM4cTbE9acLPXEoi+C0w1QVhwwkrixXBhpmCADCxKrZXG
         rqEReBgP7twyhSxpx83ub+9kAgeyVI+vixdAgRkevbLJqGhT0tyO/B2k2cLPXfHmn6CU
         iZAmXhZof5ONj+EB7Zi1U1LhbmmvUFZKqx1wOut9OgiladufspkiVL8+AI4Sq8UxJhD+
         j5Jl5sAo+Sfrr+hK2UJ12IzJMwR1yG/CSDt+1Ddwg3gR/ZthkfSwO5akGQRMI2noiwz3
         UbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503505; x=1767108305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i0SmkUAFgkhAyHiqKViysyG2Zix/5NH57pWSiE3UYUY=;
        b=GlP3b8O5Wp2Uo4B62Q5AuIqbj+Mw56isnM6or1DosaFzshB18CUiCZdjnft67hNTnw
         S/1Hf3jftMeT11qONoutorFlKH4A8E/Gz/X/3MgFeOC1wpL5WAGfz4RzNhslM7QKR4oF
         ZSbHvvoCWM7mbCno5f3JrrmUBA63Rl1L6TiFyqGB7Z+Mk9MvdBzp5QyzEJjXQcNGSL8U
         gIpOW7PsQIb3ofDa72gBS+OSlv+IrpYbRFtq4AKMkm92ZwnGMVys1wgn3dw+YQ9yomML
         KGlPy4H+myiAqhP7b6XNyFgSDqikVgShDw99GTtK+SmKvEWlJGuesxO8WzdWRIeWrUzZ
         40Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWSi5DN0uAQ7Um1jFKGqIwIzeCqWOBhUyN4HO7snQ/pAuuaZmPrUAXQMTxGFRj4uFUjD38e/VGkeUTl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6t0sdWJ1YdKMCiSM1pR96IU7yFMkByGRMf3hWETAQaUHMbhGz
	fXL2lmPnPtznk/nhIxh6tJEIy4njNZNJibmkyhCPgSF84R1TH/1lNeYA4uDPzk992pPmfog8Bdw
	XILq5IKBVS6f8FV2iJ+vwlbrIHA24HO/bjt53CSX+Lh7CdWQXfd4B836y5dnA/P8m
X-Gm-Gg: AY/fxX564xhANo76Gt5MXiSnvwmD/NR8lX36fZoeshFJUPguSIPakjX0osquGlL2lT+
	YFLSL/S6/GYB7X3r8JwhVCfXX5JTTeOrBHFwhbyS0HbxxsEMeEfgxd0kmulJh2i6Je9xBDp4ai5
	QxFY/dn/nP2o8SaV8ubT84rg7wHPraOdC308Qx5jpEDBsLh9qGLE4v2RKiiS51BdDoFARQxoEAV
	VFI4ps/4vN1QBfReKJJWpVDZld0Gdk0ADGWQ42kTzCB0hPeh1ztBJLrqzqt+T3FjefKrEjSvATR
	JlDxkJQ2CzQ+AfC3CSaDxGpCD/TUCg7DlyJfRyf8syG/m1Ar4tMDQPBYRQfY5KXm9gICK//mgch
	XBYZ1PcT4D4qva3IATcS5gwfOskRiVMB5JPMqGrJlyyuyOELIt1vDvSbA3Fgrum+GKyg=
X-Received: by 2002:a05:622a:4d0f:b0:4f1:cd72:f22b with SMTP id d75a77b69052e-4f4abd98192mr229113131cf.52.1766503504792;
        Tue, 23 Dec 2025 07:25:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQKg2fdKfqVLZoHQeyi9qFrIKKVLzKMNIicTx/TH/uvkxikBkD5cfE7b2Zi1xO43MhF9psxw==
X-Received: by 2002:a05:622a:4d0f:b0:4f1:cd72:f22b with SMTP id d75a77b69052e-4f4abd98192mr229112611cf.52.1766503504385;
        Tue, 23 Dec 2025 07:25:04 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f51144sm1465699166b.69.2025.12.23.07.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: arm: Use lowercase hex
Date: Tue, 23 Dec 2025 16:24:59 +0100
Message-ID: <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2477; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=kfBs5umcn6wnNbBT9wHQdh8n1yg5yAtvW9uywSpZS88=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrRKuVtD4PeupYzv8wV3yix9NoyTh0U3uyyR9
 WJvY6FWsYWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0SgAKCRDBN2bmhouD
 13GFEACBacz1GTOMxn9uQJF7Bl4khj2URkqSDl1gW2lUSFVbmXbDJMIjBH/li8tlow34jtF5D/k
 IL/lx1HZg68Fxvn5pkEXS1cPdq1vnUftBWQotm0amMkCHUPJeUEGIrUTExNRrSXraJZdwwwBtK4
 EOYv/3uq0aMoQHan3vas6vSjHIwXQpkzuefsjvXWU6qZd2dssfoIKAvjqVTOy6EFLnu/e9PGDyK
 XMs1mBg9b9iMokxiAhCUHYRYtC3gR24HiiU9Z3SEwWoH59BiRZ+5uDVnvuP0XXe0EcSQg4lRwbr
 HzpWzMKlzEpk2tFXSxmHZR0QlejBs23FcubtuQR/lxLh15EldExlBra7KDQVDrizytQlSldbfQm
 P+OerugMMO5FiSJp7It+anDGABAJUPdwiY8OGqxErgMeOjiroGhF1GNzEi2KTPI4wJ2ek9J0mEG
 POFyOPkRTduUUqkmX5MJQPhKag46UJVouTkggValIPe71bTdr0X79tKYNJlKa/WBRYBXjlr8W2t
 iexqemZwZEMw1uye2PuQQi7eXefXBj/af8ii399+KgOylMljn0PECZvO9AoyKu+myyBPcV64vi6
 Nk0Pci0SX/8x0pygNLrD1VC/OJLxpXDWoz8hsXCD+FRwlvaYvucxK1SMfBQj5fdvjqn/ODxRkl1 1BNWhzu55rvvenA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfXzUdr9edAD8Lx
 vw+VGVbZxsyqOCVb2TpmGvhZ7Qvwexjoq181VEK6C6DlMqqyP+GC0RpYSlXfbqQLt9DcAPOEhL9
 G9ucUqeLrGAH34YlQEXM1AAlakIxMPZE3Kp5VOHu8B7BZ9A5YFeAeaHWbBAWKJh0UHgIt6+2DIq
 yPzi3vpzjF9Wt0zcEml1wo96hzJSkyvUACwF2xrmLq0TGYhpFpzLO7jHg9+YoU2d0Mc30FvTXAT
 vTRMGfi+2rTVuweJ1mM18nIyiDck9TwR2K3Qprc3qKJoyaF1ssnwCzLFy3nqOxXM0qhyYrtNUMm
 xKvLUqqw9o+9hi8n6Sc7d8daYqtwq/JO7MZu3uu2WLMUUnZE/btxYVZkRofL4kjZibEllOQJx7+
 HLAdYSNB7HQvjynZZY5thx8fvH6MAYziZrFWhZHHEec2etqtG4owwcuDo3Sl+0qulhSWNvrm+6N
 lPCx+afArvf/a13yXpw==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694ab451 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IFuFvOSg1DZuT3FR_m8A:9 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: xZLOXPGGgdzd0TA2GEK2XgAhMJph3-Nk
X-Proofpoint-ORIG-GUID: xZLOXPGGgdzd0TA2GEK2XgAhMJph3-Nk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/arm/arm-realview-eb.dtsi    | 2 +-
 arch/arm/boot/dts/arm/arm-realview-pb1176.dts | 2 +-
 arch/arm/boot/dts/arm/arm-realview-pb11mp.dts | 2 +-
 arch/arm/boot/dts/arm/arm-realview-pbx.dtsi   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/arm/arm-realview-eb.dtsi b/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
index 16f784da5a55..ae370d4eb9d8 100644
--- a/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
+++ b/arch/arm/boot/dts/arm/arm-realview-eb.dtsi
@@ -234,7 +234,7 @@ oscclk0: clock-controller@c {
 				reg = <0x0c 0x04>;
 				#clock-cells = <0>;
 				lock-offset = <0x20>;
-				vco-offset = <0x0C>;
+				vco-offset = <0x0c>;
 				clocks = <&xtal24mhz>;
 			};
 			oscclk1: clock-controller@10 {
diff --git a/arch/arm/boot/dts/arm/arm-realview-pb1176.dts b/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
index b9b10cbd65aa..a75d8b107fe1 100644
--- a/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
+++ b/arch/arm/boot/dts/arm/arm-realview-pb1176.dts
@@ -260,7 +260,7 @@ oscclk0: clock-controller@c {
 				reg = <0x0c 0x04>;
 				#clock-cells = <0>;
 				lock-offset = <0x20>;
-				vco-offset = <0x0C>;
+				vco-offset = <0x0c>;
 				clocks = <&xtal24mhz>;
 			};
 			oscclk1: clock-controller@10 {
diff --git a/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts b/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
index db1b6793cd2c..59c78def83f2 100644
--- a/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
+++ b/arch/arm/boot/dts/arm/arm-realview-pb11mp.dts
@@ -343,7 +343,7 @@ oscclk0: clock-controller@c {
 				reg = <0x0c 0x04>;
 				#clock-cells = <0>;
 				lock-offset = <0x20>;
-				vco-offset = <0x0C>;
+				vco-offset = <0x0c>;
 				clocks = <&xtal24mhz>;
 			};
 			oscclk1: clock-controller@10 {
diff --git a/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi b/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
index e625403a9456..0d3d96ffa6e6 100644
--- a/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
+++ b/arch/arm/boot/dts/arm/arm-realview-pbx.dtsi
@@ -256,7 +256,7 @@ oscclk0: clock-controller@c {
 				reg = <0x0c 0x04>;
 				#clock-cells = <0>;
 				lock-offset = <0x20>;
-				vco-offset = <0x0C>;
+				vco-offset = <0x0c>;
 				clocks = <&xtal24mhz>;
 			};
 			oscclk1: clock-controller@10 {
-- 
2.51.0


