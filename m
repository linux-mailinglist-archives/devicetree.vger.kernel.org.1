Return-Path: <devicetree+bounces-215635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF5DB52290
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 22:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED826A00FB9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 20:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B940E30ACE5;
	Wed, 10 Sep 2025 20:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iQjjS77/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3172F3064AA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 20:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757536911; cv=none; b=CZxGEFV/GeDVUiqPN7G/fZI5No6ZCSo4VI097rbJHuF+BwGfwmdzFGpckzD4zZy9Qr3r3CBbcC7Zcc+4FJy8PgIWRWDfZitgd1Yu9dRcazX09NvZxHKGGs13wA4qIJuJJEFEV4hmCR44WL2eW8hJTUwsXuUKNdT8VHhdxIZeuG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757536911; c=relaxed/simple;
	bh=llYEKR9ZsQCFnMi48dM1Js47Rbaf1JKFBze2trZI1y0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Cbn+yHlI0QUv4375NQ8gfpkoaIry1i1cDaIo0Zru8xpH4w5BZukgL2O5599azKcd7OjPtHHmlxvezaJTAGYyE1SDbfAyrth5/tDkT9FyHhEIzLQ/Sa31dMiZNcdpbt+9ErZgP7/gRj//IOwZ5YOCYvvu4jF9qmrLHQAUkYk8Y5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iQjjS77/; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3df2f4aedc7so28232f8f.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536907; x=1758141707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FHTZRydesHvIXXhzlLwXfJdC1zrWRzHVjiGEebmFrg=;
        b=iQjjS77/YpOurYBP4UYx2wDmKedhsCTQvyJbum1WQi33+Se23EoTud3ubl2VJ3fJmE
         ofl6xtvl/desp17hIWbuFuLlGuahuPr44cuCX/VQWG3ImCXPmkAJB5mG9ISJlkbbEx/k
         1DEBnFFIc4aUDOFiCtvEQ9JjkqA62AL9hUB9pTQYrZTuDmZuDq1vQTeVPpwDngagJPwf
         vVJMbRNsbXKj6of0B5Q1dcFuY8twVXHTvHlphqBje2OVAo5iKIJP86x4QvtEzUVGTWEB
         sKRmfKsz97Xo8iCDjyrIOt4rmu1k9S/3zs7QSTZSof2fesRrocn+kxIgyFtCz0hONykC
         NYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536907; x=1758141707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3FHTZRydesHvIXXhzlLwXfJdC1zrWRzHVjiGEebmFrg=;
        b=lWZpN02KaAlMPjQXV2AgQaRFn6ysv+RRMCRvePLT0pC2mLExlsJQYPF7l5pq3LsdMA
         tIm9Ulxfgi9SDxU7zSCAUbwC0Igzkjm6wzPVYbltEwrkgu4ebm+HhpARUfGc2305BNVR
         L9LJo35Fq+yQwmaCypnZII2LN53pn6xyavF6/ZpuYBWSUIScEXBXoYjoAML8wdO+lMl7
         FfilO6puDpt0uXwWoLFfDi383bHC9oOjtQbRT+JQ2Egk0MSxXkofiaqrS+JoAdJ/nGG4
         yGU5+VtFbptgF/yaxf1pNq0rioknlwHJHnHkwaV8Q6BE2JFihwmJx1l/XnFrqGHd/42M
         0+lA==
X-Forwarded-Encrypted: i=1; AJvYcCX9c7mDcMz1l0NqORimUksFbbeWg9n5+SlmwNudJKrwDqJ1crV3na2uwCAfXpw8IiAyKTtAlcXP7EN5@vger.kernel.org
X-Gm-Message-State: AOJu0YyPEFscl5MFWU42qVLeZyNLsD3OKfSeGeoAYDjnYms1dvH0Fkw6
	BzHxq+J0lKtBdIMHmyAax7NmAbjv83tdbzjrG2mYlh7R4lCEohK0ydJ9
X-Gm-Gg: ASbGnct+0Yd/i301+G3iIFQatIgHcy8Tzyb6P5wV0JSU5EuEL/251KQyYIe0aaOcEFV
	/oZ0nAH8zcRXiuEdFS+4vEEwu7j+Ihqitx7tD3nYvSinej4B9Ix1LK7dQbaMJmd/K4TmvDKsebH
	YHKuaQN4Yi4dRfvh7b49qMFVZLQKHeZVWoKpvxKR/jIOuk1gNNnpecOk0NwAUP6kizCZ+bXQJU5
	A8j3SmrZbMhY3ZqwiY2EghYrlskWZLYNC+1w/+JNNlVOP7PussrFyMjMO/hUw0qcZ+l9utKKDf4
	sY1JtLvnpuNGXHRclneH7pGK8JHuIojmHMMOPD1pRochSWr4SvRxjwl92IGS9HOM/zfsdmfkcNq
	JLZZ0dpoMwgh5lPIKQUX0klZXbIQi9H6Mug5Txbu5omufEyc=
