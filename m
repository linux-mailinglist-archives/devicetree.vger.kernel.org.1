Return-Path: <devicetree+bounces-253643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B141CD0F764
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 17:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8138302F6A7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6069F33F8AA;
	Sun, 11 Jan 2026 16:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RQ6MJ9LH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4399221FCB
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768150017; cv=none; b=NMMkP2T04VVk/toYcRh7wxDTOM7/8qqEx3wbHM07iHr4MXOCoueDNt7MvlF4a+5wFwtMzFW8RVr9kyMaxX62nQTf3B1LrXLssjyyTRm30ji+DaqSXhnWWYT/G89vJEdz/k5B7z3pusQynDPXufxR3VRfiN+bUY37o1PwLB7OVf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768150017; c=relaxed/simple;
	bh=EKeMRlHlw2Rgeq19TymBbPBx8wczT3GJe0/hQx0Xx0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ctqgz/Q9iV2VCr09lWDlvgfCT/u2HOfNNDcLxwJkPGF3U2B8/qSRujndJ6etD+N9wRkKN5hHQkL8JxVSAzl8XDRXlu7OqLUqF0qL8YLfskp2HniUqUGTKREdbVQ94FbVXj2erpbCSXmEtLdSdNJnJiTvnCNdNcPE4Xs6xUyxuVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RQ6MJ9LH; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so30816705e9.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 08:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768150014; x=1768754814; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JXXIjf5GUwJDqboXk/BUgrbJnl8FqgJPhbiKhNF9WA0=;
        b=RQ6MJ9LHuABBd9ogQNkQfS/9O3RDmNxuR4vrJ14RGOcQgHchoqwJE5e4RpNtRWWYU3
         OfEqQYJktCFKykX/DeyKL3ddpF49HcfKEwe+g8n5+nEDREgPIZnH8/F7fGLYqByTJwSW
         1jgwVLD/DXoenWTSNiv4OCvV2PDZgWRDT/lxbdy5Wo3wB6+DdrlP9Qs8xowncs04aGfS
         PWW2D6x0BnEU4D/hYc2bDaXkjVp58VIFosSRTQ39VgPP0GhydlCDF+hCDfJUxZsD7i2v
         +tH/ovKHwBrvUtY2+Mf2DK2l1ErL0+NOUPJlVCZjdFtRFH4ObnucSJrKL3N3g0bMSmZz
         1YYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768150014; x=1768754814;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JXXIjf5GUwJDqboXk/BUgrbJnl8FqgJPhbiKhNF9WA0=;
        b=Ji0NulMSH5lJyN95GdMp4cSrumuDioQt/vevbFNcTn/AOBELBR+Ni8VGniRVf66lpr
         pBD0qK3vEF2iSCexkY1+0c44CkTGQFb1t0PGFkSr6XBtjL9pQ52GxH6Ba2xdQ7LQKfqb
         mj1esPyuJNca3yz8xrlC3XuQtumYGNwvQNbhDyGtDHZGpDC3OVNmykjbR2mMCKdBtDf6
         R6vgW8hnqTcu5LOsl0JNi0y7smY7eIZCwKlGP1B7tEjzHpg0u5Ix4NA0oixGOvYPYf8Z
         vEBKI4/njHVnHcLWD/8bnDTuOpU9r+eK8qvpDbzFu/Y2IGu1O14O6NPxLYk456ZOkx6z
         5FqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1hJpaJIIq9L6cBLKBfjea9DHwUKHZzJ/dCR6yy41uOFVf0bOFF37ls8A3PFKeGXut6rhokYAugN82@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb339GlnsicspgHuQv9NCsSTeVgTrP9jTgZ4sF5IHj6TAmsGpK
	978PTPEnRAYqwO+xmRTia12dlv6zK7gyMHTtO6HCdKhc1i8WE8CkmO+DdoJUPA==
