Return-Path: <devicetree+bounces-102885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C560978BF8
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 01:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BB501F238B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 23:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B431117BECD;
	Fri, 13 Sep 2024 23:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RWstc9wO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0815B108
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 23:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726271356; cv=none; b=pYYLTrDtQlfZz0ubdP10L9i2Mg5juY5IC+Xih+RLFk8c80B9+NFY3sgft5dWdS4CIc6zsz4B18T3SoZ4ZaenBlKDWsrm74WgM3nvYo0DCt2LTO41h0ss0ifia3xrrB+L1FY/a91cgpR6sZNKhq7X8fs9qdxWdTkFxop/X+ZL44A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726271356; c=relaxed/simple;
	bh=HPCIWNWpBdtqLYZEm2Q7Mjcha/BIoksmpFmSMnXlxFs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XBMQgsUFl8DrRsb+TA5tjzAMYv2tylCml8dYVnIUlU3Fvy37cLoyO1LK+ed/4s70Z1Wf0xacXe+lqbFSu4Ip36oHBmNb7UjWZcd98/6b+2j72gFwa8yuwTxpnKzVqpfMZJh/WwZGd+saY7KTc19IS6hTcOI0kWEDU2umsgJNr5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RWstc9wO; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-718d962ad64so2242479b3a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726271354; x=1726876154; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgrnQAkPxnP9xr/uHfnesOWhy4bQylWu/nCRFkQoiTg=;
        b=RWstc9wOu5i3PKNEk2GdWtxp9hH7QHVrvTyKshYuMgkkxHdXyTw6OVSRIf01eIoMfd
         Vp1xA754N0nfc/MeOIRupAIC/2SWcMHjUqUm7Ie+pZhL7mCP9k7WdIb2MWqnk3mJAGEf
         Xkc6oTXpLAavX3vQ6tJ3ilBtZY/70QSBh9/EI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726271354; x=1726876154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgrnQAkPxnP9xr/uHfnesOWhy4bQylWu/nCRFkQoiTg=;
        b=SMjCmy1vGb0hXwb/aUp70TIJUmcHftc+s8F8FJV5mpnvRJJyhKDAdGfL3W1qjv5Imd
         MnzV8TtdiASHNkQ11pdoz/XtoH5mdnzhJ8rlYU3tzJZVDlh1JXK49tdwGdmKFDUhG3HR
         u7MxdKHENVazGwGsrHAG896zoTafdx08dPTUMGncvFv8WKkzGxAU1ocpaIT9LqJ3Ic5D
         7W+aNUeZkJcoaEDCTsEG9E/NSxsBWLxBx3wR1coWigzqoEsAzUMETapFoq4LGeuw5AOs
         k0iiRvErK2SHL7+XOQLgJyL936nINgwLZXW9g4qWdJawgC7OWy6XXvUIFWqAKCoWLJK0
         WH9g==
X-Forwarded-Encrypted: i=1; AJvYcCXoyjhYqtE0H+tB/n2ZxwgIWfAn/NxoEBcVyqA8Tj+x/dwMgcFnZEUuoxKDqc1/z0XUdy2PoQJTzuqH@vger.kernel.org
X-Gm-Message-State: AOJu0YyHtdcczsIUYwxGceQYc7ibQvG6u3HznIhTOW5DAZUNYUoMuJcy
	AtTsJowWUCbM4USDKUbRS9Npe1yXWRFpCb/hhJhk+MJ9fqhW1qWJv4jWDonwoiq4Baa+FVwyniA
	=
