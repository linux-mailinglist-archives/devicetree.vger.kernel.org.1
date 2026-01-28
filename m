Return-Path: <devicetree+bounces-260390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHEjCiEBemn31QEAu9opvQ
	(envelope-from <devicetree+bounces-260390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9E2A13F9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 399C83055833
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55B1D350287;
	Wed, 28 Jan 2026 12:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="J8bOyXtC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5FB34F466
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603223; cv=none; b=mYEfxh6OjqXu7T0xVYiUoA7GkFYSq2/JE4XvOWP69Dt1P5VVUoytvZJnZcEGgQd8L9man7Li/AwwBIUrxJuKTqwr/PhNuhKrJ+lerUWYC8PNf29zZboXDe/c7oUUBmk4bzoxJCTyShbqRB9CKlmi7IfvifwQFphw9huf/8nsgUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603223; c=relaxed/simple;
	bh=aYBhXyfeGAiKcjO0bljvvMwVi3NEa7dlY1olVgUIsz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPWpKQV0NIhfywMsVCsyGADEep79JTODdbBbXrbZaZojgBjXyYyJeM5/k4byDyBy+2RBDPBO09isE0l0zIqpIT8Wf+USXffCNRYkUOa2N5mkKIbebpBG8zF6uc4zgyuK8fD73uF7URAGmY4U5fq8XwMWt1oP93F/5qR5uVW3AOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=J8bOyXtC; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b8838339fc6so177507366b.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769603216; x=1770208016; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2qgpD9LbGNFmxJFyhinMbda0sk3N9bu+o/hT9+cSIlY=;
        b=J8bOyXtCWQ7xFL9PXieKp0SMLRX2j/dPw6NywCxHZmvrRz43SqDTEpQ7Gaatq8V9eN
         hTIyS1wDov8qoR00iL1lBtXCXSF5rYSl2epg1EQmdIGlH3U8xYLvu7C3PqGlJ8NwKPdR
         Ib77FzFdax8DgSDRhkWrRFj+Oun/rxcOI6q8BUyLhpDH90z/lpvGab0+wnYJB67F8vP7
         C2pGSgkpZ7aH7A4lwr4IT7985HSrVK7No4YBfZnC5+UYrsitUakMmMJf6zCKogdD9OlP
         uBGDe9wLNYxEQ6ZzpLodRoZhLXua+/ofar+E16d4UiRrZLufMgfNJ7uZo95YonLjsVPG
         E3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769603216; x=1770208016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2qgpD9LbGNFmxJFyhinMbda0sk3N9bu+o/hT9+cSIlY=;
        b=TIGn2ByVdJ2Ncec9cxeanwf9L2lzOOMLv/vx+S6kNY6rVJsNTuhZUOcdgMtVYF8+5h
         0ab3T8lkOijVHm0u+MSWVKrYCvc25VyxRJcfMK70kqewgycTjkgSyc+cM1Ysebvtoum3
         riNQVX9eNmnw9XC96c+5cbWPnvMxr/l/7GWyppDZzAFqsa+GHWx31PGHxmaq1dhlLg9m
         /lvO30WKdTW1hkXHKg3re1rkbmbPBg9/BrmcNPazklJz84ixdZxAVSEBxPfcru6eai4r
         Vz9V3XmNcxiH3gsHykS0ZreBFjSAahScLR1zZC9yQv+lydxDixNLO3JMuYQz6FZ58LaY
         YxIw==
X-Forwarded-Encrypted: i=1; AJvYcCWSSHlCRm4vT1H65+UHcuMHF+FhsMGnvIcVRStu+Aa4wLtW8RyS4moCiCzU6qBEIIn/KT0szRmPIbj1@vger.kernel.org
X-Gm-Message-State: AOJu0YwZCVfjFqvuhzC9BDHukK944znyAhhGn92Y+vBR7PGGtINX1S22
	VD9SQpYm//YQkspNqe2bKEnmi9Qh5GLd3ZOHqzcat/dukzYyaxIO/ZKZxdSq+q1qfEI=
X-Gm-Gg: AZuq6aIDje0DOHmUmmwC9LNCTsjqzt0DOoSCX5Ki7jvCjsAOBj5KgmvDo9h49vvXZyj
	TjCBJWt9W0/pZZlhAjNPqUvTr5B/Ib19m/9b1zr4zhKAqxQuUr23k5vxYKWXKOZsB9dxb+Ykn1v
	B5BlQg57fLT1Fie9cXi/PbydKQzMEWBjeBr77740IsU9YnAJ/yB/YQeqZnm5kYHpUCD31umZvYg
	ySIRL0UcclUu1Rpiy07P5JFc8uUx+wt2dzmKw7v6XejEqx/rWTm/RgSDc+C41r5PAELg5Un/8T2
	88AT8WnFmjjB7ooLUWoybIK5iAgeesZtv0ZpkIX2bFzw7aSbud90g56l0z7FgNnU0a0/IvFpZEK
	qgnXtSkiU02XHawuwMysztfI6qR2rrmZRHKm9mqbWLFXox9HnRd0Qq5vMdeS+siaHnbZ94J99ej
	hLMwZtBsR0Cl1vPAfgid/G8lyxatiqIr/XPd5PPg+677u9J638230Q2slms+mogvm1Jw==
X-Received: by 2002:a17:907:96a1:b0:b87:1ffc:bfc0 with SMTP id a640c23a62f3a-b8dacc4210dmr371179166b.20.1769603215509;
        Wed, 28 Jan 2026 04:26:55 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm119536866b.46.2026.01.28.04.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:26:54 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 28 Jan 2026 13:26:51 +0100
Subject: [PATCH 3/5] pinctrl: qcom: Add SM6350 LPASS LPI TLMM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-sm6350-lpi-tlmm-v1-3-36583f2a2a2a@fairphone.com>
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
In-Reply-To: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769603212; l=7472;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aYBhXyfeGAiKcjO0bljvvMwVi3NEa7dlY1olVgUIsz0=;
 b=Z1sPCnTYjq8e93G9ajmQ1Xt6J8npA69WIKX8ZYM9ToolGZYM1LOfPsFuJqYEDiZ8wdCpGCSA1
 d5KNijgtBsBCQX+OqWNISkx4qdzrNv+Y2O02+jsOZFuq0FNJTvSUZwM
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260390-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,fairphone.com:dkim,fairphone.com:mid]
X-Rspamd-Queue-Id: BF9E2A13F9
X-Rspamd-Action: no action

