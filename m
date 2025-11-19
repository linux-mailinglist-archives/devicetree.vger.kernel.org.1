Return-Path: <devicetree+bounces-240445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9155C7126D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:32:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7065C3505EE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 21:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945BE2EA143;
	Wed, 19 Nov 2025 21:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ho+QDf2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8054B2D8773
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763587923; cv=none; b=NgNiCdco2PkEYjSDk6BI+TAAovzbOTmdXVaRfBxsm73NdBdv5HTXRaDUUSgIV7qnwLp5+DOSarr/aehrHY0gqYdmY37wZRJINzCzlS97pA4wuiNPq7pe9fxKU998E/pKVcBaVlvVw/HyDgnkhV4l7GKQpOtro4mcNXRfbE+Iq00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763587923; c=relaxed/simple;
	bh=mVB1MbwnQfQlHf07ijpysVavaLBaywlSzHCRmPkLJLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gpFhh2zGSvKtOkWwAtmfL0n0Knd++dNE5jRhu/+MwUvD4Kdg6TpLn1ked97Y6dc4WFkRdFmtJDZeABrd7+YQSAJQ3J8y8QU+wF29BlZmzT40WRruguWhd87sA6xpF4kjqvxgPD0dlgJU5uN4S7GMoLUoHAHcP5l8BNCw1pc7jq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ho+QDf2+; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59583505988so221210e87.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763587920; x=1764192720; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HocDJXkQ2Q6yyvCf4hMp3RyQdj90OfFx0/4EzdPNA9M=;
        b=ho+QDf2+Q0cNYwh809rUWZ46K7XUszYlGV4R9s9FpvubHt3cA+tSdOKpJYJbDFzbe5
         6TJjbFH3JWshpwPKGmxCO8sY0Rasmql+fabuGaVpSs3FTNOAwU86+ObxpJL8HS/My1x0
         km3UhAA1RRBuQbewXSt6BHGPq/D4ymrMTFGw9JjHUxqvnIRJCXOHtlZpT8qyEJRIlUfb
         E1//gTZxFbUcEFY8wuippz74H6qJUpl61BAyVaOVDLyCfQsaKMIDhf+zPTgLkPnSNxlU
         7zFOh4Bw7GQhBG84w5lGNVNRQnR+hqIjjWBNESDrZuH4cLScBOG7TIuw1Ov4KxpXSwgj
         4UiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763587920; x=1764192720;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HocDJXkQ2Q6yyvCf4hMp3RyQdj90OfFx0/4EzdPNA9M=;
        b=AXOHs9AB4cY4e0+E5B4L1+78Fq6TDjAQyGHXdORafHalEH0R55OBAu57U30gxbEmtu
         4xg30UMn2ox38u/qL6neJg1nt/qHG2m47aEIqrKZ5U1PTbdz8+rcdiiHy0qSUHRftalt
         NyUrMhIgUf8RvXewWFtssfOM9nxtvZTMCNxBhxnV6hF80ZL/RhOTCyzBpEBLuULgx3jX
         nzEcWxBGnvluwpjvjHznrdw6/hdvdxHRHbT+s30aLubzjcTMhIf0DiURiiwfKuYKvVWX
         FEb+fNtchf3GIMELAmebOTcXM1BCoLOenMnTdS8It+YN/VlapWtN8LNcQV7LPhEhEP5i
         IaEg==
X-Forwarded-Encrypted: i=1; AJvYcCVRuPWkRE9kXwN1x0QiKGi1uu+LPIRpNQgiHv2BSyrRkNd/opFgU3LE6u3fkjPM9SNFgG7F101MV7gX@vger.kernel.org
X-Gm-Message-State: AOJu0YzyFEg9KLLyMuPdFKcX55NmvX+k9ZT97FkvLUg2F35VQac6zpQ9
	wNdloddryal9geslK84o/riqAJ+bOoOlW1Wmwuacpminn4fVJeAiBwMHD7TB+pSvmm9Nwr3GLu0
	21yrzRd3PfnEWkoNqcduCpIgIsjKa/Pi4/m4M0xRx4A==
