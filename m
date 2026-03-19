Return-Path: <devicetree+bounces-277991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH+NKdNEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2140D2D1484
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 022B03139E5F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760C53F8DE7;
	Thu, 19 Mar 2026 18:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EBAn8lvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B04B3AEF3B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945723; cv=none; b=MHQchWNK76ZtwOLHXnwD6SPhDdhw1uzERDr3tlJcHwdgkaJD/APDv9rPTzUb5AvuyWZk2IMNgazGNoBGmh9DIxkHw+UtViWNjmIWzx3Bol0TToq+TJ/zs8UtG98ithEEwV5Mg6hS1ICCrad+Kv8sf4ZRkUMrP0XJ1kOyYZpg6PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945723; c=relaxed/simple;
	bh=OKQ6ITiXJ1sq9W2uBiwEhtzGC+JhqD9k+TysxbOFCIU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L1Q27E7XO5hoPMCFQMfdQvyFeeKTsVdLCyjAvhuvEfhdHBgLBbRmjA0j1+W6MoYchD13awEL7BAgxFmIxrNL2uBu0yMFbmi8qNBDR2k2AssBAuAItkap21NoeY8FTAbwG7EJDJ5iI80wEFE8v/obGey/gG7Sd0RxOkhsHutwhm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EBAn8lvo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso11811655e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945719; x=1774550519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fu2Rc4rssQfTFJ5EZaq1oCgNnoY0eCc8f3U0nan/fr4=;
        b=EBAn8lvouYj/WGtKLZzp0gZER+4jG41938Yt0RbNnOn0Yeu77Mk5La9z+x0ti6/wUe
         klX/dZj8O9NKw2ToJRQHa85jS+ULnbwheseu/0Co1sM/a5WZq8G0hwcw61bJbzy6bBlk
         trIyVp6De64S3kOgk0+5+9a22oEjHKxRR3aiLG8VkKmKAW8eZhwyTjkDS4enwpEpqlSq
         huYCPmw9vrswYJ5SLC5xkUB90Ly7IIkooE1Bn5DBgn9gsNwg9jhPxg3LaAW0beFEj0Du
         Ko0jXSqW+qZDGg+VMasrXsem0j3A0lo4QJnSfCJFdz34iMSnrUGbkUHRDamQAbP8paKo
         t5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945719; x=1774550519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fu2Rc4rssQfTFJ5EZaq1oCgNnoY0eCc8f3U0nan/fr4=;
        b=NFOFEo1XEu8XnL873fnwgLGH8MsNZCLYfLaTBII1OZynenwVOJvV+dGvZdUUDlCFPr
         +fKOEoimzFiYbRKiN4G20kIChRgARcWdaMaIOt9Ohxdel7bZZC/Qz02d1KeFIJPRPZv5
         mBvtJsDq03wez5YRbJTFkxQwbeyu5XRzge7/zf/lMk2ppvI5blzsC28bVF61uzHaO5g4
         TP40Qx6Q25mg0D/eum8+XNaWDeSs6MiLQtHJwCyzNwqmEst3KOdUEwzvcGDuOP1bh709
         JdroBDM1vlXXLwp+yM/ntQI7RYD9DW7Xj8w6L9EOIT7JV2YpQDbo5pZgJU1argwSYNji
         yOaw==
X-Forwarded-Encrypted: i=1; AJvYcCWY7yhxUnRqCss8U3woL5NGvslrKLjBWHfG8/1SgtduyuDCDSb202RIjw/o5R0j7YpJCkIlepV/2+Gq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6ciLfDHGNPifRZp1AmmSVBeo8VSxpZRhFPQqSi2XdwsI3jdxn
	LhHYyN5hY+DMnvVh8N3tHLo3RqSJ1NIQEkqxAhAPp0SC6vx0jPhYMCuL
X-Gm-Gg: ATEYQzyAGoENENNm0FQdLRF/uy7nUJrKZeLA8NvIumlBzAEfN02sMqkVPJzxi7NVjir
	vKsiJnhzDoXcQfqtB5hLMsDJlaP8mLLFVD+bbW3K4rsrckjTTYSXRHYyw1/73/R51Ou2R2uYg3b
	xQRyIMHzGAXI6TSeWp1H0Q6u7Ia6LJ5wderTxN8pgn+e9oLKRSbtW4jG8fzJfbOyC5hAPPemTk6
	hMEWx2/KyyElwqBFNcQE+xKtfoX1Hc4cpVabML3QkqCq0ZY7znbcHEcQzQvAcyXAs0DdXm3kZZM
	oixZk+JqmpIiwZz6SJydtYyMnNOVWRtGiqyYZYeWeS/qXN3ErgHdzTTtBhH06uqcoCjdnLYTZcS
	3qHdCHssAbmO4OcGSgVTy/C3RGL0t0a3bTf1YPT1yASAunpr+eJUaGDqLj/ZA2r2T/9BBfDF08n
	bVJ9xI86SMCRJCKw3/iBz43ayVcdFM+afV3B/OmKqGtDhbd1RA9lX0C7xJ5feMK24d0akJ64eu6
	UktO8IYKUq+JBhM3loxeHBgE52viFoWQzbIvvc=
X-Received: by 2002:a05:600c:1da1:b0:485:557d:9fe with SMTP id 5b1f17b1804b1-486fedc9c01mr2720365e9.12.1773945719265;
        Thu, 19 Mar 2026 11:41:59 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:58 -0700 (PDT)
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
Subject: [PATCH v4 09/11] arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
Date: Thu, 19 Mar 2026 19:40:29 +0100
Message-ID: <570b16455e37e7ce4d2556ed4e21d67ac3a27183.1773944896.git.stefano.r@variscite.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277991-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.830];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,variscite.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.21:email,2e:email]
X-Rspamd-Queue-Id: 2140D2D1484
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the TPM2 device on the VAR-SOM Symphony carrier board.

The ST33K TPM2 is connected over I2C, and A PCA6408 GPIO expander is
used to control the reset signal required to release the TPM from reset.

This patch adds:
- The PCA6408 GPIO expander.
- The ST33K TPM2 device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som-symphony.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 6da29845985f..6112e4392c59 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -153,6 +153,20 @@ typec1_dr_sw: endpoint {
 };
 
 &i2c3 {
+	pca6408: gpio@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	st33ktpm2xi2c: tpm@2e {
+		compatible = "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
+		reg = <0x2e>;
+		label = "tpm";
+		reset-gpios = <&pca6408 4 GPIO_ACTIVE_LOW>;
+	};
+
 	/* Capacitive touch controller */
 	ft5x06_ts: touchscreen@38 {
 		compatible = "edt,edt-ft5406";
-- 
2.47.3