Add support for the pin controller block on SM6350 Low Power Island.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/pinctrl/qcom/Kconfig                    |   9 ++
 drivers/pinctrl/qcom/Makefile                   |   1 +
 drivers/pinctrl/qcom/pinctrl-sm6350-lpass-lpi.c | 149 ++++++++++++++++++++++++
 3 files changed, 159 insertions(+)

diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
index f56592411cf6..9010b5879a0b 100644
--- a/drivers/pinctrl/qcom/Kconfig
+++ b/drivers/pinctrl/qcom/Kconfig
@@ -98,6 +98,15 @@ config PINCTRL_SM6115_LPASS_LPI
 	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
 	  (Low Power Island) found on the Qualcomm Technologies Inc SM6115 platform.
 
+config PINCTRL_SM6350_LPASS_LPI
+	tristate "Qualcomm Technologies Inc SM6350 LPASS LPI pin controller driver"
+	depends on ARM64 || COMPILE_TEST
+	depends on PINCTRL_LPASS_LPI
+	help
+	  This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
+	  (Low Power Island) found on the Qualcomm Technologies Inc SM6350 platform.
+
 config PINCTRL_SM8250_LPASS_LPI
 	tristate "Qualcomm Technologies Inc SM8250 LPASS LPI pin controller driver"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/pinctrl/qcom/Makefile b/drivers/pinctrl/qcom/Makefile
