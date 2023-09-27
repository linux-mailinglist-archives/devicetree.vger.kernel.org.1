Return-Path: <devicetree+bounces-3631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D52777AF8AF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 05:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 84E9E281025
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 03:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E022748E;
	Wed, 27 Sep 2023 03:36:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6B71851
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:36:19 +0000 (UTC)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5C74495
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:36:17 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3add37de892so5087474b6e.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1695785777; x=1696390577; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AnkYs5/BG/9GOQBaCWwWyOfl1fNQBQrw4AiO+6MYmI8=;
        b=EHGe7TpKJ3lW8dMexMaL7qy7766Riy6RNrWDNlW8MDr4DKa7qPmTOmLyW5/mKRVfCi
         HwIfU1F99VEACVGSV4vEGXgiwLQkcqLbQKpfeIYq32WQX5rYv3fHE0i4O7YxOJOCknJI
         evcZnD9fbAfme5CJdIoH9JRUskX/PJIOv3FD24TZW1D332jGuy4MdibTp4GGsTgsahH4
         4SkYw5H8OWR6m7zi/QIl6/OgISxIzJxxcJkksP92xzsgaiyd0Drrv289BqguOFXqlP+l
         MjKBIOk7SOSISA1qX8lfii+2tyBZKGmc/9faeSKPCOv9v12odnWKNeM6subHQ1hg9diK
         KXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695785777; x=1696390577;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AnkYs5/BG/9GOQBaCWwWyOfl1fNQBQrw4AiO+6MYmI8=;
        b=IJHHkD47qoKoiHGyW+7M3K4ojGN19gcPj5LxwcW+9MjksaEZsn+qG5vZiese6hhckD
         Jprb76hvTdhI0lL7Fqak+2/Gug3R2MC8HneWfh64E0p+d51q9y88ZS1/lYflGlf07VFm
         jsRktysCyOywe6MqpKaUrOJ1jxrwoH7GzMhq0ASIg5+IAtJxEg37//mUi2rgb7PvCVN0
         ilU17k6FOE9MIomnCBuQWnvx3W4dyCxF+dekLVIQUZjRYNxzx6i0cBGYYH6mGH70Ojth
         r/iyc9RBW4PM1o7+nTiavInhHisBx6wwppfsmJO3Ps9QuCR4rCTNEMi/T3TYNl1+zKHu
         1ijA==
X-Gm-Message-State: AOJu0YyzhmkgSWfQfrVPqb/J8OaumeK0B7B9GhuDMmjTSiBZBqy6a/on
	yuSvTC2zpx1jifa9k5psCl6TnKfnG8LPZlUsxM4=
X-Google-Smtp-Source: AGHT+IF5BZGUJqHoSLfj2DRjoGpLaQUe5TymCxTzLvix3ZvUJ19+rOA82XgS0T0SdSB3e+in1QNEEQ==
X-Received: by 2002:a05:6808:141:b0:3a7:390c:4c43 with SMTP id h1-20020a056808014100b003a7390c4c43mr859936oie.50.1695785777090;
        Tue, 26 Sep 2023 20:36:17 -0700 (PDT)
Received: from ubuntu.huaqin.com ([101.78.151.205])
        by smtp.gmail.com with ESMTPSA id i14-20020aa787ce000000b006870ed427b2sm11067570pfo.94.2023.09.26.20.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 20:36:16 -0700 (PDT)
From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To: broonie@kernel.org,
	robh+dt@kernel.org,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	patchwork-bot@kernel.org
Cc: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [v3 1/2] ASoC: dt-bindings: mediatek,mt8188-mt6359: add RT5682S support
Date: Wed, 27 Sep 2023 11:36:07 +0800
Message-Id: <20230927033608.16920-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230927033608.16920-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20230927033608.16920-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string "mediatek,mt8188-rt5682s" to support new board
with rt5682s codec.

Signed-off-by: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index 43b3b67bdf3b..4c8c95057ef7 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - mediatek,mt8188-mt6359-evb
       - mediatek,mt8188-nau8825
+      - mediatek,mt8188-rt5682s
 
   audio-routing:
     description:
-- 
2.17.1


