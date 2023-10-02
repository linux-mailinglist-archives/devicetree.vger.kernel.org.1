Return-Path: <devicetree+bounces-5113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1297B5467
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0A393282E69
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F1419BAF;
	Mon,  2 Oct 2023 14:00:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1C719BA7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:00:19 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ACEFC6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:00:18 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-504b84d59cbso7364156e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 07:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696255216; x=1696860016; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V2/riLchQZtPTs/BC596zGkjlTIrNRPztVzIEa24L10=;
        b=i4sYvwRvLnl2fno42q3AI9/S19leUfadmvKoHdGuwzX6j34KYZXQqXXbn627a26scC
         bv6hILU4ebmYE6vrRDC9+UxIkcSOZqUE60NHGRBNUSXQhJIUcYRafUa5+rg8MT6kbPsW
         UiAbo4dEqCgnaAteu6F2H+fWWCHABXV+9M5EFLUHDqmwYcOhB6kY/8UfnqvLXb3+BxB4
         c+uerfuYPQRAqZBr40qdw6F1hJBdBG3zKr+x/0cctJiEzo7mkI5OCXnYWOn2YcQQX2j+
         AT9TGk3rNNMIQihCH+zJu7E0lAEqhkfUcTrchpcsP+q5k9ZIHDk94l7pj0NbUy9xKI06
         yuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255216; x=1696860016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V2/riLchQZtPTs/BC596zGkjlTIrNRPztVzIEa24L10=;
        b=EyMKYx4IlOMUc8sfz+vY9nrmjGnRYAIeWJXeTuBviWbXiY4JZyPvf9y7sdaGoO22px
         RA0w2U6EfXchN5JDSKwwggyQp3oIUtXXK0+gNzeIhVyUz4qUIq1Hr5cyUNGGcyMzDpCA
         hBAXhZa8Ca9em9AX74N8+rpo4nUVrsn6sNd/fl+7IqMBOdkAuia3UTCFuhVGy6QJR/p6
         aRyTDfO6Gc4Mwt2+LKuHazCOGsZBG/4yr6OhWf10qDW4gzl6dewC3Qdjl8r/uc/ni7MB
         INvKcZKTm/3S3T8fQ1TRSrXJv4kqz32FyXcS43H72NlYXn0vrE2SSo1oFAUY5kG1ok7S
         YJbA==
X-Gm-Message-State: AOJu0YxVw2UiYeJqBVjYy6zoEoMAHXkcqtp9ZDrG3QMaePCbJcf+VziP
	tOPnquKu9iIS/0jquZDU/gqygA==
X-Google-Smtp-Source: AGHT+IFYahe9QM9GSXykZIjClH00JSYu2bdXsSeQxdK1Yb2R7fBZkn9KvfTGct/URjQfs9lMQOMdJQ==
X-Received: by 2002:a05:6512:617:b0:503:19d9:4b6f with SMTP id b23-20020a056512061700b0050319d94b6fmr8505095lfe.0.1696255216212;
        Mon, 02 Oct 2023 07:00:16 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q13-20020a056402518d00b005346925a474sm9350377edd.43.2023.10.02.07.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:00:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 16:00:12 +0200
Subject: [PATCH v2 2/2] ASoC: codecs: aw88261: Remove non-existing reset
 gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-aw88261-reset-v2-2-837cb1e7b95c@fairphone.com>
References: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
In-Reply-To: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
To: Weidong Wang <wangweidong.a@awinic.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

According to the AW88261 datasheet (V1.1) and device schematics I have
access to, there is no reset gpio present on the AW88261. Remove it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/codecs/aw88261.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index 45eaf931a69c..e7683f70c2ef 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -10,7 +10,6 @@
 
 #include <linux/i2c.h>
 #include <linux/firmware.h>
-#include <linux/of_gpio.h>
 #include <linux/regmap.h>
 #include <sound/soc.h>
 #include "aw88261.h"
@@ -1175,14 +1174,6 @@ static const struct snd_soc_component_driver soc_codec_dev_aw88261 = {
 	.remove = aw88261_codec_remove,
 };
 
-static void aw88261_hw_reset(struct aw88261 *aw88261)
-{
-	gpiod_set_value_cansleep(aw88261->reset_gpio, 0);
-	usleep_range(AW88261_1000_US, AW88261_1000_US + 10);
-	gpiod_set_value_cansleep(aw88261->reset_gpio, 1);
-	usleep_range(AW88261_1000_US, AW88261_1000_US + 10);
-}
-
 static void aw88261_parse_channel_dt(struct aw88261 *aw88261)
 {
 	struct aw_device *aw_dev = aw88261->aw_pa;
@@ -1254,12 +1245,6 @@ static int aw88261_i2c_probe(struct i2c_client *i2c)
 
 	i2c_set_clientdata(i2c, aw88261);
 
-	aw88261->reset_gpio = devm_gpiod_get_optional(&i2c->dev, "reset", GPIOD_OUT_LOW);
-	if (IS_ERR(aw88261->reset_gpio))
-		dev_info(&i2c->dev, "reset gpio not defined\n");
-	else
-		aw88261_hw_reset(aw88261);
-
 	aw88261->regmap = devm_regmap_init_i2c(i2c, &aw88261_remap_config);
 	if (IS_ERR(aw88261->regmap)) {
 		ret = PTR_ERR(aw88261->regmap);

-- 
2.42.0


