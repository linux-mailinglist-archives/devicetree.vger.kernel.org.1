Return-Path: <devicetree+bounces-215631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A112B5227D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 22:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C430F583AE7
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 20:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B78F303CB2;
	Wed, 10 Sep 2025 20:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cRHuLbdV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6D23002C7
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 20:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757536907; cv=none; b=FwbQaWg8ujSbxRTjsThY8b2yg06s9Vj6qRRkw/LovwC0unVOoA09AMujLrJsQ9qzo3EuWj3S1PLpW2FvWSQnNTT7oEHwjtCojdcUcMvWYFnEgHnsJ8f68sBAzDaHGVt8vzxPY5KLpH+uwwh8gKoTyxyQyOZkkBvaHccyz80aa28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757536907; c=relaxed/simple;
	bh=kfhIZICBTef3K79GIpgqcfsl2dIjnukOF973DgoitQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bTTJZ+ypQurf+SmN8WafEDKEcMmKrGJt5fjocweGu5rY/5HvJjQ4Jn8jwDO+8mJsog63fimKUNz0IP/N/EOH2xD9Xef8diHmKfym7YRHnmQ0NCnn/uOdtuOOQrXqxay6rvRVXZkTmsKOJ6RjSx86XjYRW+HoNOLVZM3HC9+H9Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cRHuLbdV; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3e7512c8669so38460f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536904; x=1758141704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2NEG9ULoT6umaRcxdBA7/4FiuKbBhyp/iZy5N+/YQbA=;
        b=cRHuLbdVTrW5a2tAPTknpyTYigEvMUVhwyvRgCtnFnWdWhxnJ8Ma0GLKvyRM0BuMKb
         z3hXm/6n5ZCxgPdDiXXhlkBXWm+9l5XoR34rH3fBUVNolvOkJ0tdHTVtS24SiFmmz+aA
         bcl+lVwbWr3NZRKiRSSJLcO3OiZEOcssaAxJjuwWEisjlyw8aA373NpfUkAbyH7SGAJ0
         88ln/7lyCv82clN9k8n3TJZzLviWMV33aOfTnZG2knJ1oKdyq4OGXZQZwMYP7oBg7ye5
         09OY/2lXJMfVnXHA/VpaL8Am/3VmK6JglYJ4w3N8S7SKHAN7D1iFvM+IhY4zWImRoKAE
         FlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536904; x=1758141704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NEG9ULoT6umaRcxdBA7/4FiuKbBhyp/iZy5N+/YQbA=;
        b=EIqSnpFfJgtsT59gHGGYgFef+tDQolZSllMei8ERmFeGAjRiMmNk8vG+xBxuqI/raH
         nKIW03Fmws7E0jZmjMKkzhKCIgFCz99UnNoeFHVVwuyDXAcxGaX8sHxO8VRhJJGcbT9l
         +2V7tK9oMB8ofiyqJexcmATp4Z/myTH9I2wT4GWi0ftQ5RpiUu3Sy/Tw2hNPP1bqyqd7
         qs5UMFsXkP0oAVSusVZEPZl9lIbbxtiIcKek6FKIslxS6yWlN21WbKqTnuFQeecVLoyX
         CTFyojlEUI+eOxSY+Nz1ptET8A3PEoUiQ6wDg+OJaiiLSCwJi5KBIxgVr5nkbL/AnQEn
         FKfg==
X-Forwarded-Encrypted: i=1; AJvYcCXxGyku8VSji9eCuGGkBBg+Qrbw4ZDPjl1O7P4CBQczrnz4qwVG66pSgwgnZBJAcT/2PFzkev0i8poR@vger.kernel.org
X-Gm-Message-State: AOJu0YyWapEayow0MjjA+cv2NuF9j6wIV4wSPMYYs5M/b/aeyiHIBOGt
	H2RfLoIZjpA4cJJKtWA8bSTe22Q34zOx61uQPvYn2tGG41zf4i3EAwGO
X-Gm-Gg: ASbGncsq4wEBurpPZl8MK7hrbGe+oXlODXOzoUVC2gccJaUYMQLMJJNaB9yUmdOSanW
	4fKgQPTEBBJASJQjI0Y6T7hmh3yAHgaF+8KPMaDPBkOhLQqxcDBPn8nqpDEPQvMYXAW2yUgw/aI
	7Fx3wVfd4lRDrqaT/6Kks/D3lgeoe8IvRRpY7mLewntPCQYPIs9ZiqUe3H9GLWqZv081f3NmEEw
	k2530beDZvczDt3cW2RfEqzlgCczu1qnv5qFCLqRgV0rdBBplpR8ECqq/nWUC3ElYiuQZ5bV2j4
	4UW7LqR0QVKaiAcqUBbLMcwG6ZyfuEQFmOUK8WrOV0zp/3AQ54aD2T2JN5ZX6s3Jcwd6r7HSZjw
	J1enomhJ16I7Nw1WgARSr5y/MqDT/RxxhOvR13lqAiMlAoGl1ajtejNwmsQ==