X-Gm-Gg: ASbGncuA5vBgE9elQShGsUjj9BE87PqLRcoSeLtteN2xm8pVWb8DBaMKkf5IPry46VZ
	/HtRcwpk4Mn/t2bBx68H7mMHefNyY6F4XXOkbzmIs1kuNT9Ru0TUsmuHJ1eL3BdNkPQuF0e+DoU
	qdmsa/s2ayjJsjsEvrtFnnXMajLoVDPNuKV6h6/ZmkWK75XldCC0rN8DNwfUg7C6IanjGAtUmT0
	8nGwerx2gCQ+OXrY7QMRadeBlVKUeYwhZdQZjRDYlV/z2/D8ghSPBgYNPRdtHYhQR2NkwTpoZDW
	+KM4LNKe9Z1r9Rb6
X-Google-Smtp-Source: AGHT+IHgKJZ+SWPM4wa4nrVw15UoZXSYF+Rsbp7Y292h6A5/pwa6mBhxgsEzpCfYHBnPDRYXAHWslM9zDPk2zQkCQc4=
X-Received: by 2002:a05:6512:3b9d:b0:591:c8ef:f838 with SMTP id
 2adb3069b0e04-5969ea19b30mr8399e87.17.1763587919299; Wed, 19 Nov 2025
 13:31:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud> <CACRpkdZuopbAyHaZQpeGh0+V7v6Cg5uJwscmVPCfjHghNbPymg@mail.gmail.com>
 <20251119-citadel-shrine-fabc3fb309ac@spud>
In-Reply-To: <20251119-citadel-shrine-fabc3fb309ac@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 22:31:47 +0100
X-Gm-Features: AWmQ_blkeQoQzQj8RKExyC77QH3TjIh7D9NaBoglihjgPogd19TpoYdh4P2O0Go
Message-ID: <CACRpkdZOak-+Aahj7fte9gk9m+76LOguEsO7bBbHTMTfLExWcA@mail.gmail.com>
Subject: Re: [RFC v1 0/4] Microchip mpfs/pic64gx pinctrl part 2
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 7:06=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> On Wed, Nov 19, 2025 at 01:16:16PM +0100, Linus Walleij wrote:
> > On Wed, Nov 12, 2025 at 3:33=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:

> > > and b) how the bank voltage
> > > interacts with the schmitt trigger setting.
> >
> > Please check if "bank voltage" is somewhat analogous to
> > this generic config:
> >
> > * @PIN_CONFIG_POWER_SOURCE: if the pin can select between different pow=
er
> >  *      supplies, the argument to this parameter (on a custom format) t=
ells
> >  *      the driver which alternative power source to use.
>
> It's not pin based, the whole bank it is connected to has to be changed.

So there *is* such a thing as a group pin config setting for a
whole group of pins. Groups are not just for functions...

And I don't know what is meant by a bank here, but it seems
to be exactly a group of pins.

From arch/arm/boot/dts/gemini/gemini-sq201.dts:

 /* Set up drive strength on GMAC0 and GMAC1 to 16 mA */
conf9 {
    groups =3D "gmii_gmac0_grp", "gmii_gmac1_grp";
    drive-strength =3D <16>;
};

If you look in driver/pinctrl/pinctrl-gemini.c you find:
gemini_pinconf_group_set()

static const struct pinconf_ops gemini_pinconf_ops =3D {
        .pin_config_get =3D gemini_pinconf_get,
        .pin_config_set =3D gemini_pinconf_set,
        .pin_config_group_set =3D gemini_pinconf_group_set,
        .is_generic =3D true,
};

OTOMH it's actually *fine* to *just* use groups for pin config like this
and *not* use it for muxing, i.e. have this group correspond to
a bank and not use that group for anything else than to set this
or any other per-bank property. But have a look!

Yours,
Linus Walleij

