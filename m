Return-Path: <devicetree+bounces-69186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 161298CF127
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 21:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35A291C20A43
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 19:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6ACF128375;
	Sat, 25 May 2024 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="JHqGHvjU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5526286AFA
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 19:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667114; cv=none; b=aoL+jDn1JLC3L9GVbXTVb4T/wJpUhVwb9jYZdpGYRaqEVWkA4LFMmlk7qwulVMXfwaBEsPsq/23X+w27HPlM31ERycXghM72d27Pmrbvm6JVWxrC7LiEw/czvHAJoeA2B0REgLuGOHo+tbfcPMv64lXR74RFNSQcXf9v+dEb2jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667114; c=relaxed/simple;
	bh=YyktBYvkAnwaBKuCJSVUX+2IGFFXy4pY1RBykLD/eQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CcGjLIRDQaUfbYY9aUD82t+dEZmEtCfFxzV5P7oMAC7bCw0fmR5oV5OZlJaYvLdZrH/7dMGKQxJYZZcWzAzOGrh5/O4KgxvqDjnSabsY0On1SINKBp08Al3uLqXrINa/0wyV9PPFrAjaTFpb7GiAqxIND8gc4Yi3XEtKveBJhCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=JHqGHvjU; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59cc765c29so492519266b.3
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 12:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1716667111; x=1717271911; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9UkScwBgCN+E8s4yRTB4uCPcQeq88yLTx0RPgq0Jips=;
        b=JHqGHvjUblGBUlK/oa6uJD86stGF3MYE2qyOT71/dxvF6pNwQgx71kBLqfpjHjmOh7
         WDhPmxVcr7AAvpssnGoLRmSOC/TshIpqJEYK2fFV8ptTBwLal6SEvy32rFcIMT7kk+y6
         sH1Dx0QIuy3oEiFlQfxWNJarc5CpzIaoOQKkj2pM21QAyfYgN+64ele9UQ8fVTWbR/NT
         OQGJUTZsxgAeUB+SB0moEk18ZcWgHhUQ02FswaxT9AziHRxRFfj8Jtd9Ww3CyzLoy/OW
         yuGXJsMDf0+QeyrGMbhsg3Cpy3j2FcaMWFiHG4ng+37bnmSzNqk/8xxuWn4NK1VPQsDl
         UVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667111; x=1717271911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9UkScwBgCN+E8s4yRTB4uCPcQeq88yLTx0RPgq0Jips=;
        b=eJ9H1SR1QRcbp+1c5K6OFclErAAwFRol6Tkl5e7J4gQlxf87zFniYf60JBASqcoiOg
         csgrXlZlb05peOJv4TSS1mJt6t/EPsdv4zZnB5vewqlR/0HJ0Vx31FpvdBmuA0mbIWi9
         v4bQjRkZ5P+m2fGsTbHVg7eW5iYupUDoP80Tdl5Ht1rj/m7eZEXxfk6/wGT/9ffnO6Ih
         H+5IRJpXAcqyOiede8EiXCzMn6quo/Z6sYjN2j/tXEd9Uy1Jb2TtrJa89rNR77DCT1DD
         l6Hc0h+xsuH77rQn2UrJvN9ybU3EnXqzBqTJ/zUVaAkddk5H/SUCyZuWTw80b7tG25DO
         1nCw==
X-Forwarded-Encrypted: i=1; AJvYcCVUbTuUzm/jfvryMmwBGpaDwhzTxxpJ7bzrH3uzC5wDnKyzgQWYIusyLWn973/L9zW0vYGCV4OoUZs2++NyuzG5U1Ce7efU4W+YpQ==
X-Gm-Message-State: AOJu0YxpQF337W0asqeluCAr6kcnBl2TadmETSei8v9RBc9KwBOC9YUT
	HYTw4TKmpHttka1nDrR1WrVpp3BdnpyqdLdOZgTrqu/Zj7AkMCK+1/VQ/QAstWHmz+95NXeUbbr
	0Ar1RebcAXRccMF1ohkFOUp25VU5OBwrEZgz6eB1oMM8UVhXppR8=
