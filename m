Return-Path: <devicetree+bounces-87074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D41B09387BC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 05:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CCD628173F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 03:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C724414A8B;
	Mon, 22 Jul 2024 03:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="in1w3Ixu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36678168B7
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721619485; cv=none; b=AeA+TP6DALj6e0pWzNwUB+OtsrEw07rYXPEyWblh4CxoXcJIB2I4njMQjY8vSRJKHv5oztNFU0Y5DME1nk0C0sA3qThwnaE3L/UvbprXnvZsW4EiODxU6k8lzSyXuH6On8IfNENugvNzWF/b5isXUMZJUaXNxbli7iyCfxpU4Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721619485; c=relaxed/simple;
	bh=GX17TbH4p7z5Qab1CaLT1H0sGB8ak8//Dpt5jXZ/teM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ez6X4jWviJqv8d9bIaZX6Q/HzgPQkWIVJR+9k4ZCI1FTzTjbSs+HxUbmIhuB0DIFelkwd+oS1ZGny4g8f0UmdbsSj2oR0szDDvGjCncYXvXbq9O4izopXYkwMfCyVkCzyFd35PTcE3InfI7JxvR6GYDTz9JEjdHFRo79orJ5WgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=in1w3Ixu; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4ef2006dcdbso1256584e0c.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 20:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721619483; x=1722224283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUQ9SOJBhew070r/TnrnXwfyJonEGUyPXY5zsdc2e5w=;
        b=in1w3Ixu4C/LjBIek1HjlXlfasMD+b/8EPR5iZTRu/i4Eh+U0ULDPyb2z9jO4wQFEP
         Il3q+haFJHrXr5Bb8DiMBZ2ENofPjfW+iePvskVYSG56Q9qAQQNrhpJpBNV6x3x3IO4S
         qhJLWizoqTE+q/Lf3voL4NulHcHcp7emySSDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721619483; x=1722224283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUQ9SOJBhew070r/TnrnXwfyJonEGUyPXY5zsdc2e5w=;
        b=miOBdgp7Sz2zlLE3aYBpgn5NPwNQfzFsN94r+wr+pUEXyiJIfk9Xpz2ecOwFFPGayN
         DJJLfJgV4d8AiR0tbunGXc89iJ3q8cA8ICR+VzfTe8ZCN7pFfYCKIV2TV1b+lOGQXJ0V
         x2ENg4CdzYpAOGu8TQuPD4wzz4ZJz97+u0aAMP+YIq5RVymZfwKjtWGR+OKykwMAhyc7
         jTnXJkTHAVmWxpdejSo5D6UZXkf7r5ec05mY63IuA/OVSm205q72bPEqYDBPhiMqH16n
         Nk9vB8zA9ahH+MA2S3kRRV0FCwS3+nkDVhWC8z6gCN+6RNBXNyi4/vsdL0FbZ57GkmFq
         yI+A==
X-Forwarded-Encrypted: i=1; AJvYcCXM+yJRXN0yUE0mV5rzxGCAiuSCtTolbY8M+9VSmRmjeV+Sk3h7ZfRB7PFj2HsRr6ObIJW5mS3o5BKn5q4l2ni5RK17ubodXFRUvQ==
X-Gm-Message-State: AOJu0Yyc+bxDyAYaWVFwUC7kW+LhuIPE58v/lZJF8z5pQ1CyVl60Rpp8
	Vd8cpthzTQu0v8lYe9f8MFV4ygy9mt3tQVziDQYdj261OBv9nDuZDyY0cI5hx6RGeKBnwevBSKE
	=
X-Google-Smtp-Source: AGHT+IF4LCGdphEAZRBbLFnl3kM5/LNS6+/n1vIk98TowPiPKdbilzC7KzAJN9UhWslemxt7Z4MnYQ==
X-Received: by 2002:a05:6122:3389:b0:4f5:1a15:b9cd with SMTP id 71dfb90a1353d-4f51a15bccdmr3510174e0c.10.1721619482054;
        Sun, 21 Jul 2024 20:38:02 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-4f51556feccsm608412e0c.12.2024.07.21.20.38.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jul 2024 20:38:01 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-82175064454so1270799241.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 20:38:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXxkxZuCJlV2fcG3Fw62OCDETWwc1tg6Y/f751P0KLkb9Jlgf6irmHsjFpqFgyj0VqH+UobVx4+0OvJX+KMGKdubl0SvrfRbWQbZw==
X-Received: by 2002:a05:6102:800e:b0:492:9927:a5c6 with SMTP id
 ada2fe7eead31-4929927a897mr4197274137.12.1721619480758; Sun, 21 Jul 2024
 20:38:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240719045823.3264974-1-fshao@chromium.org> <7edb3361-9e53-44ad-82ec-b2c81834b2ea@collabora.com>
In-Reply-To: <7edb3361-9e53-44ad-82ec-b2c81834b2ea@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 22 Jul 2024 11:37:23 +0800
X-Gmail-Original-Message-ID: <CAC=S1nh0c4HL2uUcz_zMmtuJvk7+3iWT5mEtmtpDrp1+nWp2cQ@mail.gmail.com>
Message-ID: <CAC=S1nh0c4HL2uUcz_zMmtuJvk7+3iWT5mEtmtpDrp1+nWp2cQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8186-corsola: Update ADSP
 reserved memory region
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2024 at 5:22=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 19/07/24 06:58, Fei Shao ha scritto:
> > Corsola firmware reserves the memory region of [0x60000000, 0x61100000)
>
> Sorry but if the region is supposed to be 0x1100000 long....
>
> > exclusively for ADSP usage.
> > But in fact, a 6 MB "hole" of [0x60A00000, 0x61000000) didn't get
> > assigned to the ADSP node in the Corsola device tree, meaning no audio
> > tasks can access and utilize that memory section.
> >
> > Update the reserved ADSP memory region to fill the gap.
> >
> > Fixes: 8855d01fb81f ("arm64: dts: mediatek: Add MT8186 Krabby platform =
based Tentacruel / Tentacool")
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >   arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8186-corsola.dtsi
> > index afdab5724eaa..0c4a26117428 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > @@ -169,7 +169,7 @@ adsp_dma_mem: memory@61000000 {
> >
> >               adsp_mem: memory@60000000 {
> >                       compatible =3D "shared-dma-pool";
> > -                     reg =3D <0 0x60000000 0 0xA00000>;
> > +                     reg =3D <0 0x60000000 0 0x1000000>;
>
> ...why are you making it 0x1000000 long?

Because 0x61000000-0x61100000 belongs to another existing region,
`adsp_dma_mem`.
It's slightly confusing because the diff doesn't show that directly...
here's its snippet for ref:

adsp_dma_mem: memory@61000000 {
        compatible =3D "shared-dma-pool";
        reg =3D <0 0x61000000 0 0x100000>;
        no-map;
};

Regards,
Fei
>
> Cheers,
> Angelo
>
> >                       no-map;
> >               };
> >
>
>

