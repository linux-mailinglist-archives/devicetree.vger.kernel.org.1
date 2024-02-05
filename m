Return-Path: <devicetree+bounces-38780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9E884A17C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 024ECB2328E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0AAA47F70;
	Mon,  5 Feb 2024 17:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dr7dhYuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9466B45BFB
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 17:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707155742; cv=none; b=HX40sR+21WSU7WGq5xZLkeuw4oMLsbANbtfh6VDZh1lPaetN62Fwi5fRZQmUSVpZt88Y8j7g6DqZAbtFicBZK86fMR+AcxBT3CXRJqgozepUBYNe3THVJ1lx0SSWsS/1pj2bJtmhWQoRun9lS/THPDpkwDvSMEEcLRePU03y8+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707155742; c=relaxed/simple;
	bh=Smlla1YZJOXz+za+ZZXCQUR8f4zJcKmwkP7WPfkHnjw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aV2cDnf0n3869gX/08U7nNzHhNtWLnHFyZGhtb15T48QJKKw7DFarcFxII+Kwni+TUGluLjAPaqvZpXiUhHPemEa0D0YTSi06TAsGBGvXFaAgbUWfnoTOTdydVM0QRVbCry/f/mYOraERMG2910lxSfL3Gy8wGvvW5Bur/F7Hm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dr7dhYuG; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40f033c2e30so42578855e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 09:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707155739; x=1707760539; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IUPR9d02dtJIVzX3UuZrrXfP4OKmNv4PgS6wUBZYrw=;
        b=dr7dhYuG63UPrH77/e3MCFu/i+ssj+JGC3LTZ3pUcrl45YgrVk1lTc1XsEawnJ+oRT
         0rnthwqozYUdW5LRJdmKpAHSIwMNX0zq3VWKJEp9o6yxE6Ba63Q3nqTdEO8eQke2MWm2
         nAktqtYg7Bk+YQp8kup2x+qrIbO3Yl0ucdcaVra8wW5u/aYjWXUU7eCfXksjUu/Ydler
         bVEyOnVNDOjj7/Mwo9ofvESpC91thfPNcNsr6p9mjh+wqp2YTdMp6Aik8A0s9SImvGZ7
         oBQeKtkD4ql8n+Wg7h4X+d4tkuMiH50OdzyMuWhx2+0dBj5BbuDvl2ealqEYPwMQQh7d
         3rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707155739; x=1707760539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IUPR9d02dtJIVzX3UuZrrXfP4OKmNv4PgS6wUBZYrw=;
        b=EpZKv2JqlS+uHffFdsIC5fenCC4vgt+pz9lXBFHHSVtYfd90TIue3nUBqbEc/qjChf
         fi9Qk5VmhuuaFdSg52K4Ip0SiqekZQQueIq6GsLn/+1lM1Oeyyxbky9OgQWiaxjxEFsi
         BowDHANO6E08u2toIUOMv3ZfrtEUtqNHQA2RVFy0kKVCdSBsXOZGX3GnBDm6O8py6GQd
         DULp7wUVw31FRXi2mSYD+feOeMnIOW6SxKsNRtMcK1CaNDEOEIt4Qz4OnZ8h0H5uZuIo
         jqsC8LLfs9sHuaHOdddPaoByYlZOaVm1gSxXJHfPafh1dWxgzv7JN3bQKxj9wtcsPLLu
         BS4Q==
X-Gm-Message-State: AOJu0Yx+YzMQ0qSt3/GseK0IVOFCMORd9Zby2M4DCb3jaE709y8xTigJ
	qityt01QRCl3BsPZmlSI6UZpy3m0QZ2z78MVME0es86LC5UOj5YIwBCR1W+cBj4=
