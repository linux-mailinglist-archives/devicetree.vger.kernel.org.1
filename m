Return-Path: <devicetree+bounces-3630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C751D7AF8AE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 05:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6F54028103C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 03:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA95746A5;
	Wed, 27 Sep 2023 03:36:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E141851
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:36:17 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C55F4494
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:36:15 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-690f7d73a3aso9146540b3a.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1695785774; x=1696390574; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8iHvx1dsePHhcovY1cm1S5dLZsg/5oNsoEJEmRXpTU=;
        b=wxenVGeZB84E/L///SK9MvPtFhps5wQIQz2H6VUrXK48OY+jtiAhcuvjKtAo1AP0X+
         t8xBlgRxSApmn9aV7eHzDC0kQ7pjebljZ0Tixim91jpBaQ48hyjJ3MvIQ5KBRFrQt04y
         +Ky09zmRGG2V4TBAw8cXeLQXbwX969eoEESNFrTWisNcXFVVDKoPDxXzjHFS8ujrZEgL
         N8NyHD/q9mHv9J7STuulP2DRCkQ3Xxb0JKlZ2SxQJxN+Rm4EN67O2AkxywhzVBDA86E6
         cMvh3kYU88hKhRkgsnS0R6qO7EsBYNWis47WUU7U3cKPe4Ryza5ZcRd2rhqArBbadEFC
         qrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695785774; x=1696390574;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l8iHvx1dsePHhcovY1cm1S5dLZsg/5oNsoEJEmRXpTU=;
        b=P3V3j+Vsvbz+CZ+irdH+F4CDckbihaNhbrz92THLlbwdFSdMnT+mT5AYaNIFBvOJQH
         l1n+EqT4WevmVTzA5H3o0E5koP0KuRBeZQBSsmnkPU2umfaO/CuGpbuQ73IEKiQMUsbJ
         4n4UnPLjLCdPrY8W0/OnHYRGCuX68jeedG/L5X0LEGWiBP0fCXy7pX3hS4U5IUsPvqaL
         jTdtpp+CqIvVYs+R4H7VeyLpA+/tg4FrZAtTQYg7TsPjFD4jDeWEX3Piw8JmJj78qarK
         W5m1y++8YuGhOi1JFCJqgOPYjMFS/jX3vWrGTwtSGxYkQT6EEhzqQNbPYBTDK2ZT0GMP
         WtNA==
X-Gm-Message-State: AOJu0YyutqMRLWHwHkJKhdsVd0C36S6oDJVtHDIb84r8EfYX7zWlUBaT
	5ubgON09530ircfwToSJYRkFRA==
X-Google-Smtp-Source: AGHT+IFg9MWz/BGS1JWCEp53YleO3c0zitqJhgHShflpegjZA+hBbgouhBmH37EO3HQwfo42LiHEhA==
X-Received: by 2002:a05:6a00:2493:b0:690:1857:3349 with SMTP id c19-20020a056a00249300b0069018573349mr1043900pfv.25.1695785774386;
        Tue, 26 Sep 2023 20:36:14 -0700 (PDT)
Received: from ubuntu.huaqin.com ([101.78.151.205])
        by smtp.gmail.com with ESMTPSA id i14-20020aa787ce000000b006870ed427b2sm11067570pfo.94.2023.09.26.20.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 20:36:14 -0700 (PDT)
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
Subject: [v3 0/2] ASoC: mediatek: mt8188-mt6359: add rt5682s support
Date: Wed, 27 Sep 2023 11:36:06 +0800
Message-Id: <20230927033608.16920-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

To use RT5682S as the codec and MAX98390 as the amp, add a new
sound card named mt8188_rt5682s.

Changes in v3:
- PATCH 2/2: modify mt8186_rt5682s_i2s_hw_params to mt8188_rt5682s_i2s_hw_params
- Link to v2: https://lore.kernel.org/all/20230926040901.20338-3-xiazhengqiao@huaqin.corp-partner.google.com/ 
              https://lore.kernel.org/all/20230926040901.20338-2-xiazhengqiao@huaqin.corp-partner.google.com/
   
Changes in v2:
- PATCH 1/2: Modify mt8188_rt5682 to mt8188_rt5682s
- PATCH 2/2: Modify all string "rt5682" to "rt5682s" and merge code 
             in mt8188_fixup_controls
- Link to v1: https://lore.kernel.org/all/20230925083847.1496-3-xiazhengqiao@huaqin.corp-partner.google.com/
              https://lore.kernel.org/all/20230925083847.1496-2-xiazhengqiao@huaqin.corp-partner.google.com/

xiazhengqiao (2):
  ASoC: dt-bindings: mediatek,mt8188-mt6359: add RT5682S support
  ASoC: mediatek: mt8188-mt6359: add rt5682s support

 .../sound/mediatek,mt8188-mt6359.yaml         |   1 +
 sound/soc/mediatek/Kconfig                    |   1 +
 sound/soc/mediatek/mt8188/mt8188-mt6359.c     | 141 +++++++++++++++++-
 3 files changed, 141 insertions(+), 2 deletions(-)

-- 
2.17.1


