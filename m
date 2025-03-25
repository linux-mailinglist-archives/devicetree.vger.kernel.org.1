Return-Path: <devicetree+bounces-160497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1DDA6F4A4
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 12:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE4B116ECAA
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 11:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1878257423;
	Tue, 25 Mar 2025 11:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wiJ7JQ22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A604D2561B8
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 11:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902873; cv=none; b=RoMid3tQweGM9l96oxeZMKKr6gYh4lWH762UEDxjSE/nnEoFQJsh/3u3InVC0nY1wtRWFJyZuX5y06IIYYpuF0GsSjNgwBGLGs2+JXR98R0vPH6t0bv4/yffHBvDuFVQvEbs9pd6UVzYS0BA8z2urD1HEBv139kFnkbelS3mFeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902873; c=relaxed/simple;
	bh=A0WtHTs89u0NRiqeb7jtxP3PC6SiQD+qIJMNWTfSuvQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k/3Nd+Caw2m3230yO7/ddMOoDG/734VQugfgOjVkWZXZdBX/KHwOwWN1xJAmKn8b978wbLab2qJv2BZdaV6H1TKSkuZWFd6FZshA0jGWQnS+B0wZcXqbtYQPYLmHCsqEktfwOP1YIYT4j7PwkGudh+xZjAGK+9dRCL1RNC6QQHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wiJ7JQ22; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43690d4605dso38457665e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 04:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742902870; x=1743507670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciCsmE+euFjZCUyipJS5apSViu1JxNfFN5bCQJg2zCQ=;
        b=wiJ7JQ22WojqGzrhJ8Pl+cTT8qIbgdtpPw1H5fgulafVZdOcoggMP508EQlSHIugSy
         u4FUL4udk5AUOI9r/sLg3gYySlqPBblpBL+7njJyH8DEdSzvpNtSsea3sqeOdIVQ4P9K
         Ry45Iv8R19LXzFe/A5PJYShS4xvTibjZt/Scr/svzlzqC3NRnvoMG27Pjzw5slBNTkBH
         tgRABLHmbq4zdLOVLuqlsim8cGrJ9kIKyLC4kl5W7hZgTRAjktbsLqMlEZcqBoS3OJDl
         ErZhxOiLn9DNv6fzw8/cgQJDlS4IVZLqKQ53AJ7oKZIG77CE8APAD6bYJDsvbtdSzuId
         R4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742902870; x=1743507670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ciCsmE+euFjZCUyipJS5apSViu1JxNfFN5bCQJg2zCQ=;
        b=L39Vsf12K+uN6yKaFulPUM2J36UoUi5p0HnpQR/cMElceGRhOtXsLdZtbyiANoGl65
         QOvuEQhzRq/AHeLlxZm5DnjUIbbNVr2NjRGqfSQODA6IagbpXFLpMDjtxBWgnL2vsRMg
         WV0x7pM5RT1Tm3wbfAxeuMb+cwxzqmJyRDmRtD+SPvAV8ZqyUJrqQMrazOmNojPXqsyu
         4Njph5CBwPS3wTraoGzlgDIXt3dVwepzMK4pBhCPuo9XDPE6cGfkVu8go+9mIsSbxuil
         WL5sZ1doouOP7m+ng6T2VFM768o7JfghGvVFzIxpz/oC4tHLxBUrI4zINc+79X+mSA0m
         j8dg==
X-Forwarded-Encrypted: i=1; AJvYcCXRMBh0TPNuIS1g4/ppNczqiYVAzsNtKI+kGqwTzBSAuvx6h60Zkak98QNWMj5UteYPRZGOidpUX8wV@vger.kernel.org
X-Gm-Message-State: AOJu0YzI2bGFppZzWvOGCHBdxEnF2tFOnIMgMcuWsKXEsJRCdKLJTFNW
	VewjUIob62pVt+sicoM0HT/6r23uA9a0OTfFYwo7R+B4RictcVa2hqDPVpMl99M=
X-Gm-Gg: ASbGncsd5xVg35IoP+ZlsTfbrsR09z37SkSUjTLoRGlsn/NIYUgkTzpj/21GeQjIovP
	P8dJpUbRoPHNKQMZjmK63plbmmXy1wQtsGz9KbYQVkIQd+sHhtNzrjR8BBa4tOC+YPkql1HW6tQ
	cInMIBFyfkVznwJKOj474SZn4cmQhMVelNRWo3j/hPYOXTxoXhbekC/CEVhLlpj2QQ+2wC3LHwp
	a1j9+3RUj8sSUHDYHRtBMP4yyde6penU1CjEFsOo/PDUInPv+I6CDMNmZqYL/+P0YDhpKGDpesk
	srLhzXxp4nogZQzdtLXzGzOsV3XtKAfVvcnkBm4SEt3NlCsqIQBCs2JHPgGKYG3UJ1GRig==
