Return-Path: <devicetree+bounces-125328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C619DB99A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA30D281D04
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077381AED3F;
	Thu, 28 Nov 2024 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dLoyObGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1209F1ADFF5
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732804165; cv=none; b=XqXr2qqdwkN45f1Sn5KYdwkh8/7xniSqi3DT+2OhkhV05KWwuYATo3pTeij+HbNWnM7nG4jCxH0he/q0fouScWJGiKDtJlQU+eOo8EDUrGX1bEfJLywn4b3W4AlwNWyYm3+3anz9cDurIuFNftvsVj6heIM42Aup7ZK58uJCvVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732804165; c=relaxed/simple;
	bh=8C+LvW+PEHBuKL7Wp5/gkI3vy4HHAgxioycokK9zAWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XVAwelrb9hMLRpr2uIpApWdMnmK//RfBe373dllYYy1EWmJNZC1RVDMvjBFT9v5Ns+29/2H0MkdjBR9ITr7SQ6FsC7QqkkZ84C11QtaSqUTwdo0sMxbFe31n4WiFu1Wdba+A/t/aK0Hp3PWIJJX9VlzQn3HFgsgOrD+k4k3+7lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dLoyObGT; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffbfee94d7so7848021fa.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 06:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732804162; x=1733408962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gVTU1Tn1ipuhM+cKq2hwkSW2xDfrygz6twBX9l1uqsw=;
        b=dLoyObGTkc3FUqj7j2qXmZdkMB9g9EF00XfAkdeF/oZYlFoW1YaPybPb+pzkf0NwWY
         fXXgcaqmIUBbkfu0WJuxcpBXiSXt8bD55bFVdwZVLyCpBaaiWMRkGdmxAtjXCe5N/xbW
         xTTXHDJRDdKblAqBT1nWyKGXfNvSrwFqH0BAvCX1UAFt3nZA7eMXojBGpBxTjmNYaKc/
         FRIqr7VGODCPsTw01z1V1dRob3lMqr2joJC2gntuB5pkIAR4W9uOdYvMeNenZSUTUiM2
         JAxqyg7up3oKBmLOUb2lrH8UhIpIFPAtK5r7eOQnQpJrNB6u6VIyud0lTGlIXPcS/pjB
         fsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732804162; x=1733408962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVTU1Tn1ipuhM+cKq2hwkSW2xDfrygz6twBX9l1uqsw=;
        b=YxPc7FDn0aFEaoOeo1P1+or/waO8P4SYz0ZSDK3lNS84bx5dFs0GJQBCdhSw2IfVaS
         4EUcuuGJEj1EsPK3wEY5+rsmPN799OoEx/DQah5ZGgYIHdgWo9l/7Xe8yeQw+JUxHb7L
         4Q9/oLOVNgY+ke+x0Ni5NRMQgjp0Fpe6utjWwdv0o4PFs7GL9NQ7oKotZvhlvYBkAehu
         K+4gJ9PWI+RqE2+DQMOeTLfTh0y5+7B7bmMROlDxEAPfOIk1NnoYhdfqCvS87PTJiOFc
         ivSOfWVgXM9BCzgl/SfF+j6btxn30UyFFHnAtFqCFHSk3f948EPNOMuHoesTNYW2x3Jy
         JHrA==
X-Forwarded-Encrypted: i=1; AJvYcCUm8YVOtho7SpV4bCHab3JuEf+BQPZ3rzKcHzZhYo1Zm6+oiwgS2OXcKvYwXJpxAdcH+jD+a56o8fFw@vger.kernel.org
X-Gm-Message-State: AOJu0YxZphFEi3lAu2spayrmDkPbXKwLhTET7RjdCeQun7UKX9pGyEEZ
	hjx6tCeVuzdEoxmhILTz3B+dvArsJBSpFZY6w0bUvm46MuRP+q67vtsZGNeijsc=
X-Gm-Gg: ASbGncuShuT6PkVWzxkjCIj00Qwlq3007mWSsKrI2P0FiMbdCqh2BVrfCKTuKJaQtjP
	RuMm8aWUbzId5uuJCojo0ryGV95L/nYEL4CCoZNRIGo6zSS0VM9cVE/oianvJd1pm/vKqJ/ekMg
	Eclke/xxXICByWRwTW4FooOOF15jTyYhpeFbrjhJ+8jZbc40wh/CZlaDP0YrNHm5+EdrqqnZH0L
	HkpTCWH1E52stgRowzTd5D05e3u0lCYe5fLWkwKvP0aeqbL/pibXTL8sFlSp/eNckYN5wL+CTeE
	2eXAyvAJUyF9xqL5Vk/HTBhD9gD7oA==
