Return-Path: <devicetree+bounces-8799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD1E7CA19C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCC27B20C6A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD80914AA4;
	Mon, 16 Oct 2023 08:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sNzk4AX2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4ED01A585
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:30:30 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D4C3A1
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:30:24 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5079eed8bfbso3009202e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697445022; x=1698049822; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=D8XjwDxZOZEey7Y6QYAEu1sLFbhktqi01nN1Vd7CFQ8=;
        b=sNzk4AX2dRkEutac+BY3+NtyTMXHgU8rdShNUPR1jPBH4PG+NJ3cNU8PuFH3P3f1SX
         Fz6udMeheyo1nHwFM74qBJDkG3N5jOOdSsfEVVdu7PXxZDEzeW3ygqw4vxPGM2+aRQyd
         wO2ReflSHJ3kwfkJvP6F5esTA6EG32EQS1YZwfx+3LFJVKjrCAx0Ec7qTAJHSL0ZJXdo
         OGmAy1FQJvy3pde580l0jBizLQORSuLcDTO5L0RZUMX/0CsfbDZWI4uS/UOr4aBPCRp5
         iOdEBoKrAMVRO9Nh5CWe6Qgp/+NQNESUG75d5BKGsFFFxj86HmPK0iDkQLqubnq5j/xV
         Hgxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697445022; x=1698049822;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8XjwDxZOZEey7Y6QYAEu1sLFbhktqi01nN1Vd7CFQ8=;
        b=AnkJAXj1f6SCEs7oO284oTcgswL91C/tMqUSQOP2irOr1wb0dF0K6OVoe+vE6MN9PI
         1yoPTe7BIRQjHKHqA9GZ8M34te5og9L1heghyLh/jtbbBVSl6S52zoM0EDj1MHBRGHRr
         Oeva27nx5zLK8B9Jy5Iqo/JACbPBF8RCB/StNIiLFNJVWYYr2SSpsVXTaVP5mcYpK5y6
         rFWuiAQ5gabWc/2U4pYXP+VoRmMmyZvAsnO4aV7sGknr0v7/l1QB4v3z5y2mzOo757Ze
         hoM/QRyUJCu3p+FXSrDk8FWdP2+O5sK62B0a07rlWpusPGf8vSPxclsKw1Zn6WXIKo/y
         BQpw==
X-Gm-Message-State: AOJu0Yz7oeGhpkC3KZY/mac339UZvP4oAABtbJHj7uF6RRFsycyTPCZ4
	dXTEA4pWRJK2N0TOgLsgimyJYA==
X-Google-Smtp-Source: AGHT+IHCIZNdpTR8OpaSokrSzuyZWQhcZfbPr+YVBhq2/WT/Vff/l3/4yw2ge4wwy/aAFBBQIkMlAA==
X-Received: by 2002:a05:6512:31d2:b0:500:acf1:b432 with SMTP id j18-20020a05651231d200b00500acf1b432mr32294297lfe.63.1697445022323;
        Mon, 16 Oct 2023 01:30:22 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:d161:b45d:c978:eb94])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c488600b00405ee9dc69esm6442108wmp.18.2023.10.16.01.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 01:30:21 -0700 (PDT)
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Pierre-Louis
 Bossart <pierre-louis.bossart@linux.intel.com>, Mark Brown
 <broonie@kernel.org>, Bard Liao <yung-chuan.liao@linux.intel.com>,
 bard.liao@intel.com, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/4] ASoC: makes CPU/Codec channel connection map
 more generic
Date: Mon, 16 Oct 2023 10:25:28 +0200
In-reply-to: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
Message-ID: <1j5y37vujm.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon 16 Oct 2023 at 01:37, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com> wrote:

> Hi Mark
> Cc Bard, Pierre-Louis, Jerome, DT-ML
>
> This is v4 patch-set.
>
> Current ASoC is supporting CPU/Codec = N:M (N < M) connection by using
> ch_map idea. This patch-set expands it that all connection uses this idea,
> and no longer N < M limit [1].
>
> Link: https://lore.kernel.org/r/87fs6wuszr.wl-kuninori.morimoto.gx@renesas.com [1]
>
> This patch is tested on Audio-Graph-Card2 with sample dtsi,
> but needs Tested-by, at least from Intel.

Checked for no regression on the Amlogic axg-card with DPCM and codec-to-codec
links. Also checked no regression for multi-codec links with codecs
doing playback only and capture-only on the same link.

Looks good.

Tested-by: Jerome Brunet <jbrunet@baylibre.com>

Thanks for the notification Kuninori-san.

>
> v3 -> v4
> 	- add Jerome on To
> 	- add "description" on "ch-maps"
>
> v2 -> v3
> 	- tidyup comment
> 	- use more clear connection image on DT
> 	- "ch_maps" -> "ch-maps" on DT
> 	- Add DT maintainer on "To:" for all patches
>
> v1 -> v2
> 	- makes CPU/Codec connection relation clear on comment/sample
> 	- fixup type "connction" -> "connection"
> 	- makes error message clear
>
> Kuninori Morimoto (4):
>   ASoC: makes CPU/Codec channel connection map more generic
>   ASoC: audio-graph-card2: add CPU:Codec = N:M support
>   ASoC: audio-graph-card2-custom-sample: add CPU/Codec = N:M sample
>   dt-bindings: audio-graph-port: add ch-maps property
>
>  .../bindings/sound/audio-graph-port.yaml      |   8 +-
>  include/sound/soc.h                           |  66 ++++++++-
>  .../audio-graph-card2-custom-sample.dtsi      | 138 +++++++++++++++---
>  sound/soc/generic/audio-graph-card2.c         |  29 ++++
>  sound/soc/intel/boards/sof_sdw.c              |  14 +-
>  sound/soc/soc-core.c                          |  85 +++++++++++
>  sound/soc/soc-dapm.c                          |  47 +++---
>  sound/soc/soc-pcm.c                           |  73 ++++-----
>  8 files changed, 368 insertions(+), 92 deletions(-)