index 4269d1781015..ee63035c554c 100644
--- a/drivers/pinctrl/qcom/Makefile
+++ b/drivers/pinctrl/qcom/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_PINCTRL_SM6115) += pinctrl-sm6115.o
 obj-$(CONFIG_PINCTRL_SM6115_LPASS_LPI) += pinctrl-sm6115-lpass-lpi.o
 obj-$(CONFIG_PINCTRL_SM6125) += pinctrl-sm6125.o
 obj-$(CONFIG_PINCTRL_SM6350) += pinctrl-sm6350.o
+obj-$(CONFIG_PINCTRL_SM6350_LPASS_LPI) += pinctrl-sm6350-lpass-lpi.o
 obj-$(CONFIG_PINCTRL_SM6375) += pinctrl-sm6375.o
 obj-$(CONFIG_PINCTRL_SM7150) += pinctrl-sm7150.o
 obj-$(CONFIG_PINCTRL_SM8150) += pinctrl-sm8150.o
diff --git a/drivers/pinctrl/qcom/pinctrl-sm6350-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm6350-lpass-lpi.c
new file mode 100644
index 000000000000..4d06abcfedfd
--- /dev/null
+++ b/drivers/pinctrl/qcom/pinctrl-sm6350-lpass-lpi.c
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2026, Luca Weiss <luca.weiss@fairphone.com>
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#include "pinctrl-lpass-lpi.h"
+
+enum lpass_lpi_functions {
+	LPI_MUX_dmic1_clk,
+	LPI_MUX_dmic1_data,
+	LPI_MUX_dmic2_clk,
+	LPI_MUX_dmic2_data,
+	LPI_MUX_dmic3_clk,
+	LPI_MUX_dmic3_data,
+	LPI_MUX_i2s1_clk,
+	LPI_MUX_i2s1_data,
+	LPI_MUX_i2s1_ws,
+	LPI_MUX_i2s2_clk,
+	LPI_MUX_i2s2_data,
+	LPI_MUX_i2s2_ws,
+	LPI_MUX_qua_mi2s_data,
+	LPI_MUX_qua_mi2s_sclk,
+	LPI_MUX_qua_mi2s_ws,
+	LPI_MUX_swr_rx_clk,
+	LPI_MUX_swr_rx_data,
+	LPI_MUX_swr_tx_clk,
+	LPI_MUX_swr_tx_data,
+	LPI_MUX_wsa_swr_clk,
+	LPI_MUX_wsa_swr_data,
+	LPI_MUX_gpio,
+	LPI_MUX__,
+};
+
+static const struct pinctrl_pin_desc sm6350_lpi_pins[] = {
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
+};
+
+static const char * const swr_tx_clk_groups[] = { "gpio0" };
+static const char * const swr_tx_data_groups[] = { "gpio1", "gpio2", "gpio14" };
+static const char * const swr_rx_clk_groups[] = { "gpio3" };
+static const char * const swr_rx_data_groups[] = { "gpio4", "gpio5" };
+static const char * const dmic1_clk_groups[] = { "gpio6" };
+static const char * const dmic1_data_groups[] = { "gpio7" };
+static const char * const dmic2_clk_groups[] = { "gpio8" };
+static const char * const dmic2_data_groups[] = { "gpio9" };
+static const char * const i2s2_clk_groups[] = { "gpio10" };
+static const char * const i2s2_ws_groups[] = { "gpio11" };
+static const char * const dmic3_clk_groups[] = { "gpio12" };
+static const char * const dmic3_data_groups[] = { "gpio13" };
+static const char * const qua_mi2s_sclk_groups[] = { "gpio0" };
+static const char * const qua_mi2s_ws_groups[] = { "gpio1" };
+static const char * const qua_mi2s_data_groups[] = { "gpio2", "gpio3", "gpio4", "gpio5" };
+static const char * const i2s1_clk_groups[] = { "gpio6" };
+static const char * const i2s1_ws_groups[] = { "gpio7" };
+static const char * const i2s1_data_groups[] = { "gpio8", "gpio9" };
+static const char * const wsa_swr_clk_groups[] = { "gpio10" };
+static const char * const wsa_swr_data_groups[] = { "gpio11" };
+static const char * const i2s2_data_groups[] = { "gpio12", "gpio13" };
+
+static const struct lpi_pingroup sm6350_groups[] = {
+	LPI_PINGROUP(0, 0, swr_tx_clk, qua_mi2s_sclk, _, _),
+	LPI_PINGROUP(1, 2, swr_tx_data, qua_mi2s_ws, _, _),
+	LPI_PINGROUP(2, 4, swr_tx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(3, 8, swr_rx_clk, qua_mi2s_data, _, _),
+	LPI_PINGROUP(4, 10, swr_rx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(5, 12, swr_rx_data, _, qua_mi2s_data, _),
+	LPI_PINGROUP(6, LPI_NO_SLEW, dmic1_clk, i2s1_clk, _,  _),
+	LPI_PINGROUP(7, LPI_NO_SLEW, dmic1_data, i2s1_ws, _, _),
+	LPI_PINGROUP(8, LPI_NO_SLEW, dmic2_clk, i2s1_data, _, _),
+	LPI_PINGROUP(9, LPI_NO_SLEW, dmic2_data, i2s1_data, _, _),
+	LPI_PINGROUP(10, 16, i2s2_clk, wsa_swr_clk, _, _),
+	LPI_PINGROUP(11, 18, i2s2_ws, wsa_swr_data, _, _),
+	LPI_PINGROUP(12, LPI_NO_SLEW, dmic3_clk, i2s2_data, _, _),
+	LPI_PINGROUP(13, LPI_NO_SLEW, dmic3_data, i2s2_data, _, _),
+	LPI_PINGROUP_SLEW_SPARE_1(14, 0, swr_tx_data, _, _, _),
+};
+
+static const struct lpi_function sm6350_functions[] = {
+	LPI_FUNCTION(dmic1_clk),
+	LPI_FUNCTION(dmic1_data),
+	LPI_FUNCTION(dmic2_clk),
+	LPI_FUNCTION(dmic2_data),
+	LPI_FUNCTION(dmic3_clk),
+	LPI_FUNCTION(dmic3_data),
+	LPI_FUNCTION(i2s1_clk),
+	LPI_FUNCTION(i2s1_data),
+	LPI_FUNCTION(i2s1_ws),
+	LPI_FUNCTION(i2s2_clk),
+	LPI_FUNCTION(i2s2_data),
+	LPI_FUNCTION(i2s2_ws),
+	LPI_FUNCTION(qua_mi2s_data),
+	LPI_FUNCTION(qua_mi2s_sclk),
+	LPI_FUNCTION(qua_mi2s_ws),
+	LPI_FUNCTION(swr_rx_clk),
+	LPI_FUNCTION(swr_rx_data),
+	LPI_FUNCTION(swr_tx_clk),
+	LPI_FUNCTION(swr_tx_data),
+	LPI_FUNCTION(wsa_swr_clk),
+	LPI_FUNCTION(wsa_swr_data),
+};
+
+static const struct lpi_pinctrl_variant_data sm6350_lpi_data = {
+	.pins = sm6350_lpi_pins,
+	.npins = ARRAY_SIZE(sm6350_lpi_pins),
+	.groups = sm6350_groups,
+	.ngroups = ARRAY_SIZE(sm6350_groups),
+	.functions = sm6350_functions,
+	.nfunctions = ARRAY_SIZE(sm6350_functions),
+};
+
+static const struct of_device_id lpi_pinctrl_of_match[] = {
+	{
+	       .compatible = "qcom,sm6350-lpass-lpi-pinctrl",
+	       .data = &sm6350_lpi_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, lpi_pinctrl_of_match);
+
+static struct platform_driver lpi_pinctrl_driver = {
+	.driver = {
+		   .name = "qcom-sm6350-lpass-lpi-pinctrl",
+		   .of_match_table = lpi_pinctrl_of_match,
+	},
+	.probe = lpi_pinctrl_probe,
+	.remove = lpi_pinctrl_remove,
+};
+
+module_platform_driver(lpi_pinctrl_driver);
+MODULE_DESCRIPTION("Qualcomm SM6350 LPI GPIO pin control driver");
+MODULE_LICENSE("GPL");

-- 
2.52.0


