Return-Path: <devicetree+bounces-3048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F997AD382
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BACE8281707
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A3E11CAF;
	Mon, 25 Sep 2023 08:39:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E03F15AA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:38:59 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22AB5BC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:38:58 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-578d0d94986so4272014a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1695631137; x=1696235937; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDlQRlGUPTfJlUUMPRtJLma/aq2eNwYNR02CUUOI7A8=;
        b=RkG6BfMWZA3CMfBYdSQ8KWwL0emK9msOS+gdin5JXAoacCHLswsVGb3Kc4J3GfJI6X
         KRoLL7xfvxAQV72uKaxg21WEDhfZtBAfgiCmlvzYsZpk0oMK1ER4Wh21rn2cwFKBSjmn
         CG/+aT9F5HCkDNVgoJdKH1z+u3FDxiQNVWGU4lqTZL8ibVgnQU+mKXCFm7NVe7qYZwme
         DNx6bCutlGFX41xl/aGeRXqohSJ/ZCkZaLrn8rkvjXzqhiBSDWoxCMeMs7E8WJt5mZwC
         6EBMxFtmDjdr9nWPF0/DeNfaXMFNiyo/WTSFaeHs3JAaejJX/UKnZYOlAv6phr8bYsPy
         g1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695631137; x=1696235937;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDlQRlGUPTfJlUUMPRtJLma/aq2eNwYNR02CUUOI7A8=;
        b=JyxWbcj5U78kYgGjBdisUbvlbm4JLUTj7iw0/b56F95Xek1Rwmhdr8a/XS9JxMI4QO
         8/2zUPBtIavuxYiAvwhdu7heeEtvOqjaDN4J6zRntTFZscEWGsFHvWlWhaOKDDWTK7P5
         Juot36ZkQDkb1H21hNfeCQFOBZfH0/5KeSWQlGKiE/G9bK0stephHuR5zszh0T5ISkhd
         A+k2GDUfw9wxxYP3tcFMiCqUHr/OASRQ7Vs4eB6u9mOgpAaRecjS6Ods3rncb9lsw3AO
         ckHFntvzXwcKP2m1vkl4MZ3F8re15m6jYgW+6wGQk9zqCXvwSxxu61eG2vhG0R2GXNrE
         f7nA==
X-Gm-Message-State: AOJu0YweCpAVLZeF/n1KMhsfSiMNth9FioZ+1cdLgGyzCvGVOMkpK8AR
	3U1mre+3MtGIyEMmO5A+esOiYw==
X-Google-Smtp-Source: AGHT+IGRzWUFKvAXUdW7P/gM1pTcDYhfc2VIx4gXPNUiXkY34HMjyU1m/YIX7/WbQhw3zmUkXjMlHQ==
X-Received: by 2002:a17:90a:2a4a:b0:26d:2bac:a0bb with SMTP id d10-20020a17090a2a4a00b0026d2baca0bbmr5300954pjg.6.1695631137400;
        Mon, 25 Sep 2023 01:38:57 -0700 (PDT)
Received: from ubuntu.huaqin.com ([101.78.151.205])
        by smtp.gmail.com with ESMTPSA id 14-20020a17090a004e00b0025dc5749b4csm10141132pjb.21.2023.09.25.01.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:38:57 -0700 (PDT)
From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To: lgirdwood@gmail.com,
	perex@perex.cz,
	trevor.wu@mediatek.com,
	broonie@kernel.org
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [v1 0/2] ASoC: mediatek: mt8188-mt6359: add rt5682s support
Date: Mon, 25 Sep 2023 16:38:45 +0800
Message-Id: <20230925083847.1496-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
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

To use RT5682S as the codec and MAX98390 as the amp, add a new
sound card named mt8188_rt5682.

xiazhengqiao (2):
  ASoC: dt-bindings: mediatek,mt8188-mt6359: add RT5682S support
  ASoC: mediatek: mt8188-mt6359: add rt5682s support

 .../sound/mediatek,mt8188-mt6359.yaml         |   1 +
 sound/soc/mediatek/Kconfig                    |   1 +
 sound/soc/mediatek/mt8188/mt8188-mt6359.c     | 154 +++++++++++++++++-
 3 files changed, 155 insertions(+), 1 deletion(-)

-- 
2.17.1


