Return-Path: <devicetree+bounces-24867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C38811858
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31A611C2087B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BD2E85358;
	Wed, 13 Dec 2023 15:51:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D77B7;
	Wed, 13 Dec 2023 07:51:44 -0800 (PST)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5e282ec7537so12306097b3.3;
        Wed, 13 Dec 2023 07:51:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482703; x=1703087503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pWEvy54Aq1JKiqXgJAt3KKUBmqlXHH+k7Vf0IczX7I=;
        b=qE7cawyouUl9GhKz1b6UP5WTnI+8QM4PuXl/GLJiPaligUb5EocvVseDm/drzRUuN1
         ET2MgTdX2sCR3DPnhufrgGhbx2XU/nzeZF/S42079yfGc+0TEN2lGnxEINrgdfcV9aK5
         WgZfW32M1g1R3RUJwY62No/rWCnmMGZGASsYk7fCQfKOHJNF19VJA3MOc8pWARCEkSOY
         RgYQOS1zbo8gie53lzTjDjHRY0prFz7SZPSn19GoLZlygXL9xS7fwtEDACCVRI9rrjaD
         3TVium0Yev5F2MiPhYS5/PUCwQaP1gC1GHbf22eEknuKZWs0qZz9+gpqy8gmOBuxoSA4
         F43A==
X-Gm-Message-State: AOJu0YxEDLiwrAP0BlG+5fuLaK6Ayaf3prZxHqEpPtO+leWkvr73YpI8
	Jc8YmhC4LTYLIfOHibOgSgxHTJ95Av295g==
X-Google-Smtp-Source: AGHT+IEPzBYO/s3JkSy24ZF/uWDf2kxJvkjxHHsW5EyKfBiWBpoZAbLcxDckcNOVsRVe+oan64eEBA==
X-Received: by 2002:a0d:ef42:0:b0:5d8:e267:78ea with SMTP id y63-20020a0def42000000b005d8e26778eamr6782951ywe.85.1702482703425;
        Wed, 13 Dec 2023 07:51:43 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id t190-20020a0deac7000000b005e3175fc655sm255567ywe.55.2023.12.13.07.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 07:51:42 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dbcd67d4c29so500146276.3;
        Wed, 13 Dec 2023 07:51:42 -0800 (PST)
X-Received: by 2002:a25:ae97:0:b0:dbc:d902:51b9 with SMTP id
 b23-20020a25ae97000000b00dbcd90251b9mr424122ybj.92.1702482702518; Wed, 13 Dec
 2023 07:51:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com> <20231213-jester-rendering-dd876ef8e8ac@spud>
In-Reply-To: <20231213-jester-rendering-dd876ef8e8ac@spud>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 13 Dec 2023 16:51:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXwRZRvLPh3JBShQy4hRHq=2fQJmcYjTyQhKZmtBPaOuw@mail.gmail.com>
Message-ID: <CAMuHMdXwRZRvLPh3JBShQy4hRHq=2fQJmcYjTyQhKZmtBPaOuw@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 0/8] Add JH7100 errata and update device tree
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Conor Dooley <conor.dooley@microchip.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Wed, Dec 13, 2023 at 4:43=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> On Thu, 30 Nov 2023 16:19:24 +0100, Emil Renner Berthing wrote:
> > Now that the driver for the SiFive cache controller supports manual
> > flushing as non-standard cache operations[1] we can add an errata optio=
n
> > for the StarFive JH7100 SoC and update the device tree with the cache
> > controller, dedicated DMA pool and add MMC nodes for the SD-card and
> > wifi.
> >
> > This series needs the following commit in [1] to work properly:
> >
> > [...]
>
> Applied to riscv-cache-for-next, thanks!
>
> [1/8] riscv: errata: Add StarFive JH7100 errata
>       https://git.kernel.org/conor/c/64fc984a8a54

That's the one which also needs depends on !DMA_DIRECT_REMAP?

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

