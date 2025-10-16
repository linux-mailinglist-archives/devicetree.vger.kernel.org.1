Return-Path: <devicetree+bounces-227500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACE9BE2219
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E996C4E4738
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75CE0304BB8;
	Thu, 16 Oct 2025 08:23:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDCF303A24
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760603002; cv=none; b=u/tE4prsEW1g6qGxTeGDTx23q0dtsKkIhPyq1jiW2HFtQbG8bVt0oPgz9QLUIYdJ+edv4A56IZggfhn59B7Y7Gl64qPnvfE/NP7mmLfPW6xzPU27iGhkWFrkggNraJeIjnnYLkj/+S2PklogI2QyTyA8owfCgpaGcrc0och5SKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760603002; c=relaxed/simple;
	bh=oDTYKk+av1YH4ibweUEEkTl0eDngTbPpDkqpzwGoZzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ak/Ge7RIpqw13LLJaUCyD5sczL8mpF/BvODsH40CHNn42qXDj9Do/5Sh1IA1RCZZIQfwpT6fhEIdm997FFsMsw5Wj0+BliHlY6LBX49eHFVRS3YuUtDM67yumgfiWMM0KTySPXT7AUNNpengbOPQMKjHEQ2GmeDuJ4m9r8wN9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-93109cb9dffso118649241.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:23:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760602999; x=1761207799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xR7pvs4sY0VZXb71oeLpqLl5nfCodgR8zUuBqvOj1Tc=;
        b=U2CyKs5c8BWU9+lxiOPPkt9eBcLiuvt5hPVsGarsBZuz0Cueyvvmbp7pzQOMsBOfCx
         WYmTH8saI6ixpb7HktBEKWxhywWswNgUY1GlA60lhVgOAY6m0/VXRY4x2xZdB2GEFjTr
         R3qtwo+uqgGaFoW+mT07wzq8hU0DQJK8L/06haG7ronnO/yr9BY/Jw6YCpuH+ct8fk5z
         oQ+SbshFWmoVi25JSYsoTf+fRJjMF8RyLY8gqY2/n34e6hMLdk50Ic35zNcqAIspG28z
         zti5KtGmpL6raaQYRaK7G1T/d1ljxVNUBBT27KYab+08F62BX4sKTBWmH1HZXMHjyVNN
         0p2w==
X-Forwarded-Encrypted: i=1; AJvYcCUvKAczX4NC1JOmX8FW9tNnFqkFrk5qgrYp2jJ6DVp1m+Rx7eXSt+2sIp6lURHYBiuj7GbKGIgf6OoU@vger.kernel.org
X-Gm-Message-State: AOJu0YxJZiehG2/3yWMWGKBNb5UWYaKn1+qLfPEMVC5nbT4gTC82TO5Q
	Txhz0uGC1L+aPMTEgqGq9SbAxlVD4ZWBtRpFm0Kggo5eWsq533mWA434QGm3vrV1
X-Gm-Gg: ASbGncviu8a+ZWbeZ/fMFFaTtl86m7eq7fI4EauEdHig7tLmsXCPmwVjbAOy+G+t111
	4CIq8pvAbuBl1YkT7dKiocjRzpkVHCjQx0HacnQniXa7fFTTGZo/Nt8tHqJ2zBeqENCG5cOsiWn
	f0BuslKrBTvPJ8mVqtY4xAVQ9hGkdxXl9nKjD17PvNRZV+yiGA67fcMqy4Zj1sItBiQJC3pJKOw
	wpeV/NQqnpY8t1+T4KG6WN+XAyOYJj4sD1ws7t1kDrGMsnbV8jb9oDsJvPUL7Zn26nH0NoBc4Qv
	1fyChajKR7zx4GBvNyKvOdK6Nu/3yspjovmTpgL/hjtG6QtfvqUH9piOCeSlmX+U7Uy/hTvjnj5
	ZJZwViiOpxttkpSswvj+tVMb0p430OoQV4/LUez2KO4cdrfBiH4OGp6ysi090wl7r9rRSEHM2H+
	qHAowheENB8oDohZ9f35Pjqm8+VzfL1gBE65LS1w==
X-Google-Smtp-Source: AGHT+IHfdR52/uZQMBlUxjWYh7YpdUpdoG1P6vRnR0vBrON8ZlfNTOeYNdGGrxlX8GtpFa+OZN/qGA==
X-Received: by 2002:a05:6102:a4e:b0:528:92b8:6c3e with SMTP id ada2fe7eead31-5d5e21ce95amr13456166137.1.1760602999532;
        Thu, 16 Oct 2025 01:23:19 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-931008068d0sm774293241.6.2025.10.16.01.23.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:23:18 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5b62ab6687dso368765137.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:23:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUlM3faUNzrnsHtQ/eyZOQ9ns8zbxqgnVM6p2cZ36UBOZSpEYI/ivGs4odKG4zgG1BCtcypPFjx9Rd2@vger.kernel.org
X-Received: by 2002:a05:6102:32c1:b0:52d:110:a920 with SMTP id
 ada2fe7eead31-5d5e2394649mr12437643137.33.1760602998488; Thu, 16 Oct 2025
 01:23:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org> <20251015153952.185249-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251015153952.185249-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 10:23:07 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUfssQFZj4Mj0T4KpXDzDXBC6MecnauD5wp2_2OLdt=ZA@mail.gmail.com>
X-Gm-Features: AS18NWDv5MDbI0Q-YaerQHTTLK54INzbJu8pMvADwEhMtSUs8ivJgVETlU0r9ws
Message-ID: <CAMuHMdUfssQFZj4Mj0T4KpXDzDXBC6MecnauD5wp2_2OLdt=ZA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: renesas: r8a77961: Add GX6250 GPU node
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Matt Coster <matt.coster@imgtec.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Wed, 15 Oct 2025 at 17:40, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> present in Renesas R-Car R8A77961 M3-W+ SoC.
>
> Reviewed-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se=
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V2: - Add RB from Niklas
>     - Fix up power-domains =3D <&sysc R8A77961_PD_3DG_B>; for 77961
>     - Fill in all three clock and two power domains

Thanks for the update!

> --- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
> @@ -2455,6 +2455,22 @@ gic: interrupt-controller@f1010000 {
>                         resets =3D <&cpg 408>;
>                 };
>
> +               gpu: gpu@fd000000 {
> +                       compatible =3D "renesas,r8a77961-gpu",
> +                                    "img,img-gx6250",
> +                                    "img,img-rogue";
> +                       reg =3D <0 0xfd000000 0 0x40000>;
> +                       interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks =3D <&cpg CPG_CORE R8A77961_CLK_ZG>,
> +                                <&cpg CPG_CORE R8A77961_CLK_S2D1>,
> +                                <&cpg CPG_MOD 112>;
> +                       clock-names =3D "core", "mem", "sys";
> +                       power-domains =3D <&sysc R8A77961_PD_3DG_A>,
> +                                       <&sysc R8A77961_PD_3DG_B>;
> +                       power-domain-names =3D "a", "b";
> +                       resets =3D <&cpg 112>;

status =3D "disabled"; ?

> +               };
> +
>                 pciec0: pcie@fe000000 {
>                         compatible =3D "renesas,pcie-r8a77961",
>                                      "renesas,pcie-rcar-gen3";

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

