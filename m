Return-Path: <devicetree+bounces-222968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C17BAFDC7
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83ACD7A2055
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AAC2D9780;
	Wed,  1 Oct 2025 09:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBwxTJ2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C131804A
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759310974; cv=none; b=N4cmg/iJ38kM4bTHw4SogMzza+ZY1BC8RuIfZkHg5V0ZcfHImqZ7TbhmTXIkvJmiamQGOxsTl6FZUY0vWhhpJMhpnaAL/bVqbtaq/AWeXBJc4O0vODczKyVnTAhEkMKYj6X5cjyAx61zE51hOmQIebWE5/CylkWoQXXoEiV2jHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759310974; c=relaxed/simple;
	bh=5JM1eelR1r2YpA1IVQMHYwf6ukkmJ2S/ulu6sMz9+kE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QAcDbBcPb88WNd/2aHZxlgzzQwJLLHj004qLu2Gxw8lbBoNfOX34YFPQmdZvvKnCOyyijyQ3Kkz0Uos+q+Wd+6gkTNtMPqkLkRzvsOOy2gTYVEN6EGNRsdQvFXfD68ECjj20D8g/jx+22rpvIEB8VN9DkDTb3wAsj1yNxE7XgSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBwxTJ2D; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e33b260b9so24236435e9.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759310971; x=1759915771; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2WKLYLKrfpejFEaruF+EeGPfFEMHs6sMpTeLbEZAdC4=;
        b=XBwxTJ2DyV0Kosmp8OHdzud2o21b+t9tzV/GtjnPpDOFR5BT7wgwQgNiLg2SLRFc4Y
         z7v+baNWxPGnoRzN5HPqvvUpuW+u/t7kJyMrOYA7HQsZOd2JVBdSEC+9Ci8IbJJTCAlB
         WMo3ojY+mZnnZJ1scBbpbjxaqXrrBXthBICtYBE/lYo4qClOmuAOPfZA/WzxDS1ZqXIA
         XV/QncKK3ftGlQmvtbqN/vZ2AMQfX7cFtHvGPe7z0+fZ5sawlJr0K2R6ASjR2DAPZHbT
         NdK3Y9FhZYdKFuPHbAYSwfgYsJIXi2uvjCCdcwnvGzX1wrzqqxLhBEdOer64PgDN4jpH
         tPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759310971; x=1759915771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2WKLYLKrfpejFEaruF+EeGPfFEMHs6sMpTeLbEZAdC4=;
        b=xUyP69TceAdCRP38JOnvg58B90X1UwZp+PVjEnaiZI5H4kfXGpBndzPgwkFCC/hrgA
         NfOSsCbZjJYKrPf1aS7tbFxV//Q/m13OhsovNVV55AXVi4t18qXV8LPuO+NXeEq+5BVE
         uu1zQDBQitMzlOCMwQv5xS5ROBR+Abp1ssBeDfBQdk+rIPBqKxbG/a4FSTvWYa+KHZVk
         +mDbj/WxdzztoBX7oMaWd/8sB/5Hni39tJ3Y3GREO85mHjKCvTAZ2agBXONMeXP8BDPr
         SyYO9Ac3ahnDS6PiA2VG2IdzvMRccpt4MOqa0tEkhpKHBTGJatojYd+epcKTizfgHXFA
         yfUw==
X-Forwarded-Encrypted: i=1; AJvYcCWmx/Uvf/SWsLG8Qc2HB3AplUniySRPowpdhl+NHX3Iym4yscLo3P5rJjWyas+Oo9W4gkfw+f96Xux9@vger.kernel.org
X-Gm-Message-State: AOJu0YzPwpoPPjXnm4v8GaHbMaEsquHOtKwqUTY03nPAGPrg9BrAgD29
	r1nTrok3Pn+fwSOazHBuduWkYhpUoY5Ajit9ZIfsGizzOSKNK7YOGmD/WVsVmsUVUv4+QG6tuuL
	bDfrHTdxzpGxnoR1TxqX8k8i4CK9US2A=
X-Gm-Gg: ASbGnct0/GZxAwKvkE0yzYO/FvhtN45RtizeDMQmAlojhfpZ0n+eotoYhaiXcrFzCz+
	hBoIyIa+xkZc5/LsTPy5tYVzHU8U24muRLZO1MzpHmQTuh/byiZa+k+dnziRkb1bZT4GVmasNsO
	bR98IRYSRD4zVLONSU2OUAoE7CoS5pOd2PJqjHNFF92oHqKtVuNGs7Q6US2/RlSxjZ3EHInNzOK
	6M6MbSN1HkZLY2zAgtjMjr058XKG1OD
