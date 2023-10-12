Return-Path: <devicetree+bounces-8199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCEA7C7179
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:30:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD53C1C20B7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C40273E5;
	Thu, 12 Oct 2023 15:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNlqy8im"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1BB224CF;
	Thu, 12 Oct 2023 15:30:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65F77C433C8;
	Thu, 12 Oct 2023 15:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697124617;
	bh=ZtcSIbjB2WpeZfQRyCvdpc+0MAvoSIsAVFQJFGWoAZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sNlqy8imXhwlW5ogqsGatXLJh6x3ULy2dxsaSxs56ggFVkTV6XlGelwtvmknbj7Xu
	 ShUCZ/8OXslZolbuuvyrBlxLrcJ01GSlmz7CSJEaxf3rAcgbPMbnfuFHufU09E90RW
	 5ApYEGyJHTTls7cFvAibnKaw6QYJ/MgybICMj+V6qAR0vsGzNnF3N6loiEvhXeakbo
	 Tc8RBxaMuLt9cw9IyN5cmf2yVbPk/7zrWOf/NIL+18Z146Hj24oQ+EZR236LNiKgxH
	 rW8s1EpB9lyTQA3S/nGP0hy8u95XFa9UJYnNgK7IXnZV4NIWHKMv5YsKgXN/Jehq6j
	 lkrAiKBqcY2gw==
Received: (nullmailer pid 821925 invoked by uid 1000);
	Thu, 12 Oct 2023 15:30:12 -0000
Date: Thu, 12 Oct 2023 10:30:12 -0500
From: Rob Herring <robh@kernel.org>
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, herbert@gondor.apana.org.au, davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, ulf.hansson@linaro.org, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, hugues.fruchet@foss.st.com, lee@kernel.org, will@kernel.org, catalin.marinas@arm.com, arnd@kernel.org, richardcochran@gmail.com, Frank Rowand <frowand.list@gmail.com>, peng.fan@oss.nxp.com, linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-p
 .hy@lists.infradead.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 10/11] ARM: dts: stm32: add ETZPC as a system bus for
 STM32MP15x boards
Message-ID: <20231012153012.GA698406-robh@kernel.org>
References: <20231010125719.784627-1-gatien.chevallier@foss.st.com>
 <20231010125719.784627-11-gatien.chevallier@foss.st.com>
 <20231010184212.GA1221641-robh@kernel.org>
 <8f1b6915-68be-a525-c5d5-37f0983c14de@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f1b6915-68be-a525-c5d5-37f0983c14de@foss.st.com>

On Wed, Oct 11, 2023 at 10:49:58AM +0200, Gatien CHEVALLIER wrote:
> Hi Rob,
> 
> On 10/10/23 20:42, Rob Herring wrote:
> > On Tue, Oct 10, 2023 at 02:57:18PM +0200, Gatien Chevallier wrote:
> > > ETZPC is a firewall controller. Put all peripherals filtered by the
> > > ETZPC as ETZPC subnodes and reference ETZPC as an
> > > access-control-provider.
> > > 
> > > For more information on which peripheral is securable or supports MCU
> > > isolation, please read the STM32MP15 reference manual.
> > > 
> > > Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> > > ---
> > > 
> > > Changes in V6:
> > >      	- Renamed access-controller to access-controllers
> > >      	- Removal of access-control-provider property
> > > 
> > > Changes in V5:
> > >      	- Renamed feature-domain* to access-control*
> > > 
> > >   arch/arm/boot/dts/st/stm32mp151.dtsi  | 2756 +++++++++++++------------
> > >   arch/arm/boot/dts/st/stm32mp153.dtsi  |   52 +-
> > >   arch/arm/boot/dts/st/stm32mp15xc.dtsi |   19 +-
> > >   3 files changed, 1450 insertions(+), 1377 deletions(-)
> > 
> > This is not reviewable. Change the indentation and any non-functional
> > change in one patch and then actual changes in another.
> 
> Ok, I'll make it easier to read.
> 
> > 
> > This is also an ABI break. Though I'm not sure it's avoidable. All the
> > devices below the ETZPC node won't probe on existing kernel. A
> > simple-bus fallback for ETZPC node should solve that.
> > 
> 
> I had one issue when trying with a simple-bus fallback that was the
> drivers were probing even though the access rights aren't correct.
> Hence the removal of the simple-bus compatible in the STM32MP25 patch.

But it worked before, right? So the difference is you have either added 
new devices which need setup or your firmware changed how devices are 
setup (or not setup). Certainly can't fix the latter case. You just need 
to be explicit about what you are doing to users.


> Even though a node is tagged with the OF_POPULATED flag when checking
> the access rights with the firewall controller, it seems that when
> simple-bus is probing, there's no check of this flag.

It shouldn't. Those flags are for creating the devices (or not) and 
removing only devices of_platform_populate() created.

> of_platform_populate() checks and sets the OF_POPULATED_BUS flag.
> Maybe that is my error and the firewall bus populate should set
> OF_POPULATED_BUS instead of OF_POPULATED. Is that correct?

Shrug. Off hand, I'd say probably not, but am not certain.

Rob

