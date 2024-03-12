Return-Path: <devicetree+bounces-50110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AD5879A7B
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8340B2428A
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E147F1384B8;
	Tue, 12 Mar 2024 17:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="SQjMNBqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BEA1386A0
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 17:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710263810; cv=none; b=pknXMV4IsX5GqetxJ9KYhZVR/0ki4YY9paXTGDLYFS4ZbqRHNx9ROA9k9AMRAgfBOKpqvAVFydzuREJRwpAB8Dr24GykkMsGIxzG/g4cKUVvMqvWdxQSC+W7CA5/gxg7wom40ySuUIUUFSVbymRQd9tJ5EmZIgMCdpsFp2EXMo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710263810; c=relaxed/simple;
	bh=QlsrG0Ev+JX2ByEVuh2NX2tX3x6JjPtrtcIj6hDRD4w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K7f6bqFhiatVSSBIRxOcHpaNeSMdOCTGOaOiC+WbG9h/KWDp3wIpDY7oXmVGIQT8MqYuCELgMgC7jgeK0vafGLvyd47oAmQr4OGaWyywbU3PeQs3o3/Cclgo9EYSXkUA6VlvxKoRZHh4zSTr/bi8uKa7gZ0h1DE8fAOt1h3R5pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=SQjMNBqD; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-60a046c5262so40267317b3.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 10:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1710263808; x=1710868608; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rII1IKE/cKHA5fIIIZqL0Y1Zv3aUlIm70c4nt3V1iEg=;
        b=SQjMNBqD4Zt+biI0XpBwQ4bbKDZHlLeE5ID7vB3t8HH7mPMH6E+MP+v7tGh6KZc3hK
         QdbxoP1zfDjIBDTHaLY7Hn2GZZJnXNDrbf38IYl6R5Y9NjbVSU+9j9bMYW59MRwjOL7I
         B/0wIVUo0WiaSSp3agu8pB2ArIaKJ10GFR6mwiYUbG2SfYESn8Zdem2YtHMW+pX2gzSq
         xRFNCRWDNZZ6PWT/hMVzK8ccNrD9koCJRhDNQ539E+KGdvLB18kgCQsLQNoVEW1fOb20
         g0MdZDk0soQlZ+0tJcYFqlA1V4YDaF2vvLZRYlDMmNaF8ayXTgRYKf+HKpB2cZeY77NL
         FRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710263808; x=1710868608;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rII1IKE/cKHA5fIIIZqL0Y1Zv3aUlIm70c4nt3V1iEg=;
        b=TO+oYnRKIah1OXIfmcdAG5Py4v6AJqnaSwgmN3gEnsq4+a8JOQvrWu3cKTA32jpPnj
         c4z0wClrdaKXz6asEc9L2qNU0+d663rE13lSpEFJE1Z1hk+MFQLyrp8K1Krmxynmqr4K
         uNmJoFtb12liuC6SrTQqjADTvJkyzvjfW7fAbAikOBoICe4Oskb+N8w6NhXa82DrcEoR
         yCym29Z4HQAVz5hyysJJYH6Jjz4QlVUY0D49MG2/sIiDaS0j9KP13T6MJwRftDhAIpHa
         H+1Ohagtz8gio9bzQ5HV2xx+fqyrCEFN7rXh2egkln7vRtejOh4BZt1NenH5SuXog2rj
         7WlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaR2L9VbKJb/2VLA5vE3nJsFazf+2MmyB6SVfwDo7wo4siiLCGB+Bq1lA8WosH5rYwdH2H6FR20VjOQ8nq5sdJtZG0kzJRxMIYLA==
X-Gm-Message-State: AOJu0YxdhkvJ0eiKGiOQ2RewPOQjEsaBM4mumqY8naF5SdwRkTwhYb0H
	HYQ8MSnOsZpwXfnPCBakdnuryPogJyQKuhebiple99nHH2LZYi33HndO6DJHBOmvw9Gtv/gLsxB
	ONPadPLkutG314wOpRrGwS5+iFEvCq3NeVp464Q==
X-Google-Smtp-Source: AGHT+IEj9EfshNeokW7F6t3Ra3Sz3cKWHPwa5TivvodeNbVUWtKqmMbXPGwP0AB75Z1YUxyvdBxChi3+dAVQzuLVV2Q=
X-Received: by 2002:a25:2d25:0:b0:dcc:744d:b485 with SMTP id
 t37-20020a252d25000000b00dcc744db485mr102839ybt.33.1710263808011; Tue, 12 Mar
 2024 10:16:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1710226514.git.andrea.porta@suse.com>
In-Reply-To: <cover.1710226514.git.andrea.porta@suse.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 12 Mar 2024 17:16:32 +0000
Message-ID: <CAPY8ntCcz7ysTq_78Rb8ohLLETTYZeoZ3DXdPFvDLAkPc9jPWw@mail.gmail.com>
Subject: Re: [PATCH v2 00/15] dmaengine: bcm2835: add BCM2711 40-bit DMA support
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Andrea

