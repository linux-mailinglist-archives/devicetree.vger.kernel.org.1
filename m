Return-Path: <devicetree+bounces-16248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6C37EE1F5
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE2B61C20873
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231EC2F86A;
	Thu, 16 Nov 2023 13:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 594B8AF;
	Thu, 16 Nov 2023 05:53:59 -0800 (PST)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5ac376d311aso8735157b3.1;
        Thu, 16 Nov 2023 05:53:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700142838; x=1700747638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQiXjFb8mLsAzVBa/SxrYgXwNAfH0nGzkpIfmd6LGak=;
        b=VTXsglY9hBBiRegaLu2q4LIbryv0hbcu9NXMRESl4JiWEufSUN36q7xRIu+wQRwTyx
         /MKZCSVn6R56u6z5Q+6T0MK48Nt1DeVBKU/5GGHKWCdYDS+XbiSgkzbc5vl3shrk7lfd
         Jip56Wrquih0lhfRjzb8Fo1jSIs18Q4r74L3ps8YPJGWbt28TmhrDpw+owkwEH6qTWWK
         YZLrdgoDqoyGZyYqPyphq10BVSkYREY13WFWLrk6dDleiEp606lFsAoQUcIjGqxGrW4x
         7DmpXkC0qidH1ufiyIMIcTl8q5SI2o4NngG0ujE0YiNiaCIfgfEQ5CUCt/+hu5sSDVxg
         4Sxg==
X-Gm-Message-State: AOJu0Yws8/FUvv5o9n700b8kLa4HCtOYi3aSAzV294umhNlZIYC4KGRN
	Kh5As0MxCAsUN1xgIk5p0+q5ptI60BkidQ==
X-Google-Smtp-Source: AGHT+IHO3537yTRNgloa1+w+sg3qnjzvj8hH/PFIuxxF24p/L0EnKktZ7Q5FUGdzXdKx9GAZZ684Ig==
X-Received: by 2002:a0d:e810:0:b0:586:a684:e7ba with SMTP id r16-20020a0de810000000b00586a684e7bamr17434808ywe.39.1700142838384;
        Thu, 16 Nov 2023 05:53:58 -0800 (PST)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id u128-20020a0deb86000000b005a7bf2aff15sm1001567ywe.95.2023.11.16.05.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 05:53:57 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-da7ea62e76cso829475276.3;
        Thu, 16 Nov 2023 05:53:57 -0800 (PST)
X-Received: by 2002:a25:b317:0:b0:da0:c49a:5fe4 with SMTP id
 l23-20020a25b317000000b00da0c49a5fe4mr15561255ybj.24.1700142837775; Thu, 16
 Nov 2023 05:53:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Nov 2023 14:53:46 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUd_zmkY4JS1TgG_MvMSrm6ihA0cTPmVzjGFXw7qtP0OA@mail.gmail.com>
Message-ID: <CAMuHMdUd_zmkY4JS1TgG_MvMSrm6ihA0cTPmVzjGFXw7qtP0OA@mail.gmail.com>
Subject: Re: [PATCH] spi: dt-bindings: renesas,rspi: Document RZ/Five SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 9:53=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The RSPI block on the RZ/Five SoC is identical to one found on the RZ/G2U=
L
> SoC. "renesas,r9a07g043-rspi" compatible string will be used on the
> RZ/Five SoC so to make this clear and to keep this file consistent, updat=
e
> the comment to include RZ/Five SoC.
>
> No driver changes are required as generic compatible string
> "renesas,rspi-rz" will be used as a fallback on RZ/Five SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

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

