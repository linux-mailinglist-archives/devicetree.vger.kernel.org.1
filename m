Return-Path: <devicetree+bounces-73279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CBC8FE712
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6243283BC2
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96174195FC4;
	Thu,  6 Jun 2024 13:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s3wxxQZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F048195F13
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717679055; cv=none; b=uciTir0j6qcTmOT0JCvSURB2Xf/u933jcdcHgu/qGubYIv5u+39fSsJxeZcyJldrw3Z4YhZaiLrLrotSXMwG7GNp1pKptm8T5a7McxbRhD8UqzIwC1ll3yBO2HPS3sLUDAu/p6sB9aVhTMRtKz+R3cjPfgeT0oVnNYlj74BuUkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717679055; c=relaxed/simple;
	bh=0hX+eelbJL2rS21QMuUK5AzMK7hMNulFf6/ooqSZ44o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MiK17b9ALMyjOw4H+Y5c2h9JAGlQMypl8klMJhb5MKmSFtCHNBXaMYL4tm8ejvTk/7twKH0RGHzcq2s1j0dBGyV6KEVtcrMza4LRXesqLq7UiRrAfyn8UE6du2GWbosEWQxEExF24IsBYjvUB5+lfWiUbrrf90ZmYbkWipu0qzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s3wxxQZH; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-35dcff36522so927337f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717679052; x=1718283852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKbo0qapZkPA4AV1rYsoIj+52jvCSNCX0ifOmEVubQM=;
        b=s3wxxQZH41i9BQXNcnVXgh8KeFnz3ToT8LexFYP3hYeKOepapShIzeMhfVnbp4IC86
         kl0xc8asoIqLGOpSA87ZbR01R/pmMv2tHW2a+aX++4DVchAwWV2BggmyM3yNW/IZk+5Z
         jWM1cN+1K/Uiz3xe1nV9q83/KC6dSbQxpL1xgAL8z4IOMSHBKsdNXj+hQnhoksCf1U/d
         OuyiZGfW9QretQjEuuHBnmazVvb7wPIUfH9mKVOpkRjrX6Qxh0U4fsCvRqzydlcIUtXo
         DlbHOOge5Fj4qzIPW8ag7h6cUlo3kVn2RcIa6+Z29xQErUGgUVCdTAquRzGF40vrNFnW
         yQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717679052; x=1718283852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKbo0qapZkPA4AV1rYsoIj+52jvCSNCX0ifOmEVubQM=;
        b=hU6NcU77V8CjgR4HhUgYv0xht2C4RJsniq7Wff2cCogu5p/p42JULj7SAPD43vpDAV
         DDM6gSoqGbgfp81kIP2uqNjGOVgj2+DQoVdqvjHRLWzkdnyISejACrRR5YWVGgtRpjK1
         dR1ComlJOZL4Cjo8x1j/dao5gCdUwodjzm6U2DfXu9MqS/C47Z3KFS8sA0W1oZktppYZ
         X7WmXc2pkH2bBhqDAOwvt8Z4b4wpvOMC8cYDKs3ltgLKAjjQh/tM098Qqw1l0wQE1DH9
         FElwO+96kyZN2qI21ZxOr3Cp/O8KKlUDrI9EoiPefYM235vLO9fUs29blzDwFZFGJu+G
         DDKA==
X-Forwarded-Encrypted: i=1; AJvYcCXq9/36m6c/uKSdWxsvmswdncVQoeARK34WXJvzdmL1Nm+WitPOG1lAkdHvYx2dC0WsL/O5kao+6Tmjsz932FoRZHaWldoF1qW7dA==
X-Gm-Message-State: AOJu0YymZV0C1d9XQEpgREC/Pk2e1p3kb1TNHePcaTOq/J6A+1Rb9W55
	vR2i/i3eGul6mLtfFwbEAw9ucrLRQ0bWxhBt8V2tiejoYG4JCQaKfSSjxPjerd0=
X-Google-Smtp-Source: AGHT+IFCAbhDT9yQ9JxvjQIR8T3OQAtPNi65En0Q3KbyYaYt3XxfwYlF7TlTTvkQ2irpJWBJWgOUgw==
X-Received: by 2002:a05:6000:1f8c:b0:35e:ead4:3d10 with SMTP id ffacd0b85a97d-35eead43f01mr3839150f8f.36.1717679051855;
        Thu, 06 Jun 2024 06:04:11 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d49dfcsm1505286f8f.39.2024.06.06.06.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 06:04:10 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: andersson@kernel.org,
	linus.walleij@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	inux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pinctrl: qcom: Introduce SM4250 LPI pinctrl driver
Date: Thu,  6 Jun 2024 14:03:23 +0100
Message-Id: <20240606130323.138970-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240606130323.138970-1-srinivas.kandagatla@linaro.org>
References: <20240606130323.138970-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Add support for the pin controller block on SM4250 Low Power Island.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/pinctrl/qcom/Kconfig                  |   9 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c   | 191 ++++++++++++++++++
 3 files changed, 201 insertions(+)
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c

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
index 000000000000..6c5d09241e82
--- /dev/null
+++ b/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
@@ -0,0 +1,191 @@
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
+	LPI_MUX_qua_mi2s_data,
+	LPI_MUX_qua_mi2s_sclk,
+	LPI_MUX_qua_mi2s_ws,
+	LPI_MUX_slim_clk,
+	LPI_MUX_slim_data,
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
+static const char * const qua_mi2s_data_groups[] = { "gpio2", "gpio3", "gpio4", "gpio5" };
+static const char * const qua_mi2s_sclk_groups[] = { "gpio0" };
+static const char * const qua_mi2s_ws_groups[] = { "gpio1" };
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
+	LPI_FUNCTION(qua_mi2s_data),
+	LPI_FUNCTION(qua_mi2s_sclk),
+	LPI_FUNCTION(slim_clk),
+	LPI_FUNCTION(slim_data),
+	LPI_FUNCTION(qua_mi2s_ws),
+	LPI_FUNCTION(swr_rx_clk),
+	LPI_FUNCTION(swr_rx_data),
+	LPI_FUNCTION(swr_tx_clk),
+	LPI_FUNCTION(swr_tx_data),
+	LPI_FUNCTION(swr_wsa_clk),
+	LPI_FUNCTION(swr_wsa_data),
+	LPI_FUNCTION(ext_mclk1_a),
+	LPI_FUNCTION(ext_mclk1_a),
+	LPI_FUNCTION(ext_mclk1_a),
+	LPI_FUNCTION(ext_mclk1_a),
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


