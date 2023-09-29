Return-Path: <devicetree+bounces-4470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B27B2B76
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1082D1C20A32
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C68D64418;
	Fri, 29 Sep 2023 05:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E32399
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:12 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 795EF1BD1
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:53 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so855987666b.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965992; x=1696570792; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/YwuLgv86cPyGl/Q9QiLo3L9zSgzmkr29pUnhaXKw20=;
        b=pCGX6PvfrdtVw8XnSHPIeHjN/TUaA0R4Dr+LYNL4H1fyYO7b10Wkd9ni4Hn8I0MbR3
         4jRxovNzi8Qj6e+Q56h+MUhgM0x4vyt7vJwy9YdJQvWhe+E1/v4usor+PEnt5cGef3Jy
         HE36k/WgdrQwrcYJKRSO5lfs+Y7MsNgap9A2L5jmuwJrIjQFWX/TQFWlbB+oMcYaf9bJ
         NqAEG4AEqQG3I7RNxfHzjTx2GA/0hg6cvBTzm2ZsAlajWPkA/Ojc7fVNi1SttCuYUvGo
         qZKw/P0gly1QQ3wFPGf5tplP30dAtOAYMllcdGXBvTcIvhhoqHccgR0wFnXzYcFJV/IT
         YkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965992; x=1696570792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YwuLgv86cPyGl/Q9QiLo3L9zSgzmkr29pUnhaXKw20=;
        b=gzN4/2lgx35y+CukzEaYKDE/vwD+AlyWY02EQFKA8gSMfpO+06gkz9LLSc0oIQzPnG
         kYYRefLh+b/FJnSSdoIFPYK7ksD9iuiF9QKABzDQwIcTwCh4MJKG7u3yzzf3VU9sjs2J
         RESUzJLBRmkUgiBveO2QU3QyjNYAizvndg9/p58MP6tgv/OAxdd0ziZx3H/bxrlwyMI+
         2HOSJkYx94L+LDvzdNc7yGsQOwoDWF1RGpYMiuz8SERnfXDN+p6IJac8Lxpou5iLnuYi
         e0yhz9YqbYnCNvEdORnSIlv4IoQqrszyFmrGL5Me/+4c7yWYIMP6zGSRBpziORSRrsuj
         PuCw==
X-Gm-Message-State: AOJu0Ywgi1bql+IoO165K8r6tuJiZ5iIdQ1daxhLrffEElNK6TMfB1j7
	x8HodNgZBNFmTEFo6AE6uKjTAg==
X-Google-Smtp-Source: AGHT+IEXwarvffNSeOzlyRj6UStVxwkwWgD3IItelaJ8tdcyvIPhnC7iKAhCem4gJGu4cNt9nB28IQ==
X-Received: by 2002:a17:906:5a4e:b0:9b2:d367:d818 with SMTP id my14-20020a1709065a4e00b009b2d367d818mr723684ejc.38.1695965992017;
        Thu, 28 Sep 2023 22:39:52 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:51 -0700 (PDT)
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
Subject: [PATCH v2 16/28] pinctrl: renesas: rzg2l: adapt function number for RZ/G3S
Date: Fri, 29 Sep 2023 08:39:03 +0300
Message-Id: <20230929053915.1530607-17-claudiu.beznea@bp.renesas.com>
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

On RZ/G3S PFC register allow setting 8 functions for individual ports
(function1 to function8). For function1 register need to be configured
with 0, for function8 register need to be configured with 7.
We cannot use zero based addressing when requesting functions from
different code places as documentation (RZG3S_pinfunction_List_r1.0.xlsx)
states explicitly that function0 is GPIO.

For this add a new member to struct rzg2l_hwcfg that will keep the
offset that need to be substracted before applying a value to PFC register.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v2:
- in commit description mentioned that function0 is GPIO
- collected tags

 drivers/pinctrl/renesas/pinctrl-rzg2l.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
index 7256d99fd552..73d8a84af04a 100644
--- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
+++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
@@ -136,9 +136,11 @@ struct rzg2l_register_offsets {
 /**
  * struct rzg2l_hwcfg - hardware configuration data structure
  * @regs: hardware specific register offsets
+ * @func_base: base number for port function (see register PFC)
  */
 struct rzg2l_hwcfg {
 	const struct rzg2l_register_offsets regs;
+	u8 func_base;
 };
 
 struct rzg2l_dedicated_configs {
@@ -221,6 +223,7 @@ static int rzg2l_pinctrl_set_mux(struct pinctrl_dev *pctldev,
 				 unsigned int group_selector)
 {
 	struct rzg2l_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
+	const struct rzg2l_hwcfg *hwcfg = pctrl->data->hwcfg;
 	const struct pinctrl_pin_desc *pin_desc;
 	unsigned int *psel_val, *pin_data;
 	struct function_desc *func;
@@ -246,9 +249,9 @@ static int rzg2l_pinctrl_set_mux(struct pinctrl_dev *pctldev,
 		off = RZG2L_PIN_CFG_TO_PORT_OFFSET(*pin_data);
 
 		dev_dbg(pctrl->dev, "port:%u pin: %u off:%x PSEL:%u\n",
-			RZG2L_PIN_ID_TO_PORT(pins[i]), pin, off, psel_val[i]);
+			RZG2L_PIN_ID_TO_PORT(pins[i]), pin, off, psel_val[i] - hwcfg->func_base);
 
-		rzg2l_pinctrl_set_pfc_mode(pctrl, pin, off, psel_val[i]);
+		rzg2l_pinctrl_set_pfc_mode(pctrl, pin, off, psel_val[i] - hwcfg->func_base);
 	}
 
 	return 0;
-- 
2.39.2


