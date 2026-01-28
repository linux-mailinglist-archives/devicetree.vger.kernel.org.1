Return-Path: <devicetree+bounces-260572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EOXEQ9Oemnk5AEAu9opvQ
	(envelope-from <devicetree+bounces-260572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:57:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4C7A75B4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CC41305F3F6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CA536EAA7;
	Wed, 28 Jan 2026 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jgkx5198"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B793836F419
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622528; cv=none; b=G9cpvxsoHeKtkE1gq6QZ1fdPGa4klDFWbbVP+ULyXZN5JLRW2Km7B+5Y1nuWJLTazi+lpeG9xHnPfnrmmmyGTsKJ5rIpvU0CccZbGUGjQdTJtyHb0238ZM7TuiuEuDP8/mz6MqaiKG+mhfL8m0rQYYiz93/xRaLdSvUoFIEta3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622528; c=relaxed/simple;
	bh=PKQ9ZA4OzAcviDxcmcU38wqNemRfIIokYyl6cY8TCIA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DJJI/UwtUCv8zAWua1d0jN5Pbd01LiL2Ho+qd1PXnNKEuOXGsNjKUn+fKadq5iKhu+ZsJp0zrlGMDDFAVhLAXQ7MP/tb+S+upSiE0syo/O9tsFMqJ7a8009YnncxlI3Ww1UbsdxjPZomoDbBJH3nQk7hJAImjWEmXWrHvGs1PHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jgkx5198; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-4042f55de3aso75353fac.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769622524; x=1770227324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IM1HgF8lQ5KCUPSngea1L4dZ9ovQlt8fHo3wYhN+zkM=;
        b=Jgkx5198sLQdINQYClmLaz9wiKxasV48hPwHm/V3LLK20QKedkemSa+/RWKKvB0bxD
         XRrQorN57R1xZZAqOaHr5nNcg2M+KnzurqvoYCix/qslpb492TLLd+MBhuQQ3VwA4zCM
         EpfACxfsgvKEWqvHBt+lPMD/KJZzdrTlvaCH9LbSwMex27WM//I4KJYT3LuKjrRlGgVE
         EZgxH2AIgXArPaQ+3dHifrQ1SM9ylh2OKqpFugazVgy6r9fTUn4t9sSZEgNl3zLjO9PB
         KAcaHkNGAy6OfofV9JIw8nD88yoa/krKugCpI4jgJDX86dMks+enyK3G0L8wntLCt3Vg
         3cgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769622524; x=1770227324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IM1HgF8lQ5KCUPSngea1L4dZ9ovQlt8fHo3wYhN+zkM=;
        b=aY+gIgzpw2su86hFNmpx9JG9JCanY2XPTqFMEwup10o/EUXAh02cbIlwDF9aFnIvwg
         w6bp3+kZRWIRFORdpmUKa85RjRi+zg4KLar9X9aFl2D0RsMuKv22fgA5HvJuzC0jDKWr
         x8gYn7Mx/yLnXQO7hxacnH15VyfkF39kH0LaAoM0boYxXVv1g3Rj/ojhZ6H6LnqvEBaE
         fPEvf8Ou3ku+u1UVRieiKth1NQWcJrxf8X1x/IpXHO8mNDO8w5zK6JjNwUHjKdYmJBgb
         2rSPHoJOmNrS5c2yuZLHBhbGP4+fE0X6BgB4VmZHb5Wf2FdqdH/zfgGfheHA4gSWs1OA
         T/ng==
X-Gm-Message-State: AOJu0Ywo4BYnk9jb32rRt2CzxPH7gQp+XR8JGiISLXHs1jJBkyngNZ6G
	Z3CYwoi/+3253vBJTCGaClRm9zenh9FWZmICcMyXJJ8fmrjM1VBXbz4G
X-Gm-Gg: AZuq6aJ7w4/6Tbiw4DgYvuLHTev1Z+7pxiHB2BaJoEP84+JU5MGg7hYRWnPJWUZuWqN
	7ypcIClpWXWpeRW71wCsAodgYdrYfpg5w22ohBH38Xe2QtPmjJvEtVpsCEXkEEztUXGayi1svR2
	Ap4iHMm5YZp/YsawXJraA6ZQ+fQ/+jO0RXYBHXl1u9aby3y33lphmY2VgjpddbcS4PCKWUdvwdS
	lbTY27QdAz4GfdJao5r1r1+QmBJ+gNBhkXxu463fW0c9lf2wWzVaefkqMa0Vuo2oyhHTHhGzPF1
	p8wYmbPPEw+baETyEQsXwYjvz1TJq9Fw2vRnLsPmkaG3yhgazbh3h43/gj9arbzebyk58Pi49Uv
	JlmQTnBXPftfZDbHBNIxmqSp+RMEvBD3oas/AGfhyP3CuK1XW4ZEp3XW++8cb/0HRZca5YobT00
	jjr1UCaTlu
X-Received: by 2002:a05:6870:c6a0:b0:409:62ce:83f6 with SMTP id 586e51a60fabf-4097fb10886mr166968fac.5.1769622524344;
        Wed, 28 Jan 2026 09:48:44 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409575b0a89sm2187647fac.20.2026.01.28.09.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:48:43 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: add Awinic aw87391 for Anbernic RG-DS
Date: Wed, 28 Jan 2026 11:46:08 -0600
Message-ID: <20260128174608.1498-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,sntech.de,lists.infradead.org,hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260572-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: AB4C7A75B4
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the two Awinic aw87391 audio amplifiers used in the
Anbernic RG-DS. These amplifiers require a specific init sequence to
start which is usually provided by a firmware file, but in our case
the manufacturer only provided the sequence. As a result, we hard-code
a device specific compatible.

Additionally, add support for the VDD regulator used to power both
amplifiers. Note that the amps can accept and respond to i2c commands
even without regulator power (perhaps due to a secondary power source)
but cannot play audio.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 44 +++++++++++++++++--
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 6ac1fe0d3c98..8d906ab02c5f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -354,6 +354,7 @@ sound {
 		compatible = "simple-audio-card";
 		pinctrl-0 = <&hp_det>;
 		pinctrl-names = "default";
+		simple-audio-card,aux-devs = <&aw87391_pa_l>, <&aw87391_pa_r>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,mclk-fs = <256>;
@@ -363,8 +364,10 @@ sound {
 			"MICL", "Mic Jack",
 			"Headphones", "HPOL",
 			"Headphones", "HPOR",
-			"Internal Speakers", "HPOL",
-			"Internal Speakers", "HPOR";
+			"Internal Speakers", "Left Amp OUT",
+			"Internal Speakers", "Right Amp OUT",
+			"Left Amp IN", "HPOL",
+			"Right Amp IN", "HPOR";
 		simple-audio-card,widgets =
 			"Microphone", "Mic Jack",
 			"Headphone", "Headphones",
@@ -468,6 +471,18 @@ vcc_wifi: regulator-vcc-wifi {
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "vcc_wifi";
 	};
+
+	vdd_amp: regulator-vcc-amp {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vdd_amp_h>;
+		pinctrl-names = "default";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vccio_acodec>;
+		regulator-name = "vdd_amp";
+	};
 };
 
 &cpu0 {
@@ -840,8 +855,22 @@ &i2c2 {
 	pinctrl-names = "default";
 	status = "okay";
 
-	/* awinic,aw87391 at 0x58 */
-	/* awinic,aw87391 at 0x5b */
+	aw87391_pa_l: audio-codec@58 {
+		compatible = "anbernic,rgds-amp", "awinic,aw87391";
+		reg = <0x58>;
+		vdd-supply = <&vdd_amp>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "Left Amp";
+	};
+
+	aw87391_pa_r: audio-codec@5b {
+		compatible = "anbernic,rgds-amp", "awinic,aw87391";
+		reg = <0x5b>;
+		vdd-supply = <&vdd_amp>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "Right Amp";
+	};
+
 	/* invensense,icm42607p at 0x68 */
 };
 
@@ -1014,6 +1043,13 @@ touch1_irq: touch1-irq {
 		};
 	};
 
+	vdd-amp {
+		vdd_amp_h: vdd-amp-h {
+			rockchip,pins =
+				<4 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc-lcd {
 		vdd_lcd0_h: vdd-lcd0-h {
 			rockchip,pins =
-- 
2.43.0


