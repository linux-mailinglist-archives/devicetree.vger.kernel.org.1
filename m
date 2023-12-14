Return-Path: <devicetree+bounces-25072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B0D81250C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BEF11F210A1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D104814;
	Thu, 14 Dec 2023 02:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NztbGM1o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7B79F2;
	Thu, 14 Dec 2023 02:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76BABC433C7;
	Thu, 14 Dec 2023 02:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702519740;
	bh=C336GmVmo2GuBKjQufKQsX0q57zfSJKXFpYuXd7eZMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NztbGM1oUDVKU4ZKutJGC92D6if3Rfddd0M8fYmYCwuU5+mBRgDyleJQGd0mFXbVI
	 op2cmwSADX6NRXDOrXVv2atj2fAXzGQY6n1uwOu6cj8Xi/5Fjb5WK1ndB0npAWQakp
	 7kfOTW2Ho32lbHKM6E8S4XD6wKutIue0kLvlYNetIg/v7ViinmBLAh4h3HbwXpBqTh
	 OXdVsujOONGdPaMxTweAfRSmFibexkZ6pgutaeRreIqPLZ/l9L4UerOBsVYLfGVHY9
	 NowdR4KU49Sk/rwFWKfPB74oaUQYqxEp+Df8g/W+5K1MiI5b73F5P3w6bYPVhJtIBH
	 FTSYnuP5DVdnA==
Date: Thu, 14 Dec 2023 10:08:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: imx@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Joakim Zhang <qiangqing.zhang@nxp.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: imx8qm: Fix edma3 power-domains and
 interrupt numbery
Message-ID: <20231214020855.GS270430@dragon>
References: <20231206201256.1113800-1-Frank.Li@nxp.com>
 <20231214020053.GQ270430@dragon>
 <ZXpi8/asoBMBAtmz@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZXpi8/asoBMBAtmz@lizhi-Precision-Tower-5810>

On Wed, Dec 13, 2023 at 09:05:39PM -0500, Frank Li wrote:
> On Thu, Dec 14, 2023 at 10:00:53AM +0800, Shawn Guo wrote:
> > On Wed, Dec 06, 2023 at 03:12:55PM -0500, Frank Li wrote:
> > > Fixed a kernel dump when access edma3 registers.
> > > 
> > > [    1.517547] SError Interrupt on CPU1, code 0x00000000bf000002 -- SError
> > > [    1.517556] CPU: 1 PID: 59 Comm: kworker/u8:2 Not tainted 6.7.0-rc3-next-20231129-dirty #3
> > > [    1.517564] Hardware name: Freescale i.MX8QM MEK (DT)
> > > [    1.517570] Workqueue: events_unbound deferred_probe_work_func
> > > [    1.517593] pstate: 80000005 (Nzcv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > > [    1.517601] pc : vsnprintf+0x60/0x770
> > > [    1.517612] lr : snprintf+0x58/0x80
> > > [    1.517619] sp : ffff800082f0b9e0
> > > [    1.517622] x29: ffff800082f0b9e0 x28: ffff8000819a8af8 x27: ffff000801f90080
> > > [    1.517632] x26: ffff000801f90510 x25: 0000000000000001 x24: 0000000000000020
> > > [    1.517640] x23: 00000000ffffffd8 x22: ffff000800114800 x21: ffff800082f0baf0
> > > [    1.517650] x20: ffff000801f90698 x19: ffff000801f906b8 x18: ffffffffffffffff
> > > [    1.517659] x17: 6e6f632d616d642e x16: 3030303066396135 x15: ffff800102f0b687
> > > [    1.517668] x14: 0000000000000000 x13: 30206e6168632065 x12: 74697277203a7265
> > > [    1.517677] x11: 6c6c6f72746e6f63 x10: 2d616d642e303030 x9 : 72656c6c6f72746e
> > > [    1.517686] x8 : ffff000800396740 x7 : 205d333337383035 x6 : ffff800082f0baf0
> > > [    1.517694] x5 : 00000000ffffffd8 x4 : ffff000800396740 x3 : ffff800082f0ba70
> > > [    1.517703] x2 : ffff8000819a8af8 x1 : ffff800082f0baf0 x0 : 0000000000000025
> > > [    1.517713] Kernel panic - not syncing: Asynchronous SError Interrupt
> > > [    1.517718] CPU: 1 PID: 59 Comm: kworker/u8:2 Not tainted 6.7.0-rc3-next-20231129-dirty #3
> > > [    1.517724] Hardware name: Freescale i.MX8QM MEK (DT)
> > > [    1.517727] Workqueue: events_unbound deferred_probe_work_func
> > > [    1.517736] Call trace:
> > > [    1.517739]  dump_backtrace+0x90/0xe8
> > > [    1.517752]  show_stack+0x18/0x24
> > > [    1.517761]  dump_stack_lvl+0x48/0x60
> > > [    1.517771]  dump_stack+0x18/0x24
> > > [    1.517780]  panic+0x36c/0x3ac
> > > [    1.517789]  nmi_panic+0x48/0x94
> > > [    1.517796]  arm64_serror_panic+0x6c/0x78
> > > [    1.517801]  do_serror+0x3c/0x78
> > > [    1.517806]  el1h_64_error_handler+0x30/0x48
> > > [    1.517813]  el1h_64_error+0x64/0x68
> > > [    1.517819]  vsnprintf+0x60/0x770
> > > [    1.517827]  snprintf+0x58/0x80
> > > [    1.517834]  fsl_edma_probe+0x2ac/0x830
> > > 
> > > It is eDMA1 at QM, which have the same register with eDMA3 at qxp.
> > > 
> > > Fixes: e4d7a330fb7a ("arm64: dts: imx8: add edma[0..3]")
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > 
> > Hi Frank,
> > 
> > Did you see the fix [1] from Xiaolei?  It has landed on Linus' tree.
> 
> Sorry, not yet!. He have not fixed irq numbers. 
> Let me do addition fix.

Please copy Xiaolei on your fix, thanks!

Shawn

