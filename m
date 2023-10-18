Return-Path: <devicetree+bounces-9444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CD47CD120
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 02:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D291B20FAE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 00:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DFA193;
	Wed, 18 Oct 2023 00:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="clXo2BuX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97904160
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 00:07:25 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D390EBA
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 17:07:23 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c17de836fbso76669431fa.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 17:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697587642; x=1698192442; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yL5IHSgiOPCaseF8jxFxoTKSJkLG4FnIxMof3Q5FawM=;
        b=clXo2BuXwWDeIGHWv6y1m7WBxmQt5y7kTjRrxV5RlJ7+e4RmwbCkHBdPYHWmcpday+
         e6/HW3c/+1HuhSfRrVOBwA1ph13ytHoAh4u9tVwWF6VttJOHf9tMh8KJN6OzKDL8RuLd
         1ElbON6TzF86S9AhHUnouq75QrEyuySIsu1+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697587642; x=1698192442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yL5IHSgiOPCaseF8jxFxoTKSJkLG4FnIxMof3Q5FawM=;
        b=GrXUDZs1rEWXJSxjS5YjUQosic/RbakxIO7qIZZJqwSj/QeaazcTzm7H3c+8GeJ+ev
         4U7AM+HNjiYHrSgelX5noxgDq2BvF0lMa/cslvqoPkcblq+KO8QAqMmP1owhF0jWnE2U
         mlHTL5BQxRBFs3NT1+I1yypHK5/V5P5i9RLHr6g338HQ+xhaVDUszbhCnORP/bGtEAeQ
         O09iJMSChbj2CrZ3WuAQ/WfEsw3wpxQnkfizcigYAl/XZ69avSQCjO3j2Om2b5VJ9Nm9
         6DTCuWwddxi8+/DqyOvCEURm0jA7JA6bPIdJEuNCf5u98SGDB/rNrQ2LXi2j+io8LHsF
         885Q==
X-Gm-Message-State: AOJu0YyU72FktVkAFJ6rGMt2tPTJ4g7cOz/4iAtGPAIj9Uw5UEEVD7wR
	/LI4B/GF9IgCNHNTy69CcETUU5cGlkq1hcpcYSbNQg==
X-Google-Smtp-Source: AGHT+IHdYpQ7b2GTg0pg2e6yXIg3WUzgg6FphjxIscthWaEOsQp4Vnpo/InQm+NVk8R54x4Et7gna/2lIz01hIOxMHE=
X-Received: by 2002:ac2:598c:0:b0:507:a33f:135d with SMTP id
 w12-20020ac2598c000000b00507a33f135dmr2672443lfn.4.1697587641970; Tue, 17 Oct
 2023 17:07:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017190545.157282-1-bero@baylibre.com>
In-Reply-To: <20231017190545.157282-1-bero@baylibre.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 17 Oct 2023 17:07:10 -0700
Message-ID: <CAGXv+5FwkBU3wfyZWWaiOgzLACfMVs4Bnu2KM4oSCUa28SzXVw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add LVTS support for mt8192
To: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc: daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com, 
	rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com, 
	matthias.bgg@gmail.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	dunlap@infradead.org, e.xingchen@zte.com.cn, p.zabel@pengutronix.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, ames.lo@mediatek.com, rex-bc.chen@mediatek.com, 
	nfraprado@collabora.com, abailon@baylibre.com, amergnat@baylibre.com, 
	khilman@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 17, 2023 at 12:05=E2=80=AFPM Bernhard Rosenkr=C3=A4nzer
<bero@baylibre.com> wrote:
>
> Add full LVTS support (MCU thermal domain + AP thermal domain) to MediaTe=
k MT8192 SoC.
> Also, add Suspend and Resume support to LVTS Driver (all SoCs),
> and update the documentation that describes the Calibration Data Offsets.
>
> v5 changes are a lot smaller than originally assumed -- commit
> 185673ca71d3f7e9c7d62ee5084348e084352e56 fixed the issue I
> was originally planning to work around in this patchset,
> so what remains for v5 is noirq and cosmetics.

I see two series in my inbox and on the mailing list. Which one is the
correct one?

Thanks
ChenYu

> Changelog:
>    v5 :
>         - Suspend/Resume in noirq stage
>         - Reorder chipset specific functions
>         - Rebased :
>             base-commit: 4d5ab2376ec576af173e5eac3887ed0b51bd8566
>
>    v4 :
>         - Shrink the lvts_ap thermal sensor I/O range to 0xc00 to make
>           room for SVS support, pointed out by
>           AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora=
.com>
>
>     v3 :
>         - Rebased :
>             base-commit: 6a3d37b4d885129561e1cef361216f00472f7d2e
>         - Fix issues in v2 pointed out by N=C3=ADcolas F. R. A. Prado <nf=
raprado@collabora.com>:
>           Use filtered mode to make sure threshold interrupts are trigger=
ed,
>           protocol documentation, cosmetics
>         - I (bero@baylibre.com) will be taking care of this patchset
>           from now on, since Balsam has left BayLibre. Thanks for
>           getting it almost ready, Balsam!
>
>     v2 :
>         - Based on top of thermal/linux-next :
>             base-commit: 7ac82227ee046f8234471de4c12a40b8c2d3ddcc
>         - Squash "add thermal zones and thermal nodes" and
>             "add temperature mitigation threshold" commits together to fo=
rm
>             "arm64: dts: mediatek: mt8192: Add thermal nodes and thermal =
zones" commit.
>         - Add Suspend and Resume support to LVTS Driver.
>         - Update Calibration Data documentation.
>         - Fix calibration data offsets for mt8192
>             (Thanks to "Chen-Yu Tsai" and "N=C3=ADcolas F. R. A. Prado").
>         https://lore.kernel.org/all/20230425133052.199767-1-bchihi@baylib=
re.com/
>         Tested-by: Chen-Yu Tsai <wenst@chromium.org>
>
>     v1 :
>         - The initial series "Add LVTS support for mt8192" :
>             "https://lore.kernel.org/all/20230307163413.143334-1-bchihi@b=
aylibre.com/".
>
> Balsam CHIHI (5):
>   dt-bindings: thermal: mediatek: Add LVTS thermal controller definition
>     for mt8192
>   thermal/drivers/mediatek/lvts_thermal: Add suspend and resume
>   thermal/drivers/mediatek/lvts_thermal: Add mt8192 support
>   arm64: dts: mediatek: mt8192: Add thermal nodes and thermal zones
>   thermal/drivers/mediatek/lvts_thermal: Update calibration data
>     documentation
>
>  arch/arm64/boot/dts/mediatek/mt8192.dtsi      | 454 ++++++++++++++++++
>  drivers/thermal/mediatek/lvts_thermal.c       | 163 ++++++-
>  .../thermal/mediatek,lvts-thermal.h           |  19 +
>  3 files changed, 634 insertions(+), 2 deletions(-)
>
> --
> 2.42.0

