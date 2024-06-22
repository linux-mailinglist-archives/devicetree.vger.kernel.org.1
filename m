Return-Path: <devicetree+bounces-78769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C97913538
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 18:50:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D3AAB232BC
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 16:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D0A17BBB;
	Sat, 22 Jun 2024 16:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pUp3pbwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F25FC2D6
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 16:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719074986; cv=none; b=ZiggZYexvA5zbnZanchDVCRG9xm4tPTjozcc7ASF6VIqtYL5QJMKlpO5TcuYlscyiIKJ4JJg0ihkiprLNxVAJP21ItElHcJQ3GhUpSrAM5c+OklXA2Erh+cR8jTHu7UHHzLKLdu+GDZehD5vcxcyR1rmDMxoCgckIb7BDttql1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719074986; c=relaxed/simple;
	bh=RSHRfB7yFv744+oXoN0fW/gI1EQ2qQj7XY9p4L9Iaxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BioOkGnKOpcnZuJj7sUvr3BNHccYN1E4PZDq0WUED21SQ7UqR3lxm548fBb4HvoYoITU7eibXATtc8A8Kw07dtEs3bpqWduDMPE7OJngpNSuMlA+/VzW4jWS4NS9NFfIliArL7CIAkMAWHvSNxTPjgF6ELtHsO70KNolpqHMDzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pUp3pbwb; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-364b2f92388so1984443f8f.2
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 09:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719074983; x=1719679783; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hP6Lz1CO+lqIq0GdN2MgiAFkI30RBlWJtTtLyJkZjNQ=;
        b=pUp3pbwblCmf9qT6jVvxk5FqNp1RO8HHnSgGwv8ysqaa+BaPzYGcmZ+CzlZ5cI0GbD
         Ryd3hP0rtL85xqEzhW5DscQnkcN5bLt8AVyXV/tSxVaUJ2+2KiLjx0xDjp5yVt5WIblB
         BsVvzv90EkA7qVlaKmUlhW5h6oF54ZQZSyZ2uIBEWTe1XMV69r1uvUFC1C6reBxE/gJt
         CZQ1+bdgvjAMUmQ5SCur8q6qVsZno8+07f+800NETYWW2qRU2SCmwuhhJQqcRh7Ml6ZB
         m7clVHT5m+JEB5rNMGdLfGCXDxy8G9MQ4h4LzWKM+O290hXE5+GBl2yM3GqTuCeeCmzA
         iBAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719074983; x=1719679783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hP6Lz1CO+lqIq0GdN2MgiAFkI30RBlWJtTtLyJkZjNQ=;
        b=GOSJPue2uYS865DVvEL7ZSBIQWwEUHBNWLDb8/7eODkG18HicJglKd8ddWDoGuZEmF
         nAEQh3EPaOfhHP9Ts23GgzcxIktor7Gwkknb351iP1fQ9lLM7IY9yy6ac27pe2KogYg1
         70P5FKl0NKrJF0bM+e06NjR2U3XObmFtnaWh5M7i7w3EPWpeO4KpT2A+m2zMzvSk8hNH
         HWN2IKwffZ9P3EndWb1vEjtxbWQmh8DM2ZKz/3ltS2BJ2oQwQTfCR6nEb/YiNIs18StL
         y33naC8FlC58C4wKySYGLjg07RcN5sz43o6vOSpO7UA9e9dgw3Kovt8gyT9K2+hdciYY
         hxmA==
X-Forwarded-Encrypted: i=1; AJvYcCVCFaX1JbPYhgdLA+jyEFUlFhlaYdtaSm9zY9ser6PL/dnL3ClRwFiNjmKUiDGr4PWZXiqOMoA40B39aBFwaUBumIeI+sjm06+cBA==
X-Gm-Message-State: AOJu0YxYePb/R8w+dzUkoixYvY2ASnd6N3XuAZ9pql6JaliO9nhTDqbY
	EUZCeC7HG9PPOFhWxQYxqNpFouz9qCFUcZq64WJx1/Z2FES8hzJGViPysc8Tgv8=
X-Google-Smtp-Source: AGHT+IGccMTr/lofoSoxWYBoScxI/x/3Kmy2XcyNhCuKbH7ba4SIoTP5Xe7Q5/t6y8S3fuQF7TV0Gg==
X-Received: by 2002:a5d:6950:0:b0:366:e683:c2d with SMTP id ffacd0b85a97d-366e9652974mr124545f8f.57.1719074982845;
        Sat, 22 Jun 2024 09:49:42 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b27sm5030730f8f.104.2024.06.22.09.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 09:49:41 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Sat, 22 Jun 2024 17:49:31 +0100
