Return-Path: <devicetree+bounces-1943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C317A9329
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 11:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90EAC1C208C9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 09:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DFF9455;
	Thu, 21 Sep 2023 09:36:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A078D944C
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 09:36:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7740CC4AF5D;
	Thu, 21 Sep 2023 09:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695289018;
	bh=dNEOlBkvsTEIQ7sDlpgOxIjaV/wTx53tOqsrSxNccPY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KKe1e3A/+t7cy8i5x0gVpHox3H+UBnELoyDJ0jLD+FCQUOwlHa4OTsHka26jzP8dE
	 lW1Uhty8xFED/Zq+Lx5dciCiEGi9oJIhS3VzkFzFf0G2Lr1WXJgLO65TLaiyHneA8z
	 AcE+UIL0cMD0GyCqP3KJfEnWyYSnZsQs5YAJeebCuOB5yOXRGbppJJw2NA/9y8J7GX
	 9+NxOyrr1l8tyFmDc6joN21Luf7Jp7ej6WUVRHeImywBg3I3HE/5aPmu31Yyz1XwnE
	 te/EBz5euucputziqvfNo+WCHYjkqEb3cm+g0dAjaMRTUYuUdXTVybjhnp9LoY4ge+
	 h4OpuRZFCVFrw==
Date: Thu, 21 Sep 2023 17:24:57 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Drew Fustini <dfustini@baylibre.com>
Subject: Re: [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus
Message-ID: <ZQwL6fxi6IkUEIMc@xhacker>
References: <20230912072232.2455-1-jszhang@kernel.org>
 <20230912-trailing-pampered-52738ec6f009@spud>
 <ZQHSLdPufI6CXApg@xhacker>
 <20230913-faster-spotted-9df41a0d7787@spud>
 <20230920-pesky-stalemate-88f5036b8084@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230920-pesky-stalemate-88f5036b8084@wendy>

On Wed, Sep 20, 2023 at 09:36:19AM +0100, Conor Dooley wrote:
> Hey Jisheng,
> 
> On Wed, Sep 13, 2023 at 04:44:18PM +0100, Conor Dooley wrote:
> > On Wed, Sep 13, 2023 at 11:15:57PM +0800, Jisheng Zhang wrote:
> > > On Tue, Sep 12, 2023 at 05:27:31PM +0100, Conor Dooley wrote:
> > > > On Tue, Sep 12, 2023 at 03:22:32PM +0800, Jisheng Zhang wrote:
> > > > > riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> > > > > dma coherent, so set dma-noncoherent to reflect this fact.
> > > > > 
> > > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > > Tested-by: Drew Fustini <dfustini@baylibre.com>
> > > > > ---
> > > > > 
> > > > > Since v1:
> > > > >  - rebase on v6.6-rc1
> > > > >  - collect Tested-by tag
> > > > 
> > > > Does this mean you're expecting me to take this?
> > > 
> > > Hi Conor,
> > > 
> > > I think I will take this and send PR to soc people. The reason
> > > I send v2 is the rebasing on new rc1 and v1 wasn't in linux-riscv
> > > mailist due to typo;
> > 
> > Great, thanks. Please ask SFR to add your tree to linux-next.

Hi Conor,

I'm not sure how to do this. When MAINTAINERS patch is merged, send
an email to Stephen Rothwell, are these steps correct?

> 
> I lost my main x86 box over the weekend (looks like probably a dead
> motherboard), so I may have missed a response to this.
> 
> Did you see this email? Additionally, can you add that git tree to the
> maintainers entry for the thead devicetrees?

I just created a tree in
git://git.kernel.org/pub/scm/linux/kernel/git/jszhang/linux.git

But it needs time for cgit to take place. I will send a patch
once it appears.

Thanks

