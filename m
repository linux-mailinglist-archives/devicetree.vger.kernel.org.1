Return-Path: <devicetree+bounces-243341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB482C9713B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 12:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F30603A4597
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 11:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04803275B0F;
	Mon,  1 Dec 2025 11:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YMYy1+4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0F52737E7
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 11:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764588957; cv=none; b=YtJdEn2x+KbwLk67c9slUpX6iRcfw/ufQYWIt/+CgMNz3b1rlojmjdECisifiVSFcguunrDznx/66itfjcaXjyl20p8rcYx75Db3r++PGaIXIyvULRPE4l4Tr1WOj11m9uvDM+MLTCUT1KzRKgjFEEdU3RkOOA3fQ3D95oQ109U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764588957; c=relaxed/simple;
	bh=jit6SwpYSZg7MHOqsz1YeBvIKc+w2wXoHi7Wzy+qMew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=nQ6WB2Y6p8MC9yIHd4cCqWQXEonxtgHW8bQXA1ZW00QYTTlKkUusqDN42sZxTW3BF3tTd6ditkMV98zAGu26Y4bBz2RSuxkCWlcGSUuCSSkFWPwos4tXnAWSKYhIDaniuv5LuPdjJleLhJfiaWY2PgYZk5KD+528h7/mgdiyx4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YMYy1+4a; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477b91680f8so35669555e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 03:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764588954; x=1765193754; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t7olQJkRc4y8ZtsZKoLuuqyEd4qRhINko81csOamj94=;
        b=YMYy1+4aNWyCVts4WlbMcu7RCAn+BJyXPrpVAolaZLVidllJyI5VwWgDePbdsxNL5G
         QULspwk8/rf2lGYxtJTpscc5WSTDNiRCXOBCIVppn/2xd7e6+3n+bLqJJlYi6d5IXs6E
         gKctOqN1kk/XliyCe1AbxrHi28mHOormcVtm1yI/jAXb1n6MDIhkCtLsvjYDG4l9ougq
         MmHhkkkIkp87R/lMuL1Mm6m4admw+a+fiwP9NOi11u1glnc0f0swf9slVWGZWQfJcUFo
         /YY+6bcvgvulakpPzj15fjd3afhBUGF0HZk5ruVZjIpdzkPMQfHwQ6A95BCQjwf1+vOj
         O1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764588954; x=1765193754;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7olQJkRc4y8ZtsZKoLuuqyEd4qRhINko81csOamj94=;
        b=HKhhwssVHyO0LSH3wfY6DT3SqsYQMzgekNAPc+c29Qf546SyvPiXR92tpfYeR8hkz6
         ulRzCtZ3m9ZH7CDpK0Nq2hewRzyArG+5LnNIG2pPOzt8Ejj8+jUbgpBcWKlNPWxRTLCe
         UnDGbjCnG4PQkckBRmSkWvv2TkGj1djpMsapu0Maugrf/u7qLd/wKofH7E5D3/RIY6qQ
         nj95X9zK968uYMuUIahEcJGAlN9jFQM4kVcVGGb7umwPPP3gTdL14CQzNTPsAPtkk7bT
         GcfDN1aX3hjUCVn0ZZNe7q950HLMxDz6Ali6sdo2EyM2X82d/KeKyOD9wikqQC6QhyOu
         Xnjw==
X-Gm-Message-State: AOJu0Ywhv/BMOlbvnZj86UqHPuT4yWh8hMpRWYUWfKpFXCAk7BFDI3UT
	Av43ZliqGpFvs4GXZt++BVpg7FIxs99bcHzoIHaulTOvzpE/KZrRuohi
