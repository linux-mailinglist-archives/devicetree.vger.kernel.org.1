Return-Path: <devicetree+bounces-38706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB51849F34
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A86C31F239D4
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 16:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F4E39FFA;
	Mon,  5 Feb 2024 16:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="NpsUEChh"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B57A32C9C;
	Mon,  5 Feb 2024 16:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707148925; cv=none; b=mlyInoWtauKi0MJlvVgAgPbzDqpGnkNqvqMQqa0KH4NCw0DG29uCK0F5HC4cj10d44eXKDiIAB46qTsGlItjW2u74oDuAvf9cJAp+pn7fECKvSArFrco/PsbS0Y9t1aCgNCTUibsm1RQ7OEINVIqVwX26pssWlhPJ+i929tH2fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707148925; c=relaxed/simple;
	bh=GZ/QrUYoWHJZzCpyI+a8pGcqG7MuwYWLC0kpCm+GmS8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZvAOSc98qqiREGc7DWiIHbT4GwzZE7k2vJRFNWt5ano0c30csu16v4Nr2ErpnU5X+RLfQJW5vKmEm65Qmo5UXCqO/NBZNrT/444YGtDtLTPR3gGiHwJFXcdyKKG+uAqYXVXy2HsJTCCColScrRPBTFPgUvTRc64v/3QkrgF0wys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=NpsUEChh; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1707148921; bh=GZ/QrUYoWHJZzCpyI+a8pGcqG7MuwYWLC0kpCm+GmS8=;
	h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
	b=NpsUEChhU9gd0quVquwhz9BL0um6DVapV5Mpz54Q+Os7uRpbtYhVgr75LFVW2Bjyb
	 ije6tg/et7yVyZFkIjdB8luezZ7HJjEFWin1TfEiHXvuoYIvbxuAwxvrUcajFG3REK
	 oUWXa9jHrNJByezx0xWEofG1Q7rMawy675GqnhhA=
Date: Mon, 5 Feb 2024 17:02:00 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Frank Oltmanns <frank@oltmanns.dev>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>, Purism Kernel Team <kernel@puri.sm>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/6] Pinephone video out fixes (flipping between two
 frames)
Message-ID: <bgyyemyi4shj3spo6qy4icvk56nrp5sihnzqurnozqdyktwugc@ikurx4ojoxpi>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Frank Oltmanns <frank@oltmanns.dev>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>, Purism Kernel Team <kernel@puri.sm>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240205-pinephone-pll-fixes-v2-0-96a46a2d8c9b@oltmanns.dev>
 <jzl3mlzk4j7qvgcedvipgale5nhinznefodrnaehwsqfnseiwc@7zzlxd4dpueh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jzl3mlzk4j7qvgcedvipgale5nhinznefodrnaehwsqfnseiwc@7zzlxd4dpueh>

On Mon, Feb 05, 2024 at 04:54:07PM +0100, Ondřej Jirman wrote:
> On Mon, Feb 05, 2024 at 04:22:23PM +0100, Frank Oltmanns wrote:
> > On some pinephones the video output sometimes freezes (flips between two
> > frames) [1]. It seems to be that the reason for this behaviour is that
> > PLL-MIPI, PLL-GPU and GPU are operating outside their limits.
> > 
> > In this patch series I propose the followin changes:
> >   1. sunxi-ng: Adhere to the following constraints given in the
> >      Allwinner A64 Manual regarding PLL-MIPI:
> >       * M/N <= 3
> >       * (PLL_VIDEO0)/M >= 24MHz
> >       * 500MHz <= clockrate <= 1400MHz
> > 
> >   2. Choose a higher clock rate for the ST7703 based XDB599 panel, so
> >      that the panel function well with the Allwinner A64 SOC. PLL-MIPI
> >      must run between 500 MHz and 1.4 GHz. As PLL-MIPI runs at 6 times
> >      the panel's clock rate, we need the panel's clock to be at least
> >      83.333 MHz.
> > 
> >   3. Increase the minimum frequency in the A64 DTS OPPs from 120 MHz to
> >      192 MHz. This further reduces the issue.
> > 
> > Unfortunately, with these patches the issue [1] is not completely gone,
> > but becomes less likely.
> > 
> > Note, that when pinning the GPU to 432 MHz the issue completely
> > disappears for me. I've searched the BSP and could not find any
> > indication that supports the idea of having the three OPPs. The only
> > frequency I found in the BPSs for A64 is 432 MHz, that has also proven
> > stable for me. So, while increasing the minimum frequency to 192 MHz
> > reduces the issue, should we maybe instead set the GPU to a fixed 432
> > MHz instead?
> 
> Per A64 User Manual 1.1 page 81:
> 
> (9). Clock output of PLL_GPU can be used for GPU;and dynamic frequency scaling is not supported;