X-Google-Smtp-Source: AGHT+IFN+yLUedhPaehLL/1exsFXa45xhACL3vqMCYezZMmd83Xo2s/0ZMKZ8kYdbpOQcQpnJ5AsgA==
X-Received: by 2002:a05:600c:2255:b0:40e:fa6b:f355 with SMTP id a21-20020a05600c225500b0040efa6bf355mr359245wmm.41.1707155738856;
        Mon, 05 Feb 2024 09:55:38 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXbtuxgYZnfxxF4ZBOxrecZd8vN1RFObCsvN4VGJBdjPqpMMpsJWbmmcBoO9T+cZeYeXGql16IsaeRKHFSO8Psd261DswqFLP4TxLNw8Y7hOoiYtyHRzZHwMIRFVb8IF0VswUblhJduwp00X/uSHcngOk65+1JzCgJ8j84EpMdyKO4P1FdipzjrCzoylVtmE8GORsgl/ITCO54DXfHistXo7GXQo5tpZARko6qVN2L3RNgxvoCFsnrSBdDbR7Ju1B6CQi2mJKDOlNPMNNd+qaGho6nkLDo/YKWmcOGtdSwocllDySDHYcYTaup6Pgs8JK6E0ZzwQ9DUyc+n3wLzSoR0h9laTzDiNghXEv6jAW7oPb6hiXDuaXqp/ibQGoTFiae8nIe1y2RQ/EkANc3E0B6p35PMVgaNBiS1Nas/MEOciOBRu8clyn3htN1KyJmwwyDZeQxmq0DXjBbX5+920N3HksNuQZ1BjqcKMaqGWu3ttCXecWrqWUCHai3iluuA8xobqbsZTNlwn8cZa3xNV9/RYc1YamycMLaM5t5GOxcALQsiBm9KfCOOvhvLSRmNbibIezI0jVQclvsSfFpI2RBep2Le4uYm0nSUptaCDhF06Kb7yJ9GvsX95WKd5AJ+pYeDqSyZ1nZ+JduNGNhUCw0GjvGqTs7TP/K6/AdfZEUIV9mQcLGCwa1kNEXsjBR1ZY1mV1f1zbcHvMsxgzj4eMlyLQvGhTP5i0SxDLi46QLy/kFEcuYQfHuSyBIZxUtB8do=
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id je16-20020a05600c1f9000b0040ee8765901sm517556wmb.43.2024.02.05.09.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 09:55:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 05 Feb 2024 18:55:29 +0100
Subject: [PATCH v10 2/7] clk: meson: add vclk driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240205-amlogic-v6-4-upstream-dsi-ccf-vim3-v10-2-dc06073d5330@linaro.org>
References: <20240205-amlogic-v6-4-upstream-dsi-ccf-vim3-v10-0-dc06073d5330@linaro.org>
In-Reply-To: <20240205-amlogic-v6-4-upstream-dsi-ccf-vim3-v10-0-dc06073d5330@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Nicolas Belin <nbelin@baylibre.com>, 
 Jagan Teki <jagan@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=7703;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Smlla1YZJOXz+za+ZZXCQUR8f4zJcKmwkP7WPfkHnjw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlwSEU8tOZQkTdCjVssb54fByFS/vJM4zBoexrCGED
 yegbuuuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZcEhFAAKCRB33NvayMhJ0RluEA
 Ccp5IfaBOMWkzrq1HuMxujWIGePdsjqNJ4tL4+GNdykxafMPQQ8vqi5HnZ+O3Q0MJe3YUyhkUyibVH
 JvFPMnKYPHSWxiY0UypgLQg9f6Hd6hKveiGSBHjUAQ7hrMCD/XDNWf8/x6XuuqZhW9pUOjc4WC5Fb+
 zszbRxr1z5y+sPthUyT8zGZnCyiU/cXcq1SgnIXxHnG2Zovv5Z9INvZPLPGL7/oZqD3WvVbRdYFda1
 5WsFRRPY/meR6Dx1y1iUd1KyZs1BJfR6eSmGD23GnYpB0cWUngu8hz8E0Uf6UA/We6M/zSfLTVU5iw
 4CUHIIqUbXpu1OWTNT2j8TwUSWO6/i1PFO8fNwrC6Wby29NzloW0t/0z8mxHO92Z6c8UjzggB1MSYj
 O9EImIqNI3dmGqm8hl6qd4w7M3lPbgXfKayuMTK8clFEU3szCDh+tEdoLC0HS/XlzemASxik6mg1kK
 BoeDLoO5jNG6eM//ITPhYmNvpUO0H2EO2rBVqnFyMFWUakOVngUb5RqqMrdYcia5esrhOrDFBg8RNr
 UVSFoQbzDzx2/etjhH1KNf6iDpNkXNdabOb+Z+X3cmTuofJCfl0ZG9dkOjpUeorbca1YRW8Quxtci/
 2dEmw70wVop+RAwIBjqi1WDHcQT8nEwZ+YhcFHGae5/skwfIPjSZT4+PWsQw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The VCLK and VCLK_DIV clocks have supplementary bits.

