Return-Path: <devicetree+bounces-255002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CAAD1E507
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A17823017670
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1338395254;
	Wed, 14 Jan 2026 11:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2844229DB99
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 11:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388604; cv=none; b=TRJXfLBPAcqetGJ62ygz0ZgJYtSM0+1mx/cduEVqaeE1/oNA8MqyHoXsmz1EZm+GycSZaB0XLscgNHColfXoexBjbgJS1NXJZ+X01uik1VriSHrbgGJ7dp73jQdPgkdIm4ars78rDC55gFnAFUel3By9rVtIF4RZAbscgDA5854=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388604; c=relaxed/simple;
	bh=qd0533iR+vH2yJrigMDVDGXUaNwIKBKelU7zTFCg0J4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MxpdetfH+qll22JywtzCIiC45et+iUc1F1RC+Y/a5vL0VDQAZGEd7d4wZH6fVR6DOXn2cSCJPT0iWyUU7NpheOO/lwVuupExaef6SZVRrOUHbkXIYK4uH4zc2PNc0wmh2Z4915+U2EQzvqyVRrxYvSbp5AyXA22Wy+Y4PWglPnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-50146fcf927so6578001cf.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:03:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768388589; x=1768993389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jUj0QZHjKgRIKXHXvtdXuKCfmZJrYVq/PNABBtIJEcs=;
        b=dbuahujVACss6xfneN8fy/YfWtGn+Yvd2qFfXzvc4szEH5RX4DfK1bDXoqucBkhlgK
         YhZm5oQiWRLcBHxRrUYLndc+OEZLKSAiPGHPAKdyuaBkUCGsNLHOGXFGsJ1lVRtfvquz
         6AXSLtRqBS+7qKlmUvao5JzXNqIAiTAngLjS52sTgOdt3Fb9GLPGTsKJ7O2olz+DFh4P
         36rCmdU/VyRD7iGz5ULe0VuSwlg/dCP6Fq2GU73RCaSCoaIQXOYb6fHBjJc6u7Eunro1
         18BNRTZ8gUGBnhcYITKzSrKxxOO6iLZV9yMSSfJPGSHj2jnEHQeLCAcSneMZOf7Xsf9o
         zj5A==
X-Forwarded-Encrypted: i=1; AJvYcCX+PsTos31m+yZTD1X4uTz48mcDhVh6HTPsFucuDWN52enOuKNs2lbZxQMQnXwB1wCEFw/o9p7OySuS@vger.kernel.org
X-Gm-Message-State: AOJu0YyO7s0nGmrs7I430w3xKkcEzWI4x0Zbrtfhz0qS0xzzHdxHNhe0
	OvjoFLn0jCITmYJaxKAHMwfilmIVpEXTa+IP2282kfzCYooCq03D+7i3Vq+fdAfH
X-Gm-Gg: AY/fxX6sdCXpllnyOvqZC339dsf27I5c0v3kC74Vi1RSi/4ykRFTKv5zH8vMLITOzip
	mrQYSNcYz8Ge+df16SW64HtEVJ6g0yCqstW+7pvzVJ//dywSKijHO9isKQZUfoL2aiz8U4k6mQo
	CeR16UR5rozE02W87ZTrRfPYaXss/TvRrU8frth1hzKpcyV8dfME7qkJTo9wOhzflMfL97+50mn
	GmHEbLOYr3L92yN2d/vt8ZULFRgchXqbj8RUC62Qyy37AH6wTUlHAKknQX0Mo0hX4BC5ej+lb9v
	8hZHvZTBPpIxJqgQ48YpFn8Lztm07qL+Kkr3eeufw379jc2AVs34ggWz0ZpyQ6pz15pXsys7o4l
	aENM7ku68AQh3ThzlOZHCe2EIC1g2JJy3djBXRvOGegYc79vgJHuP5qDxMCiijKdnEUOlVv8q/C
	Oh3f5KCdesDfRfhb4e6aXAuEYNM8za3W53Wzf0Sz0xwwCsZ2e/deY9
X-Received: by 2002:a05:622a:114f:b0:4ff:82aa:d845 with SMTP id d75a77b69052e-5014883b154mr27491881cf.41.1768388589258;
        Wed, 14 Jan 2026 03:03:09 -0800 (PST)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com. [209.85.160.178])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50148ecc0e4sm11635891cf.23.2026.01.14.03.03.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 03:03:09 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4f1aecac2c9so9698911cf.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:03:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVG2Xp6MLGLxASHCGm2c4YJYmnu5Er4xCgLLTuJZ4a5zm3cGxO+W0NquD+hvXQeZItxUIXquHYYi3qa@vger.kernel.org
X-Received: by 2002:a67:e7ca:0:b0:5ef:a3c1:86e1 with SMTP id
 ada2fe7eead31-5f16caf02dcmr2636191137.11.1768388217149; Wed, 14 Jan 2026
 02:56:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260104222653.1659382-1-niklas.soderlund+renesas@ragnatech.se> <20260104222653.1659382-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20260104222653.1659382-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:56:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW-yM0=1nVqWvCMD0a-5izxFE1LLsuNuFCtfz=Od=QB1Q@mail.gmail.com>
X-Gm-Features: AZwV_QghUYTO_u0eAcOvYe5E9g88VVEx4bvinDAi6XyZ4obaigG9hTvrBIdoK34
Message-ID: <CAMuHMdW-yM0=1nVqWvCMD0a-5izxFE1LLsuNuFCtfz=Od=QB1Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r8a77995: Add GE8300 GPU node
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

On Sun, 4 Jan 2026 at 23:28, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe Imagination Technologies PowerVR Rogue GE8300 BNVC 22.67.54.30
> present in Renesas R-Car R8A77995 D3 SoC.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1295,6 +1295,21 @@ gic: interrupt-controller@f1010000 {
>                         resets =3D <&cpg 408>;
>                 };
>
> +               gpu: gpu@fd000000 {
> +                       compatible =3D "renesas,r8a77995-gpu",
> +                                    "img,img-ge8300",
> +                                    "img,img-rogue";
> +                       reg =3D <0 0xfd000000 0 0x40000>;
> +                       interrupts =3D <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;

119

> +                       clocks =3D <&cpg CPG_CORE R8A77995_CLK_ZG>,
> +                                <&cpg CPG_CORE R8A77995_CLK_S3D1>,
> +                                <&cpg CPG_MOD 112>;
> +                       clock-names =3D "core", "mem", "sys";
> +                       power-domains =3D <&sysc R8A77995_PD_ALWAYS_ON>;
> +                       resets =3D <&cpg 112>;
> +                       status =3D "disabled";
> +               };
> +
>                 vspbs: vsp@fe960000 {
>                         compatible =3D "renesas,vsp2";
>                         reg =3D <0 0xfe960000 0 0x8000>;

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

