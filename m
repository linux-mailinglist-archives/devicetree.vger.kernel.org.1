Return-Path: <devicetree+bounces-227498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C5BE2201
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 774BB19A3545
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9F4303C8D;
	Thu, 16 Oct 2025 08:22:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF7D2E6CC1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760602955; cv=none; b=T9svNvBhqcfNRgcYMmHkI0EdSsrMnt1sHGOhwzt3I53wqqrDZcVqqJzJ4fn9BVxeyZXvK6l/KuttGwrMLVhxpnJOYrAx7R3AvzqLVdrLewDe0xIoPmuMJK478awngHHDJU1TixZyuwB9gYqIlf5/hpx9iNtEyjqnm0HwXaExXGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760602955; c=relaxed/simple;
	bh=r1Z4OyxzKh48mLqr37vrm7i7AogylgNivvpQTAqom2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y0rY7rnVKtyE+2qP1HHpx9t29bPeBXGutHQ/KRGAX0jo8NNK9Ay5D0FiVEcueixhyIZdmilQehWXi6gYIRAHvoCJJTJzBF94WP2TX/+OhqGTEg2ZC7Mf2MkHcxpqa1E86c3LbAtGtMg3DEheU1xcN0aUc325hOYjV53zE6uMa+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9310018a570so299690241.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760602952; x=1761207752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxMxNXtMy6Jnm1vHPFEexy61mNhacC+YBJiirqBC3iQ=;
        b=I8qGwPwIvtmax7R+KVGqtOf0KwPHgI6z5l6v4XWseJbLNbelJ7KY4NEV+AjvmWlEbd
         HdSWi3srrg4sXVqwJIkwnew/Sspa9d9QRCJSSuGPyHk4J8/GyY04VxyvmCkz+ItOD8Xu
         hELpJJuAJKV4QFlicd+yaBvKrnWkJPfaXWMTwy429+1aD6s0jRuWVXSCvOsfA/znvii9
         0wYVvHDxayUhnqm/W9hFnUKsgI1EegKp8BVCTXuhwAj/4c+PRmSnMsN2KrQkO0emYOTP
         httWVDl55Nzw/5oQmawVCCEvOEwSrYUXWVvvAWoar5YJHOdfxSMEjrycYL8KYUb8EWzs
         xODA==
X-Forwarded-Encrypted: i=1; AJvYcCWby0pKB/2eHUlp6m6s+egj7tybLfROO22kRXxET6Dmaq/LbLlGeztVqrzL9+f1MXthemL4v1uKbbCr@vger.kernel.org
X-Gm-Message-State: AOJu0YyTVbHi6IMnOPcYhzl6fcbmR3Rs/PC1SQbYYyBYOyMVFY0z75wA
	9mTDfTHIJgrJ9n835u532hN11eRvFXMTVvmJZ51pThpRRzsWYW0MwKJ9HC6iHZ8j
X-Gm-Gg: ASbGncvZ88+qnro9M4rS0PeR2btt23LOLE6oOPplQqmbnJFfZ/LPIeumv30ujmHXgec
	1PLX3qwYstEZSalHHKKef8YrEDhfZSTdBylHa5qXmgDGK3sVnsyrR8HJz63n3jtDMci2IFGfePM
	gQh/zX+wCnwGvi/ohJP78nzc0JYUkWB1zPYl9M1JOUE68MlTwlTomOmxRqPeNbUgB6Mf6uwi/Gx
	xFlsPk+RY4LcAvC5Wcf1naLeRlJTra3wYfmtYcofUO5gca0cOyZju4JOoIysGm6Rzh23bqx4kmp
	+cRZW4iZgA1kLQtJZmATLyR4XoG03j6nDdrj4TFoVh/YojXsL5uNIf3Xw/jZW2EyzwjjG4HkM9V
	zUBjJNMt7Vu2wc5KmAVSrKSYVIwMmWz+BeVMikPzv3+quuUAvMzm5dCrrpK7PnFiA8MldQJ1BjT
	cqRler4aHc989BjdY4AMDRGiN61jHvimtcUWh2W4B+JaEKdlnC
X-Google-Smtp-Source: AGHT+IHnqKyO7f3bSV0m5kq2DkcRwHiGA7MYBBvJnkigmRgVvQmjA4ksqhsMumSDi6yZhJJ3aQQOhg==
X-Received: by 2002:a67:fa54:0:b0:5b9:e38f:d931 with SMTP id ada2fe7eead31-5d7ce7bd52fmr905790137.17.1760602951806;
        Thu, 16 Oct 2025 01:22:31 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9310b284ef5sm29968241.8.2025.10.16.01.22.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:22:28 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-528a601a3cbso1279690137.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:22:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVciNt3M5l3hg23da5+E9vvFmIH6OOEupErn2gYvtDlrXZBxCeY6AB7MyKD9h+bZzfPBOSWDToMpnsB@vger.kernel.org
X-Received: by 2002:a05:6102:801b:b0:59e:73d5:8b57 with SMTP id
 ada2fe7eead31-5d7ce7bd161mr1324148137.16.1760602942005; Thu, 16 Oct 2025
 01:22:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org> <20251015153952.185249-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251015153952.185249-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 10:22:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVdW+tMA1=g9D+BQV0fk0kis8FzyQgf7BpN-u=pi5eQfA@mail.gmail.com>
X-Gm-Features: AS18NWDLIWGJb_IOoRvlCMu35mq1PVX8494ciH6v3rxbYpQaD3fQbpHBOXBZzcQ
Message-ID: <CAMuHMdVdW+tMA1=g9D+BQV0fk0kis8FzyQgf7BpN-u=pi5eQfA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: renesas: r8a77960: Add GX6250 GPU node
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
> present in Renesas R-Car R8A77960 M3-W SoC.
>
> Reviewed-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se=
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V2: - Add RB from Niklas
>     - Fill in all three clock and two power domains
>     - Use renesas,r8a7796-gpu for R8A77960 compatible string

Thanks for the update!

> --- a/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> @@ -2575,6 +2575,22 @@ gic: interrupt-controller@f1010000 {
>                         resets =3D <&cpg 408>;
>                 };
>
> +               gpu: gpu@fd000000 {
> +                       compatible =3D "renesas,r8a7796-gpu",
> +                                    "img,img-gx6250",
> +                                    "img,img-rogue";
> +                       reg =3D <0 0xfd000000 0 0x40000>;
> +                       interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks =3D <&cpg CPG_CORE R8A7796_CLK_ZG>,
> +                                <&cpg CPG_CORE R8A7796_CLK_S2D1>,
> +                                <&cpg CPG_MOD 112>;
> +                       clock-names =3D "core", "mem", "sys";
> +                       power-domains =3D <&sysc R8A7796_PD_3DG_A>,
> +                                       <&sysc R8A7796_PD_3DG_B>;
> +                       power-domain-names =3D "a", "b";
> +                       resets =3D <&cpg 112>;

status =3D "disabled"; ?

> +               };
> +
>                 pciec0: pcie@fe000000 {
>                         compatible =3D "renesas,pcie-r8a7796",
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