The VCLK gate has a "SOFT RESET" bit to toggle after the whole
VCLK sub-tree rate has been set, this is implemented in
the gate enable callback.

The VCLK_DIV clocks as enable and reset bits used to disable
and reset the divider, associated with CLK_SET_RATE_GATE it ensures
the rate is set while the divider is disabled and in reset mode.

The VCLK_DIV enable bit isn't implemented as a gate since it's part
of the divider logic and vendor does this exact sequence to ensure
the divider is correctly set.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/meson/Kconfig  |   4 ++
 drivers/clk/meson/Makefile |   1 +
 drivers/clk/meson/vclk.c   | 141 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/vclk.h   |  51 ++++++++++++++++
 4 files changed, 197 insertions(+)

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index 29ffd14d267b..8a9823789fa3 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -30,6 +30,10 @@ config COMMON_CLK_MESON_VID_PLL_DIV
 	tristate
 	select COMMON_CLK_MESON_REGMAP
 
+config COMMON_CLK_MESON_VCLK
+	tristate
+	select COMMON_CLK_MESON_REGMAP
+
 config COMMON_CLK_MESON_CLKC_UTILS
 	tristate
 
diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
index 9ee4b954c896..9ba43fe7a07a 100644
--- a/drivers/clk/meson/Makefile
+++ b/drivers/clk/meson/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_COMMON_CLK_MESON_PLL) += clk-pll.o
 obj-$(CONFIG_COMMON_CLK_MESON_REGMAP) += clk-regmap.o
 obj-$(CONFIG_COMMON_CLK_MESON_SCLK_DIV) += sclk-div.o
 obj-$(CONFIG_COMMON_CLK_MESON_VID_PLL_DIV) += vid-pll-div.o
+obj-$(CONFIG_COMMON_CLK_MESON_VCLK) += vclk.o
 
 # Amlogic Clock controllers
 