X-Gm-Gg: AY/fxX7Vyh/TsADDDl0icAX8ioXeY3AK3qgY7IGpmG2bIghBhMQ2QUCax+fH+FSi7gE
	5nBnKAN9KTybrbPfjxHYo+Lq9X9hR+vgYDhw2sKBvbUH0You6MPdEW2gT7E3faXox3DJvPTzsXk
	2FFa6lU/i9dSIRXSCEBZrUmrOSEYQGX3h6mK/up8RTW7I57W+QPRqpdKHcIkgHLplfONcB2ZlPH
	hpBHzLj/Vy7PP2InqeBlpQIoARyS5B0Hy13LYWRYdGOgRTDiZuLaMhwwn7mo6a4pP9+KV3rzWeX
	aAtxeeIdb0IPqAVdIre44Z8No1OmjwxSirdGp2T4qO3BXcDmr/OubyFRHBBEfvzI5FxlfPTXuYZ
	AM/lwNwHCEc9iMMf8RudAxmy/s5+7YTdwxufhrLswFYMEj8FhzpcULO68M5+a20MhiAva8AHhRT
	AWj80z5+trRds6WHX9p75bUtuR5BDIErAZGEnab9CYcy/VnYLKscD+KSVpBdBRQOe3
X-Google-Smtp-Source: AGHT+IE/2VrwBn/B2S3fOGbBdhWgsr/s+ZUXrx13BwQ/UzL/3rHx0t494nmIc60K28I7RKjr7ysiHw==
X-Received: by 2002:a05:600c:a08:b0:477:b0b8:4dd0 with SMTP id 5b1f17b1804b1-47d84b36b7emr195633575e9.17.1768150014007;
        Sun, 11 Jan 2026 08:46:54 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f0cf2sm110128995e9.3.2026.01.11.08.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 08:46:52 -0800 (PST)
Date: Sun, 11 Jan 2026 16:46:52 +0000
From: Stafford Horne <shorne@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: gpio-mmio: Add opencores GPIO
Message-ID: <aWPT_HsRVC0dQ_j6@antec>
References: <20260109134409.2153333-1-shorne@gmail.com>
 <20260109134409.2153333-3-shorne@gmail.com>
 <20260111-bold-wolf-of-champagne-58fac7@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111-bold-wolf-of-champagne-58fac7@quoll>

On Sun, Jan 11, 2026 at 11:18:42AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Jan 09, 2026 at 01:43:53PM +0000, Stafford Horne wrote:
> > Add a device tree binding for the opencores GPIO controller.
> > 
> > On FPGA Development boards with GPIOs the OpenRISC architecture uses the
> > opencores gpio verilog rtl which is compatible with the MMIO GPIO driver.
> > 
> > Link: https://opencores.org/projects/gpio
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > ---
> > Since v2:
> >  - Fixup patch to simply add opencores,gpio and add an example.
> 
> Simplify? You completely changed the meaning of binding here - now
> device is not compatible.
>
> I don't know which one is correct, but your changelog must explain why
> now devices are not compatible but they were before.

Hello,

Did you miss the 1/6 patch in this series?  We add the compatible string to the
driver there before we add it here.

Sorry, I thought the series and the over letter would be enough to understand
what I meant by the "Fixup" description here.

> > Since v1:
> >  - Fix schema to actually match the example.
> > 
> >  Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > index ee5d5d25ae82..d44edc181e0a 100644
> > --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > @@ -23,6 +23,7 @@ properties:
> >        - ni,169445-nand-gpio
> >        - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> >        - intel,ixp4xx-expansion-bus-mmio-gpio
> > +      - opencores,gpio
> >  
> >    big-endian: true
> >  
> > @@ -160,3 +161,11 @@ examples:
> >              intel,ixp4xx-eb-write-enable = <1>;
> >          };
> >      };
> > +
> > +    gpio@91000000 {
> 
> Please do not grow the examples if they are exactly the same as other.

I figured this is a new compatible string with a different set of 8 bit
registers so having this example would be beneficial.

> > +        compatible = "opencores,gpio";
> > +        reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > +        reg-names = "dat", "dirout";
> > +        gpio-controller;
> > +        #gpio-cells = <2>;
> > +    };
> > -- 
> > 2.51.0
> > 

