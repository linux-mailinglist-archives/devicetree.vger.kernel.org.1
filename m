Return-Path: <devicetree+bounces-161200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB29A72D57
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 442CD3B8C8F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E549020FA91;
	Thu, 27 Mar 2025 10:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ceu7Q+36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC5320E70D
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070008; cv=none; b=anUs8QoGSiIN8ZvLGVvqnvPpB3g4YJgy0l/SSLYYezWVTLubJxuUS24xjDwIL3KJg+9hA2SUWieIgmTYrOT+5Md6HRorf7SAxpeCwTZVzfdH8g7FhYl1aD9CmJQCNuIMW7MW3ulN/etO9qot56WJofIP79wjvJbuq5gX75EnIA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070008; c=relaxed/simple;
	bh=hJEhHBHgmcwkLGn7ADU+TBJtnvqkH4aaspjSeICJrEo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hkftyu8mFkFJbT201My2AXDNHO/LXB08HeTOv/g1gp0mn8L6J/wxQ3ebvUdmwP5Szn8szDbERF7Wsb9TiFiEq1wC5APebJy+4K2dlMG2peYdlFa8Gd226ZMr45D/SpfEeENtCoKJhKY+cDGh+A2PwiYD6f6I2HBrMChcAE1lBZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ceu7Q+36; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38f2f391864so380035f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070005; x=1743674805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=Ceu7Q+36KGy6V5utgRpQHgV9yxlDboAqbtPgoGDeffikMAs64n8xQgbzUnigbp+9pn
         KDQYZHAkpn7BS4eLaNlOPyiG+Jsif6Wt7564ujuKZDYM8SalpSGqKsUxJRAzTim9z6w0
         +b4uYMxt8qjwalm3ZDsojEOndxbMIxmiprbPxnRTAzn21KASsM1zIo5IGxnO3oa0OmMw
         Shz3YS0SK9H81MetouV+VLoFMwfTnMu4oUUDt+psSM8Z60y2L+MIcl+kJ9mPUM7VgM+F
         16Ez7IlqT2YOQw4/Kp1gIIZGgfTbF7R4gDlufgvLFHQ4z1MiGp+IGnNjf6V+Eo+Ej8Uf
         7Lcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070005; x=1743674805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=bDjWUqRGLmY/Ya2KsKHdT1VaYH3dmUogspQFH/Uy+JGnSLbvhQe1InLIgFoIiqNRXX
         dvJ8NfGGtt1JpC/efobLXdg3G4yGrTb/cewcNNMQHZzV5Uw8S7lQ+85eiQXwHpR/TugT
         sAqZ5ga7az0QlwrmQr6gJw38AJqZYSQNmVVEggAPgut3FnpmFUotLUJQCkzyIYrdis2V
         zHQzGKf/hNTNJsri9fNRLtGfm46DnCls+Cf/p5bOCFv+lNYBZhviMoaPtbVmVOlB+0U8
         +Y2/0wHmwilh6Dj7uypfdqFOsNlwLbkHt85RbHdQwVMIcWp+Cig36uvwUJUeMeVGJ3Pk
         afew==
X-Forwarded-Encrypted: i=1; AJvYcCV4/XG0LbiIbB+AYAHmEr3a9cbu6fT4cRN4k1rEgOhCtj4TjKBKj+J18GpBJ/AVdwrEql6K776FrTxH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywii4RkMYKVsVtjE7onVt7OSu+kkr1TnyhwKRuHk1vwcllpWyoT
	0h7GYYCOCgjXToGa70CVlhIUv7IhVlgU9oFqK3qMTBWTosyF4332xE0tOdbg9Yo=
X-Gm-Gg: ASbGncv2PDweRe0w5aumvn9FebUyJk8k+tKS+hfydtQC37fvVmMijyVejPK6uQrzKq8
	4a1ZvbEjihbB9RoeNHaXmYIncapshJe5WyZ7fPVnat9qDUoDcqVWjOATG6zadcHYn4v+YoYgCyI
	Mf2YQg+eCX2PsBnMbu7Qy+dKmIQP2WLJrkGmFJvuUaPOIcziGzXcGNVWdH1WUR8KEgdOAbHd+3P
	xrm4/MxFMVah4I185SzCvI8BpkaytI2B788AZMw1Xv5lQP6ucqd1aHXfEKH7Dh6mPDejwX6AldD
	pWxTm2btBnsgP7kLQvO6797MhThBuNigNqJlw5AkBoj1+as0ehy+GqK43TKaJLOMrc5Hyw==