You may be able to elegantly work around this by pinning PLL_GPU to a certain
frequency (assing it in DT and then don't decalre gpu clock as
CLK_SET_RATE_PARENT). Say 432 MHz for PLL and then do the scaling via GPU_CLK_REG
N divider between 432MHz and 216MHz and maybe 108MHz if that brings any gains.

Then you can perhaps sidestep all these potential issues with PLL_GPU and
lack of DVFS support decalred in the manual.

regards,
	o.

> Also sunxi-ng clk driver does apply NM factors at once to PLL_GPU clock,
> which can cause sudden frequency increase beyond intended output frequency,
> because division is applied immediately while multiplication is reflected
> slowly.
> 
> Eg. if you're changing divider from 7 to 1, you can get a sudden 7x output
> frequency spike, before PLL VCO manages to lower the frequency through N clk
> divider feedback loop and lock on again. This can mess up whatever's connected
> to the output quite badly.
> 
> You'd have to put logging on kernel writes to PLL_GPU register to see what
> is written in there and if divider is lowered significantly on some GPU
> devfreq frequency transitions.
> 
> It's also unclear what happens when FRAC_CLK_OUT or PLL_MODE_SEL changes.
> Maybe not much because M is supposed to be set to 1, but you still need to
> care when enabling fractional mode, and setting M to 1 because that's exactly
> the bad scenario if M was previously higher than 1.
> 
> It's tricky.
> 
> Having GPU module clock gated during PLL config changes may help! You can
> do that without locking yourself out, unlike with the CPU PLL.
> 
> There's a gate enable bit for it at GPU_CLK_REG.SCLK_GATING. (page 122)
> 
> Kind regards,
> 	o.
> 
> > I very much appreciate your feedback!
> > 
> > [1] https://gitlab.com/postmarketOS/pmaports/-/issues/805
> > 
> > Signed-off-by: Frank Oltmanns <frank@oltmanns.dev>
> > ---
> > Changes in v2:
> > - dts: Increase minimum GPU frequency to 192 MHz.
> > - nkm and a64: Add minimum and maximum rate for PLL-MIPI.
> > - nkm: Use the same approach for skipping invalid rates in
> >   ccu_nkm_find_best() as in ccu_nkm_find_best_with_parent_adj().
> > - nkm: Improve names for ratio struct members and hence get rid of
> >   describing comments.
> > - nkm and a64: Correct description in the commit messages: M/N <= 3
> > - Remove patches for nm as they were not needed.
> > - st7703: Rework the commit message to cover more background for the
> >   change.
> > - Link to v1: https://lore.kernel.org/r/20231218-pinephone-pll-fixes-v1-0-e238b6ed6dc1@oltmanns.dev
> > 
> > ---
> > Frank Oltmanns (6):
> >       clk: sunxi-ng: nkm: Support constraints on m/n ratio and parent rate
> >       clk: sunxi-ng: a64: Add constraints on PLL-MIPI's n/m ratio and parent rate
> >       clk: sunxi-ng: nkm: Support minimum and maximum rate
> >       clk: sunxi-ng: a64: Set minimum and maximum rate for PLL-MIPI
> >       drm/panel: st7703: Drive XBD599 panel at higher clock rate
> >       arm64: dts: allwinner: a64: Fix minimum GPU OPP rate
> > 
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  4 ++--
> >  drivers/clk/sunxi-ng/ccu-sun50i-a64.c         | 14 +++++++----
> >  drivers/clk/sunxi-ng/ccu_nkm.c                | 34 +++++++++++++++++++++++++++
> >  drivers/clk/sunxi-ng/ccu_nkm.h                |  4 ++++
> >  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 14 +++++------
> >  5 files changed, 56 insertions(+), 14 deletions(-)
> > ---
> > base-commit: 059c53e877ca6e723e10490c27c1487a63e66efe
> > change-id: 20231218-pinephone-pll-fixes-0ccdfde273e4
> > 
> > Best regards,
> > -- 
> > Frank Oltmanns <frank@oltmanns.dev>
> > 