X-Google-Smtp-Source: AGHT+IHmcUbw6PneWW81LNhoVdjfmvJD2KPXgw1NohVR46fYTKEQJ3xUFOcbylon09NqVhutwrjC7k1lIl8wFWY6ViM=
X-Received: by 2002:a17:906:131b:b0:a59:9fc8:38bf with SMTP id
 a640c23a62f3a-a62646cd6ddmr353575366b.24.1716667110587; Sat, 25 May 2024
 12:58:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240522215043.3747651-1-tharvey@gateworks.com>
 <07250029-7cea-4a82-9e70-22e0e6f7fb37@linaro.org> <20240523-vividly-sequester-d85ac7bccbbd@spud>
 <CAJ+vNU3fQt=6t3a_QFU_3jb5mTVLGJiptPnGEmWvvXZYGEPOFQ@mail.gmail.com>
 <20240524-cavalier-outthink-51805f49c8fb@spud> <8007abef-38bb-4d7d-a453-00bb5e6bede5@linaro.org>
In-Reply-To: <8007abef-38bb-4d7d-a453-00bb5e6bede5@linaro.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Sat, 25 May 2024 12:58:18 -0700
Message-ID: <CAJ+vNU3Rh6f-HrFbBLxNXVP1PwsGh8OyGmmGJBv6+GRwZaTXgw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: rename gw7905 to gw75xx
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Li Yang <leoyang.li@nxp.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2024 at 11:34=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 24/05/2024 20:40, Conor Dooley wrote:
> > On Thu, May 23, 2024 at 04:04:50PM -0700, Tim Harvey wrote:
> >> On Thu, May 23, 2024 at 7:47=E2=80=AFAM Conor Dooley <conor@kernel.org=
> wrote:
> >>>
> >>> On Thu, May 23, 2024 at 09:02:46AM +0200, Krzysztof Kozlowski wrote:
> >>>> On 22/05/2024 23:50, Tim Harvey wrote:
> >>>>> The GW7905 was renamed to GW7500 before production release.
> >>>>>
> >>>>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> >>>>> ---
> >>>>>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++--
> >>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Docum=
entation/devicetree/bindings/arm/fsl.yaml
> >>>>> index 0027201e19f8..d8bc295079e3 100644
> >>>>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> >>>>> @@ -920,8 +920,8 @@ properties:
> >>>>>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
> >>>>>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
> >>>>>                - fsl,imx8mm-evkb           # i.MX8MM EVKB Board
> >>>>> +              - gateworks,imx8mm-gw75xx-0x # i.MX8MM Gateworks Boa=
rd
> >>>>
> >>>> That's not even equivalent. You 7500 !=3D 75xx.
> >>>>
> >>>
> >>>>>                - gateworks,imx8mm-gw7904
> >>>>> -              - gateworks,imx8mm-gw7905-0x # i.MX8MM Gateworks Boa=
rd
> >>>>
> >>>> Compatibles do not change. It's just a string. Fixed string.
> >>>
> >>> I think there's justification here for removing it, per the commit
> >>> message, the rename happened before the device was available to
> >>> customers.
> >>> Additionally, I think we can give people that upstream things before =
they're
> >>> publicly available a bit of slack, otherwise we're just discouraging
> >>> people from upstreaming early.
> >>
> >> Hi Conor,
> >>
> >> Thanks for understanding - that's exactly what happened. I'm in the
> >> habit of submitting patches early and often and it's no fun when
> >> something like a silly product name gets changed and breaks all the
> >> hard work.
> >>
> >> The board model number is stored in an EEPROM at manufacturing time
> >> and that EEPROM model is used to build a dt name. So instead of GW7905
> >> which would be a one-off custom design it was decided to change the
> >> product to a GW75xx. The difference between GW7500 and GW75xx is
> >> because we subload components on boards between GW7500/GW7501/GW7502
> >> etc but the dt is the same.
> >>
> >> If there is resistance to a patch that renames it then I guess I'll
> >> have to submit a patch that removes the obsolete board, then adds back
> >> the same board under a different name. Shall I do that?
> >
> > I think this patch is fine - other than the inconsistency that Krzyszto=
f
> > pointed out between the "renamed to gw7500" and the "gw75xx" in the new
> > compatible.
>
> I am not a fan of renaming compatibles because of marketing change,
> because compatible does not have to reflect the marketing name, but
> there was already precedent from Qualcomm which I did not nak, so fine
> here as well. Double wildcard 75xx is however a bit worrying.
>

Hi Krzysztof,

Thanks for understanding. The double-wildcard is again a marketing
tool. All GW75** use the same device-tree by design. The boot firmware
that chooses the device-tree understands this and for a GW7521 for
example would look for gw7521 first, gw752x next, gw75xx last.

Best Regards,

Tim