X-Google-Smtp-Source: AGHT+IF0JTdKEiQNMaj66CfUpe4bYsSfOE4aj8Z5HReCu3uR/s99pqqLX+H/2CSyYdeTC/sC6+XkdA==
X-Received: by 2002:a5d:5f96:0:b0:391:2fe3:24ec with SMTP id ffacd0b85a97d-3997f91072amr14239891f8f.14.1742902870048;
        Tue, 25 Mar 2025 04:41:10 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13213330f8f.29.2025.03.25.04.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 04:41:09 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v5 5/6] ASoC: codecs: wcd938x: add mux control support for hp audio mux
Date: Tue, 25 Mar 2025 11:40:57 +0000
Message-Id: <20250325114058.12083-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250325114058.12083-1-srinivas.kandagatla@linaro.org>
References: <20250325114058.12083-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi mux is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable.

move to using mux control to enable both regulator and handle gpios,
deprecate the usage of gpio.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 sound/soc/codecs/Kconfig   |  1 +
 sound/soc/codecs/wcd938x.c | 50 +++++++++++++++++++++++++++++---------
 2 files changed, 39 insertions(+), 12 deletions(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index ee35f3aa5521..a2829d76e108 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -2226,6 +2226,7 @@ config SND_SOC_WCD938X
 	tristate
 	depends on SOUNDWIRE || !SOUNDWIRE
 	select SND_SOC_WCD_CLASSH
+	select MULTIPLEXER
 
 config SND_SOC_WCD938X_SDW
 	tristate "WCD9380/WCD9385 Codec - SDW"
diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index dfaa3de31164..209d0b64c8be 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -19,6 +19,7 @@
 #include <linux/regmap.h>
 #include <sound/soc.h>
 #include <sound/soc-dapm.h>
+#include <linux/mux/consumer.h>
 #include <linux/regulator/consumer.h>
 
 #include "wcd-clsh-v2.h"
@@ -178,6 +179,8 @@ struct wcd938x_priv {
 	int variant;
 	int reset_gpio;
 	struct gpio_desc *us_euro_gpio;
+	struct mux_control *us_euro_mux;
+	unsigned int mux_state;
 	u32 micb1_mv;
 	u32 micb2_mv;
 	u32 micb3_mv;
@@ -3237,15 +3240,22 @@ static void wcd938x_dt_parse_micbias_info(struct device *dev, struct wcd938x_pri
 
 static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
 {
-	int value;
-
-	struct wcd938x_priv *wcd938x;
-
-	wcd938x = snd_soc_component_get_drvdata(component);
+	struct wcd938x_priv *wcd938x = snd_soc_component_get_drvdata(component);
+	struct device *dev = component->dev;
+	int ret;
 
-	value = gpiod_get_value(wcd938x->us_euro_gpio);
+	if (wcd938x->us_euro_mux) {
+		mux_control_deselect(wcd938x->us_euro_mux);
+		ret = mux_control_try_select(wcd938x->us_euro_mux, !wcd938x->mux_state);
+		if (ret) {
+			dev_err(dev, "Error (%d) Unable to select us/euro mux state\n", ret);
+			return false;
+		}
+	} else {
+		gpiod_set_value(wcd938x->us_euro_gpio, !wcd938x->mux_state);
+	}
 
-	gpiod_set_value(wcd938x->us_euro_gpio, !value);
+	wcd938x->mux_state = !wcd938x->mux_state;
 
 	return true;
 }
@@ -3261,11 +3271,24 @@ static int wcd938x_populate_dt_data(struct wcd938x_priv *wcd938x, struct device
 		return dev_err_probe(dev, wcd938x->reset_gpio,
 				     "Failed to get reset gpio\n");
 
-	wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro",
-						GPIOD_OUT_LOW);
-	if (IS_ERR(wcd938x->us_euro_gpio))
-		return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
-				     "us-euro swap Control GPIO not found\n");
+	wcd938x->us_euro_mux = devm_mux_control_get(dev, NULL);
+	if (IS_ERR(wcd938x->us_euro_mux)) {
+		if (PTR_ERR(wcd938x->us_euro_mux) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+
+		/* mux is optional and now fallback to using gpio */
+		wcd938x->us_euro_mux = NULL;
+		wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro", GPIOD_OUT_LOW);
+		if (IS_ERR(wcd938x->us_euro_gpio))
+			return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
+					     "us-euro swap Control GPIO not found\n");
+	} else {
+		ret = mux_control_try_select(wcd938x->us_euro_mux, wcd938x->mux_state);
+		if (ret) {
+			dev_err(dev, "Error (%d) Unable to select us/euro mux state\n", ret);
+			return ret;
+		}
+	}
 
 	cfg->swap_gnd_mic = wcd938x_swap_gnd_mic;
 
@@ -3581,6 +3604,9 @@ static void wcd938x_remove(struct platform_device *pdev)
 	pm_runtime_set_suspended(dev);
 	pm_runtime_dont_use_autosuspend(dev);
 
+	if (wcd938x->us_euro_mux)
+		mux_control_deselect(wcd938x->us_euro_mux);
+
 	regulator_bulk_disable(WCD938X_MAX_SUPPLY, wcd938x->supplies);
 	regulator_bulk_free(WCD938X_MAX_SUPPLY, wcd938x->supplies);
 }
-- 
2.39.5


