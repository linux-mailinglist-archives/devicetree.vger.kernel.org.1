Return-Path: <devicetree+bounces-6050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD27B9C47
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 11:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A8E72281B9C
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 09:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78321107BA;
	Thu,  5 Oct 2023 09:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PcjYl6fo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EAB7F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 09:43:22 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29C121D01
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:43:19 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3247d69ed2cso788629f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 02:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696498998; x=1697103798; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JwKnCE50Or3wTNbb8nnaCjSfC0KHldEcWfUSQ5mNeMI=;
        b=PcjYl6fosxe3bu124GfB1jVOexCe2p5G1dYKIInFv7zmOBTZ2RLTD5bxDytT9F/s/q
         7Gl+lrx7WsZ3db5b6q5954TN4MV20dJTtaBzqHRB3NATgnVYCOD7xVHwUGBlWltcp3z2
         UNx1IpttiSEJHxn5N+To8PKATussPj/ym20yoa4YRcTq7f/2fgZGWjsnq2Mx1zB33lXZ
         2VC70HbtLNJGXbIEI9H68tqWtY12yJ4o1pYDeBnHfp4Cp7HlqQbITxWl8XuBKNd8tlmo
         gKeroiZRz1EPGziaY+KTLSt1x7BEaIVy09vtxJmaGqzTyavt+SgHq+WRKlRjwLEuvSx0
         JdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696498998; x=1697103798;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwKnCE50Or3wTNbb8nnaCjSfC0KHldEcWfUSQ5mNeMI=;
        b=gJpMZcKSM1dwTppI4P72e8I9Q1WYcKukdK4ZSQE7qSaBTC4wgNqE96W3BhCow/FJgG
         BZ2mHk3MBWyHma2NFTbLjwSfDQnC5cYbWGl2s6flcGgJhtDh9eYXd4+vCG6/hlwntYDd
         otLh+DhfzaFdJtpiSCeRcy93Xrf5QKU4sTZdczDu3DdfSDNbNK0n8DTP/IGEZQBz6OHg
         kRETqEnxXgVTnge2JkLin9uokya0w9NITjRKWg9gSxojZ+Q7+InitKxzN6YTZIwXBugK
         7DDHk9qBdjTYh8xQVrX0qvVa3GJishFC8EFdfUyI5ecWCtgJlBdtgFzM+GS+Zp1ho1k6
         8rkw==
X-Gm-Message-State: AOJu0Yy6pEGd8ocBmx6toApWTUr3Dxd8t59XN6CpBbBYuGSYUxVKLaDA
	60BVw5afvrlmCAp54nrLpiQpGz1gQDtH9cbYoHd+9Q==
X-Google-Smtp-Source: AGHT+IEA8Pv/FN9E11LJAyjgn8EofUjuGcu3RKUVzw7ZzFbiuhbNcnB4JemmblVGztHfx0rlL56C5A==
X-Received: by 2002:a5d:630c:0:b0:31f:fa6a:936e with SMTP id i12-20020a5d630c000000b0031ffa6a936emr4440521wru.17.1696498998220;
        Thu, 05 Oct 2023 02:43:18 -0700 (PDT)
Received: from blmsp ([2001:4091:a246:8222:dbda:9cd9:39cc:f174])
        by smtp.gmail.com with ESMTPSA id d16-20020adff850000000b003232d122dbfsm1355989wrq.66.2023.10.05.02.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 02:43:17 -0700 (PDT)
Date: Thu, 5 Oct 2023 11:43:16 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Chun-Jie Chen <chun-jie.chen@mediatek.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v8 0/8] soc: mediatek: MT8365 power support
Message-ID: <20231005094316.nj5w6cmefvc36tbl@blmsp>
References: <20230918093751.1188668-1-msp@baylibre.com>
 <06f8a769-1845-ea87-dcc4-37dd5ad255ed@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <06f8a769-1845-ea87-dcc4-37dd5ad255ed@collabora.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Angelo,

On Thu, Oct 05, 2023 at 10:54:16AM +0200, AngeloGioacchino Del Regno wrote:
> Il 18/09/23 11:37, Markus Schneider-Pargmann ha scritto:
> > Hi,
> > 
> > no real changes in this update. Rebase to v6.6-rc2 and according change
> > of directory.
> 
> Since the driver changed to pmdomain/mediatek, can you please change the commit
> titles for the driver commits?

As far as I understand Ulf applied the series today and changed the
title as well:
https://lore.kernel.org/lkml/CAPDyKFrUbWBQgMm6wYwFfybiRQKhBpwH7wwcXaT+KrQJLevq3w@mail.gmail.com/

Best,
Markus

