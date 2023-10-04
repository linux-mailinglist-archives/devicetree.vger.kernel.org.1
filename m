Return-Path: <devicetree+bounces-5729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8B07B7A76
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:45:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2E8F6B207C7
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F59F10790;
	Wed,  4 Oct 2023 08:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C62101E2
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 08:45:25 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73BF498;
	Wed,  4 Oct 2023 01:45:23 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5a1f00b75aaso21367537b3.2;
        Wed, 04 Oct 2023 01:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696409122; x=1697013922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0QS1tAk6LjG5Jt/45jTq2YMqP8RLS9Ds70OkCJABKH4=;
        b=g7pAN6F3R5XD3TG3mKL7OLhTaUlw46IC8HB771O/OfrO3rI33pfiyVfVQ/GbcmcwYX
         ygGwETZtjSw3iRTaRsYSJytvJ8xlrm/J0L10Q9MKEpPmNVbNuyeotbsHDA8P17SN4QSY
         Ii8eo+9zJ660FTVs1dP47TwQAgJzhR+x92tdtCOWCzbgabDo/f0LhmCafoHIPMJdcl4B
         gqwbXe7MXOjWE2rtZMyFvS0uoYz3frdAFIm76ZUyvSs/JjpwdKJ+/dPxGWkgn1ddlxtc
         I8mCEbd2gbtmRRVmnG2R2TJkYsjyd9qU1WNNxcWUJZdE2vwbwsw8JDScgCXEkv/uSFfo
         mayw==
X-Gm-Message-State: AOJu0YzKOKY4hwg2taAJZZUdnCwRiOcFDzWRmING+UgtMOrI+S68JA+U
	U40L3DLkaSSOU1ipISNa6ruonNvzKSZuyQ==
X-Google-Smtp-Source: AGHT+IHsBOX4ymOiykmRsvZfOEbM7vxfLOpztb9oWDxXTxofqY5o1/EfP1cH451pwv/8pamsgn8eGg==
X-Received: by 2002:a81:a24a:0:b0:59f:7f8e:dc4a with SMTP id z10-20020a81a24a000000b0059f7f8edc4amr2314373ywg.22.1696409122403;
        Wed, 04 Oct 2023 01:45:22 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id d15-20020a81ab4f000000b0057a8de72338sm985000ywk.68.2023.10.04.01.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 01:45:22 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59f57ad6126so21249167b3.3;
        Wed, 04 Oct 2023 01:45:22 -0700 (PDT)
X-Received: by 2002:a0d:fa07:0:b0:591:15a6:c11f with SMTP id
 k7-20020a0dfa07000000b0059115a6c11fmr1619406ywf.50.1696409121846; Wed, 04 Oct
 2023 01:45:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-8-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-8-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 10:45:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWLoPUZw-HBsk3bELmfyTC-wF9q3CN-ouexR-Nvfqjkzw@mail.gmail.com>
Message-ID: <CAMuHMdWLoPUZw-HBsk3bELmfyTC-wF9q3CN-ouexR-Nvfqjkzw@mail.gmail.com>
Subject: Re: [PATCH v2 07/28] clk: renesas: rzg2l: add support for RZ/G3S PLL
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de, 
	neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add support for reading the frequency of PLL1/4/6 available on RZ/G3S.
> The computation formula for PLL frequency is as follows:
> Fout =3D (nir + nfr / 4096) * Fin / (mr * pr)
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - added GENMASK() defines for DIV_P, DIV_M, DIV_NI, DIV_NF
> - used mul_u64_u32_shr() as suggested by Geert on v1
> - s/CLK_TYPE_G3S_SAM_PLL/CLK_TYPE_G3S_PLL/g

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk-for-v6.7.

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

