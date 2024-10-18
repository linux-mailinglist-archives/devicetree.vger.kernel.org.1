Return-Path: <devicetree+bounces-112831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B14C59A39F7
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 11:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 470EE288842
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 09:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25041EF936;
	Fri, 18 Oct 2024 09:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AA81EF925;
	Fri, 18 Oct 2024 09:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729243779; cv=none; b=IPtLzLV6aAkRKWfLEWBz2l2OlD2MEVY/Yln7r8JBJTmI50FgiIkVnKzK9jJ4aNpNwkEKbtEUIZy/EdPafIv7JQCN0V0h63+Y4HgTrYS1Ref0YS8fgbh1pCAUfPRBDSm1K5meuyLz3UWAcquUq3wAcQ7pOvoj8y1MVcWyTKt0C9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729243779; c=relaxed/simple;
	bh=uGV5pnEFswLCAvUEQtlZ+YU9roqS2PTClQ661RrBjlw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mF46VLsY2nVjb2VRkg+3sUxM2bb9dzYrzBg68ZWFBPqZmZYuj/m17zKF+CgjRCVZt9ZFgQA/9VrldYXOjpgFGRs6fsjmHKzEkk6iK/t8/Oj41SchiQMivM5ZR9sKFLJGEDxNRb8ju50Zc174V5yzRgWx/zrJ7tc3p3aJzUBHLCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B678FEC;
	Fri, 18 Oct 2024 02:30:05 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 541033F58B;
	Fri, 18 Oct 2024 02:29:33 -0700 (PDT)
Date: Fri, 18 Oct 2024 10:29:29 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Chen-Yu
 Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 3/6] clk: sunxi-ng: h616: Add sigma-delta modulation
 settings for audio PLL
Message-ID: <20241018102929.0eda3fc8@donnerap.manchester.arm.com>
In-Reply-To: <20241001142850.1c275f78@donnerap.manchester.arm.com>
References: <20240929100750.860329-1-ryan@testtoast.com>
	<20240929100750.860329-4-ryan@testtoast.com>
	<20241001142850.1c275f78@donnerap.manchester.arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 1 Oct 2024 14:28:50 +0100
Andre Przywara <andre.przywara@arm.com> wrote:

Hi Ryan,

> On Sun, 29 Sep 2024 23:06:04 +1300
> Ryan Walklin <ryan@testtoast.com> wrote:
> 
> Hi Ryan,
> 
> > Allwinner has previously released a H616 audio driver which also
> > provides sigma-delta modulation for the audio PLL clocks. This approach
> > is used in other Allwinner SoCs, including the H3 and A64.
> > 
> > One change from the vendor code is made to the PLL clocks, the 
> > vendor-specified dividers of 4/2/1 for the 1/2/4x clocks respectively result 
> > in audio playback that is too slow by 50%. Therefore the dividers are simply
> > doubled to 8/4/2 which results in correct playback rates.  
> 
> The reason for that is you force .M0 to 1 (divide by 2), in the fixup
> below (in the probe routine).
> So for instance for the 4x clock, the formula is:
> 	PLL_AUDIO(4X) = 24MHz*N/M0/M1/P
> M1 is cleared (div by 1), M0 is set (div by 2), P is exposed as .m, and N
> as .n in the ccu_nm struct. So you get that extra by-2 divider, that is
> invisible to the CCF, hence you need to compensate for that.
> 
> But with tweaking the dividers only in the fixed-factor clocks below, you
> still leave the original (_hs) clock wrong, which is a parent to other
> clocks, if I see this correctly.
> 
> Can you try to add a .fixed_post_div = 2 in the ccu_nm definition, and
> then put the real dividers in the fixed-factor clocks?

So I tested this change, and it seemed to work for me. Please don't
forget to add CCU_FEATURE_FIXED_POSTDIV - as I did initially ;-)

