Return-Path: <devicetree+bounces-160728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD88FA70D11
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 23:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AAB418944FE
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 22:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F40426A091;
	Tue, 25 Mar 2025 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tagu8h6T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F07426A089;
	Tue, 25 Mar 2025 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742942423; cv=none; b=jjHtfLzNooEjLPRFzz0L1c04cM+cDY6ufPKV+PFRFMJ0fzfGe0+iJclgfYC7OlV/B/NH4BNtf2yTp8A3Ec3qKqYedrEBq9HfoTaKUVfq5f1h9sD5tSskyWfWEb1IXirzC/PCyct3ruEzlFowi2gSnjwaH0RbaJp2iXke5Sdt2Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742942423; c=relaxed/simple;
	bh=ZwFQGGHCzEWqYV+kgRF0C+r5YrECLUTwbbkpi6uTcMc=;
	h=Message-ID:Content-Type:MIME-Version:In-Reply-To:References:
	 Subject:From:Cc:To:Date; b=r5RurRvN8xO2/QuQ8EmQZ0aeslC5iYovJBBITTCRRYEILW6XrZkaPMkcm6M7EhJ8aPcFkYtCKmfaokx9hE/8pB3pSUAcba/dHi/ZXJSE9JhIMJGvOip4JJajzx9I0o1NBkD+jqwFXZXSBBgQW9npORupmIoiDXtClUzOqSx6zBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tagu8h6T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F21ACC4CEE9;
	Tue, 25 Mar 2025 22:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742942423;
	bh=ZwFQGGHCzEWqYV+kgRF0C+r5YrECLUTwbbkpi6uTcMc=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Tagu8h6TXiZN1htJwb26+AeAvfUUIMU8gmWGtEY/iwYylXhz+G87b+5dhgjh8WroX
	 CfTLgxFBFP6Qh1bLYWFY4ve06ZMx1LmgkzkIZIGQThY+TqCzbnechN4mdOANlCJHSF
	 ykUto/fDJJfxvIfNUCS0oEFd+jD/1fldGOa6afjKWYkgexr5fQYXNS79jWIomTWD70
	 QgPdVS2CPKHPYz2jf2cUWDl4WmFj9C/JhxALphtFBie3E5NPthq52uhATKE/8hdgFk
	 nkgb7epYm3ko2hB1VRn04IURtecg0ya+vK8Ey6nIds2t2nyc54pvIXhcVlLHmnN/SR
	 mOcG7HWvJSA3w==
Message-ID: <38d9650fc11a674c8b689d6bab937acf@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e90a0c77-61a0-49db-86ba-bac253f8ec53@samsung.com>
References: <20250303143629.400583-1-m.wilczynski@samsung.com> <CGME20250303143637eucas1p1a3abdea520ab88688de1263a5f07bba0@eucas1p1.samsung.com> <20250303143629.400583-5-m.wilczynski@samsung.com> <de50dd55e1285726e8d5ebae73877486.sboyd@kernel.org> <4c035603-4c11-4e71-8ef3-b857a81bf5ef@samsung.com> <aacd03a071dce7b340d7170eae59d662d58f23b1.camel@pengutronix.de> <e90a0c77-61a0-49db-86ba-bac253f8ec53@samsung.com>
Subject: Re: [PATCH v1 4/4] clk: thead: Add GPU clock gate control with CLKGEN reset support
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org
To: Michal Wilczynski <m.wilczynski@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, alex@ghiti.fr, aou@eecs.berkeley.edu, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org, jszhang@kernel.org, krzk+dt@kernel.org, m.szyprowski@samsung.com, mturquette@baylibre.com, palmer@dabbelt.com, paul.walmsley@sifive.com, robh@kernel.org, wefu@redhat.com, Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 25 Mar 2025 15:40:20 -0700
User-Agent: alot/0.12.dev8+g17a99a841c4b

