Return-Path: <devicetree+bounces-237804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC6AC546E8
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA1634EDC3C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 20:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADDC22D3EC1;
	Wed, 12 Nov 2025 20:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NL1G+iXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25BC2C08BD
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978816; cv=none; b=WU4hNsXGSc1KsQ93t/u4n2AUvCidVGJFFa5TsyXMf+hNGUFYyHMtnepT6HtqTiuSGIRU+KVa9pNUHk7mWKRtZTAuZwd61EaR2Xbq5fDs+uHo4ZweoS6UqPLwlqhT15km4NvGEBYRl/hznNWDb0/6ZKqPqMBWVZ9sYCyYb2EopnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978816; c=relaxed/simple;
	bh=FyeNLHzx9wEN/qXKtjmM5rgKnxBy7kQtIf7OGGTpnZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O5JeQHYzF5BxKZSM8pq1SdcjOGOKuPZkQCWJ5vNVIEb6oZRd6FXF5Nbh5cSFc9S6rxKgTDeXlqB48F2M28V+q4XWG71rMvQIOZ/SEh58wSBCAlehZKTo7KreMQwXxsQ3RGcgXy4UxWMja/AWaRlwNUPi0GHYpOvemNnHZp/SllQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NL1G+iXM; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7afc154e411so21478b3a.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762978813; x=1763583613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdhW6tk5d4e4tP2yeRNaTsh6HeUSuYd0/9wpH/jkddA=;
        b=NL1G+iXMw8XH9QrGdPtugZCuB86/Fy7BuH/6WDDeJOMaNxyIyvgXqME1E5RH8v0yZx
         tkP34H69aX0PaCvr90rg++1x/TPU0PY6pzt/PQ78nBDqkunURPaRz5R0RRs7Co7eUQv3
         vk4UARshpoKm27fCQKZ8okzTC5nDnHIY3SNck++s6o22dvxCcDKs+ZDr0OmVgrcgvzhd
         eqmev7nLFiDYMZxaFbK24wGG7oRf+ey3KxISZyP2+M9wChuzOeEwANjFjvkrFb9q7/2+
         h8+8Y/voOtyGslXCRd7HxpcfDmzdv1fJ4VP6AAHtXb5CyfZ1PXwvqWM1IVjQdxoSJ0Ax
         aeFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762978813; x=1763583613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mdhW6tk5d4e4tP2yeRNaTsh6HeUSuYd0/9wpH/jkddA=;
        b=akK0VOYjXoyKx5HSqkIGNROiU+7ePCHujIeQ4awSqdM+bb/Xt2arvfoIL3tMxGROZ+
         NTV/HWsH7EFsuDfv8jap6/KqlFFxMCIASEYxiwst2bEMC9sEey1JBul6x1945KlywbmH
         pkg3eItDHdSSmTIEnsN4amr2fXjOwxJtDp7OzhhaG3O6oJ05rdNKBxMKXClEOAxzVF8s
         o5YqAlbbqUYZma05W/aB2/3xjqFnWxgPXgdB56W1tTK5UDxq2ueBYTK/qLhiu7Yst22e
         iGi6/JEGoT1qrkF0hdjRtHRkx3NksTJtefmMpLg9HaQFgjifh0gfwd4d4Zx5ZyAjpMna
         bE8g==
X-Forwarded-Encrypted: i=1; AJvYcCW0/XscWZQETFNl4j+DdGdKoNC01iGulYl3E4CxVXrxdxmGklU2kFgOeO9+0Q1Eem0VYZE0QmOSr3TW@vger.kernel.org
X-Gm-Message-State: AOJu0YzDZjel0AgNqflc9WAIH05rboYFWMF8NXq30qoo2zqU2rEXhKoK
	QZFJM5cB51noAo5XLAPInH8Tzn6i7OERT43272/xOOLMbZ0x5Hnas3dx
X-Gm-Gg: ASbGnctZNU67n4quYtFiDkbdcRnItdwPG0Uinw9z/rkEieg6q4Ogozy++GnuoA7DeeF
	da6T/K9NCRLj1I08o6S+By1mDe7CGQ5OGLJ4C5gigI8qDrIwR7TreUHSNCEFyqV+iUk4szEvrT/
	pMaFaCV5mD7MjQ9H33cLOVME10v/2BztIVTwSEH+vVsvwdfLNNkOLQmHfz2hxAYiEXXBIfV/aIZ
	WJudKJ0EgkeDyfNGf8xzscGhdbXQB4nEG/MffSUAeYwfuZ5o2lpIaCoBdD0ZCWb/1BpAwmf6F+H
	vfyzmbSx+p4ju1Q+jBp1wL72F+IS9+ZeFhQUnnckJZ/Etm0kr60gemUCcN+jzOeavklZMH2BvpG
	tXufDmY8rl/oU80ZTORgi2IpXXeemb4VOgqyrJt69GwfwrmW3qLlIGBmLfpQq/Y7yZ0cl+s1+Wk
	lXwPfcsM/KYphJkSxAqH4CEQ==
