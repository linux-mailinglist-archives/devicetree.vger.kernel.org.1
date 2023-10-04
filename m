Return-Path: <devicetree+bounces-5955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BE57B972E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 00:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5C1281C208EF
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 22:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B5324212;
	Wed,  4 Oct 2023 22:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r0NfUJhL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33C023750
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 22:09:45 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83C8BC9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:09:43 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-59f1dff5298so3194607b3.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 15:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696457382; x=1697062182; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cGtL9ni/bmY+k+XLO0zZ//MJWYpwr9WdA7Lq88K11GI=;
        b=r0NfUJhLIWnl8d+T7mPYNKKQ5OaUUvMwYuOd5fUR6kaXxUmQzYdU4b0aRxDb0UX3/y
         pCBnCAYwBBhxZbV1a/fMJtBH2BgwZKcbe1IZP9eciOm9DmvFlrdZACNoQFrIt+z2v+EP
         Ne25ID5PulMrmmW3NDK77YU/2Oc+PLxRh/zlIm+yYQYSmidmXsLl8E94anAt7yt6wrs/
         +HryNABdKJuOEQtnTEmXt8mHBP9BeaVGyvA10t1QwDj8w8Aw8z2We8e+OIeG0CweWT6g
         +6t0w0i63818BPSwD2N0bEDaL+lbSzYh2ifq6bEncN21HHji2dVfAlwk7/MLoS/VT66x
         Ys/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696457382; x=1697062182;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cGtL9ni/bmY+k+XLO0zZ//MJWYpwr9WdA7Lq88K11GI=;
        b=Qlar+AcMOg4gFIUDQ1fWTWe1JiVBvWDTcYfZCzn6YS8q8NT2J7EWH+IGduXI/vvdwf
         qer4/BbYtCEWK3goalTQh3zQKMOimeBY/s+be/Imt9bpRUE0SlxJPrnnLZQuiYaZkhox
         ECqG/ir+HMkOFdwP7R1lDAASbxsqpjdG1+0ZJhm8SNe01i0VOhtDJmamCTxmiUH0OKpG
         HJ45h8dPSvGehOls+Bsd+442rjXmg1wtMP9eQBSkp2Gj2bP76CKIJdAiTFHvDeiGbx7j
         bNgbKM9FremP9d5wNL+taN/UJzFYpV3tFyZbaO6cNSoBglPBNTPbEE1aswidq1A+cMxy
         p6GA==
X-Gm-Message-State: AOJu0YweqjC2y+AhFRR2jlPL1/9//mvVJjwMmdwKz0lAt+MetUgLFN+D
	m6+P9V2Rz6arman3y+VWTfg8Y/EN1Pfb2wPxjN4N+g==
X-Google-Smtp-Source: AGHT+IG2vlQncNwaL0mmf9ziNDQ+6c9ln+am4OcVzZ69yv7TcOY3i+q6gckxUGP152XYVi1xj1I6LdPgzXEO0LROnnE=
X-Received: by 2002:a25:d707:0:b0:d8d:5dc1:b463 with SMTP id
 o7-20020a25d707000000b00d8d5dc1b463mr3381310ybg.64.1696457382451; Wed, 04 Oct
 2023 15:09:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918093751.1188668-1-msp@baylibre.com>
In-Reply-To: <20230918093751.1188668-1-msp@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Oct 2023 00:09:06 +0200
Message-ID: <CAPDyKFrUbWBQgMm6wYwFfybiRQKhBpwH7wwcXaT+KrQJLevq3w@mail.gmail.com>
Subject: Re: [PATCH v8 0/8] soc: mediatek: MT8365 power support
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Alexandre Mergnat <amergnat@baylibre.com>, 
	Chun-Jie Chen <chun-jie.chen@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, Fabien Parent <parent.f@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 18 Sept 2023 at 11:38, Markus Schneider-Pargmann
