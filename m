Return-Path: <devicetree+bounces-16978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 786EC7F0C3C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062322810FA
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 07:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E755F523D;
	Mon, 20 Nov 2023 07:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PkY0X6Nv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69ED1D4D
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:19 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32d81864e3fso2513618f8f.2
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700463678; x=1701068478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5yBkbxKpLkdzu8TroZcwVDsvjYmMySviJb9k2OoKPHc=;
        b=PkY0X6Nv398e4Sr7Kp63amngG5RC2KGwr/I2OyCH1fHCZ1DcSKnCs+E3jO5fdswDtq
         oVzMIoQCtcrWHyW5aFFuv0ZvDCVfVk0DbAal5phsUht+2hYFycFNAtp+C1Y1VlB4hUUO
         bi17dqxWXF1uG2W/rR9J0JI4zUKOoEG+ddp886Ys6xlkzHMaW6L/kbwGywoG1eIkMIlz
         /4fLHoa25dmAdyUGG453Id9oowjrS0Chqfi9AG2ewvxUprzrSk9tjE94pQBS2OnxMwPn
         FKRP/hj5MfDfrbvnE1ACqWGAGIP8RDflgoiDFT1zOPvYwJuqxB34zgMAvtttgy/TKIf1
         OWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700463678; x=1701068478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5yBkbxKpLkdzu8TroZcwVDsvjYmMySviJb9k2OoKPHc=;
        b=GyCSrbx8AX3VBCN2P8cUwKm787a5K5/5RTZOX+BNAushbeuKpc9mP1SzRAQDDl1+73
         S03M4vw6xFJrwn96auO/W2pIJWTVmQiRWiP1jaJul6VeNL/xFg/dZq1a2V/phZ4SQ82P
         hhXfrR07mnvksOFWSi1eAYSQHkYridajTufMCqQA3RczXFvXgzujkRxZgACszUCRCZ1u
         lQitX9VqzGOJR14dwCkb3x/TNE6spbLSUBk6No2Zgn9H9/3gsifptAXVlhi/wO2h4OMj
         2Kb8hA4ovGMgwFLYIJbcyeIps1U6rODrbVuq8XwC+DejWB3wVLeCej+aOI1WFnniuX+S
         3enA==
X-Gm-Message-State: AOJu0Yy4Vyf6ZM0GOzP0wLt8b9nl4jbrOVlzjUDJHy6FnnEKPtOedUkp
	52w8ZjNojVYoGR83Mw8WlcsNDQ==
X-Google-Smtp-Source: AGHT+IEPTvrlAu+VvOjBroCtZwfyyx72WyB2QI68c/uyOeVwTN6V2mFBfXCQiOokeZGoyFFtng1FMg==
X-Received: by 2002:a5d:6d0f:0:b0:332:c4b4:2a8c with SMTP id e15-20020a5d6d0f000000b00332c4b42a8cmr2589984wrq.43.1700463677833;
        Sun, 19 Nov 2023 23:01:17 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d4582000000b003316d1a3b05sm8777667wrq.78.2023.11.19.23.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 23:01:17 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: s.shtylyov@omp.ru,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@armlinux.org.uk,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linus.walleij@linaro.org,
	p.zabel@pengutronix.de,
	arnd@arndb.de,
	m.szyprowski@samsung.com,
	alexandre.torgue@foss.st.com,
	afd@ti.com,
	broonie@kernel.org,
	alexander.stein@ew.tq-group.com,
	eugen.hristev@collabora.com,
	sergei.shtylyov@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 07/14] pinctrl: renesas: rzg2l: Add support to select power source for Ethernet pins
Date: Mon, 20 Nov 2023 09:00:17 +0200
Message-Id: <20231120070024.4079344-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

For Ethernet pins GPIO controller available on RZ/G3S (but also on RZ/G2L)
allows setting the power source. Based on the interface b/w Ethernet
controller and Ethernet PHY and board design specific power source need to
be selected. The GPIO controller allow 1.8V, 2.5V and 3.3V power source
selection for Ethernet pins and this could be selected though ETHX_POC
registers (X={0, 1}).

Commit adjust the driver to support this and does proper instantiation
for RZ/G3S and RZ/G2L SoC. On RZ/G2L only get operation has been tested
at the moment.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/pinctrl/renesas/pinctrl-rzg2l.c | 34 +++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
index 819698dacef0..1401bb215686 100644
--- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
+++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
@@ -107,8 +107,10 @@
 #define IEN(off)		(0x1800 + (off) * 8)
 #define ISEL(off)		(0x2C00 + (off) * 8)
 #define SD_CH(off, ch)		((off) + (ch) * 4)
