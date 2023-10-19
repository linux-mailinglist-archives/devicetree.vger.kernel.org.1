Return-Path: <devicetree+bounces-10222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F27D031E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 22:23:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9ED772821D4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 20:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E203DFE8;
	Thu, 19 Oct 2023 20:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0948347DF;
	Thu, 19 Oct 2023 20:23:20 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F09F116;
	Thu, 19 Oct 2023 13:23:19 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3b2e44c7941so96173b6e.2;
        Thu, 19 Oct 2023 13:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697746998; x=1698351798;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jHvMtiJREiMsYWHyQCKNoQcvR0buRo8qDOLBr2MucEc=;
        b=MSUMX1N0gxQ4Khvwq2A7ObMLpVAuDzLWMHlwEePihsQfREwmqdmwrOekok9CbhZcPB
         por+aNF18BjGM46dEcYMjfyje1/SNCQPyvaevNqqMz33CVysWN4Z4bTsodi4i08g5gWL
         h8DwhHp3wbiuJVJoQp3jrIX1VGmg0rLfzUg+NEVHzC6dFkWrNF15zmUAHW40Rr0hq0bT
         TghGmlTfsnxElQWX/lES4nHtjIlf08A9jbCYrt3zz9bnX+/Z+HvYv5qf/s0JA1oQWo5F
         H5CTz41+kUmjD+/m88poIYY5lahkLW6SycIJZGonZr/B1fmUEGkt0TudBoB4br+gStYK
         KUgg==
X-Gm-Message-State: AOJu0Yzdpdvq2jIIWodY2cBlnVEMWyFse6a229JWDVCPSOQE0wNmnZ3d
	nArYCmbkD3NaY+jRNEwpow==
X-Google-Smtp-Source: AGHT+IE8SHFLEIGY2PEgn+wDdEmdo5LvRmRiQYe2sGsKvC9PZ04WSpKrWDsUi6aVUdQ0Joo2EwdUYA==
X-Received: by 2002:a05:6870:aa88:b0:1d0:f5bd:6d2 with SMTP id gr8-20020a056870aa8800b001d0f5bd06d2mr4267893oab.38.1697746998456;
        Thu, 19 Oct 2023 13:23:18 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a21-20020a056870b21500b001e9dabc3224sm46138oam.50.2023.10.19.13.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 13:23:17 -0700 (PDT)
Received: (nullmailer pid 1044053 invoked by uid 1000);
	Thu, 19 Oct 2023 20:23:15 -0000
Date: Thu, 19 Oct 2023 15:23:15 -0500
From: Rob Herring <robh@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v4 2/7] dt-bindings: net: mvusb: Fix up DSA
 example
Message-ID: <20231019202315.GA1031575-robh@kernel.org>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-2-3ee0c67383be@linaro.org>
 <169762516741.391849.18342287891015837205.robh@kernel.org>
 <CACRpkdZff9fbeJdxqudCtjad=FVKTKQtvo_=GiEBOvnw5xQapw@mail.gmail.com>
 <20231019134514.GA193647-robh@kernel.org>
 <20231019142646.iw6x72y6sqt4q2uw@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231019142646.iw6x72y6sqt4q2uw@skbuf>

On Thu, Oct 19, 2023 at 05:26:46PM +0300, Vladimir Oltean wrote:
> On Thu, Oct 19, 2023 at 08:45:14AM -0500, Rob Herring wrote:
> > On Wed, Oct 18, 2023 at 01:37:10PM +0200, Linus Walleij wrote:
> > > On Wed, Oct 18, 2023 at 12:32 PM Rob Herring <robh@kernel.org> wrote:
> > > 
> > > > dtschema/dtc warnings/errors:
> > > > Documentation/devicetree/bindings/net/marvell,mvusb.example.dtb: /example-0/usb/mdio@1/ethernet-switch@0: failed to match any schema with compatible: ['marvell,mv88e6190']
> > > 
> > > Isn't that just because the bindings now come last in the series.
> > > Which is in response to a review comment, hence this warning
> > > didn't appear before.
> > 
> > Yes. The only option that avoids this is squashing the 2 patches. I 
> > think it is fine to leave this as-is.
> > 
> > Rob
> 
> Anyway, I'm surprised that the bot would send this email, since the
> warning existed prior to this patch, and I would expect that the bot
> only notifies of newly introduced issues.

Oh right. Except that the node name changed in this patch and that 
changed the error message.

Rob