Subject: [PATCH v2 v4 2/2] pinctrl: qcom: Introduce SM4250 LPI pinctrl
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240612-sm4250-lpi-v4-2-a0342e47e21b@linaro.org>
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
In-Reply-To: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 alexey.klimov@linaro.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=11218;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=RSHRfB7yFv744+oXoN0fW/gI1EQ2qQj7XY9p4L9Iaxw=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmdwCiMRgF+6apKhx+UM9qSix2XtHZ8N5Vo+Zsd
 2m9IrX4wGqJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZncAogAKCRB6of1ZxzRV
 N133CACGt9US/9bvFnRPbWcd/TNNuyH5EEGhxkVjLqzwffk67Quyis9yMBex0euyU+eTcR3xQwD
 wY/My+k35Ae6xeeTTrLR/3mx+Flx0UAA8+AdphE3uv9Z8NcSeD5T0RA2Nhe3xq8gNiRSPLVWsds
 iGoTZElyEfHgE4r/e6T7b2XjnXRFNsSCVKQ18G1C35P4HR9phyiNdyRwd0UrnRCEnABJnoVSW+P
 I/XvEpowwLCpZRQz75KozpADMMj+27XoD/oIJzN5b3+CSbkEJvNIzr3naJ1thNgjhP6IGBqtFRp
 hsLV20NLukyRuaHqwf2QBKLCYEtT4H6I2Ihm8mkkIKtZg1lz
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Add support for the pin controller block on SM4250 Low Power Island.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pinctrl/qcom/Kconfig                    |   9 +
 drivers/pinctrl/qcom/Makefile                   |   1 +
 drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c | 236 ++++++++++++++++++++++++
 3 files changed, 246 insertions(+)

diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
index 24619e80b2cc..dd9bbe8f3e11 100644
--- a/drivers/pinctrl/qcom/Kconfig
+++ b/drivers/pinctrl/qcom/Kconfig
@@ -68,6 +68,15 @@ config PINCTRL_SC7280_LPASS_LPI
 	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
 	  (Low Power Island) found on the Qualcomm Technologies Inc SC7280 platform.
 
+config PINCTRL_SM4250_LPASS_LPI
+	tristate "Qualcomm Technologies Inc SM4250 LPASS LPI pin controller driver"
+	depends on ARM64 || COMPILE_TEST
+	depends on PINCTRL_LPASS_LPI
+	help
+	  This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
+	  (Low Power Island) found on the Qualcomm Technologies Inc SM4250 platform.
+
 config PINCTRL_SM6115_LPASS_LPI
 	tristate "Qualcomm Technologies Inc SM6115 LPASS LPI pin controller driver"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/pinctrl/qcom/Makefile b/drivers/pinctrl/qcom/Makefile
index e2e76071d268..eb04297b6388 100644
--- a/drivers/pinctrl/qcom/Makefile
+++ b/drivers/pinctrl/qcom/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_PINCTRL_SDM845) += pinctrl-sdm845.o
 obj-$(CONFIG_PINCTRL_SDX55) += pinctrl-sdx55.o
 obj-$(CONFIG_PINCTRL_SDX65) += pinctrl-sdx65.o
 obj-$(CONFIG_PINCTRL_SDX75) += pinctrl-sdx75.o
+obj-$(CONFIG_PINCTRL_SM4250_LPASS_LPI) += pinctrl-sm4250-lpass-lpi.o
 obj-$(CONFIG_PINCTRL_SM4450) += pinctrl-sm4450.o
 obj-$(CONFIG_PINCTRL_SM6115) += pinctrl-sm6115.o
 obj-$(CONFIG_PINCTRL_SM6115_LPASS_LPI) += pinctrl-sm6115-lpass-lpi.o
