Return-Path: <devicetree+bounces-268174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL18DtClnmmrWgQAu9opvQ
	(envelope-from <devicetree+bounces-268174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:33:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB108193813
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 48F18319D9BC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27330314B8F;
	Wed, 25 Feb 2026 07:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZqDPBcrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC84C314B6D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004189; cv=none; b=ULduf8i3quaF2EQMceUCfQlFGCxEP5nwTaUsKAQWO07aI8jFP56+BZ23Zelt/CTX54t2RgmNX1Bd2YEhla/S54MXUzhFhTOWKviJgw1rr6cDt39BVcZCS2/vS4+WBl6kQhjW6gzunSKQ28ZWLbvvTP/YZY0422JQmM4KzKpAjc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004189; c=relaxed/simple;
	bh=AapoS4b8lIgfZZ1KAd6SWpC9XkmH5YI+lO3u1HjiAtU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p1fAksGGZqbar/6t8kj4wuxAACw4qNe9Upi0HKznXQGnNL+1HF9Y9LgClucpFB2whXGG9RlTg36k3ET6GtQbiVxS6T+47DrOH4YxKAA1m/6ScVywtkUbZSGarSfNFHxtzXbwsVso6+lHIv6w6pb55sZkSqsyQb8rWayhjm/AUCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZqDPBcrV; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c70b69ced09so1121309a12.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004187; x=1772608987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mUlMJL8sDqfMhOaBSEuOUb8RroUd2MJOVQPpugM29u0=;
        b=ZqDPBcrVMLB0O/vVSfiGUnWAW/YAOQldFzwMVh2U3Kf8ab8vRcvr3RDKzsNMsJUDQE
         jBmYB1KroeE7MZXMjYxaahrYk9NU/VOJn9tVOUZD1XrOKuyVernNoCWs5wTcY/hAT54g
         2JCETYPNS1hYUyRHwmQZqmW3w4WJIigiQCV7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004187; x=1772608987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mUlMJL8sDqfMhOaBSEuOUb8RroUd2MJOVQPpugM29u0=;
        b=Z55vFwhywLlNAmyeobdt5+yyxP7myZhM5VTjK1PP+cZM7Wqt/mF7vMS3VIODGNTScu
         HpbuhN1CHgYaAhMDE6ne3yO5vOJYRC3SjB1uvB8N6QUIYfQEB5+TlPlZ8ejppHJorWBY
         RCNFHHRzpthXP5xnTdgTyZrX+dopCiqaGCxmDiqVRCUzWMlLui1Xi+TnAdAX9PG2jzSG
         GumLjhn+MwoCCERvjxWGCwDUT4NdpwC3TnMvvskfwAbIBmA2D2ZdiXLtX/TBJU9Okqwo
         UfeAYzVrVAxGPnBCRt+Vryw52Ju715kb/peLFVkx9o+MH16E/FrhIV1IxF9h6OZU/bSw
         J/YQ==
X-Gm-Message-State: AOJu0YxwHeZx/555VuWH5VJiOGIVmuy4I6WlSfilY52oruJlBYoQ9S7w
	u1Op/mZ0AgG7PCFyicKp4A4YNHzabr2PjE84TV8mlVN3IzXJuQ5Lmst0ckYc2Qsjww==
X-Gm-Gg: ATEYQzxljpwFVBJIrOtXVvthckw3fXtDdgOW9/3hLPv5S/RSFDFGTWn+mXcn+xr2YCh
	hmio+8oi77+fiJeAO7xIey15WkIhg4n0wu/qdQVtPVzvrHDwY95lEluT+HrsIyXXYCnoSkLUSyF
	j+IuAbYE0GfGCfW2vRoU9d1SqPRoOF+Ew60RgkKBQMca1sFR8jBYv0OWoNfsjS8SbEoooUM30sW
	LSKpSrwf/qG9aQASPj9MAt/rN8+ZnqYRMRRYT6mk8e2LpHUpSePsm8zot3l07+j4wG6CJiaarxc
	y9nmQl1lY+hijwl8LEzLkxeIU+ACXKQ28okHXJt+w4eq9Qr9Jjs9L4NE3L16AaXWUXtMyRMJ8J0
	/NBfcORrZ0PpPbPi8HjQwjVzFNc5tFt6TGxy9Qvu7xo9tj1WgYQ7DhMysHqOh6SrKREzvo2FT7O
	W65NW4WomN0ZCbb9EWLX73VrZeNS0tztUJ3D8zG1OU5gEw4WfVoZ19k1rjZevgh5NLlrhlk4Dnb
	PS37Q==
X-Received: by 2002:a17:903:41cc:b0:2a7:6aa5:68f3 with SMTP id d9443c01a7336-2add13834a8mr16305355ad.34.1772004187261;
        Tue, 24 Feb 2026 23:23:07 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:23:06 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: mediatek: mt8195-cherry: add WiFi PCIe and BT USB power supplies
Date: Wed, 25 Feb 2026 15:22:23 +0800
Message-ID: <20260225072225.3345307-7-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
In-Reply-To: <20260225072225.3345307-1-wenst@chromium.org>
References: <20260225072225.3345307-1-wenst@chromium.org>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268174-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: AB108193813
X-Rspamd-Action: no action

The MT8195 Cherry design features an M.2 E-key slot wired up with PCIe
and USB for a WiFi+BT adapter. Previously the power was just enabled
all the time with a default pinctrl setting that set the GPIO pin high.

With the PCIe slot description DT binding in place, the power supplies
can at least be added and tied to the PCIe and USB hosts. Once the
M.2 E-key binding is merged, this description can be further converted
to an M.2 E-key.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 47 ++++++++++++++-----
 1 file changed, 36 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 6e99122c65ac..f1ff64a84267 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -83,6 +83,17 @@ pp3300_s3: regulator-pp3300-s3 {
 		vin-supply = <&pp3300_z2>;
 	};
 
+	pp3300_wlan: regulator-pp3300-wlan {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pp3300_wlan_en_pin>;
+		regulator-name = "pp3300_wlan";
+		/* load switch */
+		enable-active-high;
+		gpio = <&pio 58 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp3300_z2>;
+	};
+
 	/* system wide 3.3V power rail */
 	pp3300_z2: regulator-pp3300-z2 {
 		compatible = "regulator-fixed";
@@ -760,10 +771,25 @@ &ovl0_in {
 };
 
 &pcie1 {
-	status = "okay";
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie1_pins_default>;
+	status = "okay";
+
+	pcie@0 {
+		compatible = "pciclass,0604";
+		reg = <0 0 0 0 0>;
+		device_type = "pci";
+		num-lanes = <1>;
+		vpcie3v3-supply = <&pp3300_wlan>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		wifi@0 {
+			reg = <0 0 0 0 0>;
+			wakeup-source;
+		};
+	};
 };
 
 &pio {
@@ -1179,12 +1205,6 @@ pins-vreg-en {
 	};
 
 	pio_default: pio-default-pins {
-		pins-wifi-enable {
-			pinmux = <PINMUX_GPIO58__FUNC_GPIO58>;
-			output-high;
-			drive-strength = <14>;
-		};
-
 		pins-low-power-pd {
 			pinmux = <PINMUX_GPIO25__FUNC_GPIO25>,
 				 <PINMUX_GPIO26__FUNC_GPIO26>,
@@ -1222,6 +1242,12 @@ pins-low-power-pupd {
 		};
 	};
 
+	pp3300_wlan_en_pin: pp3300-wlan-en-pins {
+		pins-en {
+			pinmux = <PINMUX_GPIO58__FUNC_GPIO58>;
+		};
+	};
+
 	rt1019p_pins_default: rt1019p-default-pins {
 		pins-amp-sdb {
 			pinmux = <PINMUX_GPIO100__FUNC_GPIO100>;
@@ -1570,11 +1596,10 @@ &xhci2 {
 };
 
 &xhci3 {
-	status = "okay";
-
 	/* MT7921's USB Bluetooth has issues with USB2 LPM */
 	usb2-lpm-disable;
-	vbus-supply = <&usb_vbus>;
+	vbus-supply = <&pp3300_wlan>;
+	status = "okay";
 };
 
 #include <arm/cros-ec-keyboard.dtsi>
-- 
2.53.0.414.gf7e9f6c205-goog


