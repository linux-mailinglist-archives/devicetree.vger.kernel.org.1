Return-Path: <devicetree+bounces-7428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FDE7C44C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551021C20CB1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4463159E;
	Tue, 10 Oct 2023 22:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="atS67DLX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17331593
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:14 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2497912C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:07 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-405417465aaso59875365e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978205; x=1697583005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FT8OjQPOzp4EIGR+2ybdNhEXHoKR6fLefE/6jlWk8mY=;
        b=atS67DLXvo6ib50Tq7eIk0LM/2blxoVjRFumzYMK7sJNc3xXjHM0B5D/1J1PVou6q8
         TiFORHqSZdkOFcgqqIl1K4PsvfLePDYqfLPYTXqp07VVPTL/nZAs5kjtag0Bi7NUN0QD
         mJ4iJQcecQPHSzFmG5V304/AboN/5Cwu9R75Y+fc8F1BgeoxRWEnrwWjX/RVMpUMnPSg
         tOYkkQZIqsPiOoztwKIiyjSJVqhEYc2En1yY5AzvKW5g0BlZV3WSZudSiqu3dP+wQgTB
         lHFu0SvcJR92HECSexFOgwLSl6BoxWANcEY6sKmGts4H/MQOTUA7/i8+TkflzGgdNZWk
         t9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978205; x=1697583005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FT8OjQPOzp4EIGR+2ybdNhEXHoKR6fLefE/6jlWk8mY=;
        b=DjzTEY/19niKQYPQUO0n7pRmJZrWmH2VywSe6Zi9RYz7zdk++t4hSF/fcqUyz8oFcR
         oa4kgf35vfgF0cucmOvpXGkaFw8tZy+QZNMnrwdnE8B2dQcZHh8uuUBvEtXTRvc/fJkW
         7U+H4Z0gFxXIHjruvzPrrmbblEHiJShLyciS33h35oDwx3ZRjQPXLJBdONXL3L9MbXH3
         8X2uV538/30Z+VaTgwbau9ltwTFhC0uof24gRwn2v7ZquD+HFPv/+jEWswM+0epX5l5n
         fzqReSCN47myXJPp14qHy3M4LayYqrLYs5AevFyjPZz7z/0NCpnKXoBOrYcR49DMyK/x
         q4/w==
X-Gm-Message-State: AOJu0Yzi9NmOfiuQVgcQmv5msKZoSaocgs1xC7qyZ0lxLLSVQUuIBAaU
	apO/1kk1peXm31PKNny9hhW7G0Gr7KKksheGCB7BLQ==
X-Google-Smtp-Source: AGHT+IHD9BUnvEHEyiILISkPTfEFNuKIEdNxYEqW/pFe+0/Eerhgkse7LPZjwPJauiadvFNDSo4k6A==
X-Received: by 2002:a05:600c:11cf:b0:405:7400:1e42 with SMTP id b15-20020a05600c11cf00b0040574001e42mr17668465wmi.41.1696978205333;
        Tue, 10 Oct 2023 15:50:05 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:50:04 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v2 13/20] pinctrl: samsung: Add filter selection support for alive banks
Date: Tue, 10 Oct 2023 23:49:21 +0100
Message-ID: <20231010224928.2296997-14-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Newer Exynos SoCs have a filter selection register on alive bank pins.
This allows the selection of a digital or delay filter for each pin. If
the filter selection register is not available then the default filter
(digital) is applied.

On suspend we apply the analog filter to all pins in the bank, and on
resume the digital filter is reapplied to all pins in the bank.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/pinctrl/samsung/pinctrl-exynos.c  | 82 ++++++++++++++++++++++-
 drivers/pinctrl/samsung/pinctrl-exynos.h  |  7 ++
 drivers/pinctrl/samsung/pinctrl-samsung.c |  2 +
 drivers/pinctrl/samsung/pinctrl-samsung.h | 23 +++++++
 4 files changed, 113 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-exynos.c b/drivers/pinctrl/samsung/pinctrl-exynos.c
index a8212fc126bf..800831aa8357 100644
--- a/drivers/pinctrl/samsung/pinctrl-exynos.c
+++ b/drivers/pinctrl/samsung/pinctrl-exynos.c
@@ -269,6 +269,68 @@ struct exynos_eint_gpio_save {
 	u32 eint_mask;
 };
 