diff --git a/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
new file mode 100644
index 000000000000..2d2c636a3e20
--- /dev/null
+++ b/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
@@ -0,0 +1,236 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2016-2019, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2020, 2023 Linaro Ltd.
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#include "pinctrl-lpass-lpi.h"
+
+enum lpass_lpi_functions {
+	LPI_MUX_dmic01_clk,
+	LPI_MUX_dmic01_data,
+	LPI_MUX_dmic23_clk,
+	LPI_MUX_dmic23_data,
+	LPI_MUX_dmic4_clk,
+	LPI_MUX_dmic4_data,
+	LPI_MUX_ext_mclk0_a,
+	LPI_MUX_ext_mclk0_b,
+	LPI_MUX_ext_mclk1_a,
+	LPI_MUX_ext_mclk1_b,
+	LPI_MUX_ext_mclk1_c,
+	LPI_MUX_i2s1_clk,
+	LPI_MUX_i2s1_data,
+	LPI_MUX_i2s1_ws,
+	LPI_MUX_i2s2_clk,
+	LPI_MUX_i2s2_data,
+	LPI_MUX_i2s2_ws,
+	LPI_MUX_i2s3_clk,
+	LPI_MUX_i2s3_data,
+	LPI_MUX_i2s3_ws,
+	LPI_MUX_qup_io_00,
+	LPI_MUX_qup_io_01,
+	LPI_MUX_qup_io_05,
+	LPI_MUX_qup_io_10,
+	LPI_MUX_qup_io_11,
+	LPI_MUX_qup_io_25,
+	LPI_MUX_qup_io_21,
+	LPI_MUX_qup_io_26,
+	LPI_MUX_qup_io_31,
+	LPI_MUX_qup_io_36,
+	LPI_MUX_qua_mi2s_data,
+	LPI_MUX_qua_mi2s_sclk,
+	LPI_MUX_qua_mi2s_ws,
+	LPI_MUX_slim_clk,
+	LPI_MUX_slim_data,
+	LPI_MUX_sync_out,
+	LPI_MUX_swr_rx_clk,
+	LPI_MUX_swr_rx_data,
+	LPI_MUX_swr_tx_clk,
+	LPI_MUX_swr_tx_data,
+	LPI_MUX_swr_wsa_clk,
+	LPI_MUX_swr_wsa_data,
+	LPI_MUX_gpio,
+	LPI_MUX__,
+};
+
+static const struct pinctrl_pin_desc sm4250_lpi_pins[] = {
+	PINCTRL_PIN(0, "gpio0"),
+	PINCTRL_PIN(1, "gpio1"),
+	PINCTRL_PIN(2, "gpio2"),
+	PINCTRL_PIN(3, "gpio3"),
+	PINCTRL_PIN(4, "gpio4"),
+	PINCTRL_PIN(5, "gpio5"),
+	PINCTRL_PIN(6, "gpio6"),
+	PINCTRL_PIN(7, "gpio7"),
+	PINCTRL_PIN(8, "gpio8"),
+	PINCTRL_PIN(9, "gpio9"),
+	PINCTRL_PIN(10, "gpio10"),
+	PINCTRL_PIN(11, "gpio11"),
+	PINCTRL_PIN(12, "gpio12"),
+	PINCTRL_PIN(13, "gpio13"),
+	PINCTRL_PIN(14, "gpio14"),
+	PINCTRL_PIN(15, "gpio15"),
+	PINCTRL_PIN(16, "gpio16"),
+	PINCTRL_PIN(17, "gpio17"),
+	PINCTRL_PIN(18, "gpio18"),
+	PINCTRL_PIN(19, "gpio19"),
+	PINCTRL_PIN(20, "gpio20"),
+	PINCTRL_PIN(21, "gpio21"),
+	PINCTRL_PIN(22, "gpio22"),
+	PINCTRL_PIN(23, "gpio23"),
+	PINCTRL_PIN(24, "gpio24"),
+	PINCTRL_PIN(25, "gpio25"),
+	PINCTRL_PIN(26, "gpio26"),
+};
+
+static const char * const dmic01_clk_groups[] = { "gpio6" };
+static const char * const dmic01_data_groups[] = { "gpio7" };
+static const char * const dmic23_clk_groups[] = { "gpio8" };
+static const char * const dmic23_data_groups[] = { "gpio9" };
+static const char * const dmic4_clk_groups[] = { "gpio10" };
+static const char * const dmic4_data_groups[] = { "gpio11" };
+static const char * const ext_mclk0_a_groups[] = { "gpio13" };
+static const char * const ext_mclk0_b_groups[] = { "gpio5" };
+static const char * const ext_mclk1_a_groups[] = { "gpio18" };
+static const char * const ext_mclk1_b_groups[] = { "gpio9" };
+static const char * const ext_mclk1_c_groups[] = { "gpio17" };
+static const char * const slim_clk_groups[] = { "gpio14" };
+static const char * const slim_data_groups[] = { "gpio15" };
+static const char * const i2s1_clk_groups[] = { "gpio6" };
+static const char * const i2s1_data_groups[] = { "gpio8", "gpio9" };
+static const char * const i2s1_ws_groups[] = { "gpio7" };
+static const char * const i2s2_clk_groups[] = { "gpio10" };
+static const char * const i2s2_data_groups[] = { "gpio12", "gpio13" };
+static const char * const i2s2_ws_groups[] = { "gpio11" };
+static const char * const i2s3_clk_groups[] = { "gpio14" };
+static const char * const i2s3_data_groups[] = { "gpio16", "gpio17" };
+static const char * const i2s3_ws_groups[] = { "gpio15" };
+static const char * const qup_io_00_groups[] = { "gpio19" };
+static const char * const qup_io_01_groups[] = { "gpio21" };
+static const char * const qup_io_05_groups[] = { "gpio23" };
+static const char * const qup_io_10_groups[] = { "gpio20" };
+static const char * const qup_io_11_groups[] = { "gpio22" };
+static const char * const qup_io_25_groups[] = { "gpio23" };
+static const char * const qup_io_21_groups[] = { "gpio25" };
+static const char * const qup_io_26_groups[] = { "gpio25" };
+static const char * const qup_io_31_groups[] = { "gpio26" };
+static const char * const qup_io_36_groups[] = { "gpio26" };
+static const char * const qua_mi2s_data_groups[] = { "gpio2", "gpio3", "gpio4", "gpio5" };
+static const char * const qua_mi2s_sclk_groups[] = { "gpio0" };
+static const char * const qua_mi2s_ws_groups[] = { "gpio1" };
+static const char * const sync_out_groups[] = { "gpio19", "gpio20", "gpio21", "gpio22",
+						"gpio23", "gpio24", "gpio25", "gpio26"};
+static const char * const swr_rx_clk_groups[] = { "gpio3" };
+static const char * const swr_rx_data_groups[] = { "gpio4", "gpio5" };
+static const char * const swr_tx_clk_groups[] = { "gpio0" };
+static const char * const swr_tx_data_groups[] = { "gpio1", "gpio2" };
+static const char * const swr_wsa_clk_groups[] = { "gpio10" };
+static const char * const swr_wsa_data_groups[] = { "gpio11" };
+
+
+static const struct lpi_pingroup sm4250_groups[] = {
+	LPI_PINGROUP(0, 0, swr_tx_clk, qua_mi2s_sclk, _, _),
+	LPI_PINGROUP(1, 2, swr_tx_data, qua_mi2s_ws, _, _),
+	LPI_PINGROUP(2, 4, swr_tx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(3, 8, swr_rx_clk, qua_mi2s_data, _, _),
+	LPI_PINGROUP(4, 10, swr_rx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(5, 12, swr_rx_data, ext_mclk0_b, qua_mi2s_data, _),
+	LPI_PINGROUP(6, LPI_NO_SLEW, dmic01_clk, i2s1_clk, _, _),
+	LPI_PINGROUP(7, LPI_NO_SLEW, dmic01_data, i2s1_ws, _, _),
+	LPI_PINGROUP(8, LPI_NO_SLEW, dmic23_clk, i2s1_data, _, _),
+	LPI_PINGROUP(9, LPI_NO_SLEW, dmic23_data, i2s1_data, ext_mclk1_b, _),
+	LPI_PINGROUP(10, 16, i2s2_clk, swr_wsa_clk, dmic4_clk, _),
+	LPI_PINGROUP(11, 18, i2s2_ws, swr_wsa_data, dmic4_data, _),
+	LPI_PINGROUP(12, LPI_NO_SLEW, dmic23_clk, i2s2_data, _, _),
+	LPI_PINGROUP(13, LPI_NO_SLEW, dmic23_data, i2s2_data, ext_mclk0_a, _),
+	LPI_PINGROUP(14, LPI_NO_SLEW, i2s3_clk, slim_clk, _, _),
+	LPI_PINGROUP(15, LPI_NO_SLEW, i2s3_ws, slim_data, _, _),
+	LPI_PINGROUP(16, LPI_NO_SLEW, i2s3_data, _, _, _),
+	LPI_PINGROUP(17, LPI_NO_SLEW, i2s3_data, ext_mclk1_c, _, _),
+	LPI_PINGROUP(18, 20, ext_mclk1_a, swr_rx_data, _, _),
+	LPI_PINGROUP(19, LPI_NO_SLEW, qup_io_00, sync_out, _, _),
+	LPI_PINGROUP(20, LPI_NO_SLEW, qup_io_10, sync_out, _, _),
+	LPI_PINGROUP(21, LPI_NO_SLEW, qup_io_01, sync_out, _, _),
+	LPI_PINGROUP(22, LPI_NO_SLEW, qup_io_11, sync_out, _, _),
+	LPI_PINGROUP(23, LPI_NO_SLEW, qup_io_25, qup_io_05, sync_out, _),
+	LPI_PINGROUP(25, LPI_NO_SLEW, qup_io_26, qup_io_21, sync_out, _),
+	LPI_PINGROUP(26, LPI_NO_SLEW, qup_io_36, qup_io_31, sync_out, _),
+};
+
+static const struct lpi_function sm4250_functions[] = {
+	LPI_FUNCTION(dmic01_clk),
+	LPI_FUNCTION(dmic01_data),
+	LPI_FUNCTION(dmic23_clk),
+	LPI_FUNCTION(dmic23_data),
+	LPI_FUNCTION(dmic4_clk),
+	LPI_FUNCTION(dmic4_data),
+	LPI_FUNCTION(ext_mclk0_a),
+	LPI_FUNCTION(ext_mclk0_b),
+	LPI_FUNCTION(ext_mclk1_a),
+	LPI_FUNCTION(ext_mclk1_b),
+	LPI_FUNCTION(ext_mclk1_c),
+	LPI_FUNCTION(i2s1_clk),
+	LPI_FUNCTION(i2s1_data),
+	LPI_FUNCTION(i2s1_ws),
+	LPI_FUNCTION(i2s2_clk),
+	LPI_FUNCTION(i2s2_data),
+	LPI_FUNCTION(i2s2_ws),
+	LPI_FUNCTION(i2s3_clk),
+	LPI_FUNCTION(i2s3_data),
+	LPI_FUNCTION(i2s3_ws),
+	LPI_FUNCTION(qup_io_00),
+	LPI_FUNCTION(qup_io_01),
+	LPI_FUNCTION(qup_io_05),
+	LPI_FUNCTION(qup_io_10),
+	LPI_FUNCTION(qup_io_11),
+	LPI_FUNCTION(qup_io_25),
+	LPI_FUNCTION(qup_io_21),
+	LPI_FUNCTION(qup_io_26),
+	LPI_FUNCTION(qup_io_31),
+	LPI_FUNCTION(qup_io_36),
+	LPI_FUNCTION(qua_mi2s_data),
+	LPI_FUNCTION(qua_mi2s_sclk),
+	LPI_FUNCTION(qua_mi2s_ws),
+	LPI_FUNCTION(slim_clk),
+	LPI_FUNCTION(slim_data),
+	LPI_FUNCTION(sync_out),
+	LPI_FUNCTION(swr_rx_clk),
+	LPI_FUNCTION(swr_rx_data),
+	LPI_FUNCTION(swr_tx_clk),
+	LPI_FUNCTION(swr_tx_data),
+	LPI_FUNCTION(swr_wsa_clk),
+	LPI_FUNCTION(swr_wsa_data),
+};
+
+static const struct lpi_pinctrl_variant_data sm4250_lpi_data = {
+	.pins = sm4250_lpi_pins,
+	.npins = ARRAY_SIZE(sm4250_lpi_pins),
+	.groups = sm4250_groups,
+	.ngroups = ARRAY_SIZE(sm4250_groups),
+	.functions = sm4250_functions,
+	.nfunctions = ARRAY_SIZE(sm4250_functions),
+};
+
+static const struct of_device_id lpi_pinctrl_of_match[] = {
+	{ .compatible = "qcom,sm4250-lpass-lpi-pinctrl", .data = &sm4250_lpi_data },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, lpi_pinctrl_of_match);
+
+static struct platform_driver lpi_pinctrl_driver = {
+	.driver = {
+		.name = "qcom-sm4250-lpass-lpi-pinctrl",
+		.of_match_table = lpi_pinctrl_of_match,
+	},
+	.probe = lpi_pinctrl_probe,
+	.remove_new = lpi_pinctrl_remove,
+};
+
+module_platform_driver(lpi_pinctrl_driver);
+MODULE_DESCRIPTION("QTI SM4250 LPI GPIO pin control driver");
+MODULE_AUTHOR("Srinivas Kandagatla <srinivas.kandagatla@linaro.org>");
+MODULE_LICENSE("GPL");

-- 
2.25.1