X-Gm-Gg: ASbGncvBawScPUHF0mx+6EilSc1rB1nueG1UcboWl8bCfqZ6UDenXY0/6RCrzS2HBHn
	Ca7TUSFVqwRxlJe/KsUQ8RLpd1Xd78cIFkeB5PvVyGBYTvdkRTHog567iMQHzRUltM0jRkgg/uo
	7vcE1F7aiIKehvLP0stANOOv7KKx4/aSGcmnUqINSSb8tG8jSG32s6FGO9rqjhdTY0YGxxqL+SB
	JWF2iPL/VPjDWVzM1WneOSbn2JoxtLg0NFceQDe5xY5uXZ7S9XcA+LYAvHgr/VHyV7dSBkVQNdt
	QmlLC/CRTSaSjGuuFkvtgFl6XpHVi5XRiSZreZTaAKTNALVuJ9yeZyxM9UCAbNPyUlyv3cYPY0K
	4dSqMwVvvRC3G8bsVCpQfhnMeiMJ3MgpRtAxiDZGtu2LKf2642IZo7AheYrhUjeM/3Wmkcc1oZz
	TZS2xaxrmkU3JzISWg/2CS+TudRLX4cFKNCIenCuJgcwr/lwem2j7y+kwSHI4jAqA=
X-Google-Smtp-Source: AGHT+IGEmdMZ0R3tt5yY9NXh82qqcwbZBrGNS8WUEWJTg2IQ0I0mwwWROWpuFC9/qp0jUemfc1nANg==
X-Received: by 2002:a05:600c:1c20:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-477c1131d60mr402688025e9.29.1764588953844;
        Mon, 01 Dec 2025 03:35:53 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47913870b38sm92507995e9.15.2025.12.01.03.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 03:35:53 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 01 Dec 2025 15:35:38 +0400
Subject: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIl9LWkC/3XMQQrCMBCF4auUWTuSGYgRV95DughJ2g7YpCS1K
 CV3N3bv8n/wvh1KyBIK3LodctikSIot+NSBm2wcA4pvDaxYE7HBaGNaBGeNr6Gg5oGdVkbRxUD
 7LDkM8j68R996krKm/Dn4jX7rP2kjJFSer560McTuPs5WnmeXZuhrrV9iQV6rqgAAAA==
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2098; i=alchark@gmail.com;
 h=from:subject:message-id; bh=jit6SwpYSZg7MHOqsz1YeBvIKc+w2wXoHi7Wzy+qMew=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTq1vaybzo1+9jx0qZ1ee+ZUyuvfLn0yekVd+6CyGDre
 9FCHAtudZSyMIhxMciKKbLM/bbEdqoR36xdHh5fYeawMoEMYeDiFICJZBxn+F+o2aN9VcvO/P8J
 8y+OqYce/RHVeqN16r3RDe+Z3ZLN+jMZGX7Mu1lXHbDeUqW48E/atZTIR3KvWJXPLghN7jWIMK7
 JYwcA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node and add its supply regulators.

Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.pdf
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v2:
- Describe UFS supply regulators
- Add link to schematic
- Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 27 +++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..4f2930cff70a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -110,6 +110,24 @@ vcc12v_dcin: regulator-vcc12v-dcin {
 		regulator-name = "vcc12v_dcin";
 	};
 
+	vcc1v2_ufs_vccq: regulator-vcc1v2-ufs-vccq {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-name = "vcc1v2_ufs_vccq";
+		vin-supply = <&vcc5v0_sys_s5>;
+		en-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc1v8_ufs_vccq2: regulator-vcc1v8-ufs-vccq2 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_ufs_vccq2";
+		vin-supply = <&vcc_1v8_s3>;
+		en-supply = <&vdda_1v2_s0>;
+	};
+
 	vcc3v3_m2_keym: regulator-vcc3v3-m2-keym {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -906,6 +924,15 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	vcc-supply = <&vcc_3v3_s3>;
+	vccq-supply = <&vcc1v2_ufs_vccq>;
+	vccq2-supply = <&vcc1v8_ufs_vccq2>;
+	vdd-hba-supply = <&vdda_1v2_s0>;
+
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: 7d31f578f3230f3b7b33b0930b08f9afd8429817
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


