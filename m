Return-Path: <devicetree+bounces-25379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F717813116
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 092DB280FC0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A49155792;
	Thu, 14 Dec 2023 13:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TL8ajCZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D14A126
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:47 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cb21afa6c1so100088501fa.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702559745; x=1703164545; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zl/2P+gDfIp0TQYPTG0vKiGyNkTIQEmbjw6ExQX0Pf0=;
        b=TL8ajCZl/2yefj7BwasT5VYrfRFUzgKpwg5OTH4JBluvoKED4AGmviQdoBslouEie8
         tk1Iz3U7aG4QCHTIuBU4ORNnJyk0kZs0QB72LuDolmWF6d07hbJhrq0qUGB460X93bWc
         lRBlpkKbpomhkMhMTMzXvRiQjURgNSw6MLL582wkFnpRNgZIywM2hmLjzUyS9iHLkLUw
         8Bsv277sXbLLNHJKsFM2cHw5SUCFY97qfCNth2DRvDAhl1VYeKJAyNE9HesNabOZgB/m
         QX1o110arehY/3HMUp2izvt0sjqsrGW163gFdMdeSoLIC4JsZ4wJbHcjcrrVmmkmiyXW
         Wo9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559745; x=1703164545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zl/2P+gDfIp0TQYPTG0vKiGyNkTIQEmbjw6ExQX0Pf0=;
        b=m/enB1fm+tsEG0oWpW9C8fVlTk9paEgI15+oCRl7R382j76p7QYsuaxSvqDp1DBaka
         fhFmirMGDu9N0pFmcKmqFd4vISTHdOe3ug11wQ2lHPBwWvdy4T+4YZ+mdMEwUZ/sGuPt
         zB7f0cfr0t7hijOGzsacnAGp8kC8koOFT2Qw9FXsW1AFL7909ViHNPAaK041Ptb3vZqZ
         rLL1dpXa31aU0UkKeE1eha/0MeKqoa3+t+rqQUTzhatc2zM4xfQo8MgLJFrdXVXMmBlD
         0u+92vwqdxwiJiwT3RS9Cfb2pI3sHG+r3gx6lKPQSMg1QwPgc2MKSWYe3g55aKo01C2l
         b4kw==
X-Gm-Message-State: AOJu0YwBHvNs4gOAezqUHhtVpIyGyRQLxg7hr+pMgS0if3B1LtGLdkZR
	vaXERvSMipUqBiUc2u+6sQUezg==
X-Google-Smtp-Source: AGHT+IGLIizoYzjhcP0yvk0sz4u3yPAe8upgnxL+cRqGZY/tUMOhZBAjkVQRfIg1sZ28AJa+AoI7CQ==
X-Received: by 2002:a05:651c:110:b0:2ca:f17:dd69 with SMTP id a16-20020a05651c011000b002ca0f17dd69mr4501498ljb.43.1702559745303;
        Thu, 14 Dec 2023 05:15:45 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id p23-20020a2e93d7000000b002ca02ceae84sm2080478ljh.83.2023.12.14.05.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 05:15:44 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Dec 2023 14:15:43 +0100
Subject: [PATCH 2/4] ASoC: qcom: sc7180: Drop GPIO include
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-gpio-descriptors-sound-misc-v1-2-e3004176bd8b@linaro.org>
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

This driver is including the legacy GPIO header <linux/gpio.h>
but not using any symbols from it. Drop the include.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/qcom/sc7180.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/qcom/sc7180.c b/sound/soc/qcom/sc7180.c
index b0320a74d508..4ab34a8842ce 100644
--- a/sound/soc/qcom/sc7180.c
+++ b/sound/soc/qcom/sc7180.c
@@ -6,7 +6,6 @@
 
 #include <dt-bindings/sound/sc7180-lpass.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
-#include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>

-- 
2.34.1


