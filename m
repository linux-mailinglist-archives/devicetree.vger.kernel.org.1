Return-Path: <devicetree+bounces-308399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X3qnECvpJmrdmwIAu9opvQ
	(envelope-from <devicetree+bounces-308399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:09:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C76565884E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:09:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=btjfmCv+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308399-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308399-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E03E031104F1
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7BA3E0258;
	Mon,  8 Jun 2026 14:41:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5143DEAC3
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:41:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929701; cv=none; b=Hpbyj95SCzfJh9/PPPPmnuJhymSdjOv/t8N0PtMHj8oreYSHSpyaTLnkF4pbzryADcxxHXJJKn6cvWWFANQQHLXMncKmWD6h04nIBB1hNsbLk4Hp90BSF2A669x98x7MQTVVqqTi64TukHqRzYV8Zo857DWZxMVdnJJiddNbZMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929701; c=relaxed/simple;
	bh=KUBVO4OiU3EVeg6FTS6bg7rhrJDe7/xi+q/lqgFM628=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fNEPub6ttuY81CuRxu9eo2rStItTdsZAA3ja2CJCOc9UMgd1PkzH3dVJ2KiNnTKzBAIwcbmPAy+ABJEnl0VrJi2J5ysr1Psd/fiE/HrvoGMRrdnJPr/U9aNt9K3UV9GBqQ9s/IirTD/TQtHcZwUs22pgaOCys/FoWN5rc2XSmzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=btjfmCv+; arc=none smtp.client-ip=209.85.221.52
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-45ef6565cfdso2028575f8f.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780929698; x=1781534498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NaEH5o94OCHyzbwIH4HUGdDm5Drm/31IJdPh56FPBdI=;
        b=btjfmCv+lWwN6JuEmXBdMudVY7W2gsUK/TEWkG4LEJszTsCkQON4Upmhm6rTjG6WX+
         2xBabrd+c1E2BbK2ZbwDAvjJqhNrWOH1ODAo9j58b2+J6eXvLQDedCTH7v8AhjisNNNr
         tJQvWGIjB7kcrb9kDrItP+mu6SHhYXhPE/cC/2ieFtSzW8dfa3OyU+WIt63rqOkcHhpj
         2hiI0v+R0WuU+pliY8DhgDfultWxqZUAPkyAMh5pyeez1UD+rpDcYwXUR+4a2fCudK6K
         c+sboDgsLf0XDNeBq7c80yRP8E77rDCJSAvwm1oiaoZelwZAUIj4nnQua0Odb4EsdVof
         2Irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780929698; x=1781534498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NaEH5o94OCHyzbwIH4HUGdDm5Drm/31IJdPh56FPBdI=;
        b=XHCfklFOTPzLTVDyeqEODo0HRTCaqqDwWSDsYXUfGAi3lTLfnPTfO4LRsNwlHE78pa
         rnLBW1xCOCXkuaU7NzP2A26cUs9qHslcAZaWMdL0Il57U8vLk2p7nIFxpwXmmHf3+twe
         3Doq0KmmzX6Kh2gsGqMIbaiBCzdFbrqrZvLO+L4+gbUquvP4kduQ+Cj5/+601o/svb20
         uk2gGGBKwkv4m9uXOWEadbMsxv0+J+TzoqShF/XizGFSvqonZmZnhF67M2u5zrwtCsrd
         bXverMFZ44o/Ge3kOj4uR8nsG93To+H+wf/I5E/M0PwxW2q0IjdQA0Iw9wwiVwD8DNDe
         fMAw==
X-Forwarded-Encrypted: i=1; AFNElJ+xLQ7yhABsaxfESspwrYPOXL16gfbe9LF0lKZk3pKBnNST0HbwpaIHWE4NPDfTPB6CaiLVodhs0acP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+/wDX9taAGz0QyuCv+w75kC9HQuQCWo/QY6Fz2H5wljR1T7IF
	U7Q/+z/T9yxjvTQR37SYhEN8gcGk2kkafT5qrxklcJeCuyAOdRPTgAu9
X-Gm-Gg: Acq92OEE1Vt4Jbj4HnDHMNLX60JrAyyjiCsOgqJpdL68n85Vuay9DDN3Y0ci5KQzCfG
	XjN3lzsJC9ApmSBRhvCuZVNB7wWKFAXiCpMczlxlJ540C4CN3g5rMfablOkDrLpvfUzrFgkFvZ7
	r67ElwWQI6aBEAbT47id+SuQUQjyfWGH/rXLqYknz04D9bK6vXf7UoudmlHafScBW9aSMOKes1E
	mQgGtFY9vZPlzRQQ6db8oll9WgPGYA0K2tSDD8jb48OeXlQkfq0LpecSxMZ+IYlinfehqtmkVTi
	DLuQLDb9sJbX6tI8OsI2/hiLExbaR1p3YIcvmpcJOrFFT6eUQYq8nOjrxog7S1lH4Drbs0gGLru
	sWwvNz3hUSjRI1R49f1Tz0p9U8ToIkrJUKiaCcAVR4bKpaAlQIIu06cT8fhdnKJZgyzcQNvUZUA
	JCsTKqnCVWRAeo2rMacUCYBXlHEXQdQJ7erGCfUkvhQ0WQmCzJ+9qYaZaOgR6HLm+67zPaQO8dv
	eUo0hinny/1z75TWbtr3CeFIpkMryCxxsiR8Q5cY+gFB4EcSkBGCBqZEFk=
X-Received: by 2002:a5d:5049:0:b0:45e:f765:ff9 with SMTP id ffacd0b85a97d-4603063d61bmr18372379f8f.24.1780929698123;
        Mon, 08 Jun 2026 07:41:38 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcad5sm58222519f8f.5.2026.06.08.07.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:41:37 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 14/14] arm64: dts: freescale: imx8mp-var-som: add I2C1 bus recovery GPIOs
Date: Mon,  8 Jun 2026 16:41:15 +0200
Message-ID: <06fd759e57a5ee35c46a51947ec0ee24c7eec66f.1780929317.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780929317.git.stefano.r@variscite.com>
References: <cover.1780929317.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-308399-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C76565884E

From: Stefano Radaelli <stefano.r@variscite.com>

Add the GPIO pinctrl state and GPIO descriptors required for I2C1 bus
recovery on the VAR-SOM-MX8M-PLUS.

This allows the I2C controller to recover the bus if SDA or SCL are held
low by a device.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v4->v5:
 - 

v3->v4:
 - 

v2->v3:
 - 

 arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 49467b48d0b0..61786eee0e82 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -180,8 +180,11 @@ led@1 {
 
 &i2c1 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio2 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
 	pmic@25 {
@@ -415,6 +418,13 @@ MX8MP_IOMUXC_SD1_DATA5__I2C1_SDA				0x400001c2
 		>;
 	};
 
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06				0x1c2
+			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07				0x1c2
+		>;
+	};
+
 	pinctrl_pmic: pmicgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
-- 
2.47.3


