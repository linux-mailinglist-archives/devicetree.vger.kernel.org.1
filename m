Return-Path: <devicetree+bounces-160169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 920CCA6DAB3
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE1A81895F0B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022E925F79F;
	Mon, 24 Mar 2025 13:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yF4H97lg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89D025F79D
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821274; cv=none; b=kUM62M3XsKGL3MiOy3l2F1Di93FvNiAD9jCYzhElG+mlllX8tD2/xvsrv13pzmXOTV4Cg4NkRNYu0jrzX0XrcCG+x816szFZTjJMaUdJc8yZwog1+379CWrfPcAqeswBGa5ly4Y6jccaKXr0mIBLzcMHwlC6nFQmsDi1/kdqt+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821274; c=relaxed/simple;
	bh=hJEhHBHgmcwkLGn7ADU+TBJtnvqkH4aaspjSeICJrEo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QgRR9k984ZISfyW348B+4duCCaPcqVsWXEofubI8w3Sq/nJwuforLZX66eIan8EFPy2vO6yXty6z8WyZYFVUYCVF7WuuHkqbd3mDVHoHaxYjRC6k4gphtGAjkeMlvhCZbPd4SrHy2XhxwkYk4NzFFVH9EmuAVWcaM+jxgFXEfBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yF4H97lg; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso37373845e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742821270; x=1743426070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=yF4H97lgOgtwoiahjN4IJAz+CdapyCJKa+TvD3oWLnsleyRiM1SNDAXOf13AFmOooJ
         DXvu32z7f5I6B9KMyVHKwfzEL2Ja0LUHKhJdaIjO5T2TFBmFRTIYcB+QYYvZkklEcohj
         WQQKbLN3ssmGJPM/4UE3oLjSIeHPcxHQdfjU9/KzT8pHhe73RRa8pXnXAXGbuAVE2LMn
         mDYS9po+8jGYAQHE9PLh+IBFKGPej3uaxlfXgsk49jbJP5FwjUZuJWgF7/iiVsUb3oGk
         fAe04U3AvsQsO0rZMH2mOJfPPrA7vuZjEloUmYsDojA6vqCv9HsGoSxZc/eXF/gZUbzt
         qndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742821270; x=1743426070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=eHMc9YSFJ5yLwSfusu5U6X1yEdF59nswvt1u/30o7eUZoFQ7MDO/r8Zk0W2OLghfV+
         OD5CXdFA+2risXgo2bbpLrEN9jeC2pS0Zpxyw/D1PfULt3kaOJFqRD4qj4Avro0M6wge
         YgbW5vO8tTnyWU22XZIe3S3SORVi4os2N4ZERozg+xtHXVfc8/JDlUyzqK0yFLTL2uKS
         BA2rxG1QkZgmCgoyrbOxfXAJ4aX3u6UHkA4LU9ckvbiOj/Z221jnhnmFHtjqdloOacNW
         nWk+40BJJ0s8YkVCOuuyQGS+XkIjKkhHQxdttqCKvcfmJI12YKnvqGaYq8wz/hxQRgVo
         SXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/Wibmi9YAAnKw/rUqQDAiyRTHecKuAMIOVF1nwhiywuoa+BdR/J0pnKEALgO5QIyg+AifYU6FZJWH@vger.kernel.org
X-Gm-Message-State: AOJu0YxoT8VubMdDrbaz761RSUHDQZSiRpm5RuH1jXH0UWB++4yUjm5Q
	L+YQGWWUZNo7Y/1nVAhZqfSxTxnoI/65/17AKvmppeGM2e1VuMY77LKV/Td1luk=
X-Gm-Gg: ASbGncsujUlAak0lJ6PWlvWBZ98xURzpLoJz5kaq+yv7jmb6o1t/pI1ujk47i1EjSmW
	5QYxGSyZ8yePihXm+J8+84Wm9dqw+VF6KNowm8OwBMKsuypn4NoCXVtSWWXS5psvNzviIilLVJh
	KgCSDo6unfZOqpvvbTSymDr2sVkyNRGOrHXn2pNVyZnDgSIUGHn4+GER7GpAznVltdq8DRt+e/8
	d4r5rfvswWIR6Krv+lTdyTeMfR2SeD4zj13TwclvLiAPb0LI/7Vi8VZKBhto7Mk4vHctrPIpk3e
	zhrwj7v3R62Yai+cVXUO9RFneQypag2PDADuUOPXqapgX3XMTVEmQcUV5ETO8bApNxBQyw==
X-Google-Smtp-Source: AGHT+IEHylwx4qlkPIxjxGRM/SsWCTC+RRiS7Z7WGB581zySgV9XmANjiM7Hap33tyQHXG7s4q3FgA==
X-Received: by 2002:a05:600c:3c82:b0:43d:45a:8fbb with SMTP id 5b1f17b1804b1-43d50a1d1ebmr98894065e9.22.1742821268315;
        Mon, 24 Mar 2025 06:01:08 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm122275975e9.40.2025.03.24.06.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:01:07 -0700 (PDT)
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
Subject: [PATCH v4 3/6] ASoC: codecs: wcd-mbhc: cleanup swap_gnd_mic api
Date: Mon, 24 Mar 2025 13:00:54 +0000
Message-Id: <20250324130057.4855-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
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


