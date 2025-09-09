Return-Path: <devicetree+bounces-214921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A90ECB4FAA2
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:21:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 618E14E7AD3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4A2219755B;
	Tue,  9 Sep 2025 12:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mup4SmyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8117338F25
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420431; cv=none; b=G5t6IfVKa83QDud3yGmAPgjU0vWBwAqfHq6WYDnTGS3Q0pSF01e0PcDntt+tTdcw9GGlURiVaXxlHj3iCK1y9T8BipnT5Ia9zG57GOiyctgPyrEBTSDyP0uHZSmmYJP+rvJAa8pRIdUdaLkOXmOHj8woQa4hdMdP82hsXIMZerc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420431; c=relaxed/simple;
	bh=Vob2QVOiy3TJum+gYviV62RlyAAAfxmjXX+ywQHAW1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kZ9PPOyGbe+PoZEh23lyytcBs9R0MZ0+cyLtmckhAa/eawgkAzWdiUZ5F4X5/Fz+LKeIJwqLNqlR+8P228jORaJkJomvG09Xn1VL7NEcs1npecYJyw67K/9FrvfFZ1GDaH8jvibgvwp3yN5XEOvHAVXgASNkRmd5dR+iPkUeaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mup4SmyB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LZjA029320
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8G8MT1LjzV5
	F7x7h2zP9USaReyOZ6QfiVzZlkcEwqQo=; b=mup4SmyBrX3q3NupGxjVD7ylL3O
	d4yLScnxDeH4FNQGGIDQbx65SaIle3x14fvG3KUBi/v92eTD2ctopYm747WnKG2r
	/ebIzFVjLTXvIDjpTVnQNER4i+VaDmqkttrdbvzTIA2RQ4Yz6L9wu8ertV7VC/Q8
	YIbIPVQat7yenzmcLPXchlXfpM0IqhlXp3QtIoM/VPeImePgSjzva+6H3tb4zilF
	AJ6IKPBz0+p72QDrzi+VfFqm/PSLhB+8GjUo7FohY9/Zj3lhB1vbG+d2KPFazihr
	Ihz/eUG84ncooXYJYZHi8FBMVLMjtpYmoy2kp0gpVx7iW4S2dOH4rVOf0vg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8g64v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e9b60ce6so130812471cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420428; x=1758025228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8G8MT1LjzV5F7x7h2zP9USaReyOZ6QfiVzZlkcEwqQo=;
        b=VELHDnkiCfIVBtdM1mLNWmxNzLsdJQJND0FerNFIl0sVWc9ZdR1HYkCm4axKU6k78I
         ure2JY6qVPCmyTLaQaynzu0XErY3Jo4Xn1H+OL9Fqc/aBkjO1F93//d1j5hPi5RCSZOF
         H79eLDehXGpXpCFaQr3Q+slFdLClxpBCm7OGVb7wnEqBgEW2+KTRDFehvQmvAe5Yi60E
         RZmBp1PQs9TFVhaYBmHvum7/f1ro6kP+9KNL8sRZCdJnUacpUyPJsjYgBLnXka7mzMDQ
         Humgkxqu7Axbxto5DxkcNCFSk/VpKfyzDfJLzmeVxkzcQSnck+VeliSbM6Rky4HvjD6X
         5bVg==
X-Forwarded-Encrypted: i=1; AJvYcCWofmjsBFsjlw44gapRagHvJu7nOGX1xxF3LMC8uU3apOYN58NAJIXJuemh/YCqOkwdzapCOMH31Hfl@vger.kernel.org
X-Gm-Message-State: AOJu0YwwswNpEf/cO5f+30NOGP75iv3OYFvxslGSxzcgMJbNYEDXQDEv
	VH3CtaaO2QoC9m1sF2z/ekVk9CrAaR5tZrgT/uMjU5EOm+FcfY+PfEDQaBLh25qNBefU0bwpkxP
	KtzvzIR7pHprVunBoiNSFn5YBAZuV3eCvEBnZsAk385koenqFu7IxASyWX6PYY0RV