> 
> soc: mediatek: pm-domains: ===> pmdomain: mediatek: pm-domains:
> 
> or alternatively, I honestly would like it more like
> 
> pmdomain: mediatek: pd:
> 
> and (not relevant to this series)
> 
> pmdomain: mediatek: scpsys:
> 
> ...but before that, does anyone have any strong opinions against the prefix
> "pmdomain: mediatek: pd:", instead of the full "pm-domains"?
> 
> Thanks!
> Angelo
> 
> > 
> > Thanks for any feedback!
> > 
> > Best,
> > Markus
> > 
> > Based on v6.6-rc2
> > 
> > Changes in v8:
> > - Rebased to v6.6-rc2
> > - Moved changes from drivers/soc to drivers/pmdomain
> > 
> > Changes in v7:
> > - Rebased to v6.5-rc1
> > - Fixed a couple of small style issues pointed out by Angelo
> > 
> > Changes in v6:
> > - Change flags field to be u8 instead of u32
> > - Use macro concatenation to simplify BUS_PROT macros:
> >    BUS_PROT_WR(_hwip, ...) etc.
> > - Use the final bit values for scpsys_bus_prot_flags from the beginning
> >    of the series.
> > - Changed scpsys_domain_data->caps to be u16 to accommodate the new flag
> >    MTK_SCPD_STRICT_BUS_PROTECTION.
> > 
> > Changes in v5:
> > - Create defines for all registers and bits in mt8365 power domain patch
> > - Redesign scpsys_bus_prot_data to use flags to store reg_update,
> >    clr_ack as well as the difference between SMI and INFRACFG. The code
> >    uses the appropriate regmap depending on the flags.
> > - The WAY_EN patch now uses two flags, one for inverted operations
> >    'BUS_PROT_INVERTED' and one to use infracfg-nao for the status flags
> >    'BUS_PROT_STA_COMPONENT_INFRA_NAO'.
> > 
> > Changes in v4:
> > - Redesigned WAY_EN patch and split it up in smaller patches.
> > - Added two documentation patches.
> > - Added mediatek,infracfg-nao field to the binding.
> > 
> > Changes in v3:
> > - Mainly redesigned WAY_EN patch to be easier to understand
> > - Rebased onto v6.0-rc1
> > - Several other stuff that is described in the individual patches
> > 
> > Changes in v2:
> > - Updated error handling path for scpsys_power_on()
> > - Minor updates described in each patch
> > 
> > Previous versions:
> > v1 - https://lore.kernel.org/linux-mediatek/20220530204214.913251-1-fparent@baylibre.com/
> > v2 - https://lore.kernel.org/linux-mediatek/20220725081853.1636444-1-msp@baylibre.com/
> > v3 - https://lore.kernel.org/linux-mediatek/20220822144303.3438467-1-msp@baylibre.com/
> > v4 - https://lore.kernel.org/linux-arm-kernel/20230105170735.1637416-1-msp@baylibre.com/
> > v5 - https://lore.kernel.org/linux-arm-kernel/20230619085344.2885311-1-msp@baylibre.com/
> > v6 - https://lore.kernel.org/linux-arm-kernel/20230627131040.3418538-1-msp@baylibre.com/
> > v7 - https://lore.kernel.org/linux-arm-kernel/20230713150414.891893-1-msp@baylibre.com
> > 
> > Alexandre Bailon (2):
> >    soc: mediatek: Add support for WAY_EN operations
> >    soc: mediatek: Add support for MTK_SCPD_STRICT_BUS_PROTECTION cap
> > 
> > Fabien Parent (2):
> >    dt-bindings: power: Add MT8365 power domains
> >    soc: mediatek: pm-domains: Add support for MT8365
> > 
> > Markus Schneider-Pargmann (4):
> >    soc: mediatek: pm-domains: Move bools to a flags field
> >    soc: mediatek: pm-domains: Split bus_prot_mask
> >    soc: mediatek: pm-domains: Create bus protection operation functions
> >    soc: mediatek: pm-domains: Unify configuration for infracfg and smi
> > 
> >   .../power/mediatek,power-controller.yaml      |   6 +
> >   drivers/pmdomain/mediatek/mt6795-pm-domains.h |  16 +-
> >   drivers/pmdomain/mediatek/mt8167-pm-domains.h |  20 +-
> >   drivers/pmdomain/mediatek/mt8173-pm-domains.h |  16 +-
> >   drivers/pmdomain/mediatek/mt8183-pm-domains.h | 125 ++++++----
> >   drivers/pmdomain/mediatek/mt8186-pm-domains.h | 236 ++++++++++--------
> >   drivers/pmdomain/mediatek/mt8188-pm-domains.h | 223 +++++++++++------
> >   drivers/pmdomain/mediatek/mt8192-pm-domains.h | 112 ++++++---
> >   drivers/pmdomain/mediatek/mt8195-pm-domains.h | 199 +++++++++------
> >   drivers/pmdomain/mediatek/mt8365-pm-domains.h | 197 +++++++++++++++
> >   drivers/pmdomain/mediatek/mtk-pm-domains.c    | 157 ++++++++----
> >   drivers/pmdomain/mediatek/mtk-pm-domains.h    |  51 ++--
> >   .../dt-bindings/power/mediatek,mt8365-power.h |  19 ++
> >   include/linux/soc/mediatek/infracfg.h         |  41 +++
> >   14 files changed, 972 insertions(+), 446 deletions(-)
> >   create mode 100644 drivers/pmdomain/mediatek/mt8365-pm-domains.h
> >   create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h
> > 
> > 
> > base-commit: ce9ecca0238b140b88f43859b211c9fdfd8e5b70
> 
> 

