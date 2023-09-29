Return-Path: <devicetree+bounces-4469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDEF7B2B79
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E2A0CB20B01
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029C32119;
	Fri, 29 Sep 2023 05:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4124418
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:11 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B2291BC8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:51 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9a6190af24aso1802833566b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965990; x=1696570790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0FXOR7e4ulI0zNj9YBTEWPHdDHjeKYy+qZ+Uz/1Urg=;
        b=mtV4KCqia0b6/WhZBPnnfine4Nhxo6v0N4Op2Cft4yM7umJHQYRyT02SIt7zlM9g+A
         iDOErjmJE2P1Nd71ftMx+viwdj/PNzxOycq9aAjr2bzwUgZ0lBdXzZLQCoKLna2ERZwG
         PuSPX81q0hQaEddZKEFbJzdtWT7T25qsO4FIVvcYiMyz6eH0a3bP/axWNJgBQKSUqWZD
         VQJ0lyCypDzHnbp7nAb2f9fMmvyddJS9Nund2yo7INrAHIbVz48AiEEg9go/Ni3eZUVl
         JIYgFMfmD07id9VG5JsxMMWSV3p6dmTdzWoLyqV7+Kvf4sHs+VU9K3EPkDFrySKxaN6p
         GbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965990; x=1696570790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0FXOR7e4ulI0zNj9YBTEWPHdDHjeKYy+qZ+Uz/1Urg=;
        b=SY435ss/G6rB0pPZURlkjVWx3ztqb2BVdU7Gktu9Xv1NtzvfeTIV3bRLvkQ1m4aZx4
         1nTGkcpnH9z88KoPeL0Wnvi/QBFjY4gWUBggiwvZKoSdp0dy5KsO63pjk7Uyfg7K2qpv
         LlKERgWEpQxNW8Yokke3Uu5lC4MVaVpYomfzSpLTFizkLOEsxudK2NuoV2UHxsjaYhNi
         LLzl4B71sbACRpv4/9BZBwsC7ne2WjK8i5XAksjjHHKebkCtsAlwB7i/CbkiS8u751ol
         2M8jmP+z+eu8cNM5vUYJLdfE49hueu9HqK5237ka1fp5A7YZsaooFeFOHJD1oHVmuF+a
         3Zsw==
X-Gm-Message-State: AOJu0Yw0ptz7gIZXOJvCibN4t7Y6HyWZRyUKdlwGtT3FQPNGkElfnb3Z
	SMaPweaYadxfGsCJGl7XXPNa6Q==
X-Google-Smtp-Source: AGHT+IHNHAynQlEBnrigFBgQiF8x6uQ8NUuIU2FsaFf0ufqwVmJGX4bjSYN9BERJMmcJF7toDz4kNA==
X-Received: by 2002:a17:906:9a:b0:9b2:be12:d9bd with SMTP id 26-20020a170906009a00b009b2be12d9bdmr2958549ejc.77.1695965990169;
        Thu, 28 Sep 2023 22:39:50 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:49 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 15/28] pinctrl: renesas: rzg2l: adapt for different SD/PWPR register offsets
Date: Fri, 29 Sep 2023 08:39:02 +0300
Message-Id: <20230929053915.1530607-16-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

SD, PWPR power registers have different offsets b/w RZ/G2L and RZ/G3S.
Commit adds a per SoC configuration data structure that is initialized with
proper register offset for individual SoCs. The struct rzg2l_hwcfg will be
further extended in next commits.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v2:
- collected tags

 drivers/pinctrl/renesas/pinctrl-rzg2l.c | 52 ++++++++++++++++++++-----
 1 file changed, 42 insertions(+), 10 deletions(-)

diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
index 96fd829131bd..7256d99fd552 100644
--- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
+++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
@@ -98,8 +98,7 @@
 #define IOLH(off)		(0x1000 + (off) * 8)
 #define IEN(off)		(0x1800 + (off) * 8)
 #define ISEL(off)		(0x2C00 + (off) * 8)
