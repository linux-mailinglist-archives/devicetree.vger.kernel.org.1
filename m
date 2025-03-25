Return-Path: <devicetree+bounces-160498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0917AA6F4DD
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 12:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4A1E7A505F
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 11:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C3722566DB;
	Tue, 25 Mar 2025 11:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CMVmGPd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CBD2571BF
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 11:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902874; cv=none; b=DZ7Fsj0Oe8NhHcrEXW/zE/bjk7vFaCh2wtZlriE9Z8CAjaKD1BEeRfx+gXLLWjAOe8FVohl7an6s6CUtvYRQJO9EkMogZPbkNw0Fw2iZQ9hy1959ZUi7GQ3eLV0DdekCp9mj+CEOvDKy7P/ceOwqm97LX5ixJoVqEU1w04crYy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902874; c=relaxed/simple;
	bh=hJEhHBHgmcwkLGn7ADU+TBJtnvqkH4aaspjSeICJrEo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M8nOzosFIheD+OIbWtEkHlO4lsxTTzSbg4TbN167mXHNC+hXXw731F3avt21qNwDoVQ4JhUecSKWR7WGRdcf2ai/+X0gVbin8oV/7LThzFEzvelXMDwKFfXKaNMHi0wJgVYe/MR/kPl8/DAkM+9ETwRsQEfO5Ad4ZsjTI7V7Xvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CMVmGPd0; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3913d129c1aso3915879f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 04:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742902868; x=1743507668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=CMVmGPd08MH9ghny9/s0AgHtiDYuUIe0tWc0YwbPzaqYTfD4nxq8+mD0TerJGB6aNp
         a3VybmT8UPTqMiiP7my5UZ/hgPkhHctN8vFAUjajeRV/HTAWq+cuJtrEpTdjq5+F6hBS
         fJhH5Wjl7QR3PuZkaHSDOECrNDcjVqSkrmFe/waw0baEf9rKdWx3sc4PDqPHuXvgmUrh
         AjP/I7OVvDHICtReBpX/lqIRvg6yDqmoIX1GBq6nkVLVZ+77YVJ3ZzUTo/p1GVQzcFqX
         KYO3TLc3YsFlo+kBKa0Okfy4MX2cJ5H1nCJ/YycOp4sAn0GcS799c/I6BD1upgDeMmPS
         Zzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742902868; x=1743507668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPKG26aBT6MGmMvi54w+dEW5MMoDzMUIu/y68UikHrA=;
        b=J6GqKFaiM6Vd4GOSt6LArE3rsYpQecfLlF4dj/wZs/qJLjuvNEq0KEc4XxR/GXzFVJ
         w/R725ioeiiltuVuVTEKHUUCanW1Nmtj7mmXAcx6gohq9br6zZv9ZAcm3oZHOOEZSbsG
         FFx/wrRbywmKu6Ky/jEcGkZJ0DIP/xbkpoYsbz3j07r2JlInDrPemp5/GZJGFvgFWsG9
         g9oJHm6PogqYk8rDnptjnvnI09PeH1iG4ces+3gZnC2XckrnsHKGEx7aQpn+1gNrmHtX
         Fhsl18eiC0FCYHYgBZYPp+75/FG9g5GOzo4nZRIZRlprqGJQ/XeQ7r73LylLTqiuFnp4
         E8sA==
X-Forwarded-Encrypted: i=1; AJvYcCVwC758wwnDmpNHrjNtIe5f63oFKKmj1hWt5MVufyWCSdkAVa9bPlMMhNRfNDqPsCulJMz0Qewi8Urt@vger.kernel.org
X-Gm-Message-State: AOJu0YxQyo/xH6/QenHBJb/AvBefhLYogzNC5NlGIAv45lpapHEJfIMX
	xGIcOO7gBWVlzUAlQ7nz2eVKZ+TsPsZu+qFQOE30neGB1hvvIs3Nn0nCbqHCVMs=
X-Gm-Gg: ASbGncua6umFy+w7zlX34XfSQ1WWGrWtBUw8UgIG0U/+QHEU/yfdhnSfmHTHW05bV9D
	uPjFyYWiPXkyvC/c3KSw1nKs/XRJHKpUECnO6wkKpvtkaWQMrWgN+Xi333AZVwFQPdst8xxa+Uk
	jT3XZ8i70yjD6AXHLN7t6YwMKLvI8tWaiWRZ1Ld+rQPB8niiXCMSpOdgJ5CD30snz8p3aQHBU/C
	6XL8VrkksLNsuiNHxwPRxwkUoSeoawEWUUy9UyM4KxdT2krkAvBprBUpfRXgKJiXHiNEjb4tCLp
	wNECeIbO0jU29uoNfZku8Nefv4RW4fDqNYUKcJzjKKS4o7NawPVU0o70yXCD9x9pEp2qGg==
X-Google-Smtp-Source: AGHT+IFqEVrx5mCJtplG7+w7CWWWndtmmBeTngl+nxKo8qHTXdRc7GMle1DFI7FxDeYhfsG7z+7Agw==
X-Received: by 2002:adf:9dce:0:b0:39a:c9ae:9eea with SMTP id ffacd0b85a97d-39ac9aea552mr1090347f8f.10.1742902867202;
        Tue, 25 Mar 2025 04:41:07 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13213330f8f.29.2025.03.25.04.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 04:41:06 -0700 (PDT)
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
Subject: [PATCH v5 3/6] ASoC: codecs: wcd-mbhc: cleanup swap_gnd_mic api
Date: Tue, 25 Mar 2025 11:40:55 +0000
Message-Id: <20250325114058.12083-4-srinivas.kandagatla@linaro.org>
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