X-Google-Smtp-Source: AGHT+IGuZmaA8bZsrtSJ31Pxg9MAJXLF6MUuXUKDHpV8hW9nvrdGY7K9Hzkg2UNWKBb1fiHttuFL/Q==
X-Received: by 2002:a17:903:3d07:b0:298:8a9:766a with SMTP id d9443c01a7336-2984eddeab4mr49609515ad.53.1762978813003;
        Wed, 12 Nov 2025 12:20:13 -0800 (PST)
Received: from iku.. ([2401:4900:1c07:5748:721b:a500:103e:1bad])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2377e0sm261015ad.23.2025.11.12.12.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 12:20:12 -0800 (PST)
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
Subject: [PATCH net-next 2/2] net: pcs: rzn1-miic: Add support for PHY link active-level configuration
Date: Wed, 12 Nov 2025 20:19:37 +0000
Message-ID: <20251112201937.1336854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add support to configure the PHY link signal active level per converter
using the DT property "renesas,miic-phylink-active-low".

Introduce the MIIC_PHYLINK register definition and extend the MIIC driver
with a new `phylink` structure to store the mask and value for PHY link
configuration. Implement `miic_configure_phylink()` to determine the bit
position and polarity for each port based on the SoC type, such as RZ/N1
or RZ/T2H/N2H.

The accumulated configuration is stored during Device Tree parsing and
applied later in `miic_probe()` after hardware initialization, since the
MIIC registers can only be modified safely once the hardware setup is
complete.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/pcs/pcs-rzn1-miic.c | 108 +++++++++++++++++++++++++++++++-
 1 file changed, 106 insertions(+), 2 deletions(-)

diff --git a/drivers/net/pcs/pcs-rzn1-miic.c b/drivers/net/pcs/pcs-rzn1-miic.c
index 885f17c32643..333467cf91a7 100644
--- a/drivers/net/pcs/pcs-rzn1-miic.c
+++ b/drivers/net/pcs/pcs-rzn1-miic.c
@@ -28,6 +28,8 @@
 
 #define MIIC_MODCTRL			0x8
 
+#define MIIC_PHYLINK			0x14
+
 #define MIIC_CONVCTRL(port)		(0x100 + (port) * 4)
 
 #define MIIC_CONVCTRL_CONV_SPEED	GENMASK(1, 0)
@@ -177,6 +179,16 @@ static const char * const rzt2h_reset_ids[] = {
 	"crst",
 };
 