X-Google-Smtp-Source: AGHT+IGbpCneuFgKariSapKev3xYB10Cgl8j+/UcwQVOYSv/8nDk4BOfl8jeZtgRapP8sGugb4Kc/Q==
X-Received: by 2002:a05:6000:40ca:b0:3e2:a7d0:add3 with SMTP id ffacd0b85a97d-3e636d900cdmr14105621f8f.11.1757536907147;
        Wed, 10 Sep 2025 13:41:47 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:ee64:b92b:f8fd:6cd8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0157d68esm320085e9.6.2025.09.10.13.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:41:46 -0700 (PDT)
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
Subject: [PATCH net-next v3 9/9] net: pcs: rzn1-miic: Add RZ/T2H MIIC support
Date: Wed, 10 Sep 2025 21:41:30 +0100
Message-ID: <20250910204132.319975-10-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Add support for the Renesas RZ/T2H MIIC by defining SoC-specific
modctrl match tables, register map, and string representations
for converters and ports.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2->v3:
- Dropped inlining of miic_lock_regs().
- Added Tested-by tag.

v1->v2:
- Dropped regx in config description.
- Used "renesas,r9a09g077-miic" as compatible for RZ/T2H.
---
 drivers/net/pcs/Kconfig         | 11 +++--
 drivers/net/pcs/pcs-rzn1-miic.c | 82 +++++++++++++++++++++++++++++++++
 2 files changed, 88 insertions(+), 5 deletions(-)

diff --git a/drivers/net/pcs/Kconfig b/drivers/net/pcs/Kconfig
index f6aa437473de..76dbc11d9575 100644
--- a/drivers/net/pcs/Kconfig
+++ b/drivers/net/pcs/Kconfig
@@ -26,11 +26,12 @@ config PCS_MTK_LYNXI
 	  which is part of MediaTek's SoC and Ethernet switch ICs.
 
 config PCS_RZN1_MIIC
-	tristate "Renesas RZ/N1 MII converter"
-	depends on OF && (ARCH_RZN1 || COMPILE_TEST)
+	tristate "Renesas RZ/N1, RZ/N2H, RZ/T2H MII converter"
+	depends on OF
+	depends on ARCH_RZN1 || ARCH_R9A09G077 || ARCH_R9A09G087 || COMPILE_TEST
 	help
-	  This module provides a driver for the MII converter that is available
-	  on RZ/N1 SoCs. This PCS converts MII to RMII/RGMII or can be set in
-	  pass-through mode for MII.
+	  This module provides a driver for the MII converter available on
+	  Renesas RZ/N1, RZ/N2H, and RZ/T2H SoCs. This PCS converts MII to
+	  RMII/RGMII, or can be set in pass-through mode for MII.
 
 endmenu
diff --git a/drivers/net/pcs/pcs-rzn1-miic.c b/drivers/net/pcs/pcs-rzn1-miic.c
index ef10994d8c11..885f17c32643 100644
--- a/drivers/net/pcs/pcs-rzn1-miic.c
+++ b/drivers/net/pcs/pcs-rzn1-miic.c
@@ -21,6 +21,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <dt-bindings/net/pcs-rzn1-miic.h>
+#include <dt-bindings/net/renesas,r9a09g077-pcs-miic.h>
 
 #define MIIC_PRCMD			0x0
 #define MIIC_ESID_CODE			0x4
@@ -125,6 +126,57 @@ static const char * const index_to_string[] = {
 	"CONV5",
 };
 
