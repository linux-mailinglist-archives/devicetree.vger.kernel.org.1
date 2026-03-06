Return-Path: <devicetree+bounces-272342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMzzIrkyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:02:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8CC22759B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 21:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F3F4314FFFD
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A746147CC6C;
	Fri,  6 Mar 2026 19:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SlMizOqe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89574611C4
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827135; cv=none; b=XHpTekkIzAmmuZvwyu66IYUohW6G45ujx0sQjDibrgD4am2fNM1JXZYfDiAuK7+3XNxrxYO0ipfRY5iJtNwN2/BgCxQh7NE+bocFbMA5TDQR3veWfOEYW9gZftrNAFlV3Ot6o9CetIZDancJ1dtogiKfTt3f2NTw+DzFjzQBchE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827135; c=relaxed/simple;
	bh=BA9cogNYcNoWcdmou1Wz18kgD+Qk/UIO8+CaouQp908=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H+b7klJSA40Gy1PRhGTjJHqR2OwqAsv2Cdl7leF1GWbn9zKZ5nKRXZTA6PYkEdkgs5ed1BAQdy07rrxd4jLEbWzXKTkP7Rsg2DTicAuSRCZc4YYN/WHB4NC3gpux6R409OxKmiV0dhq+IzkUwVTmQIL6hqzCg/YmPdDhGodIR9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SlMizOqe; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4852a8482fcso5120505e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827130; x=1773431930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opNBN+DL1CwCTEmCmfQVU04W6S+7jcXxdGJnG1le+IA=;
        b=SlMizOqe4thUXQDrNZkFjF3TtkH5c96Rk4qBlMoDP/s4vx0s6OlSEf38qr4bzSPiPX
         i/fxDCPqOMlmkfDmaFLJgfx4a1cqAULMRryMprWHwJ9+EFyEEDSfO8TaMqxAOiAsHtB3
         j7XVb6hehkmCreXvFoPYZ/q3ORg/zpqVrO6F+WjNOenTqkwj2utLQ0yikZuSAMUEJENn
         lWLkn00nI2vsWPvblOyHx9qIqfT+KaznAUGgUqmcf54ccbRL4ycYcLY3dmLxzUniFJBm
         NuCd0Rn1MMSvK7mxPHT7igqGerE8olWW1RYVZFErFRjbhP3nkZ+CJdWhvz1kjPZE8AN9
         hTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827130; x=1773431930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=opNBN+DL1CwCTEmCmfQVU04W6S+7jcXxdGJnG1le+IA=;
        b=v1NXqyK9Lwb2tyNEKaxo5WAReC46gggb+RWq3O5fydFjH0Era4Os4TXin9YLxG2fja
         3gqXDt/9zoOT43UfDKPF3yuipyXy6UkXYfYoewUXh40vx7JwRCYEbYocUvMKnhpW+iVX
         8EtdRzmadHQaXRjvqmuQ+D4GQ1Df1gXtnD8mJObJLFLvkiRDwNCx9bZX09foPpL1xKYM
         MhASqttubhmgzWtN9ZVsLj3KASP59kqAXTH69faeGZkHVAVyuyOkWFKi9Ul0Vd4wRNSt
         OSnPoosHubWwld2OQkfF+ddKKg5lXZ1JCdD/Ygu/ha+d8HSE48U21FarwievdecmzMQU
         ZrCA==
X-Forwarded-Encrypted: i=1; AJvYcCXwR44HaiD8jig624E3fYYUulkJ90jpAqsFH+9ecaSFdUghj/8bja4AkBeiWdvKdpf4RNm41RkviuLe@vger.kernel.org
X-Gm-Message-State: AOJu0YxFNLB+RZ7SUP9V3KcpN+iUlCN6T/TPzHH6MSTU72zWrKq8K/TG
	Ec9euwJ8fxci+grcxdOM6KMrgbUz8ZraMurMyfYVPwJgwUXlSN4o65XS
X-Gm-Gg: ATEYQzwFPY1D4lJSNHnZXVTEgdQkdIUsYhU0aQ0As4Qj8qCn4j5xv1FT/Ef+U07IMO1
	nex0rn7WNsfH5zdqHpY75Zt/kGiRN3ICels7e6IuPqEuRrZ2/SWmJoRh9j5tMNk8e8z3OORmuw+
	Zsfa23IpKBtt+nnpTBB1Y57GPuDzKXbUpV4ZgUtR7oC6/W+NaeuRtqp/6Qi3Ooc3HTmBumb9zDe
	vZyGKzDCMp1bN9MLpKlt76ajeD+sqHrrmvT+xjFh23GAhWQzl0to4oLPvQhg09k64YcOLhlJKHG
	BDu3qUGP4eG8ZUgo3Ci5bMsNQvQssJy3wQlBA0PRK02ynNdfVScHJEisNw0zdLDs8xKGmTYQaCU
	2qxzXeKr4Rb6DD/AaaZiFDbh2o9XTT2eWsPlLb1ElkA+VUqqJfN+MbZjSdnqHx0jFHvrlc7qPvc
	u4hm0WwLAFVP6JMNrvII2DUHtDxkKuBFPIr4IHBMscZQ0gZ85XeifH68lrlbUnNXb9K45lXs9rz
	oiJsOO6OYQyxr0X/CPCpraIi/Yj6kOmI+QkBo8=
X-Received: by 2002:a05:600c:4f0d:b0:483:5a29:9678 with SMTP id 5b1f17b1804b1-4852691967bmr59464725e9.2.1772827130125;
        Fri, 06 Mar 2026 11:58:50 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:49 -0800 (PST)
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
Subject: [PATCH v2 10/11] arm64: dts: imx8mm-var-som-symphony: Enable I2C4
Date: Fri,  6 Mar 2026 20:58:29 +0100
Message-ID: <02dcc47d59674a9945ade8a6f2c42f4c0908942d.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DF8CC22759B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272342-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.993];
	DBL_PROHIBIT(0.00)[0.0.0.68:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable I2C4 on the Symphony carrier and add pinctrl configuration,
including GPIO-based bus recovery support.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index a77085b264e5..9a29c81b06eb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -195,6 +195,16 @@ rtc@68 {
 	};
 };
 
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio5 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
 /* Header */
 &uart1 {
 	pinctrl-names = "default";
@@ -288,6 +298,20 @@ MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
 		>;
 	};
 
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
+			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4gpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_GPIO5_IO20	0x1c3
+			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0x1c3
+		>;
+	};
+
 	pinctrl_pca9534: pca9534grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7	0x16
-- 
2.47.3


