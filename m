Return-Path: <devicetree+bounces-41744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F3D854F14
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 17:49:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8015B25566
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 16:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DCC604A4;
	Wed, 14 Feb 2024 16:47:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AC860269
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 16:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707929235; cv=none; b=DyF6XYz8w473wo01p2z4L1rA+R5HS5/0gkyDgJRwjxJdcLeb+EOwzdey83IE3MaQw1amjuhM7/Zdmmp5yV6F8h20SCUb3zzaFVJebvVs0sH52eRRrxl+RstMC5u5x2jxTd+Qdh9Ik9zlBjR3s1S3Ub91RMM1ajQSrZY9hLxxdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707929235; c=relaxed/simple;
	bh=8NY859LuQ+SUwOasVCNsRbn8plYc4YZv/VOpHMFs96s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NccFrju5Rv0OAxKH44GCbr0a+EJMOQM0hUvsufOrI+lm6SbY35hgXZCuJBuvmaAgu13ZE0dNSS3Jz2PXaSRqZO43AYEgotiOczYh+U4qSAIIdfgLp+lWY0aLxUGN3j2A03IC31uDey1YP6hZvQRlCfNSa016Qi7/MHUalhNCrVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-60779014458so25018647b3.0
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 08:47:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707929231; x=1708534031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICVRIlP5TWlztMLLLMDwV83GSTpE4QQrJbkwQICALLk=;
        b=D3Atd0NYKkE3YUoVhbRhvQuFeqAMQVq0MRkjDLokNwxWwrAoy7LcEN0rlY0W894STS
         az7gZrO7ZXZXyT1tW7qOjY1UFyxwfejU8irgqb7wytZyeXE5TbKqKsH2RtRPuBEqkDCI
         ZwDkelfTgoOzZonY4gShMcorPI9zMkISpvsNjZpyiA66ZvqjdEQUcW3iluNtiLYTVry9
         PLJQRxJb2I0H18ETNtV3gWtuUjpn/54dqlSm9f1ea5Ta6wSeyC5sXhpSizIlqLuFljLE
         IXiXfqsGklpEsXEjl8hqdUUIA2Hw8z4IEpKfx1PvAeIfyVoRZYTE7JfEK4mVnKXXj97C
         JO/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcuFq8DoHlJOE/IAEx7OhP2kLQ51EFJgyZ662BYH5odFrKpL5pIvQyGQtySnRj9tPXSMZ+aJLn6e7zgEkCYIpWPvfLdpFCTtOE6A==
X-Gm-Message-State: AOJu0YwFHay1+fBKsf/2uxPvARJEcFW7OMxZzZnwasd8eD+js5Zblz7f
	H3kcjDuzLh1TOlGQX1hwPLKDIYz5utapMzuvnS/TNOY275/X6NPC0sFQ62cWOcg=
X-Google-Smtp-Source: AGHT+IFZFuXkFwvS6glo5qs7VrSRVvsdSs85EYWXMcFOqSTsgOxyTnCM+i8Di9jJ+LUhbBcIiUBa1A==
X-Received: by 2002:a0d:db83:0:b0:5ff:a9bc:3893 with SMTP id d125-20020a0ddb83000000b005ffa9bc3893mr2911824ywe.12.1707929231094;
        Wed, 14 Feb 2024 08:47:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUN6AzfDWG43Whasjv0jBiu6Oud+VwjLctB2iuSlmJW06OuFxO/GRJdtZ2IsL+bmeYO6d9sr1P/olMSnzZJrnca+ql7V/B6+z8wqg==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id f126-20020a0dc384000000b006041f5a308esm2270150ywd.133.2024.02.14.08.47.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 08:47:10 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso5034656276.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 08:47:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXvDv50yOs+Wn6caBmhcDT2paaHP4/Dmr17CgU0OPMaWfeXvXd0nEor3RPC3syOV3Id6m0EIiu9dYyJX6wTL572v/lRKt9+JLQ+hw==
X-Received: by 2002:a25:870d:0:b0:dc2:6496:f41a with SMTP id
 a13-20020a25870d000000b00dc26496f41amr2267049ybl.28.1707929230231; Wed, 14
 Feb 2024 08:47:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <946079fe606d18b97578db42dd57a31acf38b26a.1693407641.git.geert+renesas@glider.be>
 <CACRpkdbgBtAmyxfiXrZ75gAdc1DeaqMaHRNVX=nz7SuzxFU40w@mail.gmail.com>
In-Reply-To: <CACRpkdbgBtAmyxfiXrZ75gAdc1DeaqMaHRNVX=nz7SuzxFU40w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Feb 2024 17:46:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWJ7-3ULokmvFPRuvquTme6HFzsK=VUKpvP=CVOVqnDQQ@mail.gmail.com>
Message-ID: <CAMuHMdWJ7-3ULokmvFPRuvquTme6HFzsK=VUKpvP=CVOVqnDQQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: arm: realview: Fix development chip ROM
 compatible value
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>, Ricardo Ribalda <ribalda@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Tue, Sep 12, 2023 at 9:18=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:
> On Wed, Aug 30, 2023 at 5:03=E2=80=AFPM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > When the development chip ROM was added, the "direct-mapped" compatible
> > value was already obsolete.  In addition, the device node lacked the
> > accompanying "probe-type" property, causing the old physmap_of_core
> > driver to fall back to trying all available probe types.
> > Unfortunately this fallback was lost when the DT and pdata cases were
> > merged.
> >
> > Fix this by using the modern "mtd-rom" compatible value instead.
> >
> > Fixes: 5c3f5edbe0a1dff3 ("ARM: realview: add flash devices to the PB117=
6 DTS")
> > Fixes: 642b1e8dbed7bbbf ("mtd: maps: Merge physmap_of.c into physmap-co=
re.c")
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Patch applied!

Looks like this fell through the cracks?
Shall I resend?
Thanks!

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