On Tue, 12 Mar 2024 at 09:12, Andrea della Porta <andrea.porta@suse.com> wrote:
>
> * Spam *
> The BCM2711 has 4 DMA channels with a 40-bit address range, allowing them
> to access the full 4GB of memory on a Pi 4.
> This patchset aims to update the dma engine for BCM* chipset with respect
> to current advancements in downstream vendor tree. In particular, it
> supports the BCM2711 DMA engine in terms of extended DMA addressing to 40 bit.
>
> Changes with respect to the first version (see [1]) of this patchset:
>
> * dropped support of the new BCM2712. It will be the focus of a subsequent
>   patch.
>
> * merged patchset from Stefan Wahren [2] to support newer chipset with a
>   platform agnostic design, while also retaining the new features added
>   from downstream [1], as follows:
>
>   - patches from 1 to 5 are preparatory, adding some features and bugfix
>     common to all chipsets.
>   - patches from 6 to 12 add hw abstraction
>   - patches 13 to 15 eventually add 40 bit and BCM2711 support
>
> * fixed a couple of bugs from [2] relative to address shifting on 40 bit
>   support specific code
>
> * added the relevant entries in the dts and DT binding that was missing
>   in the first patch
>
> * used FIELD_PREP() wherever appropriate as advised in [3]
>
> * of_match_node() has been replaced by the more generic device_get_match_data(),
>   as per [4]
>
> * fixed several errors and warnings from checkpatch
>
>
> Please note that there is still a pending discussion around here [5]:
> this patch still use the current approach (used in both downstream
> code and in Stefan's redesigned patchset) of getting the address as it is
> (dma_addr_t) and just add the relevant offset when needed (on 40 bit
> channel, see .addr_offset in struct bcm2835_dma_cfg). This is not
> optimal but still deemed as less hacky than using DMA internals (see
> [6]). As soon as there will be guidelines for [5] or dma_map_resource()
> will take care of dma_ranges, a subsequent patch will adjust accordingly.
>
> Since there is an ongoing effort from Dave Stevenson to upstream a
> patchset with similar goals, I'm adding him to the email loop in order
> seek for collaboration.

Please hold fire on these patches until we resolve the dma-ranges question.
If the dma-ranges are defined correctly, then the cb_offset is not
required as the mapping deals with it.

At present we have a mess with the 32bit DMA controllers, and need to
clean it up whilst still having old DT files work. Fixing it up also
requires fixing the DMA users (primarily MMC, SPI, and vc4 HDMI
audio), so will need some care over patch ordering to avoid
regressions.
If at all possible then I would like to avoid the same mess on the 40
bit controllers too.

Thanks
  Dave

FWIW my work in progress branch is currently
https://github.com/6by9/linux/tree/mainline_2712_rp1_dma_vc4_rc5,
which includes my fixed up set of Stefan's patches, as well as all the
other patches that need working on for Pi5 support upstream.

> Many thanks,
>
> Andrea
>
> Links:
> [1] https://lore.kernel.org/linux-arm-kernel/cover.1706948717.git.andrea.porta@suse.com/
> [2] https://lore.kernel.org/linux-arm-kernel/13ec386b-2305-27da-9765-8fa3ad71146c@i2se.com/T/
> [3] https://lore.kernel.org/linux-arm-kernel/YguMW8n1q0ZV5tKH@matsya/
> [4] https://lore.kernel.org/linux-arm-kernel/1e71c153-e482-409c-b229-9b9c0662b67e@arm.com/
> [5] https://lore.kernel.org/all/CAPY8ntByJYzSv0kTAc1kY0Dp=vwrzcA0oWiPpyg7x7_BQwGSnA@mail.gmail.com/
> [6] https://lkml.org/lkml/2024/2/5/1161
>
> Andrea della Porta (11):
>   dmaengine: bcm2835: Fix several spellos
>   dmaengine: bcm2835: Support common dma-channel-mask
>   dmaengine: bcm2835: move CB info generation into separate function
>   dmaengine: bcm2835: move CB final extra info generation into function
>   dmaengine: bcm2835: make address increment platform independent
>   dmaengine: bcm2385: drop info parameters
>   dmaengine: bcm2835: pass dma_chan to generic functions
>   dmaengine: bcm2835: introduce multi platform support
>   dt-bindings: dma: Added bcm2711-dma
>   dmaengine: bcm2835: Add BCM2711 40-bit DMA support
>   ARM: dts: bcm2711: add bcm2711-dma node
>
> Dom Cobley (2):
>   dmaengine: bcm2835: Support dma flags for multi-beat burst
>   dmaengine: bcm2835: Fixes for dma_abort
>
> Phil Elwell (2):
>   dmaengine: bcm2835: Add support for per-channel flags
>   dmaengine: bcm2835: Add NO_WAIT_RESP, DMA_WIDE_SOURCE and
>     DMA_WIDE_DEST flag
>
>  .../bindings/dma/brcm,bcm2835-dma.yaml        |    4 +-
>  arch/arm/boot/dts/broadcom/bcm2711.dtsi       |   16 +
>  drivers/dma/bcm2835-dma.c                     | 1084 +++++++++++++----
>  3 files changed, 892 insertions(+), 212 deletions(-)
>
> --
> 2.35.3
>
>

