Return-Path: <devicetree+bounces-5263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2056B7B5B83
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3AD781C20757
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061011F956;
	Mon,  2 Oct 2023 19:46:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96A11F934
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:46:13 +0000 (UTC)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29C85AC;
	Mon,  2 Oct 2023 12:46:12 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3aa14ed0e7eso45669b6e.1;
        Mon, 02 Oct 2023 12:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696275971; x=1696880771; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7GnURQxCUhFf8f9trsE+6Mr8ThlATIx1PPpL0CygtXg=;
        b=R7kN84NMNBJnDUF+wbi0KdTC0R+fY/YHZ2qROl0dvv+7e0R7gobw0/CJEyBNAXo+CG
         MZg6hPSkJDIaHpd1L4ihSwoNSa6G4fpYGYUFQ9qwl+fkIbZj0XkYOIXfwkQ+qwClFzpY
         HZTtSPGcKy399HhffsKMjeKc/MAbsecQ1dODceAozfY/AKLd9Shf4FtXIKd6xUWPLFYP
         NAx6tRdqXc6oKW51+/aqDDwVJ0E37vua0JWqWk03Q+ihMnZXck7LMFK48hpZWQq/LYwo
         P64/j5Co1GgYMiwItdBqZK5kywEjyMbxTiRo4gvGru/Pv1ywYlRlyC9z62TDQs7tPyro
         rLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696275971; x=1696880771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7GnURQxCUhFf8f9trsE+6Mr8ThlATIx1PPpL0CygtXg=;
        b=In8V0NrvTvWIUsohXW6PDKgaGZcU7Dugt8a0a3+outMbMRgW3M1QIt9UBQGx3TBEPE
         SF2SKumivsxLM0Fhuem9sQwKWlpDD2pexysKZM4d1baeRemdKc69saubXbhwkgOiXWZT
         w0Zo6HT1bUlNQ341NTyimM1dlTT0BPmd+DyY03+mVLWwsMaW1H10515pC9xi/kR2PejY
         F1W8aUZy1giGJy/nOh3L8u8IDePe4EGfYefC8PRprsIWCjoYpTDrCxGQTK1BRbzABAoT
         kqsaY9XWIa4bwJ5xVzJINIHbrXhMcNbMRHnfxYGLArXBgxacxQCS5cudCSOzl5Hin/RX
         VJOw==
X-Gm-Message-State: AOJu0Yz7RKXQwgjtgo9a55P/4XbCDThYa40DW92CtVNpzQkyXQn1mRFX
	aGpKzkDGIzjjJ3Jjqp4YlldcBwqOJ4mE61mcm3I=
X-Google-Smtp-Source: AGHT+IEr8FMRtJ/U2Bkgb7n7J5Gt5+hRUBnNy0fk5IKzNGivR4ggM0kr5ZOnDAYhX190DVJ8ACzk++3GTqcrVWpaK/w=
X-Received: by 2002:a05:6808:2a78:b0:3a8:6a40:7dc0 with SMTP id
 fu24-20020a0568082a7800b003a86a407dc0mr225924oib.18.1696275971480; Mon, 02
 Oct 2023 12:46:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002194138.125349-1-tmaimon77@gmail.com> <20231002194138.125349-3-tmaimon77@gmail.com>
In-Reply-To: <20231002194138.125349-3-tmaimon77@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 2 Oct 2023 22:45:35 +0300
Message-ID: <CAHp75VfDcqTAVhZmo-q8v8c8TKwZUjQMr2-0RBarYDDJD1+TZw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] mmc: sdhci-npcm: Add NPCM SDHCI driver
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: ulf.hansson@linaro.org, avifishman70@gmail.com, tali.perry1@gmail.com, 
	joel@jms.id.au, venture@google.com, yuenn@google.com, benjaminfair@google.com, 
	adrian.hunter@intel.com, skhan@linuxfoundation.org, davidgow@google.com, 
	pbrobinson@gmail.com, gsomlo@gmail.com, briannorris@chromium.org, 
	arnd@arndb.de, krakoczy@antmicro.com, openbmc@lists.ozlabs.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 2, 2023 at 10:41=E2=80=AFPM Tomer Maimon <tmaimon77@gmail.com> =
wrote:
>
> Add Nuvoton NPCM BMC sdhci-pltfm controller driver.

...

> +       pltfm_host->clk =3D devm_clk_get_optional_enabled(dev, NULL);
> +       if (IS_ERR(pltfm_host->clk)) {
> +               ret =3D PTR_ERR(pltfm_host->clk);
> +               goto err_sdhci;
> +       }

...

> +err_sdhci_clk:
> +       clk_disable_unprepare(pltfm_host->clk);

Now this is leftover that leads to unbalanced reference counting.

--=20
With Best Regards,
Andy Shevchenko