X-Gm-Gg: ASbGncs5pr/ql8qC+OGxycpRcnMzLPPR+kHT+gX4vRtBdyitsyFndZki3hGz+3/R+Q8
	7cWwBK4CpXTtUtAOPhc+LRSfiuPx6EpJY1pv+eR+a4eutE1LAhFfF4NFfV88wukobMkX5Tpt1o3
	mu+o1JzznkBbjWawYpVZduoC27geH2T0v3u6Wpu5HPACl7j1ha9gALjpA2chfZSbs9+28BYzAB0
	OhgW3ZPOSDZuq6MoAUFnPWhFpXIt73Y6oEi/Obpi2CNkq8wOpfWAxOwj8PW27iht6ERRoJRt9b3
	5qMdl/fZkbv77OHfp1ZC57uqgHa4mJg//xwUR+GIZ/QbniyOhxaysw==
X-Received: by 2002:a05:622a:4816:b0:4b5:146b:4f23 with SMTP id d75a77b69052e-4b5f8593458mr120757141cf.72.1757420427351;
        Tue, 09 Sep 2025 05:20:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyE4o5g2tzXIgE/waSqSN++D8rmhx3Yy+KxD2D6Mc7aqdCmqk4G3HEZ9A5YJcSuuGHZBatKg==
X-Received: by 2002:a05:622a:4816:b0:4b5:146b:4f23 with SMTP id d75a77b69052e-4b5f8593458mr120756711cf.72.1757420426575;
        Tue, 09 Sep 2025 05:20:26 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:26 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 09/13] ASoC: codecs: wcd-common: move component ops to common
Date: Tue,  9 Sep 2025 13:19:50 +0100
Message-ID: <20250909121954.225833-10-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX37lCkN550wXq
 gyYSplmN8DMFMllQvOVI6i214NXt/QCXRl/lAouN8ejLfMixRZazzlXli8uAJgOlALdnT4HoFpv
 SOD6vi2M9/aGNk0zdCoOxXp8nJNkT0LylzGN8ED+NWbdff1mgTtq2sZJkQe7EQ8UzjdUMBnqnAr
 LIeXoj1m7Z38iK7ykc7KxZRqA1VWTd/CDUB9SmcyXslSJg/6Yca1iBrTYEvmIKuhZg/nZJojiiB
 vlcReXXn/tOgOFkW7/RjcJghXifxYfJ90iSqK8lTVM0OK14z6lSou+3XL2sBTsWZnDc6vp6GX2k
 GMtThnfMyc5dg6oqpaTB7kKfZaq2b4zdiRfYoV+ic6iloN63xtjgMQz6SaRsF5QoYrEE0AqFvXU
 IE2tSQ+f
X-Proofpoint-ORIG-GUID: AAUAY0wqS-9iJnZklYY5aHW8TPVjW5HH
X-Proofpoint-GUID: AAUAY0wqS-9iJnZklYY5aHW8TPVjW5HH
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c01b8c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eQjB__F64b99YC4tFhYA:9
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

component_ops for wcd97x, wcd938x, wcd939x soundwire codecs are exactly
identlical, move them to common driver to remove this duplicate code.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 sound/soc/codecs/wcd-common.c  | 27 +++++++++++++++++++++++++++
 sound/soc/codecs/wcd-common.h  |  1 +
 sound/soc/codecs/wcd937x-sdw.c | 29 ++---------------------------
 sound/soc/codecs/wcd938x-sdw.c | 20 ++------------------
 sound/soc/codecs/wcd939x-sdw.c | 29 ++---------------------------
 5 files changed, 34 insertions(+), 72 deletions(-)

diff --git a/sound/soc/codecs/wcd-common.c b/sound/soc/codecs/wcd-common.c
index 8f3c0806cdc9..7a48cc5064cc 100644
--- a/sound/soc/codecs/wcd-common.c
+++ b/sound/soc/codecs/wcd-common.c
@@ -7,6 +7,8 @@
 #include <linux/device.h>
 #include <linux/of.h>
 #include <linux/printk.h>
