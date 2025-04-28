Return-Path: <devicetree+bounces-171522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A465DA9EE76
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1ADA0189F921
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97338262D29;
	Mon, 28 Apr 2025 10:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="ZT7YnNY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9A2261596
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745837939; cv=none; b=H/GvSXuq9k4i74c6Ss9yFzI0Fscoh1U/uQZALaIb4mlW2coJ1Z6Zc83gf6kr+lFtfWGY67hUJlDg5AyAw65jT3/6+AWXh5PuLHjRny+dKrtCCa9ZqyIoCuuxeK6y2yQ5qp3QVWgaqT6NVDdz6oQwRZjZKDAwAaj3SOzhmWE4Vt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745837939; c=relaxed/simple;
	bh=wV5lKKjerP6M76XIjET1jKYjN4kukYAMpdGgE4SoDrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=daKvpo2ysq0KvG+2qRc+ahg2YjzOkp+hSHYvAgkDbWrb6Ui5Guq5ShIhpjixsonZVYo37m/0s4Uicfv6rGp009jHNoGEMvZWjqBt9T+K3+EDeuzOhnz67DljzaxnHB8pcnLUVnT5ALzasce/2XFv8om1vQbGeY/ItDhbgjgKrc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=ZT7YnNY8; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 857D724002D
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1745837934; bh=wV5lKKjerP6M76XIjET1jKYjN4kukYAMpdGgE4SoDrE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=ZT7YnNY8ju6GJlSZM0jZtSQoctNify+ujHQ2rIz8Kx4PjOOEmnUX1OOR2SD7B6MTm
	 vRRftK9uYxLbY7/8K8s8CapMGDaeVC03U8qRuLGnCfnS0wGSEjz94zuB7kpx7lzkKC
	 phOUAANrXzVGn+g4MSQ786YfuDN9bUVVrce+CDuJwk01YmDYLFt4E5qHhBPwszKVru
	 X1E6mMrF80wArXmEbkdxNRLU0psuGsdeZXNV0zQSrQUPgrOoHH8MUrCRxLddYH+Xf3
	 8JyILDSVU6LRcugFMg0IqngoM/bJuwzkC/abAgQhoNBW7w6S4oYCsafbSkRn/lR8ir
	 /qEwAai86iaIA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ZmL6M362Rz6v04;
	Mon, 28 Apr 2025 12:58:51 +0200 (CEST)
Date: Mon, 28 Apr 2025 10:58:51 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Chen-Yu Tsai <wens@csie.org>
Cc: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: allwinner: orangepi-zero: Enable audio codec
Message-ID: <aA9fa4Ynt3Vq2Xsh@probook>
References: <20250418-opz-audio-v1-1-4e86bb5bc734@posteo.net>
 <CAGb2v67-1tk0uAmYL-y6479itUxBJua76qhjn+0tTsN+Ni_a1w@mail.gmail.com>
 <aA8tsao6hhW50k4e@probook>
 <CAGb2v67Trz_Dtp5_ME3MnfwBjtp=DwPN4aJ1vrtizgiUn08_3w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGb2v67Trz_Dtp5_ME3MnfwBjtp=DwPN4aJ1vrtizgiUn08_3w@mail.gmail.com>

On Mon, Apr 28, 2025 at 04:37:31PM +0800, Chen-Yu Tsai wrote:
> On Mon, Apr 28, 2025 at 3:26 PM J. Neuschäfer <j.ne@posteo.net> wrote:
> >
> > On Sun, Apr 27, 2025 at 01:28:58PM +0800, Chen-Yu Tsai wrote:
> > > On Fri, Apr 18, 2025 at 7:32 AM J. Neuschäfer via B4 Relay
> > > <devnull+j.ne.posteo.net@kernel.org> wrote:
> > > >
> > > > From: "J. Neuschäfer" <j.ne@posteo.net>
> > > >
> > > > Line out playback and microphone capture work, after enabling the
> > > > corresponding ALSA controls. Tested with the Orange Pi Zero interface
> > > > board, which is a (mostly) passive adapter from the 13-pin header to
> > > > standard connectors (2x USB A, 1x Audio/Video output, 1x built-in
> > > > microphone).
> > > >
> > > >   https://orangepi.com/index.php?route=product/product&product_id=871
> > >
> > > What about the USB ports?
> >
> > Good point, I could test these. I have not mentioned them because they
> > are not related to audio.
> >
> > > In any case, we don't enable peripherals on "headers" by default. That's
> > > up to the end user. The description for the whole adapter board could be
> > > an overlay that users can then apply directly.
> >
> > For features such as pinmuxed UARTs (already present and disabled in the
> > dts), I fully agree, because they could as well be used as GPIO, and
> > that's for the user to decide.
> >
> > For the audio pins, there's nothing else one can do with them, as far as
> > I understand it. It is possible to use at the least the Line Out pins
> > with very minimal setup, e.g. just connecting the pins to headphones or
> > something else.
> 
> Sure, but you are also adding the routing information, which could be
> different if someone designs a different adapter board. One could
> include GPIOs and I2C from the 26-pin header, and make a headset
> adapter (mic on the TRRS instead of tv-out) with a headphone amp
> and headset detection IC.

Ah, that's a fair point that I didn't consider.

> It's easily overridable, and I suppose providing the basic use-case
> that one can directly use via the pins does have value. Instead of
> doing a lot of editing, the user can just toggle the status via
> the bootloader.

Sounds good!

> 
> > I'll clarify the following points in a comment in the next version:
> >
> >  - The audio signals are exposed on the 1x13 header described in
> >    https://linux-sunxi.org/Xunlong_Orange_Pi_Zero
> >
> >  - The pins can't be used for anything else according to section
> >    3.1. Pin Characteristics of the Allwinner H3 Datasheet.
> >
> > Although I would prefer to enable the audio pins by default (because
> > they are present on the Orange Pi Zero board), I would also be ok with
> > adding them as status = "disabled", as is the case with uart1 and uart2.
> > Please let me know your opinion.
> 
> I think it's better to have them disabled by default. We don't want to
> confuse users that don't have the adapter board, who might end up looking
> at their audio mixer and wondering where the line out is.

Fair enough, that makes sense.

> If they have the adapter, or they are explicitly using wires to hook up
> things, then they can toggle the status. If they have something else,
> then they load whatever overlay that matches their hardware.



Thank you for your review and explanations!

Best regards,
J. Neuschäfer

