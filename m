Return-Path: <devicetree+bounces-5815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9467B8091
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2F44728130A
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42A014280;
	Wed,  4 Oct 2023 13:17:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0685D1400D
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:17:22 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD4F6A1;
	Wed,  4 Oct 2023 06:17:16 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59f6e6b7600so23836977b3.3;
        Wed, 04 Oct 2023 06:17:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696425436; x=1697030236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uGCiimfEoMn7BwF0dkBNPoxRRWXYUsk5xphqS0fx1Zs=;
        b=pmftTRs9yg13wYfqEi3xHf6r+HxRpGy4O5YVagFhg1i96J5qhh/6JcRtvn2LbxbIwN
         F+0P0hM0MTLXfIdhh+dLODJTc5FE0TO0NfhN9j+7ol1PsnoMOi++vK7DzkwnfGp8mXIJ
         RpJ4NKufDpKyncZnyBpRtyuEzoh3pxpD0gF46iFPRT5GeAtqbyscx9oXr5DcElRAanmI
         TiqXVohf/mYwKbzJc8TQOJhNjS1j3hPuD1xZhI3eX/GP+1MvKrZPQw/2hEai5QEiLyDg
         h+swYN2rYHjV+C2aC4wz9fZMzSSe8FR4JylJKsdP7jwe+EYI7XzqkoLVpfPNlENWb924
         tr7Q==
X-Gm-Message-State: AOJu0YwrVtryNR8U85OhsGlJvBW4kSghXUZL5xeOmrXb/eu/+0eNe+mJ
	yoXSQS+vhTqn4AfOaGP4BO+t3dI88w3y9Q==
X-Google-Smtp-Source: AGHT+IF1p/Zbf6Wq9uQaPabygz0Yf0ZM6sayx2JMhwEmXMGeuNjvphiSnLO+qJMk924f1uFnZcJpWA==
X-Received: by 2002:a0d:d482:0:b0:59b:5231:50d7 with SMTP id w124-20020a0dd482000000b0059b523150d7mr2442405ywd.10.1696425435724;
        Wed, 04 Oct 2023 06:17:15 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id y128-20020a0dd686000000b0057087e7691bsm1150942ywd.56.2023.10.04.06.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:17:15 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59f7f46b326so24075247b3.0;
        Wed, 04 Oct 2023 06:17:15 -0700 (PDT)
X-Received: by 2002:a0d:e8c5:0:b0:56d:3b91:7e78 with SMTP id
 r188-20020a0de8c5000000b0056d3b917e78mr2377307ywe.20.1696425435071; Wed, 04
 Oct 2023 06:17:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-19-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-19-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:17:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWQVtroKntVamANrWiheDYa6+=L8K53__1WUZg3bF8EFQ@mail.gmail.com>
Message-ID: <CAMuHMdWQVtroKntVamANrWiheDYa6+=L8K53__1WUZg3bF8EFQ@mail.gmail.com>
Subject: Re: [PATCH v2 18/28] pinctrl: renesas: rzg2l: add support for
 different ds values on different groups
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
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
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> RZ/G3S supports different drive strength values for different power sourc=
es
> and pin groups (A, B, C). On each group there could be up to 4 drive
> strength values per power source. Available power sources are 1v8, 2v5,
> 3v3. Drive strength values are fine tuned than what was previously
> available on the driver thus the necessity of having micro-amp support.
> As drive strength and power source values are linked together the
> hardware setup for these was moved at the end of
> rzg2l_pinctrl_pinconf_set() to ensure proper validation of the new
> values.
>
> The drive strength values are expected to be initialized though SoC
> specific hardware configuration data structure.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - s/strenght/strength, s/togheter/together in commit description
> - got rid of RZG2L_INVALID_IOLH_VAL macro and consider zero as invalid
>   value for entries in struct rzg2l_hwcfg::iolh_group[abc]_ua[] arrays
> - removed spinlock in rzg2l_[sg]et_power_source()
> - introduced caps_to_pwr_reg() and simplified the code in
>   rzg2l_[sg]et_power_source()
> - changed return type of rzg2l_iolh_ua_to_val() to int and return
>   -EINVAL on failure cases
> - s/rzg2l_ds_supported/rzg2l_ds_is_supported
> - inverted the logic in rzg2l_pinctrl_pinconf_set() when applying drive
>   strength and power source to hardware registers and thus simplified the
>   code
> - used devm_kcalloc() instead of devm_kzalloc()
> - adderessed the rest of the review comments

Thanks, will queue in renesas-pinctrl-for-v6.7, with Paul's comment
addresses.

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