+/**
+ * struct phylink - Phylink configuration
+ * @mask: Mask of phylink bits
+ * @val: Value of phylink bits
+ */
+struct phylink {
+	u32 mask;
+	u32 val;
+};
+
 /**
  * struct miic - MII converter structure
  * @base: base address of the MII converter
@@ -184,6 +196,7 @@ static const char * const rzt2h_reset_ids[] = {
  * @lock: Lock used for read-modify-write access
  * @rsts: Reset controls for the MII converter
  * @of_data: Pointer to OF data
+ * @phylink: Phylink configuration
  */
 struct miic {
 	void __iomem *base;
@@ -191,6 +204,12 @@ struct miic {
 	spinlock_t lock;
 	struct reset_control_bulk_data rsts[MIIC_MAX_NUM_RSTS];
 	const struct miic_of_data *of_data;
+	struct phylink phylink;
+};
+
+enum miic_type {
+	MIIC_TYPE_RZN1,
+	MIIC_TYPE_RZT2H,
 };
 
 /**
@@ -210,6 +229,7 @@ struct miic {
  * @init_unlock_lock_regs: Flag to indicate if registers need to be unlocked
  *  before access.
  * @miic_write: Function pointer to write a value to a MIIC register
+ * @type: Type of MIIC
  */
 struct miic_of_data {
 	struct modctrl_match *match_table;
@@ -226,6 +246,7 @@ struct miic_of_data {
 	u8 reset_count;
 	bool init_unlock_lock_regs;
 	void (*miic_write)(struct miic *miic, int offset, u32 value);
+	enum miic_type type;
 };
 
 /**
@@ -581,10 +602,82 @@ static int miic_match_dt_conf(struct miic *miic, s8 *dt_val, u32 *mode_cfg)
 	return -EINVAL;
 }
 
+static void miic_configure_phylink(struct miic *miic, u32 conf,
+				   u32 port, bool active_low)
+{
+	bool polarity_active_high;
+	u32 mask, val;
+	int shift;
+
+	/* determine shift and polarity for this conf */
+	if (miic->of_data->type == MIIC_TYPE_RZN1) {
+		switch (conf) {
+		/* switch ports => bits [3:0] (shift 0), active when low */
+		case MIIC_SWITCH_PORTA:
+		case MIIC_SWITCH_PORTB:
+		case MIIC_SWITCH_PORTC:
+		case MIIC_SWITCH_PORTD:
+			shift = 0;
+			polarity_active_high = false;
+			break;
+
+		/* EtherCAT ports => bits [7:4] (shift 4), active when high */
+		case MIIC_ETHERCAT_PORTA:
+		case MIIC_ETHERCAT_PORTB:
+		case MIIC_ETHERCAT_PORTC:
+			shift = 4;
+			polarity_active_high = true;
+			break;
+
+		/* Sercos ports => bits [11:8] (shift 8), active when high */
+		case MIIC_SERCOS_PORTA:
+		case MIIC_SERCOS_PORTB:
+			shift = 8;
+			polarity_active_high = true;
+			break;
+
+		default:
+			return;
+		}
+	} else {
+		switch (conf) {
+		/* ETHSW ports => bits [3:0] (shift 0), active when low */
+		case ETHSS_ETHSW_PORT0:
+		case ETHSS_ETHSW_PORT1:
+		case ETHSS_ETHSW_PORT2:
+			shift = 0;
+			polarity_active_high = false;
+			break;
+
+		/* ESC ports => bits [7:4] (shift 4), active when high */
+		case ETHSS_ESC_PORT0:
+		case ETHSS_ESC_PORT1:
+		case ETHSS_ESC_PORT2:
+			shift = 4;
+			polarity_active_high = true;
+			break;
+
+		default:
+			return;
+		}
+	}
+
+	mask = BIT(port) << shift;
+
+	if (polarity_active_high)
+		val = (active_low ? 0 : BIT(port)) << shift;
+	else
+		val = (active_low ? BIT(port) : 0) << shift;
+
+	miic->phylink.mask |= mask;
+	miic->phylink.val  = (miic->phylink.val & ~mask) | (val & mask);
+}
+
 static int miic_parse_dt(struct miic *miic, u32 *mode_cfg)
 {
 	struct device_node *np = miic->dev->of_node;
 	struct device_node *conv;
+	bool active_low;
 	int port, ret;
 	s8 *dt_val;
 	u32 conf;
@@ -605,8 +698,15 @@ static int miic_parse_dt(struct miic *miic, u32 *mode_cfg)
 
 		/* Adjust for 0 based index */
 		port += !miic->of_data->miic_port_start;
-		if (of_property_read_u32(conv, "renesas,miic-input", &conf) == 0)
-			dt_val[port] = conf;
+		if (of_property_read_u32(conv, "renesas,miic-input", &conf))
+			continue;
+
+		dt_val[port] = conf;
+
+		active_low = of_property_read_bool(conv, "renesas,miic-phylink-active-low");
+
+		miic_configure_phylink(miic, conf, port - !miic->of_data->miic_port_start,
+				       active_low);
 	}
 
 	ret = miic_match_dt_conf(miic, dt_val, mode_cfg);
@@ -696,6 +796,8 @@ static int miic_probe(struct platform_device *pdev)
 	if (ret)
 		goto disable_runtime_pm;
 
+	miic_reg_rmw(miic, MIIC_PHYLINK, miic->phylink.mask, miic->phylink.val);
+
 	/* miic_create() relies on that fact that data are attached to the
 	 * platform device to determine if the driver is ready so this needs to
 	 * be the last thing to be done after everything is initialized
@@ -729,6 +831,7 @@ static struct miic_of_data rzn1_miic_of_data = {
 	.sw_mode_mask = GENMASK(4, 0),
 	.init_unlock_lock_regs = true,
 	.miic_write = miic_reg_writel_unlocked,
+	.type = MIIC_TYPE_RZN1,
 };
 
 static struct miic_of_data rzt2h_miic_of_data = {
@@ -745,6 +848,7 @@ static struct miic_of_data rzt2h_miic_of_data = {
 	.reset_ids = rzt2h_reset_ids,
 	.reset_count = ARRAY_SIZE(rzt2h_reset_ids),
 	.miic_write = miic_reg_writel_locked,
+	.type = MIIC_TYPE_RZT2H,
 };
 
 static const struct of_device_id miic_of_mtable[] = {
-- 
2.43.0