X-Google-Smtp-Source: AGHT+IE6vSf1bAIDCRRul77j2Q7f26dH3crp9aMfGEIpBKzUqOnqPSkNI4W3pUwu0Dr15sy9ULv28w==
X-Received: by 2002:a05:6000:24c3:b0:3e7:484a:7428 with SMTP id ffacd0b85a97d-3e7484a7867mr11620526f8f.60.1757536903556;
        Wed, 10 Sep 2025 13:41:43 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:ee64:b92b:f8fd:6cd8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0157d68esm320085e9.6.2025.09.10.13.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:41:42 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next v3 6/9] net: pcs: rzn1-miic: Make switch mode mask SoC-specific
Date: Wed, 10 Sep 2025 21:41:27 +0100
Message-ID: <20250910204132.319975-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910204132.319975-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250910204132.319975-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Move the hardcoded switch mode mask definition into the SoC-specific
miic_of_data structure. This allows each SoC to define its own mask
value rather than relying on a single fixed constant. For RZ/N1 the
mask remains GENMASK(4, 0).

This is in preparation for adding support for RZ/T2H, where the
switch mode mask is GENMASK(2, 0).

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2->v3:
- Added a comment about replacing with FIELD_PREP().
- Fixed checkpatch warning to fit within 80 columns.
- Added Tested-by tag.

v1->v2:
- No change.
---
 drivers/net/pcs/pcs-rzn1-miic.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/pcs/pcs-rzn1-miic.c b/drivers/net/pcs/pcs-rzn1-miic.c
index 31d9e0982ad6..f6d9c03d10f0 100644
--- a/drivers/net/pcs/pcs-rzn1-miic.c
+++ b/drivers/net/pcs/pcs-rzn1-miic.c
@@ -7,6 +7,7 @@
 
 #include <linux/array_size.h>
 #include <linux/bits.h>
+#include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/device.h>
 #include <linux/mdio.h>
@@ -23,7 +24,6 @@
 #define MIIC_ESID_CODE			0x4
 
 #define MIIC_MODCTRL			0x8
-#define MIIC_MODCTRL_SW_MODE		GENMASK(4, 0)
 
 #define MIIC_CONVCTRL(port)		(0x100 + (port) * 4)
 
@@ -146,6 +146,7 @@ struct miic {
  * @index_to_string_count: Number of entries in the index_to_string array
  * @miic_port_start: MIIC port start number
  * @miic_port_max: Maximum MIIC supported
+ * @sw_mode_mask: Switch mode mask
  */
 struct miic_of_data {
 	struct modctrl_match *match_table;
@@ -157,6 +158,7 @@ struct miic_of_data {
 	u8 index_to_string_count;
 	u8 miic_port_start;
 	u8 miic_port_max;
+	u8 sw_mode_mask;
 };
 
 /**
@@ -402,6 +404,7 @@ EXPORT_SYMBOL(miic_destroy);
 
 static int miic_init_hw(struct miic *miic, u32 cfg_mode)
 {
+	u8 sw_mode_mask = miic->of_data->sw_mode_mask;
 	int port;
 
 	/* Unlock write access to accessory registers (cf datasheet). If this
@@ -413,8 +416,11 @@ static int miic_init_hw(struct miic *miic, u32 cfg_mode)
 	miic_reg_writel(miic, MIIC_PRCMD, 0xFFFE);
 	miic_reg_writel(miic, MIIC_PRCMD, 0x0001);
 
+	/* TODO: Replace with FIELD_PREP() when compile-time constant
+	 * restriction is lifted. Currently __ffs() returns 0 for sw_mode_mask.
+	 */
 	miic_reg_writel(miic, MIIC_MODCTRL,
-			FIELD_PREP(MIIC_MODCTRL_SW_MODE, cfg_mode));
+			((cfg_mode << __ffs(sw_mode_mask)) & sw_mode_mask));
 
 	for (port = 0; port < miic->of_data->miic_port_max; port++) {
 		miic_converter_enable(miic, port, 0);
@@ -582,6 +588,7 @@ static struct miic_of_data rzn1_miic_of_data = {
 	.index_to_string_count = ARRAY_SIZE(index_to_string),
 	.miic_port_start = 1,
 	.miic_port_max = 5,
+	.sw_mode_mask = GENMASK(4, 0),
 };
 
 static const struct of_device_id miic_of_mtable[] = {
-- 
2.51.0


