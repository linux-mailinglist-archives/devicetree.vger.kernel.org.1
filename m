Return-Path: <devicetree+bounces-223035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F5BB07AA
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 15:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0C94164ACF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 13:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5062F1FCA;
	Wed,  1 Oct 2025 13:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74FE2ED869
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759324985; cv=none; b=m48pRzf37+3smKKFPMGL/azBEyij89/EFLQBXgewO1fbP25QHZK1aN59DWLD4HaQ/C78rRaTL7Hy7aMTFr8pDLl755vjiNx3Tgu6yy+mwOqN/4bwdxHGAFA10XYH2FkbUU6oX9kf6yneNoEOiQ26j/Oe9KO1QNJWj9OOB6hikDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759324985; c=relaxed/simple;
	bh=I05mR9/50DLTEHHaHy45Q5YQgLDEg9VchuCah9dVd2k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EHZBIzr5SJI6Dyz7JMCMm0jg4SFiu0KybnCiYM3BXpkZjc3y3Vrqgq7nTafvyc97PBM6VyCc6wTBhd2mjOYRMdokeh51np8arwQ2/ljLRMsQwbMKb5td6w209jwh8AcD8Ej5Vcm+YBBspnHJH+YIUFCFObHiwBu86p1X0LX6fcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4e3117ea7a2so29180211cf.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759324982; x=1759929782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYdalTnEkJlTI6nAxkZ1pZoLmc57oQNk8+NRjQz1+SA=;
        b=pFXqXhD4Q0Y9WDswEtoNTbfAOhSPWZLASaCfzbpyYJhjzjv2MmTGtXuY3AyZuxkvkt
         oK0kofAvJWWp0SBNGoUIiuVBLqztWTZ6+d4Z2x1zf8lXOiHIo3ZVz6r/B2NpHqT0CNzU
         OFEumFoSj00BCIc+B/NV03AG+GtgqGZ7CErqF6ZTMpCauqb2sednvBiTxmOPjMM8B4tB
         x8ewwTs9bsT7H0t6v85RUnaZUYd3vw1mvwjwCwpz24uIujxyxrXf7JlZdGKrWYiuvnZH
         zPz7jWVRbtrE9USk4spZito1YZ8ryx5F/2bmxGolW8TU4KOf5Ij2azxe6k5d2m3/N0EO
         S8eg==
X-Forwarded-Encrypted: i=1; AJvYcCVW4BUN17JZFVB4Ujy1n6HDX9kfqBORodFXTwrbm0c5InNPP3Qfq3nLmrpCB5E9j8t6Vpi7n8ua6eb/@vger.kernel.org
X-Gm-Message-State: AOJu0YwOb500Yg4BdFJDCRqdzaKjTv2EImNT4LbVHUQKjNDtPNYXT9XG
	fGyqSr2Bxbex7kB2DPlTmTIRM497KMpt9iJ0YrxpW+1QIiS+jwDFXvDiTeNrjV1K
X-Gm-Gg: ASbGncu43i3fbBMFYPDPgbzVzwSPoh4+mm4kkUXFB+jRuxZLgbF8CdrgHdm7sqENO7k
	AZbF7nOuQvsbQbAGlGEQzEacXgEvXXuItvWB7hY8r8x2qOBYypqZ1AFa37Vaw8Y7dhiFlzU10QR
	p/2mfB0Ph3guG0xh9CHEapNBKXI23au7UDlyziOwv6nlJ4mj6tWSujlTrqhZvxsRTp0ur0TB48a
	Sq/4WJva8oVYwr6pLwWtPwiufvRWRqKFvARZ7/p5wACLRBYaKUiPug6+8J2YjeqYpTmQMVDmiHC
	KPFqlnQC19Im4dqYPi9W+JopLssWTCnHx3lPt26ZKWeAJPTLKtrUTE4OyoEj0Oos3aAfPuK0SLr
	M4bxZ6riTjZ866b9BXZA1tiI3vvjIdrTJEjmrJT8uyXJG0YMjAaPEfSwaTkB0mnXC0jGYJK3eyf
	2D71L8TFCt
X-Google-Smtp-Source: AGHT+IEmc5UU0WSAgSQaOwLVFFkThIAkmdXj3CUPE1oGiu0RM/E7xD3G1F3VzYIVukPui0+S/ZyLog==
X-Received: by 2002:a05:620a:458c:b0:84c:749e:8d94 with SMTP id af79cd13be357-873765c02ddmr482832885a.58.1759324982242;
        Wed, 01 Oct 2025 06:23:02 -0700 (PDT)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com. [209.85.219.47])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c2718e1basm1296395485a.1.2025.10.01.06.23.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 06:23:02 -0700 (PDT)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-791fd6bffbaso78335956d6.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:23:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXzNYg0IxkjlVDjh+msj7kMna8laykfM1rzSxL9sPrQWYlL314rY/zuDlXExBUO7YE9yBPQWGAzkoiE@vger.kernel.org
X-Received: by 2002:a05:6102:161e:b0:58f:31da:dbd3 with SMTP id
 ada2fe7eead31-5d3fe509ac2mr1393313137.13.1759324645740; Wed, 01 Oct 2025
 06:17:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903161718.180488-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250903161718.180488-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <db2fc907-218c-4688-aebf-4a929f21b074@ideasonboard.com> <CA+V-a8vghwkHKWoqU8NQ3O9ZdHxB+cEvMv7Z9LQOMsZcx9vjPA@mail.gmail.com>
 <f1e671a3-77af-4ae2-aa6e-bde93aaa54b7@ideasonboard.com> <CA+V-a8tosiUkhaWGoZ9yTBe1Kyy0DLUGreqReH2NOWmVeS5_pw@mail.gmail.com>
In-Reply-To: <CA+V-a8tosiUkhaWGoZ9yTBe1Kyy0DLUGreqReH2NOWmVeS5_pw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Oct 2025 15:17:14 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVFSvSGBearGPU61atsHFu7NoDjpbxNNvyGO21j0-_OOQ@mail.gmail.com>
X-Gm-Features: AS18NWDiZs7Ynz61qNNAVC6cUY3oeLbFhcjv_kGBKaaXq5pMP7Ji5m5RgOlqVh8
Message-ID: <CAMuHMdVFSvSGBearGPU61atsHFu7NoDjpbxNNvyGO21j0-_OOQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/6] clk: renesas: rzv2h-cpg: Add support for DSI clocks
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Prabhakar,

On Wed, 1 Oct 2025 at 14:23, Lad, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> On Thu, Sep 11, 2025 at 3:26=E2=80=AFPM Tomi Valkeinen
> <tomi.valkeinen+renesas@ideasonboard.com> wrote:
> > I still don't see why all the code here has to be in a header file.
> > Usually headers contain only a few lines of inline code. Is there a
> > reason why it's not in a .c file?
> >
> Ok, I will move the functions to rzv2h-cpg.c and export the symbols
> and have the declarations in include/linux/clk/renesas.h.
>
> Geert are you OK with the above?

Sure. The DRM driver would already have a hard dependency on the
clock header file anyway.

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

