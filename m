Return-Path: <devicetree+bounces-137213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E57ABA08215
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD2263A8057
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CDF204087;
	Thu,  9 Jan 2025 21:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UwOQj2mX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02E34A1A
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736457499; cv=none; b=O4MmRvc6NBeot7J597q9jf6EAsPW9RVH8bnpa5myQQD0D1HWf3T6zl0zsXQ/JJQNBPmf619kpQ59DaJLz9rY0YW/bJ7haj/qtq0ruPcIXbvtJl3fPqEiw0YtquyFzDoiFqWxtVjUyXej/TRRfscqZY8GDNMyCUQ2FtWj9d1/l6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736457499; c=relaxed/simple;
	bh=s32GlVgBBdY+VzkOiKMWTVWQS+O27/8Vp6BLAnA/bdQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FZ8lLcwfeIrTmY25InB8JHkJ1Qe1/xSYrVs33cr7PFO4KqKxpBTZOxR4dTauNJKGLp6jXyytyTyDfP9QTxDHPqvHlObIuPlnCgzxSX4Vt90nmRBTrXt7gr6KPxhz/6AzPyxBFi+Be0SjgRcvHlpd+vVaLG4g5ir4xF1z/7Ty0ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=UwOQj2mX; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e3c9ec344efso2201400276.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736457496; x=1737062296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=id1sh3FCg/7RMCobM0hb+35jgQaJrBVPFNS3Z4VpXrU=;
        b=UwOQj2mXV/I9arM6rXgRM0AucxHWw5TD0fpL30Mj8bNETCRP23E3DauS7llse+WRGe
         L0PVCxvl+cyOMp8P69F75GXzwm14moYdjF2NBqX3qKTWiReVa0A2Dqd9P3bdzWO+AFuj
         yEkRTcJWWF1t0aimT9jH1qxD4zbCD7euxbMUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736457496; x=1737062296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=id1sh3FCg/7RMCobM0hb+35jgQaJrBVPFNS3Z4VpXrU=;
        b=S2NcvNHGgYx8nJ4jDdPXTggLjDUKWoit8MHONyFoZ7SRWphFvE/Ha2PZvySw3mUOrh
         WCUNV8joh9SZxTs/3YF8EIxADUsYYKKIs2AqWl6GwmvcN8MX3bn717PWYjJ42s9Nhqb3
         olTdV4SAoHYNtrHmI91XPmQZIMcJ7XgCYdk0kUMIeJZfuJcm4bAokxKYW1KIyD82h9KG
         G4+rjSTbjLkODmBdaNuyBad6HdnfAXizTFzubdPVRohcOqxXs3dVDgpMAQkdLRJD2Wmc
         Ltcv4bm5ANeuVDh1WPxtU1tmuXieAG1gs7DhzM5p5PPjLlmWKY82ZmIw7QwHXNl5oPQe
         PIQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnkDxp6A3PvyhIexLTgPL8qPWibcZIpjeOkvXWHY0xJNqjruvK0guwskjAsZNbm4M8osQcl3QUSkCB@vger.kernel.org
X-Gm-Message-State: AOJu0YwYi2blxmzTFFBjPuV5TCJ7e2mloknoasJOQ3UjUAXFhX/N//o1
	ufbjEQdsXnNLQME9JWux8HOcP3DKru3XNwzhWbtVGuQgAKhLwbJnjD/AkzEMuI/j9KebWamqmI7
	ho34PvvfflT3Z44CYC+hADvtKsJi1sKcI6uIC9w==
X-Gm-Gg: ASbGncsl+6g/ZNM9ohsFPwIgBl3QnYPutzWXSmb9g39nGZLakTWxU9wyUjsAE8Zk2r4
	+62Nyz+xbnxpKqfxWDIav87/uaM+23laXSg==
