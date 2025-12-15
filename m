Return-Path: <devicetree+bounces-246524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CFCBD707
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 980EF3011EF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A2BE32ABDB;
	Mon, 15 Dec 2025 11:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BB2qxLmQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A25E315D48
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765796643; cv=none; b=T5pS43S5fQXyFTcRawQ1qanJisfjAmJj8lJMfbexNGzG/zggPVy9FF0v66ErQ3QqgxWmaO6N1WvHCTKklZZe6+O07piDOkIwX9DYO0DAHoQgrhtTXnjw1VjskxojfAN/b9c4p6JdTLHU2Bf+IJRTaMFhDMVg6/OuwC9PtNjnXB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765796643; c=relaxed/simple;
	bh=C0yWRkCJWAnUZ9aVqQYR6Eg1NP8zeZ6hWqVwaupvUPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C8PmDb5Z7WdTgOxfOX4eLyFL57O5Udy2Lxccb4O6QBcP1iN4aYIG/lGBuCBP44yIn1EdkhDWUnaAxUcGHnRyop1stoQQ/PrpFqbNAJLqNncqzkhRt8c9cz9pC70NskYpNdVl83NBCs+lsd5iWPSL7zev3pW2agBZoOTYgPgRx58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BB2qxLmQ; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88888d80590so3095196d6.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765796639; x=1766401439; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cSDo6jz1KfR8x2xQj2Xi0AZoqdKCXUhtN1yJ6/bnb5k=;
        b=BB2qxLmQMP4N/on/Hvl5qQRWatqg8o2tfoVAPlY8cH1VE39iGUsn1u9tKGJSH4v1mL
         phaWhOyDV5TZ0klreBwP6SmqBaMIeKaJaQxGIpfI0W4SxX+9KzN+7xq3JH7mY4IMhSAN
         TZ2NGZZFrvFi6mrShdsigSpozc9MFVx1XcpXM/pMoNsBXdB1CBHfF8hyxjCTQKajklat
         dthlKl+vbCgJNGr6h6j1H7+J/x/OB1qoqAer7cdtWJPtysk71EIAI4atNaZDBX1rk3Oz
         9/YpQEryT7A4rbq3YYyNv/XGw1GU9fwWYDXLiqZXNnOtzmVbIG4liE0nX3+IJgJpeSdk
         YDYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765796639; x=1766401439;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cSDo6jz1KfR8x2xQj2Xi0AZoqdKCXUhtN1yJ6/bnb5k=;
        b=VR7By99MeOWaNRlbTXNVP1ehM5k769ytAZnhGhMGW5z61pyuNfb1jQd6rwHsTp2+oh
         tUyQPa78ZDhpdCE/fwyZmQzrEx9ofU/DpSYDwRWE+2OyXEZ88OfRmxUnzzweN5+diOAF
         NAYyShlO5RTDUz5LeE//WrJ+uVUiXejl713QQTAAtcQPuqmRmnYkXfzvUpsx2LiqcRqL
         D2M7VZ5iczloml6ZN61QFivwKYBmyZSp9Vlgn+lFx//luP8SEy+mafOoS6I0KvI9UGX8
         FmmSNSqdrO1kjFsGnnL+RxHbkfO33zQ6Xyn3wtaU0D82s6iNnOz4yt613Uml0YZQ7itU
         COBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIepg95fiQdlinQ1cyWkvpiRV8QRefL6f1ooyNZtmnyvBZX6wh6dlqkX9e84RvukpU5uvmMubNRye0@vger.kernel.org
X-Gm-Message-State: AOJu0YwgB2GQTurnxQUdkZs9YwEDJJq2TFfDLc4R3L1eo1yNBQ0harW6
	/6H1trbFXgqoquU1PC31GfUOSEJ0ae/s+99CtO+vegN7txKcs8hx8ebT/9WvxrCwQIQrqZJ5Y/O
	O67E3