+#include <linux/component.h>
+#include <linux/pm_runtime.h>
 
 #include "wcd-common.h"
 
@@ -66,5 +68,30 @@ int wcd_dt_parse_micbias_info(struct wcd_common *common)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(wcd_dt_parse_micbias_info);
+
+static int wcd_sdw_component_bind(struct device *dev, struct device *master, void *data)
+{
+	pm_runtime_set_autosuspend_delay(dev, 3000);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
+	return 0;
+}
+
+static void wcd_sdw_component_unbind(struct device *dev, struct device *master, void *data)
+{
+	pm_runtime_disable(dev);
+	pm_runtime_set_suspended(dev);
+	pm_runtime_dont_use_autosuspend(dev);
+}
+
+const struct component_ops wcd_sdw_component_ops = {
+	.bind = wcd_sdw_component_bind,
+	.unbind = wcd_sdw_component_unbind,
+};
+EXPORT_SYMBOL_GPL(wcd_sdw_component_ops);
+
 MODULE_DESCRIPTION("Common Qualcomm WCD Codec helpers driver");
 MODULE_LICENSE("GPL");
diff --git a/sound/soc/codecs/wcd-common.h b/sound/soc/codecs/wcd-common.h
index d94e8879a1d7..0d4e9f8e39f2 100644
--- a/sound/soc/codecs/wcd-common.h
+++ b/sound/soc/codecs/wcd-common.h
@@ -34,6 +34,7 @@ struct wcd_common {
 	u32 micb_vout[WCD_MAX_MICBIAS];
 };
 
+extern const struct component_ops wcd_sdw_component_ops;
 int wcd_get_micb_vout_ctl_val(struct device *dev, u32 micb_mv);
 int wcd_dt_parse_micbias_info(struct wcd_common *common);
 
diff --git a/sound/soc/codecs/wcd937x-sdw.c b/sound/soc/codecs/wcd937x-sdw.c
index 8f2819163527..59c353cafd31 100644
--- a/sound/soc/codecs/wcd937x-sdw.c
+++ b/sound/soc/codecs/wcd937x-sdw.c
@@ -983,31 +983,6 @@ static const struct sdw_slave_ops wcd9370_slave_ops = {
 	.interrupt_callback = wcd9370_interrupt_callback,
 };
 