<msp@baylibre.com> wrote:
>
> Hi,
>
> no real changes in this update. Rebase to v6.6-rc2 and according change
> of directory.
>
> Thanks for any feedback!
>
> Best,
> Markus
>
> Based on v6.6-rc2
>
> Changes in v8:
> - Rebased to v6.6-rc2
> - Moved changes from drivers/soc to drivers/pmdomain
>
> Changes in v7:
> - Rebased to v6.5-rc1
> - Fixed a couple of small style issues pointed out by Angelo
>
> Changes in v6:
> - Change flags field to be u8 instead of u32
> - Use macro concatenation to simplify BUS_PROT macros:
>   BUS_PROT_WR(_hwip, ...) etc.
> - Use the final bit values for scpsys_bus_prot_flags from the beginning
>   of the series.
> - Changed scpsys_domain_data->caps to be u16 to accommodate the new flag
>   MTK_SCPD_STRICT_BUS_PROTECTION.
>
> Changes in v5:
> - Create defines for all registers and bits in mt8365 power domain patch
> - Redesign scpsys_bus_prot_data to use flags to store reg_update,
>   clr_ack as well as the difference between SMI and INFRACFG. The code
>   uses the appropriate regmap depending on the flags.
> - The WAY_EN patch now uses two flags, one for inverted operations
>   'BUS_PROT_INVERTED' and one to use infracfg-nao for the status flags
>   'BUS_PROT_STA_COMPONENT_INFRA_NAO'.
>
> Changes in v4:
> - Redesigned WAY_EN patch and split it up in smaller patches.
> - Added two documentation patches.
> - Added mediatek,infracfg-nao field to the binding.
>
> Changes in v3:
> - Mainly redesigned WAY_EN patch to be easier to understand
> - Rebased onto v6.0-rc1
> - Several other stuff that is described in the individual patches
>
> Changes in v2:
> - Updated error handling path for scpsys_power_on()
> - Minor updates described in each patch
>
> Previous versions:
> v1 - https://lore.kernel.org/linux-mediatek/20220530204214.913251-1-fparent@baylibre.com/
> v2 - https://lore.kernel.org/linux-mediatek/20220725081853.1636444-1-msp@baylibre.com/
> v3 - https://lore.kernel.org/linux-mediatek/20220822144303.3438467-1-msp@baylibre.com/
> v4 - https://lore.kernel.org/linux-arm-kernel/20230105170735.1637416-1-msp@baylibre.com/
> v5 - https://lore.kernel.org/linux-arm-kernel/20230619085344.2885311-1-msp@baylibre.com/
> v6 - https://lore.kernel.org/linux-arm-kernel/20230627131040.3418538-1-msp@baylibre.com/
> v7 - https://lore.kernel.org/linux-arm-kernel/20230713150414.891893-1-msp@baylibre.com
>
> Alexandre Bailon (2):
>   soc: mediatek: Add support for WAY_EN operations
>   soc: mediatek: Add support for MTK_SCPD_STRICT_BUS_PROTECTION cap
>
> Fabien Parent (2):
>   dt-bindings: power: Add MT8365 power domains
>   soc: mediatek: pm-domains: Add support for MT8365
>
> Markus Schneider-Pargmann (4):
>   soc: mediatek: pm-domains: Move bools to a flags field
>   soc: mediatek: pm-domains: Split bus_prot_mask
>   soc: mediatek: pm-domains: Create bus protection operation functions
>   soc: mediatek: pm-domains: Unify configuration for infracfg and smi
>
>  .../power/mediatek,power-controller.yaml      |   6 +
>  drivers/pmdomain/mediatek/mt6795-pm-domains.h |  16 +-
>  drivers/pmdomain/mediatek/mt8167-pm-domains.h |  20 +-
>  drivers/pmdomain/mediatek/mt8173-pm-domains.h |  16 +-
>  drivers/pmdomain/mediatek/mt8183-pm-domains.h | 125 ++++++----
>  drivers/pmdomain/mediatek/mt8186-pm-domains.h | 236 ++++++++++--------
>  drivers/pmdomain/mediatek/mt8188-pm-domains.h | 223 +++++++++++------
>  drivers/pmdomain/mediatek/mt8192-pm-domains.h | 112 ++++++---
>  drivers/pmdomain/mediatek/mt8195-pm-domains.h | 199 +++++++++------
>  drivers/pmdomain/mediatek/mt8365-pm-domains.h | 197 +++++++++++++++
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    | 157 ++++++++----
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |  51 ++--
>  .../dt-bindings/power/mediatek,mt8365-power.h |  19 ++
>  include/linux/soc/mediatek/infracfg.h         |  41 +++
>  14 files changed, 972 insertions(+), 446 deletions(-)
>  create mode 100644 drivers/pmdomain/mediatek/mt8365-pm-domains.h
>  create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h
>

Applied for next, thanks!

Note that while applying I amended the patch-prefix for patch 2->8 to
"pmdomain: mediatek:", please try to conform to this when going
forward, as it help me to better filter emails.

Kind regards
Uffe