+#define ETH_POC(off, ch)	((off) + (ch) * 4)
 #define QSPI			(0x3008)
 
+#define PVDD_2500		2	/* I/O domain voltage 2.5V */
 #define PVDD_1800		1	/* I/O domain voltage <= 1.8V */
 #define PVDD_3300		0	/* I/O domain voltage >= 3.3V */
 
@@ -135,10 +137,12 @@
  * struct rzg2l_register_offsets - specific register offsets
  * @pwpr: PWPR register offset
  * @sd_ch: SD_CH register offset
+ * @eth_poc: ETH_POC register offset
  */
 struct rzg2l_register_offsets {
 	u16 pwpr;
 	u16 sd_ch;
+	u16 eth_poc;
 };
 
 /**
@@ -604,6 +608,10 @@ static int rzg2l_caps_to_pwr_reg(const struct rzg2l_register_offsets *regs, u32
 		return SD_CH(regs->sd_ch, 0);
 	if (caps & PIN_CFG_IO_VMC_SD1)
 		return SD_CH(regs->sd_ch, 1);
+	if (caps & PIN_CFG_IO_VMC_ETH0)
+		return ETH_POC(regs->eth_poc, 0);
+	if (caps & PIN_CFG_IO_VMC_ETH1)
+		return ETH_POC(regs->eth_poc, 1);
 	if (caps & PIN_CFG_IO_VMC_QSPI)
 		return QSPI;
 
@@ -615,6 +623,7 @@ static int rzg2l_get_power_source(struct rzg2l_pinctrl *pctrl, u32 pin, u32 caps
 	const struct rzg2l_hwcfg *hwcfg = pctrl->data->hwcfg;
 	const struct rzg2l_register_offsets *regs = &hwcfg->regs;
 	int pwr_reg;
+	u32 val;
 
 	if (caps & PIN_CFG_SOFT_PS)
 		return pctrl->settings[pin].power_source;
@@ -623,7 +632,16 @@ static int rzg2l_get_power_source(struct rzg2l_pinctrl *pctrl, u32 pin, u32 caps
 	if (pwr_reg < 0)
 		return pwr_reg;
 
-	return (readl(pctrl->base + pwr_reg) & PVDD_MASK) ? 1800 : 3300;
+	val = readl(pctrl->base + pwr_reg);
+	if (val == PVDD_1800)
+		return 1800;
+	if (val == PVDD_2500)
+		return 2500;
+	if (val == PVDD_3300)
+		return 3300;
+
+	/* Should not happen. */
+	return -EINVAL;
 }
 
 static int rzg2l_set_power_source(struct rzg2l_pinctrl *pctrl, u32 pin, u32 caps, u32 ps)
@@ -631,17 +649,27 @@ static int rzg2l_set_power_source(struct rzg2l_pinctrl *pctrl, u32 pin, u32 caps
 	const struct rzg2l_hwcfg *hwcfg = pctrl->data->hwcfg;
 	const struct rzg2l_register_offsets *regs = &hwcfg->regs;
 	int pwr_reg;
+	u32 val;
 
 	if (caps & PIN_CFG_SOFT_PS) {
 		pctrl->settings[pin].power_source = ps;
 		return 0;
 	}
 
+	if (ps == 1800)
+		val = PVDD_1800;
+	else if (ps == 2500)
+		val = PVDD_2500;
+	else if (ps == 3300)
+		val = PVDD_3300;
+	else
+		return -EINVAL;
+
 	pwr_reg = rzg2l_caps_to_pwr_reg(regs, caps);
 	if (pwr_reg < 0)
 		return pwr_reg;
 
-	writel((ps == 1800) ? PVDD_1800 : PVDD_3300, pctrl->base + pwr_reg);
+	writel(val, pctrl->base + pwr_reg);
 	pctrl->settings[pin].power_source = ps;
 
 	return 0;
@@ -1891,6 +1919,7 @@ static const struct rzg2l_hwcfg rzg2l_hwcfg = {
 	.regs = {
 		.pwpr = 0x3014,
 		.sd_ch = 0x3000,
+		.eth_poc = 0x300c,
 	},
 	.iolh_groupa_ua = {
 		/* 3v3 power source */
@@ -1903,6 +1932,7 @@ static const struct rzg2l_hwcfg rzg3s_hwcfg = {
 	.regs = {
 		.pwpr = 0x3000,
 		.sd_ch = 0x3004,
+		.eth_poc = 0x3010,
 	},
 	.iolh_groupa_ua = {
 		/* 1v8 power source */
-- 
2.39.2


