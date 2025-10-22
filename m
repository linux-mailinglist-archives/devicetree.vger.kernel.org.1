Return-Path: <devicetree+bounces-229730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F58BBFB322
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD4031A03D34
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BED8E29994B;
	Wed, 22 Oct 2025 09:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288A2298CA2
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125970; cv=none; b=bmhOBPdaDMf6bH7etbWvf5kaw9NH4MfCibl3+jydK+Y166fk5A/Lei/uEwR8XlC2po52kVBtCk8Dx1zC/obqgnv2ykeCcoISxp+ixu3pbnm4BXpVLbyYUh6V3b538xV2KRno5AMQYl6esJfHJt/EazQIt4yA4TNi4qwtKbA86dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125970; c=relaxed/simple;
	bh=lH987uMtoK6xnMwA4BbVRHByVF9cGbMudrj/IH3pFUc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mdRRYRR9toL00ovjO11/nkA8YEO8X5I6wCSOj00nFxa5wuHy+2v51qqBrE8+OjdvGAJP2bUlt/NVbJx2/nJ04OjTKoE0XwLYzNaurP5pVK/YupC9FVG9b+yUs2miogMr2iIgnP64IU9BUoQxn08q261HkYKKCgF/OmKKO16oE6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-932bbd6ba76so1611264241.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:39:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761125968; x=1761730768;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9oPjoXljJJlUVHMn87s6VhA1+MnxIqFzqOvfh/e2MM=;
        b=PgTkrLmNSTbiuMDkhB2fnW+/9qwRBNys0qHnNG26mcROKcTt6aXNpyuwWoq+WVoAEt
         uwK/HG7MsZkaVGgVjCHM8JzVIFYJjufykUgEYPjBF4IKTJtOGprzPMt/zxYq/O6qWhHW
         eNKc/srvnk5fiOJhNEUtQsIxXh/dCHEg3tEk1YAroU5KbhxUlS7m2mBvaVsmuw2i83+R
         5kUeiYDx1FaiP2NBva32zuKI7o5K6T6cBtAeOkGk2xZPcAuh9NdEmw9CBeFuI8QqZWUo
         pZWbxp5bEa4TCfoRu9xqGEy1gGBljUZ4kxdNObKhzI/Pv5q6oyHSxNvOOkFlQM9HmQwM
         RrxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgn6tWVTSmq4FxijW1Q2bs892ru0uqnAggixU/4EAts6A4d/ZDwRg0g6aamhoE+y0brHSMtwkA/vk5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo/lk8Xko8tn85ROwQz2Sd9GCkJPmQZm57nQc6wVUQ9iQSzE6C
	9ZzuP7SKhkMPuZAQtqHRhvYKEFLG1CP/4nUSW41mwNLo1BsUdAA3qYDrc9350ha8
X-Gm-Gg: ASbGnctZyvCoTyLvki5/ZuW8yu840EVaVoRQsfx/rmk75FO1UORoWlwm33EvYT+ncyy
	WeBeAy0Y1ZcgK1dTDC1wPBVgcHt+xaoJKyp26l7EzUvkH0V5iW3F7lHV4BG/zQ/bdk7RMQr206w
	IMWSrkNL04RoTixq5ZRzFfVRcHV5lZiFgeqIYyAOj/vvVI913ZI7+u+UXexi75O5rDAXkWkktr6
	OV6viKb3MMACe8eEvw7v60Ba/Jq5XY1DAcPiwzBdz/iixYE6Jke+x+iPv6of9RtQVieEEaLbI0F
	J55RQ61ddS+TbfJRKTvELTPDdmcYqsH2c9zBxFItySHWp2Um0uvtmGnJ6gmKxfHw6R6K84PVAox
	8r3LBnZ2NAdJ3EhOLMYhNd8515zgd7aRr/isKF6lbwxeAw+4YcrBiHzetLuyKAPWL9s0LTvstsw
	bIIf19aAr5XeUFgYqJtGl6e34dZEfOrysiaYj9Yg==
X-Google-Smtp-Source: AGHT+IEY8v+BS3Wz0jyvQjbGmGR9VXCohI37qkdMbquitjQ3NtbMePLqzuvJhahAvhQ1yZ5lBsRgnQ==
X-Received: by 2002:a05:6102:161e:b0:5db:25b5:9b60 with SMTP id ada2fe7eead31-5db25b59c5amr41843137.2.1761125967855;
        Wed, 22 Oct 2025 02:39:27 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-932c3db2539sm4269661241.8.2025.10.22.02.39.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 02:39:27 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5c72dce3201so2234682137.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:39:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVxGXHQKdtbBfOAGKflEsifEqV+nxqOmavx4VZHGFsx7oV8IqdNBnF3HgYdtZ6SLYSOSLA6+GPF5sqq@vger.kernel.org
X-Received: by 2002:a05:6102:a4f:b0:523:759e:b0cf with SMTP id
 ada2fe7eead31-5d7dd6ad6bdmr5856194137.21.1761125966715; Wed, 22 Oct 2025
 02:39:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022033847.471106-1-marek.vasut+renesas@mailbox.org> <20251022033847.471106-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251022033847.471106-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Oct 2025 11:39:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVpVkvHwihk=jVdq37Xi01oh_6O2p9Z2b645ViiuxpFTw@mail.gmail.com>
X-Gm-Features: AS18NWCLE2aAyAzKtAQbH4VnFmVWNSxcs2C7oaQZc_Iov4xWvW3S_J-Tvmn1Aps
Message-ID: <CAMuHMdVpVkvHwihk=jVdq37Xi01oh_6O2p9Z2b645ViiuxpFTw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: renesas: r8a77961: Add GX6250 GPU node
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Matt Coster <matt.coster@imgtec.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Wed, 22 Oct 2025 at 05:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> present in Renesas R-Car R8A77961 M3-W+ SoC.
>
> Acked-by: Matt Coster <matt.coster@imgtec.com>
> Reviewed-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se=
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V3: - Add AB from Matt
>     - Disable the GPU by default

Thanks for the update!

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on v2 is still valid, will queue in renesas-devel for v6.19.

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