Quoting Michal Wilczynski (2025-03-19 02:22:11)
>=20
>=20
> On 3/13/25 10:25, Philipp Zabel wrote:
> > On Do, 2025-03-06 at 17:43 +0100, Michal Wilczynski wrote:
> >>
> >> On 3/6/25 00:47, Stephen Boyd wrote:
> >>> Quoting Michal Wilczynski (2025-03-03 06:36:29)
> >>>> The T-HEAD TH1520 has three GPU clocks: core, cfg, and mem. The mem
> >>>> clock gate is marked as "Reserved" in hardware, while core and cfg a=
re
> >>>> configurable. In order for these clock gates to work properly, the
> >>>> CLKGEN reset must be managed in a specific sequence.
> >>>>
> >>>> Move the CLKGEN reset handling to the clock driver since it's
> >>>> fundamentally a clock-related workaround [1]. This ensures that clk_=
enabled
> >>>> GPU clocks stay physically enabled without external interference from
> >>>> the reset driver.  The reset is now deasserted only when both core a=
nd
> >>>> cfg clocks are enabled, and asserted when either of them is disabled.
> >>>>
> >>>> The mem clock is configured to use nop operations since it cannot be
> >>>> controlled.
> >>>>
> >>>> Link: https://lore.kernel.org/all/945fb7e913a9c3dcb40697328b7e9842b7=
5fea5c.camel@pengutronix.de [1]
> >>>>
> >>>> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >>> [...]
> >>>> diff --git a/drivers/clk/thead/clk-th1520-ap.c b/drivers/clk/thead/c=
lk-th1520-ap.c
> >>>> index ea96d007aecd..1dfcde867233 100644
> >>>> --- a/drivers/clk/thead/clk-th1520-ap.c
> >>>> +++ b/drivers/clk/thead/clk-th1520-ap.c
> >>>> @@ -862,17 +863,70 @@ static CCU_GATE(CLK_SRAM1, sram1_clk, "sram1",=
 axi_aclk_pd, 0x20c, BIT(3), 0);