+static void exynos_eint_flt_config(struct samsung_pinctrl_drv_data *d,
+				   struct samsung_pin_bank *bank, int filter)
+{
+	unsigned int flt_reg, flt_con = 0;
+	unsigned int val, shift;
+	int i;
+	int loop_cnt;
+
+	/*
+	 * This function sets the desired filter (digital or delay) to
+	 * every pin in the bank. Note the filter selection bitfield is
+	 * only found on alive banks. The FLTCON register has the
+	 * following layout
+	 *
+	 * BitfieldName[PinNum][Bit:Bit]
+	 *
+	 * FLT_EN[3][31] FLT_SEL[3][30] FLT_WIDTH[3][29:24]
+	 * FLT_EN[2][23] FLT_SEL[2][22] FLT_WIDTH[2][21:16]
+	 * FLT_EN[1][15] FLT_SEL[1][14] FLT_WIDTH[1][13:8]
+	 * FLT_EN[0][7]  FLT_SEL[0][6]  FLT_WIDTH[0][5:0]
+	 */
+
+	flt_con |= EXYNOS9_FLTCON_EN;
+
+	if (filter)
+		flt_con |= EXYNOS9_FLTCON_SEL_DIGITAL;
+
+	flt_reg = EXYNOS_GPIO_EFLTCON_OFFSET + bank->fltcon_offset;
+
+	if (bank->nr_pins > EXYNOS9_FLTCON_NR_PIN)
+		/*
+		 * if nr_pins > 4, we should set FLTCON0 register fully.
+		 * (pin0 ~ 3). So loop 4 times in case of FLTCON0.
+		 */
+		loop_cnt = EXYNOS9_FLTCON_NR_PIN;
+	else
+		loop_cnt = bank->nr_pins;
+
+	val = readl(d->virt_base + flt_reg);
+
+	for (i = 0; i < loop_cnt; i++) {
+		shift = i * EXYNOS9_FLTCON_LEN;
+		val &= ~(EXYNOS9_FLTCON_MASK << shift);
+		val |= (flt_con << shift);
+	}
+
+	writel(val, d->virt_base + flt_reg);
+
+	/* loop for FLTCON1 pin 4 ~ 7 */
+	if (bank->nr_pins > EXYNOS9_FLTCON_NR_PIN) {
+		val = readl(d->virt_base + flt_reg + 0x4);
+		loop_cnt = (bank->nr_pins - EXYNOS9_FLTCON_NR_PIN);
+
+		for (i = 0; i < loop_cnt; i++) {
+			shift = i * EXYNOS9_FLTCON_LEN;
+			val &= ~(EXYNOS9_FLTCON_MASK << shift);
+			val |= (flt_con << shift);
+		}
+		writel(val, d->virt_base + flt_reg + 0x4);
+	}
+}
+
 /*
  * exynos_eint_gpio_init() - setup handling of external gpio interrupts.
  * @d: driver data of samsung pinctrl driver.
@@ -321,6 +383,9 @@ __init int exynos_eint_gpio_init(struct samsung_pinctrl_drv_data *d)
 			goto err_domains;
 		}
 
+		/* Set Delay Analog Filter */
+		if (bank->fltcon_type != FLT_DEFAULT)
+			exynos_eint_flt_config(d, bank, EXYNOS9_FLTCON_SEL_DELAY);
 	}
 
 	return 0;
@@ -555,6 +620,10 @@ __init int exynos_eint_wkup_init(struct samsung_pinctrl_drv_data *d)
 		if (bank->eint_type != EINT_TYPE_WKUP)
 			continue;
 
