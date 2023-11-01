Return-Path: <devicetree+bounces-13517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E67267DE80A
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 23:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DA04B20B3D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 22:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454741BDDF;
	Wed,  1 Nov 2023 22:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5hbScwE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3518E06
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 22:23:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B768C433C8;
	Wed,  1 Nov 2023 22:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698877410;
	bh=PiNESkCwicT3kj8jbpckjD4qQNgjxA4dxrb2+kC3aw0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=o5hbScwEhJfIvM2KJMCZ/nYYeWBEH8IaEVzX11nTIGg70kMdMyUrApl84214GVCcx
	 g49c338k38KiKmSqmKCDEi6618JqnfXItWX0IMGrtAUp5NuPtbY7Jj1hBj78bsgNDB
	 feywTViURQG3Yw229eI031CJStFayMlPJNnLAZPdL8G4w8eiRrDqu4LwpKVNjEIm/M
	 UjOIZKHMuBWhHAa24+RPc3Z/yzGYFZh21prAxW18Jo/0sLnnzrTPqiAXrCRH4kin4J
	 LXHFEwiAs7oWp1NiCYi0yg23nFr9xFHy/v+2VMDPoIJKlQqPCZh+CtYzBw5n/zcByg
	 RgYxx90tF806g==
Date: Wed, 1 Nov 2023 17:23:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Serge Semin <fancer.lancer@gmail.com>, Niklas Cassel <nks@flawful.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: PCI: dwc: rockchip: Add optional dma
 interrupts
Message-ID: <20231101222328.GA101333@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZUEiY5i7DUWThhNX@x1-carbon>

On Tue, Oct 31, 2023 at 03:51:03PM +0000, Niklas Cassel wrote:
> On Tue, Oct 31, 2023 at 04:10:17AM +0300, Serge Semin wrote:
> > On Fri, Oct 27, 2023 at 05:51:14PM +0200, Niklas Cassel wrote:
> > > However, e.g. rk3568 only has one channel for reads and one for writes.
> > > (Now this SoC doesn't have dedicated IRQs for the eDMA, but let's pretend
> > > that it did.)
> > > 
> > > So for rk3568, it would then instead be:
> > > dma0: wr0
> > > dma1: rd0
> > > dma2: <unused>
> > > dma3: <unused>
> > 
> > rk3568 doesn't have IRQs supplied in a normal way, as separate
> > signals.  Instead they are combined in the 'sys' IRQ. So you should
> > define the IRQs constraint being device-specific by using for example
> > the "allOf: if-else" pattern.
> 
> Thank you for your review comment.
> 
> I agree. Will fix this in next version.

When you do, would you mind capitalizing "ATU", "DMA", etc in your
subject lines, commit logs, comments, etc?  Then it'll be more obvious
that these aren't ordinary English words.

Bjorn