> >>> [...]
> >>>> =20
> >>>>  static CCU_GATE_CLK_OPS(CLK_GPU_MEM, gpu_mem_clk, "gpu-mem-clk",
> >>>>                         video_pll_clk_pd, 0x0, BIT(2), 0, clk_nop_op=
s);
> >>>> +static CCU_GATE_CLK_OPS(CLK_GPU_CORE, gpu_core_clk, "gpu-core-clk",
> >>>> +                       video_pll_clk_pd, 0x0, BIT(3), 0, ccu_gate_g=
pu_ops);
> >>>> +static CCU_GATE_CLK_OPS(CLK_GPU_CFG_ACLK, gpu_cfg_aclk, "gpu-cfg-ac=
lk",
> >>>> +                       video_pll_clk_pd, 0x0, BIT(4), 0, ccu_gate_g=
pu_ops);
> >>>> +
> >>>> +static void ccu_gpu_clk_disable(struct clk_hw *hw)
> >>>> +{
> >>>> +       struct ccu_gate *cg =3D hw_to_ccu_gate(hw);
> >>>> +       unsigned long flags;
> >>>> +
> >>>> +       spin_lock_irqsave(&gpu_reset_lock, flags);
> >>>> +
> >>>> +       ccu_disable_helper(&cg->common, cg->enable);
> >>>> +
> >>>> +       if ((cg =3D=3D &gpu_core_clk &&
> >>>> +            !clk_hw_is_enabled(&gpu_cfg_aclk.common.hw)) ||
> >>>> +           (cg =3D=3D &gpu_cfg_aclk &&
> >>>> +            !clk_hw_is_enabled(&gpu_core_clk.common.hw)))
> >>>> +               reset_control_assert(gpu_reset);
> >>>
> >>> Why can't the clk consumer control the reset itself? Doing this here =
is
> >>> not ideal because we hold the clk lock when we try to grab the reset
> >>> lock. These are all spinlocks that should be small in lines of code
> >>> where the lock is held, but we're calling into an entire other framew=
ork
> >>> under a spinlock. If an (unrelated) reset driver tries to grab the clk
> >>> lock it will deadlock.
> >>
> >> So in our case the clk consumer is the drm/imagination driver. Here is
> >> the comment from the maintainer for my previous attempt to use a reset
> >> driver to abstract the GPU init sequence [1]:
> >>
> >> "Do you know what this resets? From our side, the GPU only has a single
> >> reset line (which I assume to be GPU_RESET)."
> >>
> >> "I don't love that this procedure appears in the platform reset driver.
> >> I appreciate it may not be clear from the SoC TRM, but this is the
> >> standard reset procedure for all IMG Rogue GPUs. The currently
> >> supported TI SoC handles this in silicon, when power up/down requests
> >> are sent so we never needed to encode it in the driver before.
> >>
> >> Strictly speaking, the 32 cycle delay is required between power and
> >> clocks being enabled and the reset line being deasserted. If nothing
> >> here touches power or clocks (which I don't think it should), the delay
> >> could potentially be lifted to the GPU driver."=20
> >>
> >> From the drm/imagination maintainers point of view their hardware has
> >> only one reset, the extra CLKGEN reset is SoC specific.
> >=20
> > If I am understanding correctly, the CLKGEN reset doesn't reset
> > anything in the GPU itself, but holds the GPU clock generator block in
> > reset, effectively disabling the three GPU clocks as a workaround for
> > the always-ungated GPU_MEM clock.
> >=20
> >> Also the reset driver maintainer didn't like my way of abstracting two
> >> resets ("GPU" and and SoC specific"CLKGEN") into one reset
> >=20
> > That is one part of it. The other is that (according to my
> > understanding as laid out above), the combined GPU+CLKGEN reset would
> > effectively disable all three GPU clocks for a while, after the GPU
> > driver has already requested them to be enabled.
>=20
> Thank you for your comments Philipp, it seems like we're on the same
> page here. I was wondering whether there is anything I can do to move the
> patches forward.
>=20
> Stephen, if the current patch is a no go from your perspective could you
> please advise whether there is a way to solve this in a clock that would
> be acceptable to you.

It looks like the SoC glue makes the interactions between the clk and
reset frameworks complicated because GPU clks don't work if a reset is
asserted. You're trying to find a place to coordinate the clk and reset.
Am I right?

I'd advise managing the clks and resets in a generic power domain that
is attached to the GPU device. In that power domain, coordinate the clk
and reset sequencing so that the reset is deasserted before the clks are
enabled (or whatever the actual requirement is). If the GPU driver
_must_ have a clk and reset pointer to use, implement one that either
does nothing or flag to the GPU driver that the power domain is managing
all this for it so it should just use runtime PM and system PM hooks to
turn on the clks and take the GPU out of reset.

From what I can tell, the GPU driver maintainer doesn't want to think
about the wrapper that likely got placed around the hardware block
shipped by IMG. This wrapper is the SoC glue that needs to go into a
generic power domain so that the different PM resources, reset, clk,
etc. can be coordinated based on the GPU device's power state. It's
either that, or go the dwc3 route and have SoC glue platform drivers
that manage this stuff and create a child device to represent the hard
macro shipped by the vendor like Synopsys/Imagination. Doing the parent
device design isn't as flexible as PM domains because you can only have
one parent device and the child device state can be ignored vs. many PM
domains attached in a graph to a device that are more directly
influenced by the device using runtime PM.

Maybe you'll be heartened to know this problem isn't unique and has
existed for decades :) I don't know what state the graphics driver is in
but they'll likely be interested in solving this problem in a way that
doesn't "pollute" their driver with SoC specific details. It's all a
question of where you put the code. The reset framework wants to focus
on resets, the clk framework wants to focus on clks, and the graphics
driver wants to focus on graphics. BTW, we went through a similar
discussion with regulators and clks years ago and ended up handling that
with OPPs and power domains.

I believe a PM domain is the right place for this kind of stuff, and I
actually presented on this topic at OSSEU[1], but I don't maintain that
code. Ulf does.

[1] https://osseu2024.sched.com/event/1ej38/the-case-for-an-soc-power-manag=
ement-driver-stephen-boyd-google