diff --git a/drivers/clk/meson/vclk.c b/drivers/clk/meson/vclk.c
new file mode 100644
index 000000000000..3ea813a0a995
--- /dev/null
+++ b/drivers/clk/meson/vclk.c
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2024 Neil Armstrong <neil.armstrong@linaro.org>
+ */
+
+#include <linux/module.h>
+#include "vclk.h"
+
+/* The VCLK gate has a supplementary reset bit to pulse after ungating */
+
+static inline struct meson_vclk_gate_data *
+clk_get_meson_vclk_gate_data(struct clk_regmap *clk)
+{
+	return (struct meson_vclk_gate_data *)clk->data;
+}
+
+static int meson_vclk_gate_enable(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_gate_data *vclk = clk_get_meson_vclk_gate_data(clk);
+
+	meson_parm_write(clk->map, &vclk->enable, 1);
+
+	/* Do a reset pulse */
+	meson_parm_write(clk->map, &vclk->reset, 1);
+	meson_parm_write(clk->map, &vclk->reset, 0);
+
+	return 0;
+}
+
+static void meson_vclk_gate_disable(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_gate_data *vclk = clk_get_meson_vclk_gate_data(clk);
+
+	meson_parm_write(clk->map, &vclk->enable, 0);
+}
+
+static int meson_vclk_gate_is_enabled(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_gate_data *vclk = clk_get_meson_vclk_gate_data(clk);
+
+	return meson_parm_read(clk->map, &vclk->enable);
+}
+
+const struct clk_ops meson_vclk_gate_ops = {
+	.enable = meson_vclk_gate_enable,
+	.disable = meson_vclk_gate_disable,
+	.is_enabled = meson_vclk_gate_is_enabled,
+};
+EXPORT_SYMBOL_GPL(meson_vclk_gate_ops);
+
+/* The VCLK Divider has supplementary reset & enable bits */
+
+static inline struct meson_vclk_div_data *
+clk_get_meson_vclk_div_data(struct clk_regmap *clk)
+{
+	return (struct meson_vclk_div_data *)clk->data;
+}
+
+static unsigned long meson_vclk_div_recalc_rate(struct clk_hw *hw,
+						     unsigned long prate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+
+	return divider_recalc_rate(hw, prate, meson_parm_read(clk->map, &vclk->div),
+				   vclk->table, vclk->flags, vclk->div.width);
+}
+
+static int meson_vclk_div_determine_rate(struct clk_hw *hw,
+					      struct clk_rate_request *req)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+
+	return divider_determine_rate(hw, req, vclk->table, vclk->div.width,
+				      vclk->flags);
+}
+
+static int meson_vclk_div_set_rate(struct clk_hw *hw, unsigned long rate,
+					unsigned long parent_rate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+	int ret;
+
+	ret = divider_get_val(rate, parent_rate, vclk->table, vclk->div.width,
+			      vclk->flags);
+	if (ret < 0)
+		return ret;
+
+	meson_parm_write(clk->map, &vclk->div, ret);
+
+	return 0;
+};
+
+static int meson_vclk_div_enable(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+
+	/* Unreset the divider when ungating */
+	meson_parm_write(clk->map, &vclk->reset, 0);
+	meson_parm_write(clk->map, &vclk->enable, 1);
+
+	return 0;
+}
+
+static void meson_vclk_div_disable(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+
+	/* Reset the divider when gating */
+	meson_parm_write(clk->map, &vclk->enable, 0);
+	meson_parm_write(clk->map, &vclk->reset, 1);
+}
+
+static int meson_vclk_div_is_enabled(struct clk_hw *hw)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct meson_vclk_div_data *vclk = clk_get_meson_vclk_div_data(clk);
+
+	return meson_parm_read(clk->map, &vclk->enable);
+}
+
+const struct clk_ops meson_vclk_div_ops = {
+	.recalc_rate = meson_vclk_div_recalc_rate,
+	.determine_rate = meson_vclk_div_determine_rate,
+	.set_rate = meson_vclk_div_set_rate,
+	.enable = meson_vclk_div_enable,
+	.disable = meson_vclk_div_disable,
+	.is_enabled = meson_vclk_div_is_enabled,
+};
+EXPORT_SYMBOL_GPL(meson_vclk_div_ops);
+
+MODULE_DESCRIPTION("Amlogic vclk clock driver");
+MODULE_AUTHOR("Neil Armstrong <neil.armstrong@linaro.org>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/clk/meson/vclk.h b/drivers/clk/meson/vclk.h
new file mode 100644
index 000000000000..20b0b181db09
--- /dev/null
+++ b/drivers/clk/meson/vclk.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2024 Neil Armstrong <neil.armstrong@linaro.org>
+ */
+
+#ifndef __VCLK_H
+#define __VCLK_H
+
+#include "clk-regmap.h"
+#include "parm.h"
+
+/**
+ * struct meson_vclk_gate_data - vclk_gate regmap backed specific data
+ *
+ * @enable:	vclk enable field
+ * @reset:	vclk reset field
+ * @flags:	hardware-specific flags
+ *
+ * Flags:
+ * Same as clk_gate except CLK_GATE_HIWORD_MASK which is ignored
+ */
+struct meson_vclk_gate_data {
+	struct parm enable;
+	struct parm reset;
+	u8 flags;
+};
+
+extern const struct clk_ops meson_vclk_gate_ops;
+
+/**
+ * struct meson_vclk_div_data - vclk_div regmap back specific data
+ *
+ * @div:	divider field
+ * @enable:	vclk divider enable field
+ * @reset:	vclk divider reset field
+ * @table:	array of value/divider pairs, last entry should have div = 0
+ *
+ * Flags:
+ * Same as clk_divider except CLK_DIVIDER_HIWORD_MASK which is ignored
+ */
+struct meson_vclk_div_data {
+	struct parm div;
+	struct parm enable;
+	struct parm reset;
+	const struct clk_div_table *table;
+	u8 flags;
+};
+
+extern const struct clk_ops meson_vclk_div_ops;
+
+#endif /* __VCLK_H */

-- 
2.34.1