+static struct modctrl_match rzt2h_modctrl_match_table[] = {
+	{0x0, {ETHSS_GMAC0_PORT, ETHSS_ETHSW_PORT0, ETHSS_ETHSW_PORT1,
+	       ETHSS_ETHSW_PORT2, ETHSS_GMAC1_PORT}},
+
+	{0x1, {MIIC_MODCTRL_CONF_NONE, ETHSS_ESC_PORT0, ETHSS_ESC_PORT1,
+	       ETHSS_GMAC2_PORT, ETHSS_GMAC1_PORT}},
+
+	{0x2, {ETHSS_GMAC0_PORT, ETHSS_ESC_PORT0, ETHSS_ESC_PORT1,
+		ETHSS_ETHSW_PORT2, ETHSS_GMAC1_PORT}},
+
+	{0x3, {MIIC_MODCTRL_CONF_NONE, ETHSS_ESC_PORT0, ETHSS_ESC_PORT1,
+	       ETHSS_ESC_PORT2, ETHSS_GMAC1_PORT}},
+
+	{0x4, {ETHSS_GMAC0_PORT, ETHSS_ETHSW_PORT0, ETHSS_ESC_PORT1,
+	       ETHSS_ESC_PORT2, ETHSS_GMAC1_PORT}},
+
+	{0x5, {ETHSS_GMAC0_PORT, ETHSS_ETHSW_PORT0, ETHSS_ESC_PORT1,
+	       ETHSS_ETHSW_PORT2, ETHSS_GMAC1_PORT}},
+
+	{0x6, {ETHSS_GMAC0_PORT, ETHSS_ETHSW_PORT0, ETHSS_ETHSW_PORT1,
+	       ETHSS_GMAC2_PORT, ETHSS_GMAC1_PORT}},
+
+	{0x7, {MIIC_MODCTRL_CONF_NONE, ETHSS_GMAC0_PORT, ETHSS_GMAC1_PORT,
+		ETHSS_GMAC2_PORT, MIIC_MODCTRL_CONF_NONE}}
+};
+
+static const char * const rzt2h_conf_to_string[] = {
+	[ETHSS_GMAC0_PORT]	= "GMAC0_PORT",
+	[ETHSS_GMAC1_PORT]	= "GMAC1_PORT",
+	[ETHSS_GMAC2_PORT]	= "GMAC2_PORT",
+	[ETHSS_ESC_PORT0]	= "ETHERCAT_PORT0",
+	[ETHSS_ESC_PORT1]	= "ETHERCAT_PORT1",
+	[ETHSS_ESC_PORT2]	= "ETHERCAT_PORT2",
+	[ETHSS_ETHSW_PORT0]	= "SWITCH_PORT0",
+	[ETHSS_ETHSW_PORT1]	= "SWITCH_PORT1",
+	[ETHSS_ETHSW_PORT2]	= "SWITCH_PORT2",
+};
+
+static const char * const rzt2h_index_to_string[] = {
+	"SWITCH_PORTIN",
+	"CONV0",
+	"CONV1",
+	"CONV2",
+	"CONV3",
+};
+
+static const char * const rzt2h_reset_ids[] = {
+	"rst",
+	"crst",
+};
+
 /**
  * struct miic - MII converter structure
  * @base: base address of the MII converter
@@ -204,11 +256,24 @@ static void miic_unlock_regs(struct miic *miic)
 	writel(0x0001, miic->base + MIIC_PRCMD);
 }
 
+static void miic_lock_regs(struct miic *miic)
+{
+	/* Protect register writes */
+	writel(0x0000, miic->base + MIIC_PRCMD);
+}
+
 static void miic_reg_writel_unlocked(struct miic *miic, int offset, u32 value)
 {
 	writel(value, miic->base + offset);
 }
 
+static void miic_reg_writel_locked(struct miic *miic, int offset, u32 value)
+{
+	miic_unlock_regs(miic);
+	writel(value, miic->base + offset);
+	miic_lock_regs(miic);
+}
+
 static void miic_reg_writel(struct miic *miic, int offset, u32 value)
 {
 	miic->of_data->miic_write(miic, offset, value);
@@ -666,7 +731,24 @@ static struct miic_of_data rzn1_miic_of_data = {
 	.miic_write = miic_reg_writel_unlocked,
 };
 
+static struct miic_of_data rzt2h_miic_of_data = {
+	.match_table = rzt2h_modctrl_match_table,
+	.match_table_count = ARRAY_SIZE(rzt2h_modctrl_match_table),
+	.conf_conv_count = 5,
+	.conf_to_string = rzt2h_conf_to_string,
+	.conf_to_string_count = ARRAY_SIZE(rzt2h_conf_to_string),
+	.index_to_string = rzt2h_index_to_string,
+	.index_to_string_count = ARRAY_SIZE(rzt2h_index_to_string),
+	.miic_port_start = 0,
+	.miic_port_max = 4,
+	.sw_mode_mask = GENMASK(2, 0),
+	.reset_ids = rzt2h_reset_ids,
+	.reset_count = ARRAY_SIZE(rzt2h_reset_ids),
+	.miic_write = miic_reg_writel_locked,
+};
+
 static const struct of_device_id miic_of_mtable[] = {
+	{ .compatible = "renesas,r9a09g077-miic", .data = &rzt2h_miic_of_data },
 	{ .compatible = "renesas,rzn1-miic", .data = &rzn1_miic_of_data },
 	{ /* sentinel */ }
 };
-- 
2.51.0


