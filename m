Return-Path: <devicetree+bounces-3446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC7D7AEDCE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:13:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 2C4E21F25C3B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D1928DDA;
	Tue, 26 Sep 2023 13:13:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77E228DCA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37C4EC433C7;
	Tue, 26 Sep 2023 13:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733986;
	bh=OUp98F+QDxT4cmws6BkGUy2fOeVB7iCn+akHq71RdoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pSTdloDhre3rMF4doLy7ytdMtOjPoAON0RB4Hd+Fn1r3PeaVpAovOqJk9d3Wxad22
	 QJtMLbFyOBt4J/FhAJNXiY0SMMn0xdC8JmHa1gjwxiXKJK5Ysc3soC0d3diwF1vygP
	 aFe6jwpd76CiDu4X1nofCHfc06pJcS9fGgkfBhbDt/YWwavCZee/CPI87K/2sQd7Wc
	 Z02YzJuHxP9NA+nMdQVMY3/gkIaMfxI812mRDrTJT75yBciDhmqKzT6C5AeLITyeI7
	 10PGtSeNVYQqGDws3guNJl5BNGkzoNmOOgTe1b4PwKbpv9t1xB2triAdnjDMpHDxDJ
	 6JssWDM3yuBzg==
Received: (nullmailer pid 3756472 invoked by uid 1000);
	Tue, 26 Sep 2023 13:13:02 -0000
Date: Tue, 26 Sep 2023 08:13:02 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: Peter Denison <openwrt@marshadder.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: List more IXP4xx devices
Message-ID: <20230926131302.GA3753440-robh@kernel.org>
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
 <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org>
 <20230926-chef-steerable-94e1f0bdcc24@spud>
 <CACRpkdatck-5gFDdooxd=fP0R0hBP8Wf490znfvRkeShMLMxsQ@mail.gmail.com>
 <20230926-hunger-naturist-634fe7727c3c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230926-hunger-naturist-634fe7727c3c@spud>

On Tue, Sep 26, 2023 at 11:20:01AM +0100, Conor Dooley wrote:
> On Tue, Sep 26, 2023 at 11:04:26AM +0200, Linus Walleij wrote:
> > On Tue, Sep 26, 2023 at 10:26 AM Conor Dooley <conor@kernel.org> wrote:
> > 
> > > > +      - items:
> > > > +          - const: linksys,wrv54g
> > > > +          - const: gemtek,gtwx5715
> > > > +          - const: intel,ixp42x
> > >
> > > One question, not so much about this particular case, but is there no
> > > "standalone" version of the gtwx5715 sold by gemtek? Asking as I don't
> > > see it in the enum above. The description sounds like it is both a
> > > product in its own right & sold rebadged.
> > 
> > Yeah this one is a special headache. It's two different brandings
> > of the same router. The Linksys version can still be bought new
> > from Amazon:
> > https://www.amazon.com/Cisco-Linksys-WRV54G-Wireless-G-VPN-Router/dp/B0000AR8Z1
> > 
> > I'm leaning toward listing them as two different devices instead
> > of what we have now, which is
> > 
> >   compatible = "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x";
> > 
> > We can just decide that one of them is the canon device, I guess
> > Linksys, and the other we can just use that device tree, or we
> > create a device tree that includes the former and just override
> > the compatible.
> > 
> > I don't really know what to do here.
> 
> Ahh, you were intentionally doing this so that for both devices you
> would list all 3 compatibles? I had it in my head that the OEM device
> would have 2 compatibles & the rebadged one would have 3.
> I'd probably be slightly in favour of your second option, since you'd
> likely want to set the model too. I suppose it's the decision of the
> maintainer for the platforms, which IIRC is you, as given the devices
> differ only by the badge...

I would do a combination. Use the same compatible, but different "model" 
if you want to override it.

Rob

