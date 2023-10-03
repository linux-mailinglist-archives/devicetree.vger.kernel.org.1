Return-Path: <devicetree+bounces-5534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 923137B68E6
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 450CB2811E3
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851BF22F0E;
	Tue,  3 Oct 2023 12:24:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7225224FE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:24:06 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C9CA6;
	Tue,  3 Oct 2023 05:24:05 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5a229ac185aso10444227b3.1;
        Tue, 03 Oct 2023 05:24:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696335845; x=1696940645;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbgVutEnkgEx27MAC0tB+cw33CIkZ02T6S63P3EhqRg=;
        b=P4O2qebG6Pf4JUjqCQE6bwi2tKcxlUUxotQR/hfIhJ0Xn5FaEcytTUKYjewB63Qbh+
         MgBU6co+KInvQN9GK7eJw8bzgPOovEeIBoEaD7Vsuk1SZvkWyxu0PMFKu/fzaITCFZPD
         o95IUlOQqynWWWo7C/2tQ8NJnisWWkNTAypiUm5oQvjLruq0bU7xaoqIAvzZRUnbOp3l
         eWAjIrd4ZGqXwTwwPyKFnS9dcwAc5rMGBSZcXB7rHbDKhAGfYU3eG5NmzEz07nwXSWMH
         J7BLiXL9cLTTlJzkQO1quXkLHDOrAz30zuK9YorSRlSFk27z2ieNneiaMkl+gPI9RI4m
         1NQA==
X-Gm-Message-State: AOJu0Yzdu5hPkqns26l/JzsDJ0A+WLb0Jz4nbTgVW8jOIOFBw1kQWbc5
	iyE150wfzfukwzjLvVFf1AZuB4gWBSZ7rA==
X-Google-Smtp-Source: AGHT+IErLWszO7Dr15uTI5/gVs0Cz/JTIL+AcNE/TbCew3eCbyiPYaGf1ptyN8g48IybnN06+SWCwg==
X-Received: by 2002:a05:6902:20b:b0:d81:a0c5:f275 with SMTP id j11-20020a056902020b00b00d81a0c5f275mr12022699ybs.15.1696335844656;
        Tue, 03 Oct 2023 05:24:04 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id x10-20020a25ce0a000000b00d8168e226e6sm366802ybe.47.2023.10.03.05.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 05:24:04 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-59c268676a9so10583527b3.0;
        Tue, 03 Oct 2023 05:24:03 -0700 (PDT)
X-Received: by 2002:a81:5b02:0:b0:59b:2be2:3560 with SMTP id
 p2-20020a815b02000000b0059b2be23560mr13292322ywb.48.1696335843190; Tue, 03
 Oct 2023 05:24:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20230929000704.53217-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20230929000704.53217-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 14:23:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWizNPWTdAkBTbmaDbPWNT9w14r2=oBhMeq_DNBdcuQjQ@mail.gmail.com>
Message-ID: <CAMuHMdWizNPWTdAkBTbmaDbPWNT9w14r2=oBhMeq_DNBdcuQjQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] riscv: dts: renesas: r9a07g043f: Add L2 cache node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 2:07=E2=80=AFAM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add L2 cache node for RZ/Five SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7.

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