X-Google-Smtp-Source: AGHT+IHyweCAzP9pLJO4NLISzRUT/iPlUo6AXMrkwOg8DkwU8W+NduHNwNsOOPQzb40Ox1rkWfW9sg==
X-Received: by 2002:a05:651c:1607:b0:2ff:d49f:dd4a with SMTP id 38308e7fff4ca-2ffd60293b7mr29667881fa.21.1732804162195;
        Thu, 28 Nov 2024 06:29:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbeb8f0sm2073581fa.35.2024.11.28.06.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 06:29:20 -0800 (PST)
Date: Thu, 28 Nov 2024 16:29:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andrej Picej <andrej.picej@norik.com>
Cc: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, marex@denx.de, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add optional
 property ti,lvds-vcom
Message-ID: <3jojqg2auvktifilp5qt7tcppsfagk3zrlrmjxlnwxnehd6fwg@y7nxhhtp5t6y>
References: <20241127103031.1007893-1-andrej.picej@norik.com>
 <20241127103031.1007893-2-andrej.picej@norik.com>
 <20241127151630.GA3515396-robh@kernel.org>
 <3b5768e5-dcb6-436d-837c-418676e13b2e@norik.com>
 <20241128-mottled-nostalgic-oriole-be31ce@houat>
 <56f9bee2-74bd-4150-abab-fbc1459d7e36@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56f9bee2-74bd-4150-abab-fbc1459d7e36@norik.com>

On Thu, Nov 28, 2024 at 11:57:16AM +0100, Andrej Picej wrote:
> Hi Maxime,
> 
> On 28. 11. 24 11:29, Maxime Ripard wrote:
> > On Thu, Nov 28, 2024 at 09:46:33AM +0100, Andrej Picej wrote:
> > > On 27. 11. 24 16:16, Rob Herring wrote:
> > > > On Wed, Nov 27, 2024 at 11:30:29AM +0100, Andrej Picej wrote:
> > > > > From: Janine Hagemann <j.hagemann@phytec.de>
> > > > > 
> > > > > Add an optional property to change LVDS output voltage. This depends on
> > > > > the connected display specifications. With this property we directly set
> > > > > the LVDS_VCOM (0x19) register.
> > > > > Better register property mapping would be quite tricky. Please check
> > > > > bridge's datasheet for details on how register values set the LVDS
> > > > > data lines and LVDS clock output voltage.
> > > > > 
> > > > > Signed-off-by: Janine Hagemann <j.hagemann@phytec.de>
> > > > > Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> > > > > ---
> > > > >    .../bindings/display/bridge/ti,sn65dsi83.yaml      | 14 +++++++++++++-
> > > > >    1 file changed, 13 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > > index 48a97bb3e2e0..5b2c0c281824 100644
> > > > > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > > @@ -58,6 +58,12 @@ properties:
> > > > >                      - const: 2
> > > > >                      - const: 3
> > > > >                      - const: 4
> > > > > +              ti,lvds-vcom:
> > > > > +                $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +                description: LVDS output voltage configuration. This defines
> > > > > +                  LVDS_VCOM (0x19) register value. Check bridge's datasheet for
> > > > > +                  details on how register values set the LVDS data lines and
> > > > > +                  LVDS clock output voltage.
> > > > 
> > > > Constraints? 0 - 2^32 are all valid values?
> > > 
> > > Not really, only first 6 bits, which also means that this can be uint8 then.
> > > Will fix with other issues.
> > 
> > Also, generally speaking directly using register values is really
> > frowned upon, even more so when they match a value expressed in a
> > standard unit.
> 
> Yes, I am aware that this is not how devide-tree/device drivers should work.
> But setting this values based on wanted LVDS voltage will be quite tricky.
> Matching a value expressed in mV would be quite hard, take a look in the
> bridge datasheet [1], Chapter 6.5 Electrical Characteristics (|VOD|).
> Basically both:
> - LVDS data line output and
> - LVDS clock voltage
> is determined by the CSR 0x19.3:2. So when checking which Reg setting CSR
> 0x19 should be set to both conditions should meet specifications of the
> connected display. Output voltage for the same CSR 0x19 setting differs
> between LVDS data lines and LVDS clock.
> 
> Anyway, I'll prepare a v2 which only sets a part of this register, a
> bitfield (2 bits) that is responsible for LVDS differential output voltage.

Please use mV to specify the value in device tree. Yes, it's not easy.
Yes, it is still recommended for multiple reasons.

> 
> [1] https://www.ti.com/lit/ds/symlink/sn65dsi83.pdf?ts=1732738773429&ref_url=https%253A%252F%252Fwww.mouser.co.uk%252F
> 
> Best regards,
> Andrej
> 
> > 
> > Maxime

-- 
With best wishes
Dmitry