X-Google-Smtp-Source: AGHT+IEitao6xkL4KuruOiZLl8pzkE0Tr8U9XGdZMOjjPpiCZSWKdvOna0N9OTnQBhhi7O+5g4P8CEDUT7rp7zQGK3E=
X-Received: by 2002:a05:6902:10ce:b0:e4a:9ef8:804b with SMTP id
 3f1490d57ef6-e54ee138dfcmr7114871276.19.1736457495749; Thu, 09 Jan 2025
 13:18:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
 <20250105181525.1370822-5-dario.binacchi@amarulasolutions.com> <20250108234807.GA1247672-robh@kernel.org>
In-Reply-To: <20250108234807.GA1247672-robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Thu, 9 Jan 2025 22:18:05 +0100
X-Gm-Features: AbW1kvaz0srWd9-CXkLWbJC4L5aCPg18CSB1xlYjDSOC4DOcE56GKg2Kqa2-Of4
Message-ID: <CABGWkvpgGNitRfe+qxT9faZ=Oa5+OzbE06dr-0O+w31JOmOQfw@mail.gmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: clock: st,stm32-rcc: support spread
 spectrum clocking
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Thu, Jan 9, 2025 at 12:48=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Sun, Jan 05, 2025 at 07:14:16PM +0100, Dario Binacchi wrote:
> > The addition of DT bindings for enabling and tuning spread spectrum
> > clocking generation is available only for the main PLL.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > ---
> >
> >  .../bindings/clock/st,stm32-rcc.yaml          | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml =
b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
> > index ae9e5b26d876..c345d3ff3fc4 100644
> > --- a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
> > +++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
> > @@ -77,6 +77,26 @@ properties:
> >        Phandle to system configuration controller. It can be used to co=
ntrol the
> >        power domain circuitry.
> >
> > +  st,ssc-modfreq-hz:
> > +    description:
> > +      The modulation frequency for main PLL (in Hz)
>
> No constraints?

They vary depending on the HSE clock frequency used.

>
> > +
> > +  st,ssc-moddepth-permyriad:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The modulation rate for main PLL (in permyriad, i.e. 0.01%)
> > +    minimum: 25
> > +    maximum: 200
> > +
> > +  st,ssc-modmethod:
> > +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> > +    description:
> > +      The modulation techniques for main PLL.
> > +    items:
> > +      enum:
> > +        - center-spread
> > +        - down-spread
>
> What's the default? If there's only 2 possibilities, then you can use a
> boolean instead. Though I assume you want to support spread-spectrum
> disabled.

Generally, there can also be more than two options. For example, in
the case of the imx8m platform, there are three possibilities:
- down-spread
- center-spread
- up-spread
In our case, using a boolean would hide one of the two pieces of informatio=
n,
meaning that if I'm not using center-spread, what am I using?

IMHO, I would keep the string type, changing it from
on-unique-string-array to string.

>
> Are there dependencies between these properties?

The values moddepth and modfreq are used to calculate, according to specifi=
c
relationships, two values MODPER and INCSTEP, which are bit fields of
a suitable
register for managing the SSCG. There is a constraint between these two val=
ues,
namely that MODPER * INCSTEP < 32768. This constraint will be managed
at the driver level.

Thanks and regards,
Dario
>
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -97,6 +117,10 @@ allOf:
> >            const: 1
> >            description: |
> >              The clock index for the specified type.
> > +        st,ssc-modfreq-hz: false
> > +        st,ssc-moddepth-permyriad: false
> > +        st,ssc-modmethod: false
> > +
> >      else:
> >        properties:
> >          '#clock-cells':
> > @@ -118,6 +142,9 @@ examples:
> >          reg =3D <0x40023800 0x400>;
> >          clocks =3D <&clk_hse>, <&clk_i2s_ckin>;
> >          st,syscfg =3D <&pwrcfg>;
> > +        st,ssc-modfreq-hz =3D <10000>;
> > +        st,ssc-moddepth-permyriad =3D <200>;
> > +        st,ssc-modmethod =3D "center-spread";
> >      };
> >
> >    - |
> > --
> > 2.43.0
> >



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

