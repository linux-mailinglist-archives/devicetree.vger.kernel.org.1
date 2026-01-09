Return-Path: <devicetree+bounces-253365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 58819D0B46F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 17:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B30C530979FA
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 16:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6973C262FC0;
	Fri,  9 Jan 2026 16:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E382578F2B
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 16:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767976224; cv=none; b=bft6OztarqaP/IS7NShBEVga7nEGqL9fMk8+yqSTdPhigtBTvY6BRi8F5WAJrTF668eQBkRBCC/KompTinllGRbvoCulGa1nPPJx60HtVC1d8DIdRZabaYJld9WijDisWvTNQRggf67DmxR8f966AQgznthmh0PL2BsmYJdmG+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767976224; c=relaxed/simple;
	bh=q2Kww8jxXcJ9Zpyd/LZlLagNoFIlkoKqu9nlzf+mRgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TIwMyN27hQArbF4IfuLFbTtAt8ltVA0k0G28JCxh16OXlmB6AEdF/1Az5oER1+/6mOR0YQ627w0LJqaJfLIV5/lyETbLnNrWSR6UTv4wQ8EGgym+YAvsKmd77zsUtVJHGDccpYvFRLlQk/1Thz0lPc+GdhT5mAyeTMhKT5algMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-6598413b604so2750959eaf.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:30:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767976222; x=1768581022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZubT71CRwOcTCIzcYS6e5AdXUs3dXA6+1fPYpwtqxhQ=;
        b=c/UleO4stnpjvSIGmNW2Sn/uCX50wzI8pOscUu37bCt4ELaBZbqJUlLz5grzMncA6H
         ElDQRuWREi+F+9TSjjswVPKPqJR8j5+Ic8p0OfCzBw92BjpsmrNHGgDOI/hspzTF+Xax
         W6blUnRSUWFZoov7E+1dT+IsqcMBTPt+BorRgrv98T9aDdrGWJiFbJLOH5PgF79HEOuw
         W4Ok5wlO1qidZ99fEdIVshvZ0Elea09CX16aVWDMVSei76L8kONzK6VP1i2XH+FEqNhY
         S9Y3ZvL8ooedJ1h4PuqHXuNJR5tp4z82ems6zJNFjfvLnHmkBvJdkzrmSU2FtoqOx9Sd
         msbg==
X-Forwarded-Encrypted: i=1; AJvYcCUZsm06MCL7Njuokss5TgsFabOMZBHHhX9YOd61dER+REd6Dl38WcTBaCwn/CMfYiJnBuGlPJg1JuYJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwbERi5tOriI+tgopODq6iKpXlKpoxMUUUMEqW2N07R1gDq+XwE
	qvcoYxJrnJ7fUM+ZcHHBurPJpeTXpxwP8hwg9gU0d66/ZKloCqNaDMnoHNOFx2qw
X-Gm-Gg: AY/fxX5DS4NT7Wa5O+i4x5Vssr6K0hVQ4Jr9SuOr3u/XTCa1QMCxzEUkIrUUf3AcEux
	7EnJU288J11fVD2lLLyWEZvI8uq7SNXp6HOnzmO5W7eN1/nhPoNfurv9ZBEdaBiXsWPcjg2z1xL
	9Mtk8H7kYb6dZAkEvn/3Ae9BnkGwKfAG7YgyPB7ZYu4XSOpcloSSOO60rTSTCnmBEn/xjU0fVQc
	iDszA+nDGBBt4efKM+uv+y5WF1n6VwUPU4U5OoCwplwWcIaddvdvoEuqgpTvBvCEMCzMj3HB+10
	KFdJbXMfZk9Hy/nx4M33jPCYgUEDhzhZ4Qu4BsyXOD/RLge8xYTmQMSk9KkqUMBEMAq0T1ZSf6E
	355h555gHjRW/9XTdhkpFm7ye8Qz9XKuaRYpGxAFwhCwXaaf2vwrM11QYZl6oQWHtsUH4f7+9Ne
	jPrjUJzgAGnmWD2JnoSswjf6b7SZ8y0/9O2F39mI5kGaxDCBsX