-#define PWPR			(0x3014)
-#define SD_CH(n)		(0x3000 + (n) * 4)
+#define SD_CH(off, ch)		((off) + (ch) * 4)
 #define QSPI			(0x3008)
 
 #define PVDD_1800		1	/* I/O domain voltage <= 1.8V */
@@ -124,6 +123,24 @@
 #define RZG2L_TINT_IRQ_START_INDEX	9
 #define RZG2L_PACK_HWIRQ(t, i)		(((t) << 16) | (i))
 
+/**
+ * struct rzg2l_register_offsets - specific register offsets
+ * @pwpr: PWPR register offset
+ * @sd_ch: SD_CH register offset
+ */
+struct rzg2l_register_offsets {
+	u16 pwpr;
+	u16 sd_ch;
+};
+
+/**
+ * struct rzg2l_hwcfg - hardware configuration data structure
+ * @regs: hardware specific register offsets
+ */
+struct rzg2l_hwcfg {
+	const struct rzg2l_register_offsets regs;
+};
+
 struct rzg2l_dedicated_configs {
 	const char *name;
 	u32 config;
@@ -136,6 +153,7 @@ struct rzg2l_pinctrl_data {
 	const struct rzg2l_dedicated_configs *dedicated_pins;
 	unsigned int n_port_pins;
 	unsigned int n_dedicated_pins;
+	const struct rzg2l_hwcfg *hwcfg;
 };
 
 struct rzg2l_pinctrl {
@@ -163,6 +181,7 @@ static const unsigned int iolh_groupb_oi[] = { 100, 66, 50, 33 };
 static void rzg2l_pinctrl_set_pfc_mode(struct rzg2l_pinctrl *pctrl,
 				       u8 pin, u8 off, u8 func)
 {
+	const struct rzg2l_register_offsets *regs = &pctrl->data->hwcfg->regs;
 	unsigned long flags;
 	u32 reg;
 
@@ -178,8 +197,8 @@ static void rzg2l_pinctrl_set_pfc_mode(struct rzg2l_pinctrl *pctrl,
 	writeb(reg & ~BIT(pin), pctrl->base + PMC(off));
 
 	/* Set the PWPR register to allow PFC register to write */
-	writel(0x0, pctrl->base + PWPR);        /* B0WI=0, PFCWE=0 */
-	writel(PWPR_PFCWE, pctrl->base + PWPR);  /* B0WI=0, PFCWE=1 */
+	writel(0x0, pctrl->base + regs->pwpr);		/* B0WI=0, PFCWE=0 */
+	writel(PWPR_PFCWE, pctrl->base + regs->pwpr);	/* B0WI=0, PFCWE=1 */
 
 	/* Select Pin function mode with PFC register */
 	reg = readl(pctrl->base + PFC(off));
@@ -187,8 +206,8 @@ static void rzg2l_pinctrl_set_pfc_mode(struct rzg2l_pinctrl *pctrl,
 	writel(reg | (func << (pin * 4)), pctrl->base + PFC(off));
 
 	/* Set the PWPR register to be write-protected */
-	writel(0x0, pctrl->base + PWPR);        /* B0WI=0, PFCWE=0 */
-	writel(PWPR_B0WI, pctrl->base + PWPR);  /* B0WI=1, PFCWE=0 */
+	writel(0x0, pctrl->base + regs->pwpr);		/* B0WI=0, PFCWE=0 */
+	writel(PWPR_B0WI, pctrl->base + regs->pwpr);	/* B0WI=1, PFCWE=0 */
 
 	/* Switch to Peripheral pin function with PMC register */
 	reg = readb(pctrl->base + PMC(off));
@@ -527,6 +546,8 @@ static int rzg2l_pinctrl_pinconf_get(struct pinctrl_dev *pctldev,
 {
 	struct rzg2l_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 	enum pin_config_param param = pinconf_to_config_param(*config);
+	const struct rzg2l_hwcfg *hwcfg = pctrl->data->hwcfg;
+	const struct rzg2l_register_offsets *regs = &hwcfg->regs;
 	const struct pinctrl_pin_desc *pin = &pctrl->desc.pins[_pin];
 	unsigned int *pin_data = pin->drv_data;
 	unsigned int arg = 0;
@@ -562,9 +583,9 @@ static int rzg2l_pinctrl_pinconf_get(struct pinctrl_dev *pctldev,
 		u32 pwr_reg = 0x0;
 
 		if (cfg & PIN_CFG_IO_VMC_SD0)
-			pwr_reg = SD_CH(0);
+			pwr_reg = SD_CH(regs->sd_ch, 0);
 		else if (cfg & PIN_CFG_IO_VMC_SD1)
-			pwr_reg = SD_CH(1);
+			pwr_reg = SD_CH(regs->sd_ch, 1);
 		else if (cfg & PIN_CFG_IO_VMC_QSPI)
 			pwr_reg = QSPI;
 		else
@@ -616,6 +637,8 @@ static int rzg2l_pinctrl_pinconf_set(struct pinctrl_dev *pctldev,
 	struct rzg2l_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 	const struct pinctrl_pin_desc *pin = &pctrl->desc.pins[_pin];
 	unsigned int *pin_data = pin->drv_data;
+	const struct rzg2l_hwcfg *hwcfg = pctrl->data->hwcfg;
+	const struct rzg2l_register_offsets *regs = &hwcfg->regs;
 	enum pin_config_param param;
 	unsigned long flags;
 	void __iomem *addr;
@@ -659,9 +682,9 @@ static int rzg2l_pinctrl_pinconf_set(struct pinctrl_dev *pctldev,
 				return -EINVAL;
 
 			if (cfg & PIN_CFG_IO_VMC_SD0)
-				pwr_reg = SD_CH(0);
+				pwr_reg = SD_CH(regs->sd_ch, 0);
 			else if (cfg & PIN_CFG_IO_VMC_SD1)
-				pwr_reg = SD_CH(1);
+				pwr_reg = SD_CH(regs->sd_ch, 1);
 			else if (cfg & PIN_CFG_IO_VMC_QSPI)
 				pwr_reg = QSPI;
 			else
@@ -1531,6 +1554,13 @@ static int rzg2l_pinctrl_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct rzg2l_hwcfg rzg2l_hwcfg = {
+	.regs = {
+		.pwpr = 0x3014,
+		.sd_ch = 0x3000,
+	},
+};
+
 static struct rzg2l_pinctrl_data r9a07g043_data = {
 	.port_pins = rzg2l_gpio_names,
 	.port_pin_configs = r9a07g043_gpio_configs,
@@ -1538,6 +1568,7 @@ static struct rzg2l_pinctrl_data r9a07g043_data = {
 	.dedicated_pins = rzg2l_dedicated_pins.common,
 	.n_port_pins = ARRAY_SIZE(r9a07g043_gpio_configs) * RZG2L_PINS_PER_PORT,
 	.n_dedicated_pins = ARRAY_SIZE(rzg2l_dedicated_pins.common),
+	.hwcfg = &rzg2l_hwcfg,
 };
 
 static struct rzg2l_pinctrl_data r9a07g044_data = {
@@ -1548,6 +1579,7 @@ static struct rzg2l_pinctrl_data r9a07g044_data = {
 	.n_port_pins = ARRAY_SIZE(r9a07g044_gpio_configs) * RZG2L_PINS_PER_PORT,
 	.n_dedicated_pins = ARRAY_SIZE(rzg2l_dedicated_pins.common) +
 		ARRAY_SIZE(rzg2l_dedicated_pins.rzg2l_pins),
+	.hwcfg = &rzg2l_hwcfg,
 };
 
 static const struct of_device_id rzg2l_pinctrl_of_table[] = {
-- 
2.39.2


