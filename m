Return-Path: <devicetree+bounces-41292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2611853085
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C312C1C228F8
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991D3286A2;
	Tue, 13 Feb 2024 12:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="1DmTlkhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60DB29CE4
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 12:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707827453; cv=none; b=BWpheczAig4QwU3PN1RCYcKeJko/Ka80564t/LkzwXLdmOl9/mgbbymvvklzWe3kUOAjtjI6IDR5syg7YtApLdFtDLTPxsfZJ98kVr3QOqOf+1k45IwjfIevUM6ziyezEjGXK5H4icY9hUBd0ews3QxJchVkvex6ubvTbf109Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707827453; c=relaxed/simple;
	bh=MQdAOzWRZH19ncVFA9DavPAvfJT2mFYM7bRyKYXwSx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VqQY149Z7EzAm5THNlKzOfWW8krlLjK37lszr572baIRaT83k/uKdS4Nvm2gp4KioMBQ2HK01QkVoV9iqgvEGEG3cpAMzX/ABlfQEMKH1ok7GpDTG3I216dssoyCKWEJngwamnTLuaC4udZRJp3sJDB55VWmy0mNQV7D5Rj2UHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=1DmTlkhg; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-511570b2f49so4538474e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 04:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1707827448; x=1708432248; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4hb/APHsjY8OxlT19owFaVUFV4OoahcY5ScSzJ9zzCk=;
        b=1DmTlkhgM53FKKqNTdcLFIg780ah4hEgnhUlX8pE2GhqQ6wqOpFi/t5tGjTHRt3CmK
         G24lpx05QKGC/2E10s2nzgS1USbjsti9MEW+uYPlic3XkNjjbFLEMWWSsdfk3eFu2t5I
         uo82B9krcVHAoiTupSNwfl9GnS3HMjegczh5ncdK5Y6GmaKh+ntLZOoftps/0Wp32GF8
         DcEOhJ3Sdp/56nI1pahbVaXgIuFbbBSJaFiDPHEDQ+ZXAuFSve1xElYMbZgBGRRIbj1o
         CeXolE3RsOIGTFrqGbVRl1y/cmBRQaVCjmX0BhDDRQ4loHmYCGAue1RlXkg/EY2K1q2e
         4fRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707827448; x=1708432248;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4hb/APHsjY8OxlT19owFaVUFV4OoahcY5ScSzJ9zzCk=;
        b=jCVEiVzQdeajBDoLIILZTiwuwSujqeEevY/wg3xT664Nb+pFnf6era4hrcUE1cbQJL
         iF40n/z6V1dFE8WRAHb/6LigJB7MGlWCZ6s3+NQUoBr0tQ5uoUtVCM31U7JCydTf2MzB
         woZ0G0O7TwigBXzmytfkLznegF+s4+AeNXWlboKZwHNNWGXrRQNb0oQdM/6TXwstzSCU
         A55VOCRwEupb1xxwrOoZCltLuaoeyBCeLR795fTSga+kKly+jjZvyXl+9PYnGgOF+Lm3
         Y3e9H2LVEFFUBR2C3YwZVQHS9zrRUepHgOz7eL5GIZSPlcjUo9JyDEG7lXcDFO7BHsRb
         Iauw==
X-Forwarded-Encrypted: i=1; AJvYcCWkMMkVyU1Bh/geAucclCtL4iSXTWWGbSblMVMaJqPuOnITB/VmWEmcQMKgMml6FbZdaoGygeom1xh47BvVtGBtS1gkpHTIp+9q8A==
X-Gm-Message-State: AOJu0YzqUF5I7VghHTrWCCkUlGE5i+2qSfXHCLC5BzwrgvfInjv/VaJT
	elqXFqu2pxdOMS+xxp+vsddpPZLeEfksKo1e/4bJBM4B2Fc16yg4hoQclygYW2U=
X-Google-Smtp-Source: AGHT+IHtzZ1erR1N1gXDdoL3sxLskIU2wXdz4b2CL4co9fGX/ja3R4JOcfbKqBfwVsQepfFAsRcVzw==
X-Received: by 2002:a05:6512:499:b0:50e:7f5c:6c7f with SMTP id v25-20020a056512049900b0050e7f5c6c7fmr852155lfq.17.1707827447569;
        Tue, 13 Feb 2024 04:30:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXCoR4yoLgKWgXuye1V8gDzEl5MOru9Rgaw/ayxniK5Qe107QMQqgf5MNV+87YmIXiDvCexeWYsMWrkVU6lZ6+wyR9TINvmD3nOiAxBhMOzsrWFzd8yh0ekOlWiXSxXukhDyjxYFdsHOjaWiIXKWqbgbaFWod8tx/+Tah5L+xbSdMY2Z2UhnmL11arJ5gKxsWQZhJ9TpHxGyC/xtrHrNhkv3cixKY5O0sCQ0rYGDOpxDNa0KRDcSJovbKSee113ax0O1Ff/TQ==
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id r19-20020ac252b3000000b0051181e90922sm1206702lfm.151.2024.02.13.04.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 04:30:47 -0800 (PST)
Date: Tue, 13 Feb 2024 13:30:46 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: renesas: Document preferred compatible
 naming