X-Google-Smtp-Source: AGHT+IHLEHBX5zYVrXpOpeD7+Ibf5H7XGnZ0ACzn5JiZv04fO6MA0KrYquRI3B21vkqhQ+l50TrGMg==
X-Received: by 2002:a05:6820:4ecf:b0:65f:fee:f7cc with SMTP id 006d021491bc7-65f54f52054mr4314888eaf.49.1767976221729;
        Fri, 09 Jan 2026 08:30:21 -0800 (PST)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com. [209.85.160.42])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65f48ced969sm3997330eaf.17.2026.01.09.08.30.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 08:30:21 -0800 (PST)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3f0d1a39cabso3061254fac.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:30:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUYKfe7FmMDhXE3BNbV47X1+MVpYsoCPA0DUUTtWgO0DvdhtE0j6X+AYX3Z1PfcOck+UkNRSe286s4J@vger.kernel.org
X-Received: by 2002:a05:6102:161e:b0:5e5:5ed7:60af with SMTP id
 ada2fe7eead31-5ecb90b08d7mr4011067137.38.1767975733803; Fri, 09 Jan 2026
 08:22:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <1c7657d6c06d99bc2f90251995ad272b5704717d.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <42bbdec7-ce6d-417c-a13d-ce0a6782bc9a@kernel.org> <aWEnfJonv4egKhXo@tom-desktop>
In-Reply-To: <aWEnfJonv4egKhXo@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 17:22:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUm-yHkRw0k42pfq9BD8urLO7rqF2yD7s2JbkMFpRTQwQ@mail.gmail.com>
X-Gm-Features: AZwV_QiF7IGNds3nroCU8C4Y7nT5yUExjbtpCqViVpA_Mph5jGaVHbhMlWChdXg
Message-ID: <CAMuHMdUm-yHkRw0k42pfq9BD8urLO7rqF2yD7s2JbkMFpRTQwQ@mail.gmail.com>
Subject: Re: [PATCH 09/22] dt-bindings: display: bridge: renesas,dsi: Add
 support for RZ/G3E SoC
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, tomm.merciai@gmail.com, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Fri, 9 Jan 2026 at 17:06, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Sun, Nov 30, 2025 at 09:24:57AM +0100, Krzysztof Kozlowski wrote:
> > On 26/11/2025 15:07, Tommaso Merciai wrote:
> > > The MIPI DSI interface on the RZ/G3E SoC is nearly identical to that of
> > > the RZ/V2H(P) SoC, except that this have 2 input port and can use vclk1
> > > or vclk2 as DSI Video clock, depending on the selected port.
> > >
> > > To accommodate these differences, a SoC-specific
> > > `renesas,r9a09g047-mipi-dsi` compatible string has been added for the
> > > RZ/G3E SoC.
> > >
> > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > > ---
> > >  .../bindings/display/bridge/renesas,dsi.yaml  | 120 +++++++++++++++---
> > >  1 file changed, 101 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > index c20625b8425e..9917b494a9c9 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > @@ -28,6 +28,7 @@ properties:
> > >            - const: renesas,r9a09g057-mipi-dsi
> > >
> > >        - enum:
> > > +          - renesas,r9a09g047-mipi-dsi # RZ/G3E
> > >            - renesas,r9a09g057-mipi-dsi # RZ/V2H(P)
> > >
> > >    reg:
> > > @@ -84,6 +85,13 @@ properties:
> > >            - const: pclk
> > >            - const: vclk
> > >            - const: lpclk
> > > +      - items:
> > > +          - const: pllrefclk
> > > +          - const: aclk
> > > +          - const: pclk
> > > +          - const: vclk1
> > > +          - const: vclk2
> > > +          - const: lpclk
> >
> > Why are you creating completely new lists every time?
> >
> > No, come with unified approach.
>
> The intent is not to create a completely new clock list per IP, but to keep a
> unified clock definition that can scale with feature differences.
>
> The previous IP supports a single DSI input port, whereas this IP supports two
> DSI input ports.
>
> Because of this added capability, the hardware naturally introduced an
> additional clock.
>
> Can you please suggest how to handle it?

Keep on calling the first vclk "vclk", and add "vclk2" at the end of the list?
Then RZ/V2H can specify the first 5 clocks, and RZ/G3E can specify all 6.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

