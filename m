Return-Path: <devicetree+bounces-254337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A775D175A8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7D6D300B839
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E033803EC;
	Tue, 13 Jan 2026 08:43:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com [209.85.221.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9FB37FF66
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768293823; cv=none; b=ijYjXQMb2lsU1g5L2mDjobe1D1myoJMypSbHQ3SfvjJlAO+SJYOlYszBwgifJx8QvHOMdRczaZG7o2+lEaLVXRBBo/B0Io+V05DlFSKOz2glNVHPFSWYU/GyE6WwZDQCWeLyOjwPTzA1BjWYm4d6XlS0UlLquBPh+E+vWkbkhPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768293823; c=relaxed/simple;
	bh=Kw29Mu6HT2HxD5ti7IZmn4LO6W3EDHSFizK6jJGxelw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tH8+S1l3VqAB4Cp0v9q/x4ybYGLgv+Chjd6FbC389c4SOQukwRHQjKbmqThWFHIOk6wQ41VI1EME+HDciXTSA3t7utVPn6cYxIV7WGt3JJ+8aoFECIT2HON1A8ID1tM2598r3b3KouW7B6DjDdKUVcZKDqS8cqA4OERGKuj2pds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f194.google.com with SMTP id 71dfb90a1353d-5636274b362so1242595e0c.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:43:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768293820; x=1768898620;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E1oQ15jpRcmphl58tx08AUKGIdjS+7SOa3S3k4/U/kw=;
        b=XGiS865RiX8siM2KcjF6FZ4zCWPdS8XChsC5So35pA/5jLD5JqcyeGOoulICAuqrOt
         XwHq1fVURQCPJVIXoA2mJH9bFMtDlRs2aqc14zq5H1uCdEXFx3lvsGkkui9cWhgTPIDx
         /M+0E49o2uc1/IZbeheYRdXYqmFoRNhVdjWwbJ/7YVKI4NbI0M2Bcnc1U5GRdieM/1bk
         eUIivu2Ws0UwlTy8+H1K9To+a0Bm3xk24ym7ZQxDNxoyA+VgjhAL9bCQ6QS+vHBXvl8V
         utGXHIHEUNE/cgTVi9AQFDkA/8qLEqqwezq63KHUE+o9efhbSnmzUYiJvIsq7Irj5Xjy
         fpkw==
X-Forwarded-Encrypted: i=1; AJvYcCXznU3T0REZTDJeW889gU8xyNVzI77DGXwdaZYPfwNRH+NrZT+V7Hx9hKPWNyL1hbaKSYlsPALJD71a@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb3/sGkSqrgFKp7SRM9BS/+AVkgN2rqI9lRuHwxta+gMlz2Po+
	u/TUAFUbtjOFD5CkvQQ+DQ7X/E3YtfBv833J9Hxnf4dJ6NHrOQXwsIjvxhnb/j1+
X-Gm-Gg: AY/fxX7ImiGJgMLzymqjwHdxoXFt1POLzKrlUzy0RVxH+rJUr8DxUI+HJxVPRPy6n/V
	9S8XT4NYgQywo7t+b3Hjr/uTSt9NrwmbWC4S92eeX2H7LdYLlHlBcw73YNqE4EIwA034wU24M7R
	cRA3sJ+0jMybz+l0NFNxBCyUyQpCBdfNll44K85vstXeFw5ICOFNPTvxNA4zR0amsUbsi2oet5E
	WJNetTXvz5rAo0BEuJxYSoi4ktUxY6+3ENqyUk3o+YCD8wGXj/bq1w3qENCtCnUHJRD4+NxCzw1
	ICSRtJDaGfiMwPKbi/29Z/6jcTkz1UvaUWbH8Qh1kZLR8YDmWDOn9wGXuQUPaXLphOC0De6Dnnw
	Ynk4TIBogMW1KNDX5Cza3YggkkHgKbME0aBGx/lMfoJZnHUD417Y0YvhpEykqroJbkSZzgs0UOS
	YVR7vfNqZnnBsoIiAWvpjYPRn2Ev4cT8aM8FOKpsY4os6jZqwNZfK/84rKnTw=
X-Google-Smtp-Source: AGHT+IEmgIpkBbGqkeaQhb5zwLMSsBo+cT24Q9MZvkiPhU15+uy1+MGIGtVJS5NkvYMk7W895HjZHA==
X-Received: by 2002:a05:6122:2887:b0:55b:305b:4e37 with SMTP id 71dfb90a1353d-56347ffa392mr6853573e0c.18.1768293819606;
        Tue, 13 Jan 2026 00:43:39 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563817fa357sm6068507e0c.20.2026.01.13.00.43.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:43:39 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93a9f6efe8bso2141762241.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:43:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVBBQLtgPXqymhNHGJjWDKsfq9l81flBO44EDsKMsZm4Cbe2fRg+Bij6XXIodhJQ45Q8OKn+GXcNDQU@vger.kernel.org
X-Received: by 2002:a05:6102:290d:b0:5ef:b3fa:c89a with SMTP id
 ada2fe7eead31-5efb3facb2bmr3596566137.32.1768293818629; Tue, 13 Jan 2026
 00:43:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <2b66577296583a6787f770f0eb13c42a6b50768b.1768233569.git.geert+renesas@glider.be>
 <20260112174945.GC26365@pendragon.ideasonboard.com>
In-Reply-To: <20260112174945.GC26365@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Jan 2026 09:43:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVH9v_Yn4+UA8TAyPu3st55yWFEPFmA6-ZeGkkxs44O+g@mail.gmail.com>
X-Gm-Features: AZwV_QgQdMvlnOnaTNIaFzNr0xfqYvjdFzLdwf3uc17UQjijTlMqSdyHwcT5Hzk
Message-ID: <CAMuHMdVH9v_Yn4+UA8TAyPu3st55yWFEPFmA6-ZeGkkxs44O+g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: nxp,tda998x: Add missing clocks
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-omap@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Laurent,

On Mon, 12 Jan 2026 at 18:50, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Mon, Jan 12, 2026 at 05:02:40PM +0100, Geert Uytterhoeven wrote:
> > Some TDA998x variants (e.g. TDA19988) have an OSC_IN pin, to connect
> > an external oscillator circuit or clock source.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > This fixes "make dtbs_check":
> >
> >     arch/arm64/boot/dts/renesas/r8a774c0-ek874-mipi-2.1.dtb: tda19988@70 (nxp,tda998x): Unevaluated properties are not allowed ('clocks' was unexpected)
> >           from schema $id: http://devicetree.org/schemas/display/bridge/nxp,tda998x.yaml
> >     arch/arm64/boot/dts/renesas/r8a774c0-cat874.dtb: tda19988@70 (nxp,tda998x): Unevaluated properties are not allowed ('clocks' was unexpected)
> >           from schema $id: http://devicetree.org/schemas/display/bridge/nxp,tda998x.yaml
> >     arch/arm64/boot/dts/renesas/r8a774c0-ek874.dtb: tda19988@70 (nxp,tda998x): Unevaluated properties are not allowed ('clocks' was unexpected)
> >           from schema $id: http://devicetree.org/schemas/display/bridge/nxp,tda998x.yaml
> >     arch/arm64/boot/dts/renesas/r8a774c0-ek874-idk-2121wr.dtb: tda19988@70 (nxp,tda998x): Unevaluated properties are not allowed ('clocks' was unexpected)
> >           from schema $id: http://devicetree.org/schemas/display/bridge/nxp,tda998x.yaml
> >
> > This patch can be considered v3 of "[PATCH v2 2/3] [RFC] arm64: dts:
> > renesas: cat874: Drop bogus clocks property"[1], as the pin is actually
> > connected to a clock source on that board.  On BeagleBone Black, it is
> > also connected to a clock source, but not described in DT.
> >
> > The linux driver does not use this clock directly, but I suspect[2] the
> > use of this pin is controlled through the AP_ENA register value, as
> > specified in the second cell of the the audio-ports property.
> >
> > [1] https://lore.kernel.org/97b949cddd7e30e9c05873800330dccd3483b12b.1663165552.git.geert+renesas@glider.be
> > [2] I do not have access to the programming manual.
> > ---
> >  .../devicetree/bindings/display/bridge/nxp,tda998x.yaml        | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
> > index 3fce9e698ea1d2dd..1205c8e9de329bbc 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/nxp,tda998x.yaml
> > @@ -19,6 +19,9 @@ properties:
> >    interrupts:
> >      maxItems: 1
> >
> > +  clocks:
> > +    maxItems: 1
> > +
>
> I wonder if we should add a compatible string for the variants with a
> clock pin, to let drivers manage the clock.

I am not sure if that is necessary, as the clock is optional, and thus
devm_clk_get_optional() can just be added to the driver.

> If the clock does not need to be controlled, an alternative would be to

I think the driver should control the clock. Currently it works by
accident, as on (at least) cat874 and boneblack the external clock is
a fixed clock that is always running.

A simple solution would be to use e.g. devm_clk_get_optional_enabled().
A more complex solution would probably involve using the AP_ENA
register value.  Anyone who has the programming manual for tda998x?

> drop the clocks property from
> arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts.

Cfr. my RFC v2 linked above[1] ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

