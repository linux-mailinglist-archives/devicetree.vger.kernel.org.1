Return-Path: <devicetree+bounces-5538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ABD7B692E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 617911C20860
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77D617741;
	Tue,  3 Oct 2023 12:38:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3FBD53B
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:38:25 +0000 (UTC)
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com [IPv6:2607:f8b0:4864:20::a2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D91783;
	Tue,  3 Oct 2023 05:38:23 -0700 (PDT)
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-49aa8518df8so535252e0c.1;
        Tue, 03 Oct 2023 05:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696336702; x=1696941502; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CKzlt+BVfLvIxh6PYh+kinEoKPnd+lX03sFhitHZpJ4=;
        b=Am4c8QJUO79mi0keBdz+ELcBqf7H8ICOzk1V2ckz4ZmC/11VcC/q9+346Z/C7FitT4
         mPFfKA0cYm6wB3HXyFSepg5BrRqze9g+QTWWXl5sFee3gl3R8L+H+jJ7zfAvCyUjKoGI
         1YHgsb9ntLikSGJId0EyRmkzNcfRGrfIIL5TsHgJ3Kn6O8x+BIRSMyfBbYbT0BsXzxwD
         AroYDTODsRGPevP0hPX/8Hsx9OJ8JNeR9BgJzjEC/kleiftCVxAwxMRyyhHNNffdFk4t
         r2mnLO4Ld2EEAfRusibPUTRAGjA9IVEM4NF54A5YeYcb8QAx5FXjQRw4uyviYs3mvhau
         fpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696336702; x=1696941502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CKzlt+BVfLvIxh6PYh+kinEoKPnd+lX03sFhitHZpJ4=;
        b=ohe9i0GHhG5W7ytrHS2Wfmy4IjjCzgUBrT+KBc6yzX1jtBKxOeaAi9NhiyeYYGNU52
         n9jlqvj7tDPsHudY1n/p3OIVvslTYZdIKBYzHFFnS32qHc1BVCbr1QzG8NAW27gLp2H0
         hxK9IhL3o17qskCGPHIPZsOX6mE05Yo1vcQTkMatLGWQwT1RVBUEB66Cz3wJByAcOPvJ
         SWWQ8ylywkCHBGg0MOGwhdTcs7no/37KalEWjOYXIDLr51Z4YB3YPVOaW6tjhPfjYItt
         5K7qbvbsYV+NLSiBQvvvYhzoXX3wwMRcjF19Q9ps5Jhi0e1eN1ZObiqkm7kjbqpyHaCJ
         tLCg==
X-Gm-Message-State: AOJu0YyaqxZ463YXF+aw4gDW3SGu1z0GDkqINhvJMYj5bS7/q8PaV2zj
	9XNHw9lqX9azxAx6dqGrg0KTTKBEqXxjqRCMIWY=
X-Google-Smtp-Source: AGHT+IHedkT3obXGyb9nsJv3EFRBFDAeX3iUNPTid2i0eAkHBAV7M3TivHtMpjze3qSf2rSGD9Yh21SNWfYtAWWzG7I=
X-Received: by 2002:a1f:4804:0:b0:49a:9f99:bb03 with SMTP id
 v4-20020a1f4804000000b0049a9f99bb03mr1206148vka.1.1696336702438; Tue, 03 Oct
 2023 05:38:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20230929000704.53217-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdWq8R0QtDxNRkask3kipnSXmOzR_TjV3Hy0bkF0378CyQ@mail.gmail.com>
In-Reply-To: <CAMuHMdWq8R0QtDxNRkask3kipnSXmOzR_TjV3Hy0bkF0378CyQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 3 Oct 2023 13:37:29 +0100
Message-ID: <CA+V-a8vcpMuwwSakBD_8HRueFatkPew40_LThv1yjxi2=5f3+w@mail.gmail.com>
Subject: Re: [PATCH 3/5] riscv: dts: renesas: rzfive-smarc: Enable the blocks
 which were explicitly disabled
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Geert,

Thank you for the review.

On Tue, Oct 3, 2023 at 1:28=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> Thanks for your patch!
>
> On Fri, Sep 29, 2023 at 2:07=E2=80=AFAM Prabhakar <prabhakar.csengg@gmail=
.com> wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Now that noncoherent dma support is added for RZ/Five SoC enable
> > the IP blocks which were disabled on RZ/Five SMARC. Now with this
> > patch we get support for the below peripherals:
> > * DMAC
> > * SDHI
> > * USB
> > * RSPI
> > * SSI
>
> and Ethernet? ;-)
>
Oops, I missed that!

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.7, with "Ethernet" added.
>
Thanks for taking care of it.

Cheers,
Prabhakar

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

