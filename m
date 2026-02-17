Return-Path: <devicetree+bounces-266258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GENEC/y2lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9614614F4A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EDCC03054667
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFE5374182;
	Tue, 17 Feb 2026 18:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lCrGzRli"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3BE37474B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353824; cv=none; b=tUstOQdJMG0u4HDGpKBTfncZ3FoB8EzqQdDPlesgvIOrKb2f4BOMsvGjIR5D5XkyltqpWfH0QJOJAouzgM9Yx7EUn11I0fTIGKUGKBvFA8MKPFHMl0f8S7BhvGNcoYowEQVWUmZvgKnoZ+aAT7d2cm9nvJhmTZhpq1GCrW1x6Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353824; c=relaxed/simple;
	bh=21585bcokoJUYx4ALilZW0mEl59xhz//2F3q1cPbkR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSdS0/TW6538RGOsdVDM52OQzN23XX7FTezGUZi3oMwBQ/tf04TCPQ6UGo5Hcp4qwVKtv4ac1EFt2i9LrKtwgRCx3stQHC8ceGdAiVqQJvR9RkSHe6Zqm5NqaVJA9YuzvE48xJtOVIsslLCI+vAtarc8KefPWjh/Jiy+Yyhvk8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lCrGzRli; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so50848855e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353817; x=1771958617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aXn4tBUxeH2P58q8ihGRGzP4M+/r8Zrw47NlkaisI0I=;
        b=lCrGzRlirSuLtTnBYG7NgLIRdkXmSUQ8sLM7lB6tKcd5ZhDpsjGDdUpybV/j1DEzE4
         hvl0456T1azQK8dPc2TMs3L7w58HyajbEpChUqnhwSv1Px9FV9DAp5+Yez8BfDaMDimg
         JvB/Ji5lv/vzj1gvJ6+/qiup/4RidqedlMgOX8P93W95lt2KWr+r1kJTTjUAdauo6zPJ
         JqsW6ZLUt3V4wKS9LUqg7PLa2+DVb4VetQrh3K9CjZmsEKI/RyW3wgpSS5w9PuuD0Pt5
         QJMduBsdTb6xzq7C69Q5rMPlZnbtN4Sr/E3XxzrYf+qvTvI3LAZdD4tT9htXn2nze9zo
         XxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353817; x=1771958617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aXn4tBUxeH2P58q8ihGRGzP4M+/r8Zrw47NlkaisI0I=;
        b=HhdxUTqe+GIi49C/yKTDLGwy5Ps1+/Uu1XHN8P5+yF7UUbBZ4BUh0ewgQiVScC4tFM
         xvl1HtmkrGu99PcO3QgcVEXmUMU50GerkY9rr3kjhGy+xtKDd46KCDHoEFWk+JrMgzwH
         hV3y7DOKNdw/k0B/k5MscD/bq1XqInr27kCRc4fUWuqFQ5Hlbta7RSD/UnrZ39kLE+E7
         tDT68VbRv1ujHArimGtsqnOgtPZ3+fDQ2BdqHA4jiSMzfty2OTvSjtmSG4eQhayvgKpQ
         7iLrVs8ZuNWYPb5VoVzPZ1eVaY65HxZUe/bQ517KIK0g1+NxtIH7pM9szW9WjDoIra8b
         1hNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMKuVTi48COwFEfrrfqJpaV5WhOl51cgvTFoj7+qGMwEWIzaC6tQPg0IRHzucDo+nXVWboxowWehZH@vger.kernel.org
X-Gm-Message-State: AOJu0YxyOnCtP7U3fwAlXijbEGNEV6b5D05S9Y/XXXivcMVUHsFsdVqs
	vcmuOQa3VsMfreQP25PRebjJSXJM86TQ+cnUb3LVtl/i2e6G3+bP99iM
X-Gm-Gg: AZuq6aKNLp0eh60lUWG0MB/a6Er5rpFVSH/zl75Ra/tasJA1lkJrc3TBWQFGOv4egPJ
	NC1rPXdXUwwE8ckvy/JNfic3PeAJMxTeT7KumebG41L4cC0N6FbSrbSAe03DcrrXcnhUzyt2O8j
	dI66e/acJF48jOsi413sdzGvQrKH4RpOxhvevIYDIFKwrvjjXhj7YsHgqxxuVTWFWMQLNzDX6GJ
	QvOE7Reas4kiICql2BULjjg3w63NItab9s5E+WpuOYx0LjkHErKJB3HdyU/ZiYsyN1rZDxYgKkw
	5WXTScmzqrCh9spDS+jmDwTP+95cKUl1mQrdYqXUTFjcWWRxOedgUIaWLRz0lB2e4iSpHh8EO9S
	9HGq17xGkMMSrIZLHMQjBB/ER+QM9cw6wXrU0GarpCs8PuNc6ckhmWnZv3ZHUwESYSKhUf9lVut
	R4L6xWc4hHl14ZRIFcQ4DkgRAVOmvowwobh020nXYtokfl0suDEGaZ1F6xkU6EC7bQ2FOVgVUgu
	JY5C4GyE1CbbfO4hyegXHjqHQddPj1YTYpTwIOL
X-Received: by 2002:a05:600c:4f0e:b0:477:7bca:8b2b with SMTP id 5b1f17b1804b1-48373a1029emr277764195e9.15.1771353816944;
        Tue, 17 Feb 2026 10:43:36 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:36 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 10/11] arm64: dts: freescale: imx8mm-var-som-symphony: Enable I2C4
Date: Tue, 17 Feb 2026 19:42:44 +0100
Message-ID: <c560f9a4d2de222deae6fe14d75478457fb46b58.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266258-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.68:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email]
X-Rspamd-Queue-Id: 9614614F4A8
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable I2C4 on the Symphony carrier and add pinctrl configuration,
including GPIO-based bus recovery support.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mm-var-som-symphony.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index b4dba1961eee..3d9658edd58c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -172,6 +172,16 @@ rtc@68 {
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
@@ -265,6 +275,20 @@ MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
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


