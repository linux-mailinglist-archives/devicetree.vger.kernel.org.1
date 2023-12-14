Return-Path: <devicetree+bounces-25378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BDF813118
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:16:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D14A8B215FA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C8A5578A;
	Thu, 14 Dec 2023 13:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="su7N3UpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07882123
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:48 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2cc2683fdaaso6058581fa.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702559746; x=1703164546; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaGgexboX4k3Qc2D4NNTwm8nzl2s41MzL85I6McymUo=;
        b=su7N3UpMp+efYxbAVa1yVW//zVuEj1rkhXGscfwGW83UN4eblt9NBFdt3+rG5ak0mJ
         vIAXrj/zrA0R2x2R1fTLF+RlggXr+HR3v7xx0ryHMNmeFDQ4UGnHNadmbWqz4hRD2ds8
         272GDCEny7oduCYv7Lhrou5ifQto5ev5TZPsdv2ophdxDbJqIabkGo2RhQiHN6ueiaOY
         1HiMUQ9zBIvMNWV6xq/5CNJ8371N5VZ869bCCA6ZSiCRwuGUN2zkT4JQWtAaMAs8x90g
         3ALC0aqM08pRzv7mjIZtzjGneLZvleIdiLRpwlKw10RenRf9okVRPocxLqlOK/0lbwIc
         OPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559746; x=1703164546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kaGgexboX4k3Qc2D4NNTwm8nzl2s41MzL85I6McymUo=;
        b=Mcw/hTRs8xBGlaygxYGX9wzpxib4A6bMxNg7RO6uKHSOFvCjNjLWQD0rK6BMmhg58P
         mOdQgxdqkzvXg+vfw6g27jvjHb2Yoii6rgXbBM+Mo9T+IWvfbRnMCRv+IOmDpUXAr5v/
         kJ/e3YygOXiPUywKiNW6FdzbA6kH3QhWrt7gk/Yzp4VaNxF0/FT55zrMHAG503apvghi
         /N7F/+5239C0tQnG9znZmprLhauYySfdv4fsHpwySd4YfDqk4HYaaEkq3r9gFqqv/W+r
         TKv4F+5rs+3Xb+5SxtgKL4OXk0M3TC/F9cphzPDjqoGBsevSULQoUt1QfOty1TvMYeV8
         +EVg==
X-Gm-Message-State: AOJu0YyqxC8zHENCHNEg/TbisQyit6IrAxw3sXLYovDcTBEaKORzcT76
	BgWNrjFB2nARfUETkoxjFmnp5w==
X-Google-Smtp-Source: AGHT+IGYhdO0R6QYJVwI+mlxYKJRdlAEgaRgJbuekhSlydk1uvqpHt6BYffRJ/9o8BrX6Te5MxGJTQ==
X-Received: by 2002:a2e:6e13:0:b0:2ca:207:d214 with SMTP id j19-20020a2e6e13000000b002ca0207d214mr5679117ljc.12.1702559746426;
        Thu, 14 Dec 2023 05:15:46 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id p23-20020a2e93d7000000b002ca02ceae84sm2080478ljh.83.2023.12.14.05.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 05:15:45 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Dec 2023 14:15:44 +0100
Subject: [PATCH 3/4] ASoC: simple-card-utils: Drop GPIO include
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-gpio-descriptors-sound-misc-v1-3-e3004176bd8b@linaro.org>
References: <20231214-gpio-descriptors-sound-misc-v1-0-e3004176bd8b@linaro.org>
In-Reply-To: <20231214-gpio-descriptors-sound-misc-v1-0-e3004176bd8b@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-sound@vger.kernel.org, alsa-devel@alsa-project.org, 
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

The generic card utilities are including the legacy GPIO header
<linux/gpio.h> but not using any symbols from it. Drop the
include from all files.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/generic/audio-graph-card.c  | 1 -
 sound/soc/generic/audio-graph-card2.c | 1 -
 sound/soc/generic/simple-card-utils.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/sound/soc/generic/audio-graph-card.c b/sound/soc/generic/audio-graph-card.c
index 76a9f1e8cdd5..83e3ba773fbd 100644
--- a/sound/soc/generic/audio-graph-card.c
+++ b/sound/soc/generic/audio-graph-card.c
@@ -9,7 +9,6 @@
 
 #include <linux/clk.h>
 #include <linux/device.h>
-#include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 7146611df730..b0a5a9357c76 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -8,7 +8,6 @@
 // based on ${LINUX}/sound/soc/generic/audio-graph-card.c
 #include <linux/clk.h>
 #include <linux/device.h>
-#include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/sound/soc/generic/simple-card-utils.c b/sound/soc/generic/simple-card-utils.c
index cfa70a56ff0f..2f2280342e2a 100644
--- a/sound/soc/generic/simple-card-utils.c
+++ b/sound/soc/generic/simple-card-utils.c
@@ -5,7 +5,6 @@
 // Copyright (c) 2016 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
 #include <linux/clk.h>
-#include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>

-- 
2.34.1