X-Google-Smtp-Source: AGHT+IFWf30U7gbJ+JNv4NgmzxrQNLRBjkPVoHA/5Y4/D7XL4gV0ISk4EovMqKcoPY3mzyKMEnlx/Q==
X-Received: by 2002:a05:6a00:1948:b0:717:8ee0:4ea1 with SMTP id d2e1a72fcca58-71925fa95c9mr15221589b3a.0.1726271353798;
        Fri, 13 Sep 2024 16:49:13 -0700 (PDT)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com. [209.85.216.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944a977d1sm134013b3a.18.2024.09.13.16.49.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 16:49:13 -0700 (PDT)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2d89229ac81so2255810a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:49:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVKUQsSToLO6VHBCtqdmIvee9NkI8WgNe/dogUAKw+1Vf8TkdTYE6LZDWsEwCEnsrtF+PcoIx6Q/+Qv@vger.kernel.org
X-Received: by 2002:a05:6214:5f07:b0:6c5:de4:3edb with SMTP id
 6a1803df08f44-6c5735881a8mr122878276d6.29.1726271012120; Fri, 13 Sep 2024
 16:43:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-10-wenst@chromium.org>
In-Reply-To: <20240911072751.365361-10-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 13 Sep 2024 16:43:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WtVSQ5GX6H5CtxNPTdOAJVMj_xNRvG9siZB6_ePZr7CQ@mail.gmail.com>
Message-ID: <CAD=FV=WtVSQ5GX6H5CtxNPTdOAJVMj_xNRvG9siZB6_ePZr7CQ@mail.gmail.com>
Subject: Re: [PATCH v7 09/10] platform/chrome: Introduce device tree hardware prober
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 11, 2024 at 12:29=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> @@ -8,6 +8,7 @@ obj-$(CONFIG_CHROMEOS_ACPI)             +=3D chromeos_acp=
i.o
>  obj-$(CONFIG_CHROMEOS_LAPTOP)          +=3D chromeos_laptop.o
>  obj-$(CONFIG_CHROMEOS_PRIVACY_SCREEN)  +=3D chromeos_privacy_screen.o
>  obj-$(CONFIG_CHROMEOS_PSTORE)          +=3D chromeos_pstore.o
> +obj-$(CONFIG_CHROMEOS_OF_HW_PROBER)    +=3D chromeos_of_hw_prober.o

"o" sorts before "p" so "of" should sort before "privacy"?

I guess it's not exactly all sorted, but this small section is. Since
it's arbitrary you could preserve the existing sorting. :-P


> +static const struct hw_prober_entry hw_prober_platforms[] =3D {
> +       { .compatible =3D "google,hana", .prober =3D chromeos_i2c_compone=
nt_prober, .data =3D &chromeos_i2c_probe_dumb_touchscreen },
> +       { .compatible =3D "google,hana", .prober =3D chromeos_i2c_compone=
nt_prober, .data =3D &chromeos_i2c_probe_dumb_trackpad },

The fact that the example is only using "dumb" probers doesn't make it
quite as a compelling proof that the code will scale up. Any chance
you could add something that requires a bit more oomph? ;-)


> +static int chromeos_of_hw_prober_driver_init(void)
> +{
> +       size_t i;
> +       int ret;
> +
> +       for (i =3D 0; i < ARRAY_SIZE(hw_prober_platforms); i++)
> +               if (of_machine_is_compatible(hw_prober_platforms[i].compa=
tible))
> +                       break;
> +       if (i =3D=3D ARRAY_SIZE(hw_prober_platforms))
> +               return -ENODEV;
> +
> +       ret =3D platform_driver_register(&chromeos_of_hw_prober_driver);
> +       if (ret)
> +               return ret;
> +
> +       chromeos_of_hw_prober_pdev =3D
> +                       platform_device_register_simple(DRV_NAME, PLATFOR=
M_DEVID_NONE, NULL, 0);
> +       if (IS_ERR(chromeos_of_hw_prober_pdev))
> +               goto err;

FWIW if you didn't want to see your prober called over and over again
if one of the devices deferred you could just register one device per
type, right? Then each device would be able to defer separately. Dunno
if it's worth it but figured I'd mention it...


Also: as a high level comment, this all looks much nicer to me now
that it's parameterized. :-)