X-Google-Smtp-Source: AGHT+IHKTr77rgy7z6tUorkVmyaYsLpGj6E/y8viXassXOAOlt53NZQ+U4mnCJz68CeYjAZ0eVwnWQ==
X-Received: by 2002:a5d:6daa:0:b0:391:42f2:5c7b with SMTP id ffacd0b85a97d-39ad17466a4mr3085783f8f.16.1743070005118;
        Thu, 27 Mar 2025 03:06:45 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac3ce3dd1sm10843204f8f.88.2025.03.27.03.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:06:44 -0700 (PDT)
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
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 3/6] ASoC: codecs: wcd-mbhc: cleanup swap_gnd_mic api
Date: Thu, 27 Mar 2025 10:06:30 +0000
Message-Id: <20250327100633.11530-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Remove confusing and unused argument in swap_gnd_mic api, the second
argument active is not really used, and always set to true in the mbhc
drivers.

The callback itself is used to toggle the gnd_mic lines when a cross
connection is detected by mbhc circuits, so there is no need of this
argument.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wcd-mbhc-v2.c | 2 +-
 sound/soc/codecs/wcd-mbhc-v2.h | 2 +-
 sound/soc/codecs/wcd937x.c     | 2 +-
 sound/soc/codecs/wcd938x.c     | 2 +-
 sound/soc/codecs/wcd939x.c     | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/codecs/wcd-mbhc-v2.c b/sound/soc/codecs/wcd-mbhc-v2.c
index d589a212b768..4b7c3d6080a1 100644
--- a/sound/soc/codecs/wcd-mbhc-v2.c
+++ b/sound/soc/codecs/wcd-mbhc-v2.c
@@ -1260,7 +1260,7 @@ static void wcd_correct_swch_plug(struct work_struct *work)
 			if (pt_gnd_mic_swap_cnt == mbhc->swap_thr) {
 				/* US_EU gpio present, flip switch */
 				if (mbhc->cfg->swap_gnd_mic) {
-					if (mbhc->cfg->swap_gnd_mic(component, true))
+					if (mbhc->cfg->swap_gnd_mic(component))
 						continue;
 				}
 			}
diff --git a/sound/soc/codecs/wcd-mbhc-v2.h b/sound/soc/codecs/wcd-mbhc-v2.h
index b977e8f87d7c..a5d52b9643f5 100644
--- a/sound/soc/codecs/wcd-mbhc-v2.h
+++ b/sound/soc/codecs/wcd-mbhc-v2.h
@@ -194,7 +194,7 @@ struct wcd_mbhc_config {
 	int num_btn;
 	bool mono_stero_detection;
 	bool typec_analog_mux;
-	bool (*swap_gnd_mic)(struct snd_soc_component *component, bool active);
+	bool (*swap_gnd_mic)(struct snd_soc_component *component);
 	bool hs_ext_micbias;
 	bool gnd_det_en;
 	uint32_t linein_th;
diff --git a/sound/soc/codecs/wcd937x.c b/sound/soc/codecs/wcd937x.c
index c9d5e67bf66e..b2fb8520c823 100644
--- a/sound/soc/codecs/wcd937x.c
+++ b/sound/soc/codecs/wcd937x.c
@@ -2646,7 +2646,7 @@ static void wcd937x_dt_parse_micbias_info(struct device *dev, struct wcd937x_pri
 		dev_warn(dev, "Micbias3 DT property not found\n");
 }
 
-static bool wcd937x_swap_gnd_mic(struct snd_soc_component *component, bool active)
+static bool wcd937x_swap_gnd_mic(struct snd_soc_component *component)
 {
 	int value;
 	struct wcd937x_priv *wcd937x;
diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index f2a4f3262bdb..dfaa3de31164 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -3235,7 +3235,7 @@ static void wcd938x_dt_parse_micbias_info(struct device *dev, struct wcd938x_pri
 		dev_info(dev, "%s: Micbias4 DT property not found\n", __func__);
 }
 
-static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component, bool active)
+static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
 {
 	int value;
 
diff --git a/sound/soc/codecs/wcd939x.c b/sound/soc/codecs/wcd939x.c
index 4a417a92514d..546aa88a398c 100644
--- a/sound/soc/codecs/wcd939x.c
+++ b/sound/soc/codecs/wcd939x.c
@@ -3215,7 +3215,7 @@ static void wcd939x_dt_parse_micbias_info(struct device *dev, struct wcd939x_pri
 }
 
 #if IS_ENABLED(CONFIG_TYPEC)
-static bool wcd939x_swap_gnd_mic(struct snd_soc_component *component, bool active)
+static bool wcd939x_swap_gnd_mic(struct snd_soc_component *component)
 {
 	struct wcd939x_priv *wcd939x = snd_soc_component_get_drvdata(component);
 
-- 
2.39.5