-static int wcd937x_sdw_component_bind(struct device *dev,
-				      struct device *master, void *data)
-{
-	pm_runtime_set_autosuspend_delay(dev, 3000);
-	pm_runtime_use_autosuspend(dev);
-	pm_runtime_mark_last_busy(dev);
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-
-	return 0;
-}
-
-static void wcd937x_sdw_component_unbind(struct device *dev,
-					 struct device *master, void *data)
-{
-	pm_runtime_disable(dev);
-	pm_runtime_set_suspended(dev);
-	pm_runtime_dont_use_autosuspend(dev);
-}
-
-static const struct component_ops wcd937x_sdw_component_ops = {
-	.bind = wcd937x_sdw_component_bind,
-	.unbind = wcd937x_sdw_component_unbind,
-};
-
 static int wcd9370_probe(struct sdw_slave *pdev,
 			 const struct sdw_device_id *id)
 {
@@ -1093,7 +1068,7 @@ static int wcd9370_probe(struct sdw_slave *pdev,
 	}
 
 
-	ret = component_add(dev, &wcd937x_sdw_component_ops);
+	ret = component_add(dev, &wcd_sdw_component_ops);
 	if (ret)
 		return ret;
 
@@ -1107,7 +1082,7 @@ static int wcd9370_remove(struct sdw_slave *pdev)
 {
 	struct device *dev = &pdev->dev;
 
-	component_del(dev, &wcd937x_sdw_component_ops);
+	component_del(dev, &wcd_sdw_component_ops);
 
 	return 0;
 }
diff --git a/sound/soc/codecs/wcd938x-sdw.c b/sound/soc/codecs/wcd938x-sdw.c
index 1dc13b6fabfa..92714aef09d5 100644
--- a/sound/soc/codecs/wcd938x-sdw.c
+++ b/sound/soc/codecs/wcd938x-sdw.c
@@ -1182,22 +1182,6 @@ static const struct sdw_slave_ops wcd9380_slave_ops = {
 	.bus_config = wcd9380_bus_config,
 };
 
-static int wcd938x_sdw_component_bind(struct device *dev,
-				      struct device *master, void *data)
-{
-	return 0;
-}
-
-static void wcd938x_sdw_component_unbind(struct device *dev,
-					 struct device *master, void *data)
-{
-}
-
-static const struct component_ops wcd938x_sdw_component_ops = {
-	.bind   = wcd938x_sdw_component_bind,
-	.unbind = wcd938x_sdw_component_unbind,
-};
-
 static int wcd9380_probe(struct sdw_slave *pdev,
 			 const struct sdw_device_id *id)
 {
@@ -1262,7 +1246,7 @@ static int wcd9380_probe(struct sdw_slave *pdev,
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
 
-	ret = component_add(dev, &wcd938x_sdw_component_ops);
+	ret = component_add(dev, &wcd_sdw_component_ops);
 	if (ret)
 		goto err_disable_rpm;
 
@@ -1280,7 +1264,7 @@ static int wcd9380_remove(struct sdw_slave *pdev)
 {
 	struct device *dev = &pdev->dev;
 
-	component_del(dev, &wcd938x_sdw_component_ops);
+	component_del(dev, &wcd_sdw_component_ops);
 
 	pm_runtime_disable(dev);
 	pm_runtime_set_suspended(dev);
diff --git a/sound/soc/codecs/wcd939x-sdw.c b/sound/soc/codecs/wcd939x-sdw.c
index 97a829e3ce4f..6aecad2a28aa 100644
--- a/sound/soc/codecs/wcd939x-sdw.c
+++ b/sound/soc/codecs/wcd939x-sdw.c
@@ -1378,31 +1378,6 @@ static const struct sdw_slave_ops wcd9390_slave_ops = {
 	.bus_config = wcd9390_bus_config,
 };
 
-static int wcd939x_sdw_component_bind(struct device *dev, struct device *master,
-				      void *data)
-{
-	pm_runtime_set_autosuspend_delay(dev, 3000);
-	pm_runtime_use_autosuspend(dev);
-	pm_runtime_mark_last_busy(dev);
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-
-	return 0;
-}
-
-static void wcd939x_sdw_component_unbind(struct device *dev,
-					 struct device *master, void *data)
-{
-	pm_runtime_disable(dev);
-	pm_runtime_set_suspended(dev);
-	pm_runtime_dont_use_autosuspend(dev);
-}
-
-static const struct component_ops wcd939x_sdw_component_ops = {
-	.bind = wcd939x_sdw_component_bind,
-	.unbind = wcd939x_sdw_component_unbind,
-};
-
 static int wcd9390_probe(struct sdw_slave *pdev, const struct sdw_device_id *id)
 {
 	struct device *dev = &pdev->dev;
@@ -1466,7 +1441,7 @@ static int wcd9390_probe(struct sdw_slave *pdev, const struct sdw_device_id *id)
 		regcache_cache_only(wcd->regmap, true);
 	}
 
-	ret = component_add(dev, &wcd939x_sdw_component_ops);
+	ret = component_add(dev, &wcd_sdw_component_ops);
 	if (ret)
 		return ret;
 
@@ -1481,7 +1456,7 @@ static int wcd9390_remove(struct sdw_slave *pdev)
 	struct device *dev = &pdev->dev;
 	struct wcd939x_sdw_priv *wcd = dev_get_drvdata(dev);
 
-	component_del(dev, &wcd939x_sdw_component_ops);
+	component_del(dev, &wcd_sdw_component_ops);
 
 	if (wcd->regmap)
 		regmap_exit(wcd->regmap);
-- 
2.50.0