X-Google-Smtp-Source: AGHT+IFHnGmRHmJr+YpPGsnnoZoqfJyt9jk/+n5kLjP1CHOy6XhDxWRnAYIfrfCsIi4lEcHTSz6IGQr7yPIPxN5B9f4=
X-Received: by 2002:a05:600c:1f96:b0:46e:27f7:80ce with SMTP id
 5b1f17b1804b1-46e612be465mr23677905e9.23.1759310970863; Wed, 01 Oct 2025
 02:29:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903161718.180488-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250903161718.180488-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdUacF5UfiLTXuWOXAZZvEJ-St5+awkWML_HDp9b38=sXw@mail.gmail.com>
In-Reply-To: <CAMuHMdUacF5UfiLTXuWOXAZZvEJ-St5+awkWML_HDp9b38=sXw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 1 Oct 2025 10:29:03 +0100
X-Gm-Features: AS18NWBlqD2UHra31fOQuHsSKmsMOeniTxCTqefAG_2I-HhVlcZOHoipA4udDNA
Message-ID: <CA+V-a8sr3aMAnf5-RihtCSBFj6f-FYMoM6+NHWrE5A6FVc-zjQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/6] clk: renesas: rzv2h-cpg: Add support for DSI clocks
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Wed, Sep 24, 2025 at 2:05=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Prabhakar,
>
> On Wed, 3 Sept 2025 at 18:17, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add support for PLLDSI and PLLDSI divider clocks.
> >
> > Introduce the `renesas-rzv2h-cpg-pll.h` header to centralize and share
> > PLLDSI related data structures, limits, and algorithms between the
> > RZ/V2H(P) CPG and DSI drivers.
> >
> > The DSI PLL is functionally similar to the CPG's PLLDSI, but has slight=
ly
> > different parameter limits and omits the programmable divider present i=
n
> > CPG. To ensure precise frequency calculations, especially for milliHz-l=
evel
> > accuracy needed by the DSI driver, the shared algorithm allows both dri=
vers
> > to compute PLL parameters consistently using the same logic and input
> > clock.
> >
> > Co-developed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> > Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> > --- a/drivers/clk/renesas/rzv2h-cpg.c
> > +++ b/drivers/clk/renesas/rzv2h-cpg.c
>
> > +static int rzv2h_cpg_plldsi_div_determine_rate(struct clk_hw *hw,
> > +                                              struct clk_rate_request =
*req)
> > +{
> > +       struct rzv2h_plldsi_div_clk *dsi_div =3D to_plldsi_div_clk(hw);
> > +       struct pll_clk *pll_clk =3D to_pll(clk_hw_get_parent(hw));
> > +       struct rzv2h_cpg_priv *priv =3D dsi_div->priv;
> > +       struct rzv2h_pll_div_pars *dsi_params;
> > +       struct rzv2h_pll_dsi_info *dsi_info;
> > +       u64 rate_millihz;
> > +
> > +       dsi_info =3D &priv->pll_dsi_info[pll_clk->pll.instance];
> > +       dsi_params =3D &dsi_info->pll_dsi_parameters;
> > +
> > +       rate_millihz =3D mul_u32_u32(req->rate, MILLI);
> > +       if (rate_millihz =3D=3D dsi_params->div.error_millihz + dsi_par=
ams->div.freq_millihz)
> > +               goto exit_determine_rate;
> > +
> > +       if (!rzv2h_get_pll_dtable_pars(dsi_info->pll_dsi_limits, dsi_pa=
rams, dsi_div->dtable,
> > +                                      rate_millihz)) {
> > +               dev_err(priv->dev,
> > +                       "failed to determine rate for req->rate: %lu\n"=
,
> > +                       req->rate);
> > +               return -EINVAL;
> > +       }
> > +
> > +exit_determine_rate:
> > +       req->rate =3D DIV_ROUND_CLOSEST_ULL(dsi_params->div.freq_millih=
z, MILLI);
> > +       req->best_parent_rate =3D req->rate * dsi_params->div.divider_v=
alue;
> > +       dsi_info->req_pll_dsi_rate =3D req->best_parent_rate;
> > +
> > +       return 0;
> > +};
>
> Unneeded semicolon (there are three more below).
I will fix that.

Cheers,
Prabhakar

