Return-Path: <devicetree+bounces-277992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKbkBtBDvGm4wAIAu9opvQ
	(envelope-from <devicetree+bounces-277992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:43:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C872D131B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2E05306412E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10E53F8E11;
	Thu, 19 Mar 2026 18:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EM9gSnuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449DF3F87E2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945724; cv=none; b=ssr8Y1PAtCwm4rxv8gsuoueqZrb4hubu4mXlb40FsWQ4A1ubiWkLL72pALjXNBoAz0guHJr6ZaeH9xpnDPFXoFH7VZbjwYnpzw9VatFY8Ja5FylZ1LHEyzXmmVYR46kz04jQGuKT/mBv2HIU9qTDRy25O6nONsde/Jo9kqic+fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945724; c=relaxed/simple;
	bh=IOTtpJojSI3G2ZqY5Hv+ZP40HG0ICyUBjBpabVDI79w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E61CCCNB36ph0G224+mMoVY6OVnLyppq6kloGPpEfur4Foev7h0OGv1JN8TWc+s878sRc+6CrOc7VuGTS4gsLT6f8HrdAgSs7IVcQThLShPA+LVMPJSxAHnauTk/uC6GMmDkZ55jWVELXQbqDV66aedzNxf0rfrAd372Pcf2PT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EM9gSnuL; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso14048375e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945720; x=1774550520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ePp2cj3QsqbKFBEYZr7yHg7hIpe6bh9vkoKNgnuo7Og=;
        b=EM9gSnuLBV6Rf9hdoPS915VTKQ+ff6DAfwHnqRqWq+tkU81rKEZn0/womy93p7wmrG
         tZJ4p17hzUdZSD+4jOJ7LmYh2l6Fa1rgi3eO4B8YK3Vtj+c2tQqcHZtAYTpgl76+Prpc
         f9RkPHihQhb9Sae936g+pCYaOM4Y1EbZ2xbNAvnPCPodkH0XEYNoy57FfjVldvbQpkyp
         AUS+Ha6cOm09sZnZCqqE3ro8/ybivLDwkCRRaVIpaT5sShj/EkmvXavDGgqY6ORfSlSi
         soJXOjFD/Rq/rNPYd+INwChXqpICeoofkVbq8VKZfpiBiO9ncnLy6vFbMMYTcG6eWGcw
         RSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945720; x=1774550520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ePp2cj3QsqbKFBEYZr7yHg7hIpe6bh9vkoKNgnuo7Og=;
        b=J6cBi0NWFveI07cVxEGnEVnv5NUpWi4cz9UylOBtyTdbKDLaVw7s/86KA+Ol5gP9i/
         hjUGhN1jYAYD7WCV2yyR72uXCQnR/No/ylMZNz+1Vy+gU7/1HBE9bon50O5ARHavTV2U
         tHKQLMWAtykYO7mvMYZUCv9fYZMnJ6Nw0J3MV4GI2S25LDgGNn62MHmg89UJVEP3kiMo
         N6i6yOW4qrlP+Fk0Y+Y83cnEtDYWkChrnHlpfCQm61pzwK72bLdWZMTfHeHHAHiMs9kW
         Dzc3dmtff7bfwRF/ZpIzCiOYhQJiv/3DvtYkDHjbL88gyciqAe7/UZtHYhXtlmextz7b
         nv7g==
X-Forwarded-Encrypted: i=1; AJvYcCXVkoF9PHXyamf9Bx7VFFiSU1Kc5J+/l/pg7XwLr5xbiMDtxke1AdjUIDlFpIlw3CXjZQ7BDgZJeTQ7@vger.kernel.org
X-Gm-Message-State: AOJu0YxCB+6m0KuqN0MWKmKnrcx6sqMBHqGFiclX5170ZX8jJ1UcqjH0
	Psq5skVGewXz/7jfGsf2o5iR+Kv9/rTelxU52VvepoInMGkxCwGhJbvY
X-Gm-Gg: ATEYQzzpELBz1QFtUbVmS+HJIl7lJTpxJ5FM9aN39xQcRrfIGju1JIVQzzxIDWM8M7N
	WKALwf1iSSWle8HJLT1wFgQyKC8avyQC3OPrQAcPUZXo7zY+tdgO6P35DRw6N4y8NSPl50r/DWU
	6ET6sMmFeH01jx2zR/a1YQVz9mUil/1iTind76CN24CGhHRAXPPzAdZTij8aiRs4IvGCf9Hw0bL
	lpUzi1PvQkUTEarZJk2nN668co2Oz4iSEEveaEy0aTxbK5fiYJ7oI0pxWxFLji/KLp2QGUXmYQe
	dwoVpMg5waAp+NLKPeLrECDP8YWhG5UkG2ZpcecKpcbpt7oxoc9QMSKUgVMii39wk+nSwp/zI0g
	NuX3L9PXi2Coi+3QxVbAPCkE2QtghyXrEC38c1XuQPY8PBqGjcC3Wf+1GQXg8v1th/UjvSUYSgd
	J8rxMWNMokBvXf1bobX2ILiccyztyVPAP+tAqdUxLoWuxmbYy6k4Bte/7qqEnIFkOyLTPq7UDuf
	KpmcpCb6uwFlDWaQ7JoIgSejTK8ArHJ3Y4xi0TwqJi3imNQ6Q==
X-Received: by 2002:a05:600c:5248:b0:486:fdba:f5db with SMTP id 5b1f17b1804b1-486feb5d82emr3683855e9.0.1773945720197;
        Thu, 19 Mar 2026 11:42:00 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:59 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 10/11] arm64: dts: imx8mm-var-som-symphony: Enable I2C4
Date: Thu, 19 Mar 2026 19:40:30 +0100
Message-ID: <ba867b28e52cd1ed934a988d2c9e46542992c788.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277992-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.820];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.68:email]
X-Rspamd-Queue-Id: 95C872D131B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Enable I2C4 on the Symphony carrier and add pinctrl configuration,
including GPIO-based bus recovery support.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 6112e4392c59..fbad5d2d4a97 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -188,6 +188,16 @@ rtc@68 {
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
@@ -281,6 +291,20 @@ MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
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


