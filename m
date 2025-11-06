Return-Path: <devicetree+bounces-235697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E8BC3B945
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 15:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BE7B534D39A
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 14:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F52A303A12;
	Thu,  6 Nov 2025 14:09:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D7222256F
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 14:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762438157; cv=none; b=YYcEbzfYH0wiulXsli6Deq/rUsSe93Eq09XCA9DML23VRl8nXXmiz25uVEnlbf00DsBVdE5JV6XOCQyUFKBgdDFzhF0pw0+U1Ou2qO8ZPcvGPFlDlsGc8kcnweUOHA2sHrSVto9B7G7rjqHSOuiVsvQs4eT+NqkjjAAW7d+veIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762438157; c=relaxed/simple;
	bh=mHmb1VB9qB/vGEkXjmWNrkSJpxIgCAhoKTnr817fja0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a3n2zl5Yb084e5h9zb9+ocrhVjTXc9Kr/TbzieRd22beJghjmahC2j0auQjDBi+gq3I/NPr8A5WBYYRyfpFYiUNvYXKaj1UbAdvIbwWlUysGi6yd+lmLQin4dcDzT8AVI/ZAaFAFep2MbacXwhtbyzak5W/5oo12uenBJBa3hJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6407e617ad4so2096994a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:09:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762438146; x=1763042946;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lizrVusrsLOAQyowXz5s1Qp7I158lhdEAu4sLj0s0D8=;
        b=Ipw90qMLuGHJdcFLG1COpd8Db7nS7YWen2BmGU6tDKYbgSMP/vGlqr+dsxzteo2Odg
         fC7nnhkOmvG13GvTu4lz1Uoa4LGtlqDui6k3P6QSh5r0TzTfyh4njdm/xWas9gJeykLh
         WSjhoBxCNflTauJGJV6kdSwwNkin3fbuk0lYNucQAHpJGXCdCDK6JYcDEn4zAwLaanfn
         uvUxQbK/0DBOjydqEAtSakygsUnGVRobIsLJ+VpZu3nD4uP3bQb5FLqsBlJPdRUBJGy4
         uFdLeqhCpWPhFcnn4HiSkeBBMXvjFqiOF2F685gYxNrDNK/F33AAGqlbL38NpDoANgXG
         Ns0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgYryK+o68SsfkexG6QBBhpCzz5wYVP6P0PjaFOWtGGMQsJrLQdXz1pGTCC/eA6vAFHTX1gzqgK47w@vger.kernel.org
X-Gm-Message-State: AOJu0YxOS1d7vJH5m1RrlaqQldFRwNf5iFOZ2AGjGIn516cgDFxcHa3X
	qImROHYmiY/1nhjumk64RCrzYalym5hgezb0zqcO7GjjHFrkJytg8EdT35qSMsxAWNg=
X-Gm-Gg: ASbGncsvSKO0nMJ3S1/hLhOt4t4yVJW0a7jNZO1MoQm7FTEy+aIyBRxriGr4q0qvEvj
	Oxbt2lLQXI29TUqbmgkyrIPeYbnBadycEsmEvxdycCAFgStF2qF+suIpNOcYV3U7+PGKh4fZ6Ii
	AbI/+ZqAYZ05hzsvENCmDviX2ZQoHlBdrKFPZ/YqVL3OStA41bB1oVm6uEOLN0xqIC2UTZ2hOr5
	rTI0PMyYPWx4oze3TC9KTANZyYicw8C+upuZLN1TepOhtNgvjJae9CoBeckN3ZqxI0atbu8+Lbu
	rcr/1L90LEggzcIFneJel0KyQkVQ6MjuQtkPp4x0Ol9dJE9wEPG+EtxHRsb8gR3Af5w6BQelJPB
	apC98bMg7TvQJZg8Vlo+j9w4fBjlZOz8ITyPQAKn58Sz5N8J4pWAdx6mqbYSSFYy7T3N5Lnt5Zi
	pcLJweFAiX5xzQ7QkvRu2noUlw+GPIGr1sg8uOw5ApeQLgjMrj
X-Google-Smtp-Source: AGHT+IHn7JX2WQJH2AUIKtYiPYrteHNActwoM/z2+V1nXLppfgJGj4gU9sogdMBghGzq685t5M6SpQ==
X-Received: by 2002:a05:6402:358a:b0:640:cf58:47f9 with SMTP id 4fb4d7f45d1cf-6411d19ee4cmr3070512a12.9.1762438145883;
        Thu, 06 Nov 2025 06:09:05 -0800 (PST)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com. [209.85.208.53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f85785fsm1914501a12.17.2025.11.06.06.09.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 06:09:03 -0800 (PST)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6407e617ad4so2096487a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:09:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVKA1TGFIAO4N/+j82dPwk4/Lod87lL96+arXAnRPaiW2fEmMdaC9mv71tQ8nzNIr2rkfq+HXrbojo1@vger.kernel.org
X-Received: by 2002:aa7:d343:0:b0:640:931e:ccac with SMTP id
 4fb4d7f45d1cf-6411d17972dmr2555913a12.7.1762438140350; Thu, 06 Nov 2025
 06:09:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105232737.1933437-1-niklas.soderlund+renesas@ragnatech.se> <20251105232737.1933437-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251105232737.1933437-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 15:08:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWGZa6E_Yu-hF9O6yi3rRemWnFdkUeKg3SucqmmLFUUAg@mail.gmail.com>
X-Gm-Features: AWmQ_bmyVoqHrTmXlpr1ElP362H1OrWvK3sMuHRjQlEwD_rKvK_e3yJJeGhG1Kc
Message-ID: <CAMuHMdWGZa6E_Yu-hF9O6yi3rRemWnFdkUeKg3SucqmmLFUUAg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r8a779a0: Add GE7800 GPU node
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

On Thu, 6 Nov 2025 at 00:28, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe Imagination Technologies PowerVR Rogue GE7800 BNVC 15.5.1.64
> present in Renesas R-Car R8A779A0 V3U SoC.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a779a0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779a0.dtsi
> @@ -338,6 +338,23 @@ cmt3: timer@e6148000 {
>                         status =3D "disabled";
>                 };
>
> +               gsx: gsx@fd000000 {

Please preserve sort order (by unit address).

> +                       compatible =3D "renesas,r8a779a0-gpu",
> +                                    "img,img-ge7800",
> +                                    "img,img-rogue";
> +                       reg =3D <0 0xfd000000 0 0x40000>;
> +                       interrupts =3D <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks =3D <&cpg CPG_CORE R8A779A0_CLK_ZG>,
> +                                <&cpg CPG_CORE R8A779A0_CLK_S3D1>,
> +                                <&cpg CPG_MOD 0>;
> +                       clock-names =3D "core", "mem", "sys";
> +                       power-domains =3D <&sysc R8A779A0_PD_3DG_A>,
> +                                       <&sysc R8A779A0_PD_3DG_B>;
> +                       power-domain-names =3D "a", "b";
> +                       resets =3D <&cpg 0>;
> +                       status =3D "disabled";
> +               };
> +
>                 cpg: clock-controller@e6150000 {
>                         compatible =3D "renesas,r8a779a0-cpg-mssr";
>                         reg =3D <0 0xe6150000 0 0x4000>;

The rest LGTM, so with the node name and sort order fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