> And please explain all this in comments ...
> 
> > Add SDM to the H616 clock control unit driver.
> > 
> > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > ---
> >  drivers/clk/sunxi-ng/ccu-sun50i-h616.c | 36 +++++++++++++-------------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> > index 84e406ddf9d12..be272947b0fee 100644
> > --- a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> > +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> > @@ -215,20 +215,23 @@ static struct ccu_nkmp pll_de_clk = {
> >  	},
> >  };
> >  
> > -/*
> > - * TODO: Determine SDM settings for the audio PLL. The manual suggests
> > - * PLL_FACTOR_N=16, PLL_POST_DIV_P=2, OUTPUT_DIV=2, pattern=0xe000c49b
> > - * for 24.576 MHz, and PLL_FACTOR_N=22, PLL_POST_DIV_P=3, OUTPUT_DIV=2,
> > - * pattern=0xe001288c for 22.5792 MHz.
> > - * This clashes with our fixed PLL_POST_DIV_P.
> > - */  
> 
> >  #define SUN50I_H616_PLL_AUDIO_REG	0x078
> > +  
> 
> Can you please (re-)add a comment here explaining the sources of these
> parameters? Because the values deviate from the ones in the manual.
> And also please mention here that there are two more divider bits (named
> m0 and m1 in the manual), that we cannot model in our ccu_nm struct, and
> thus force them to fixed values in the probe routine below?
> 
> > +static struct ccu_sdm_setting pll_audio_sdm_table[] = {
> > +	{ .rate = 90316800, .pattern = 0xc001288d, .m = 3, .n = 22 },
> > +	{ .rate = 98304000, .pattern = 0xc001eb85, .m = 5, .n = 40 },
> > +};
> > +
> >  static struct ccu_nm pll_audio_hs_clk = {
> >  	.enable		= BIT(31),
> >  	.lock		= BIT(28),
> > -	.n		= _SUNXI_CCU_MULT_MIN(8, 8, 12),
> > -	.m		= _SUNXI_CCU_DIV(1, 1), /* input divider */
> > +	.n			= _SUNXI_CCU_MULT_MIN(8, 8, 12),
> > +	.m			= _SUNXI_CCU_DIV(16, 6),  
> 
> Can you please keep the original indentation? You could add a "post-div"
> comment after the .m parameter, to map to the manual.
> 
> And add that ".fixed_post_div = 2," here.
> 
> > +	.sdm		= _SUNXI_CCU_SDM(pll_audio_sdm_table,
> > +				  BIT(24), 0x178, BIT(31)),
> > +
> >  	.common		= {
> > +		.features = CCU_FEATURE_SIGMA_DELTA_MOD,  
> 
> Please indent like the other parameters below.
> 
> >  		.reg		= 0x078,
> >  		.hw.init	= CLK_HW_INIT("pll-audio-hs", "osc24M",
> >  					      &ccu_nm_ops,
> > @@ -690,13 +693,13 @@ static const struct clk_hw *clk_parent_pll_audio[] = {
> >   */
                     ^^^^
There is a comment up here, not shown in this diff, which doesn't apply
anymore. Please update it.

Cheers,
Andre

> >  static CLK_FIXED_FACTOR_HWS(pll_audio_1x_clk, "pll-audio-1x",
> >  			    clk_parent_pll_audio,
> > -			    96, 1, CLK_SET_RATE_PARENT);
> > +			    8, 1, CLK_SET_RATE_PARENT);  
> 
> As mentioned, with the fixed_post_div, you should be able to put the real
> divider values in here.
> 
> >  static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
> >  			    clk_parent_pll_audio,
> > -			    48, 1, CLK_SET_RATE_PARENT);
> > +			    4, 1, CLK_SET_RATE_PARENT);
> >  static CLK_FIXED_FACTOR_HWS(pll_audio_4x_clk, "pll-audio-4x",
> >  			    clk_parent_pll_audio,
> > -			    24, 1, CLK_SET_RATE_PARENT);
> > +			    2, 1, CLK_SET_RATE_PARENT);
> >  
> >  static const struct clk_hw *pll_periph0_parents[] = {
> >  	&pll_periph0_clk.common.hw
> > @@ -1135,13 +1138,10 @@ static int sun50i_h616_ccu_probe(struct platform_device *pdev)
> >  		writel(val, reg + usb2_clk_regs[i]);
> >  	}
> >  
> > -	/*
> > -	 * Force the post-divider of pll-audio to 12 and the output divider
> > -	 * of it to 2, so 24576000 and 22579200 rates can be set exactly.
> > -	 */  
> 
> Can you please keep the comment, and adjust it accordingly? Saying that
> the recommended BSP parameters for the PLL audio recommend M0 to be 1, and
> M1 to be 0, and that we enforce this here?
> 
> Cheers,
> Andre
> 
> >  	val = readl(reg + SUN50I_H616_PLL_AUDIO_REG);
> > -	val &= ~(GENMASK(21, 16) | BIT(0));
> > -	writel(val | (11 << 16) | BIT(0), reg + SUN50I_H616_PLL_AUDIO_REG);
> > +	val &= ~BIT(1);
> > +	val |= BIT(0);
> > +	writel(val, reg + SUN50I_H616_PLL_AUDIO_REG);
> >  
> >  	/*
> >  	 * First clock parent (osc32K) is unusable for CEC. But since there  
> 