Message-ID: <20240213123046.GF1870743@ragnatech.se>
References: <20240127121937.2372098-1-niklas.soderlund+renesas@ragnatech.se>
 <CAMuHMdUJ0U9qnxtdJmVUJQqRhbmu0rmOxpyDZ8Lp=+hv=Oe4Og@mail.gmail.com>
 <20240212233836.GE1870743@ragnatech.se>
 <CAMuHMdXBYfi==T_EzbagJFVYkvYU=usEsru1T7Z=rBHFHt-CMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXBYfi==T_EzbagJFVYkvYU=usEsru1T7Z=rBHFHt-CMg@mail.gmail.com>

Hi Geert,

On 2024-02-13 09:29:55 +0100, Geert Uytterhoeven wrote:
> Hi Niklas,
> 
> On Tue, Feb 13, 2024 at 12:38 AM Niklas Söderlund
> <niklas.soderlund+renesas@ragnatech.se> wrote:
> > On 2024-02-12 20:36:12 +0100, Geert Uytterhoeven wrote:
> > > On Sat, Jan 27, 2024 at 1:20 PM Niklas Söderlund
> > > <niklas.soderlund+renesas@ragnatech.se> wrote:
> > > > Compatibles can come in two formats. Either "vendor,ip-soc" or
> > > > "vendor,soc-ip". Add a DT schema file documenting Renesas preferred
> > > > policy and enforcing it for all new compatibles, except few existing
> > > > patterns.
> > > >
> > > > Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > > > ---
> > > > * Changes since v1
> > > > - Split the "SoC agnostic compatibles" section into two to make it's
> > > >   intent clearer.
> > > > - Improved the documentation for each group of compatibles.
> > > > - Reduced the number of regexp to create a larger target area. As
> > > >   suggested by Krzysztof the goal is not to validate each SoC name but
> > > >   check for the correct order of SoC-IP.
> > >
> > > Thanks for the update!
> > >
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> 
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      # Preferred naming style for compatibles of SoC components
> > > > +      - pattern: "^renesas,emev2-[a-z0-9-]+$"
> > > > +      - pattern: "^renesas,r(7s|8a|9a)[a-z0-9]+-[a-z0-9-]+$"
> > > > +      - pattern: "^renesas,rcar-[a-z0-9-]+$"
> > > > +      - pattern: "^renesas,rz[a-z0-9]*-[a-z0-9-]+$"
> > > > +      - pattern: "^renesas,sh-[a-z0-9-]+$"
> > > > +      - pattern: "^renesas,sh7[a-z0-9]+-[a-z0-9-]+$"
> > >
> > > I guess it's not worth adding rmobile and shmobile prefixes?
> >
> > Maybe we start with this and see how it goes?
> 
> Sure.
> 
> >
> > >
> > > > +      # Fixed legacy compatibles
> > > > +      #
> > > > +      # List cannot grow with new bindings.
> > > > +      - enum:
> > > > +          - renesas,bsc-r8a73a4
> > > > +          - renesas,bsc-sh73a0
> > > > +          - renesas,dbsc-r8a73a4
> > > > +          - renesas,dbsc3-r8a7740
> > > > +          - renesas,em-gio
> > > > +          - renesas,em-sti
> > > > +          - renesas,em-uart
> > >
> > > Perhaps combine these three: "renesas,em-(gpio|sti|usrt)"?
> >
> > Will do.
> 
> That does mean these lines need to use
> 
>   - pattern: "^renesas,em-(gpio|sti|uart)$"
> 
> right?

Yes, a pattern is needed. I will try to condense the lists as much as 
possible at the cost of strictness as this seems to be the common theme 
in reviewer. This will be,

    pattern: "^renesas,em-[a-z0-9]+$"

Or
    pattern: "^renesas,(em|foo|bar|baz)-[a-z0-9]+$"

> 
> > > Now, how do I trigger violations?
> > >
> > > I added the following to a binding file:
> > >
> > >           - enum:
> > >               - renesas,bogus-r8a7778
> > >               - renesas,bogus-r8a7779
> > >           - const: renesas,bogus
> > >
> > > but nothing happened with "make dt_binding_check".
> > >
> > > I added the following to a DTS file:
> > >
> > >         compatible = "renesas,bogus-r8a7778", "renesas,bogus";
> > >
> > > again, nothing happened with "make dtbs_check".
> > >
> > > What am I missing?
> >
> > Hum, this is odd. I have confirmed your finding that
> >
> >     compatible = "renesas,bogus-r8a7778", "renesas,bogus";
> >
> > or
> >
> >     compatible = "renesas,bogus-r8a7778", "renesas,bogus-bar";
> >
> > Do not trigger an issue, but a single compatible,
> >
> >     compatible = "renesas,bogus-r8a7778";
> >
> > Do trigger.
> >
> > I tested this before I reduced the regexp and IIRC it worked as expected
> > for the RFC. Not sure if I have updated dt-schema since, but I know I
> > rebased the branch for v2. I will try to figure out what have gone
> > wrong, if anyone know if something changed in this area pleas let me
> > know.
> 
> Thanks for confirming, and for looking into this!

I figured it out, the error is in the yaml file and I have a fix. Not 
sure why it ever worked in the RFC without it.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kind Regards,
Niklas Söderlund