X-Gm-Gg: AY/fxX6k4zIcYdfY15ZHBEI+aeue9V5MArW5SzdOST+OxYusSCH/9zZsyRT4Gk3baZP
	AoyrYmhBynw5bUB58Foi7gbe/+w0kug6CGyC6znUnjqPJaLO936gFNHhYBv3oyi/OB12jZSWsLq
	ih7dqWmALtMVEIAzHv/xig0KO7MXfSwYckgjtPNXMh/zAJ/jlKNnJgNHquvG0QyhUqxPkmvIIwS
	34qeYVZ/V10unrGco7ffJt7ZSkf2X10SNAoDshGn52RlzFTVj8FKB/OD4kaqSabt8Xkb8/dq/zR
	hFlpMKgVvJFRWhChmI6tCKHrXpcstQM6hq7xp6FvFYx9fIByKdLB2zRPLCOSsPihcI6DWsU7x+m
	zmRcmEp+oXuNY+TQTPdzACzmWbjZAk9+41Ul5S1s5xcRTBNhToiw75mFMHi9NeINa6FrJFion/W
	U7AnBCDLU706rVCcRMENuqT5GgJJo=
X-Google-Smtp-Source: AGHT+IH2GuS1S7AkjP0vDORe6yuPxMlX8bc9q8EfoO0YiGtEfV6xDMqm1UzyQj1c6BZCLpH7j0FH7g==
X-Received: by 2002:a05:6214:5287:b0:888:201e:57c7 with SMTP id 6a1803df08f44-8887dfeddaamr142209466d6.5.1765796639203;
        Mon, 15 Dec 2025 03:03:59 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88993b6a80fsm48360486d6.18.2025.12.15.03.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:03:58 -0800 (PST)
Date: Mon, 15 Dec 2025 14:03:54 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org
Subject: Re: [PATCH 3/4] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <aT_rGgjpCiWp349A@stanley.mountain>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
 <333487ea3d23699c7953524cda082813ac4d7be3.1764592300.git.dan.carpenter@linaro.org>
 <16bb96e9-c632-457c-8179-82c17bd2a685@kernel.org>
 <aT_p_aGfBpyEOC3M@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aT_p_aGfBpyEOC3M@stanley.mountain>

On Mon, Dec 15, 2025 at 01:59:09PM +0300, Dan Carpenter wrote:
> On Mon, Dec 01, 2025 at 06:33:07PM +0100, Krzysztof Kozlowski wrote:
> > On 01/12/2025 14:08, Dan Carpenter wrote:
> > > The S32 chipset has a GPR region which has a miscellaneous registers
> > > including the GMAC_0_CTRL_STS register.  Originally this code accessed
> > > that register in a sort of ad-hoc way, but we want to access it using
> > > the syscon interface.
> > > 
> > > We still need to maintain the old method of accessing the GMAC register
> > > but using a syscon will let us access other registers more cleanly.
> > > 
> > > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > > index 2b8b74c5feec..17f6c50dca03 100644
> > > --- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > > +++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > > @@ -32,6 +32,11 @@ properties:
> > >        - description: Main GMAC registers
> > >        - description: GMAC PHY mode control register
> > >  
> > > +  phy-sel:
> > 
> > Missing vendor prefix.
> > 
> > > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > > +    items:
> > > +      - description: The offset into the s32 GPR syscon
> > 
> > No, first item is not the offset but the phandle. You need syntax like here:
> > 
> > https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42
> > 
> > The description of the first item (unlike in example above) should say
> > what is the purpose, how this device is using GPR region, what is it
> > needed for.
> 
> I had to do it a bit differently from the exynos-usi.yaml code.  When I
> tried it that way I got the following warning that the "phy-sel" wasn't
> a common suffix and it doesn't have a description.
> 
> $ make dt_binding_check DT_SCHEMA_FILES=net/nxp,s32-dwmac.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ./Documentation/devicetree/bindings
> /home/dcarpenter/progs/kernel/nxp_gpr/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml: properties:nxp,phy-sel: 'anyOf' conditional failed, one must be fixed:
>         'description' is a dependency of '$ref'
>         '/schemas/types.yaml#/definitions/phandle-array' does not match '^#/(definitions|\\$defs)/'
>                 hint: A vendor property can have a $ref to a a $defs schema
>         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>   LINT    ./Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/net/nxp,s32-dwmac.example.dts
>   DTC [C] Documentation/devicetree/bindings/net/nxp,s32-dwmac.example.dtb
> 
> The exynos-usi.yaml file doesn't generate a warning like that and I wasn't
> able to figure out why that is.

Oh, crap.  I'm an idiot.  I've been staring at this for an embarrassing
long time, and I didn't see that the exynos-usi.yaml has a description
after the - items description.  And then I send this and I immediately
see it.  :/

regards,
dan carpenter


