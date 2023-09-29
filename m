Return-Path: <devicetree+bounces-4759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA6F7B3C86
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 00:06:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 67A93B20A5C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 22:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454D76729D;
	Fri, 29 Sep 2023 22:05:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C215B521DA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 22:05:57 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE8421B3
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:05:54 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6c64a3c4912so348844a34.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696025154; x=1696629954; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=naHj0xuXcByQMM+TdtCohvVCq+osNBK01cxTTEKKxyw=;
        b=EMu61RC9E0ws5MSlrG2oGhY1AnPg/IGdr04eGFJ3BsNxIEOKmnxqTy9B8MNlvN7b3n
         S63AA34zWXuXcY0mR8qFLGNJCBXQEsZW+kwFqwl331FDfQXaEUMvkMNM5EeAaQKoWivB
         65S+Ztu5IvAGRoOM09th3MPCD/oAAN7C+FBnELRuCA3BV94svnENd0nNgHoSRtPWPkMW
         4Kuk7MmMXNthr5O1wJsSbcfqauVEDNUzI96KAQYZzE7FIORehlmuZ0eboHekUpVDQC71
         nbth5Gi600YW39RapUI4yVvTgZZ+XWmoJ78eOtzOGdoyqzOx8bGBQ70vRBPXI3VWTnG2
         KMXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696025154; x=1696629954;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=naHj0xuXcByQMM+TdtCohvVCq+osNBK01cxTTEKKxyw=;
        b=GlCwCH0Bb7zZl8+TuKu8A1OF62R4CrJifTzeeGbnAJOL50b0BFxv60HvVJGgoq7jGc
         tp4xU/pfxZvfLIXcsm9N25biIkm5G/etLsaTjRVmJnAKkgROh2uxmqKzkuKxl/0srqwD
         6xjdDIGrFkbqswtU5MZnqma7q7JXuAJpH9bQXeus6mp+XHsnL62Gs28jxZ02o0kZuzkg
         /5HFr4Dkd2nXYvze50TnIqkwxOQcmynloqDFgTI4kikhZWFXTT+byMUzaJWYYqAo0YV2
         ncDcrVwjhewR84ed2KVmX5AzopOvum4qv2nr6rdl3yZSnDlBeg5jNLCU9Ri/n0V5UmQJ
         Kwtw==
X-Gm-Message-State: AOJu0YyD3gokwpTeWdpXccCuJ53Iu1sO2Zv297Kb7BA09eulFN5AOV3E
	3NqReoeJVlFcZbzn+AkGvNKsmoQG/h4EOETnxjU3Zw==
X-Google-Smtp-Source: AGHT+IHyE4YQUm7vQs1QcqQjr5b1q+oQmKp3WntnD5jmb4mEWI4W6j13UW4F5G4vJnz8UfQSlOEZzp7+UN0w1kzOeHs=
X-Received: by 2002:a05:6358:e49c:b0:143:8aa4:30bc with SMTP id
 by28-20020a056358e49c00b001438aa430bcmr5947074rwb.8.1696025154053; Fri, 29
 Sep 2023 15:05:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-pxa1908-lkml-v5-0-5aa5a1109c5f@skole.hr> <20230929-pxa1908-lkml-v5-7-5aa5a1109c5f@skole.hr>
In-Reply-To: <20230929-pxa1908-lkml-v5-7-5aa5a1109c5f@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 Sep 2023 00:05:41 +0200
Message-ID: <CACRpkdb=8LU9Mkkn_VDcTGoH1pWn=hp9ZhN5dLm5pykif8cp-w@mail.gmail.com>
Subject: Re: [PATCH RESEND v5 7/8] arm64: dts: Add DTS for Marvell PXA1908 and samsung,coreprimevelte
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-hardening@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, afaerber@suse.de, balejk@matfyz.cz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 5:42=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovic=
@skole.hr> wrote:

> Add DTS for Marvell PXA1908 SoC and Samsung Galaxy Core Prime Value
> Edition LTE, a smartphone based on said SoC.
>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
(...)

> +&pmx {
> +       pinctrl-single,gpio-range =3D <&range 55 55 0>,
> +                                   <&range 110 32 0>,
> +                                   <&range 52 1 0>;
> +
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&board_pins_1 &board_pins_2 &board_pins_3>;
> +
> +       board_pins_1: pinmux-board-1 {
> +               pinctrl-single,pins =3D <
> +                       0x160 0
> +                       0x164 0
> +                       0x168 0
> +                       0x16c 0
> +               >;
> +               pinctrl-single,drive-strength =3D <0x1000 0x1800>;
> +               pinctrl-single,bias-pullup =3D <0x8000 0x8000 0 0xc000>;
> +               pinctrl-single,bias-pulldown =3D <0x8000 0x8000 0 0xa000>=
;
> +               pinctrl-single,input-schmitt =3D <0 0x30>;
> +               pinctrl-single,input-schmitt-enable =3D <0x40 0 0x40 0x40=
>;
> +               pinctrl-single,low-power-mode =3D <0x288 0x388>;
> +       };
(...)
> +                       pmx: pinmux@1e000 {
> +                               compatible =3D "pinconf-single";

At least add a new binding for "marvell,pxa1908-padconf"
and use that like this:

compatible =3D "marvell,pxa1908-padconf", "pinconf-single";

When you use pinctrl-single you get the slightly opaque device
trees as seen above, so it's not something I'd recommend, I'd
rather write my own pin controller.

But it exists, so I can't say you can't use it. Not my choice.
I understand it is convenient.

It is possible to switch later, but only if you have a unique
pin controller compatible so please add that.

Yours,
Linus Walleij