+		/* Set Digital Filter */
+		if (bank->fltcon_type != FLT_DEFAULT)
+			exynos_eint_flt_config(d, bank, EXYNOS9_FLTCON_SEL_DIGITAL);
+
 		bank->irq_chip = devm_kmemdup(dev, irq_chip, sizeof(*irq_chip),
 					      GFP_KERNEL);
 		if (!bank->irq_chip) {
@@ -658,6 +727,7 @@ static void exynos_pinctrl_suspend_bank(
 void exynos_pinctrl_suspend(struct samsung_pinctrl_drv_data *drvdata)
 {
 	struct samsung_pin_bank *bank = drvdata->pin_banks;
+	struct samsung_pinctrl_drv_data *d = bank->drvdata;
 	struct exynos_irq_chip *irq_chip = NULL;
 	int i;
 
@@ -665,6 +735,9 @@ void exynos_pinctrl_suspend(struct samsung_pinctrl_drv_data *drvdata)
 		if (bank->eint_type == EINT_TYPE_GPIO)
 			exynos_pinctrl_suspend_bank(drvdata, bank);
 		else if (bank->eint_type == EINT_TYPE_WKUP) {
+			/* Setting Delay (Analog) Filter */
+			if (bank->fltcon_type != FLT_DEFAULT)
+				exynos_eint_flt_config(d, bank, EXYNOS9_FLTCON_SEL_DELAY);
 			if (!irq_chip) {
 				irq_chip = bank->irq_chip;
 				irq_chip->set_eint_wakeup_mask(drvdata,
@@ -707,11 +780,18 @@ static void exynos_pinctrl_resume_bank(
 void exynos_pinctrl_resume(struct samsung_pinctrl_drv_data *drvdata)
 {
 	struct samsung_pin_bank *bank = drvdata->pin_banks;
+	struct samsung_pinctrl_drv_data *d = bank->drvdata;
 	int i;
 
 	for (i = 0; i < drvdata->nr_banks; ++i, ++bank)
-		if (bank->eint_type == EINT_TYPE_GPIO)
+		if (bank->eint_type == EINT_TYPE_GPIO) {
 			exynos_pinctrl_resume_bank(drvdata, bank);
+		} else if (bank->eint_type == EINT_TYPE_WKUP ||
+			bank->eint_type == EINT_TYPE_WKUP_MUX) {
+			/* Set Digital Filter */
+			if (bank->fltcon_type != FLT_DEFAULT)
+				exynos_eint_flt_config(d, bank, EXYNOS9_FLTCON_SEL_DIGITAL);
+		}
 }
 
 static void exynos_retention_enable(struct samsung_pinctrl_drv_data *drvdata)
diff --git a/drivers/pinctrl/samsung/pinctrl-exynos.h b/drivers/pinctrl/samsung/pinctrl-exynos.h
index 7bd6d82c9f36..63b2426ad5d6 100644
--- a/drivers/pinctrl/samsung/pinctrl-exynos.h
+++ b/drivers/pinctrl/samsung/pinctrl-exynos.h
@@ -50,6 +50,13 @@
 
 #define EXYNOS_EINT_MAX_PER_BANK	8
 #define EXYNOS_EINT_NR_WKUP_EINT
+/* EINT filter configuration */
+#define EXYNOS9_FLTCON_EN		BIT(7)
+#define EXYNOS9_FLTCON_SEL_DIGITAL	BIT(6)
+#define EXYNOS9_FLTCON_SEL_DELAY	0
+#define EXYNOS9_FLTCON_MASK		0xff
+#define EXYNOS9_FLTCON_LEN		8
+#define EXYNOS9_FLTCON_NR_PIN		4
 
 #define EXYNOS_PIN_BANK_EINTN(pins, reg, id)		\
 	{						\
diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.c b/drivers/pinctrl/samsung/pinctrl-samsung.c
index e54847040b4a..449f8109d8b5 100644
--- a/drivers/pinctrl/samsung/pinctrl-samsung.c
+++ b/drivers/pinctrl/samsung/pinctrl-samsung.c
@@ -1104,6 +1104,8 @@ samsung_pinctrl_get_soc_data(struct samsung_pinctrl_drv_data *d,
 		bank->eint_func = bdata->eint_func;
 		bank->eint_type = bdata->eint_type;
 		bank->eint_mask = bdata->eint_mask;
+		bank->fltcon_type = bdata->fltcon_type;
+		bank->fltcon_offset = bdata->fltcon_offset;
 		bank->eint_offset = bdata->eint_offset;
 		bank->name = bdata->name;
 
diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.h b/drivers/pinctrl/samsung/pinctrl-samsung.h
index 9af93e3d8d9f..de2ca8e8b378 100644
--- a/drivers/pinctrl/samsung/pinctrl-samsung.h
+++ b/drivers/pinctrl/samsung/pinctrl-samsung.h
@@ -82,6 +82,21 @@ enum eint_type {
 	EINT_TYPE_WKUP_MUX,
 };
 
+/**
+ * enum fltcon_type - filter selection
+ * @FLT_DEFAULT: filter not selectable, default digital filter
+ * @FLT_SELECT: filter selectable (digital or delay)
+ *
+ * Some banks on some SoCs (gs101 and possibly others) have a selectable
+ * filter on alive banks of 'delay/analog' or 'digital'. If the filter
+ * selection is not available then the default filter is used (digital).
+ */
+
+enum fltcon_type {
+	FLT_DEFAULT,
+	FLT_SELECTABLE,
+};
+
 /* maximum length of a pin in pin descriptor (example: "gpa0-0") */
 #define PIN_NAME_LENGTH	10
 
@@ -122,6 +137,8 @@ struct samsung_pin_bank_type {
  * @eint_type: type of the external interrupt supported by the bank.
  * @eint_mask: bit mask of pins which support EINT function.
  * @eint_offset: SoC-specific EINT register or interrupt offset of bank.
+ * @fltcon_type: whether the filter (delay/digital) is selectable
+ * @fltcon_offset: SoC-specific EINT filter control register offset of bank.
  * @name: name to be prefixed for each pin in this pin bank.
  */
 struct samsung_pin_bank_data {
@@ -133,6 +150,8 @@ struct samsung_pin_bank_data {
 	enum eint_type	eint_type;
 	u32		eint_mask;
 	u32		eint_offset;
+	enum fltcon_type fltcon_type;
+	u32		fltcon_offset;
 	const char	*name;
 };
 
@@ -147,6 +166,8 @@ struct samsung_pin_bank_data {
  * @eint_type: type of the external interrupt supported by the bank.
  * @eint_mask: bit mask of pins which support EINT function.
  * @eint_offset: SoC-specific EINT register or interrupt offset of bank.
+ * @fltcon_type: whether the filter (delay/digital) is selectable
+ * @fltcon_offset: SoC-specific EINT filter control register offset of bank.
  * @name: name to be prefixed for each pin in this pin bank.
  * @pin_base: starting pin number of the bank.
  * @soc_priv: per-bank private data for SoC-specific code.
@@ -169,6 +190,8 @@ struct samsung_pin_bank {
 	enum eint_type	eint_type;
 	u32		eint_mask;
 	u32		eint_offset;
+	enum fltcon_type fltcon_type;
+	u32		fltcon_offset;
 	const char	*name;
 
 	u32		pin_base;
-- 
2.42.0.609.gbb76f46606-goog


