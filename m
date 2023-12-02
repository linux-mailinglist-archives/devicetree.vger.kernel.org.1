Return-Path: <devicetree+bounces-20917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 362DF801935
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66D501C20A1C
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260987E2;
	Sat,  2 Dec 2023 00:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jSqLJ+dS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34963133
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:58:38 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a1975fe7befso246837066b.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701478713; x=1702083513; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbR8KzXYL0ybnYKqP2A2MrIjHre31FRqYESM+8DIU+s=;
        b=jSqLJ+dSd0g6d+eOeNN8x3KlEsEAliI9QmIrQK87safV9VvRK8gF5TNFcFqvfccUrB
         XpAy/XBXC9IhOl90hLcW2RAXC8+82Z5vq7B6SmImyLdUxcFvgaAMAG0Zx7+dl6Dz6gW/
         5VnGisWfdi7vNp2KSlBCnDgyq1H64uJjpSbmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701478713; x=1702083513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QbR8KzXYL0ybnYKqP2A2MrIjHre31FRqYESM+8DIU+s=;
        b=Mt9lvM7KS821VBwArRE+1wXYO2uOXR8XzNIvHDobfpc4JhP/xGFq7F9LNDNHkXJMFN
         WEqA3Qcf7y+HHCaa1YtKzeAviFwhtkwGdpJ5irnKZLCfZC3+n3PPNGqwfX8W5nTY0bHc
         SUPNM/Im7qJ4XD92DFOKxFFKSOzZ7XvYKbqhoGsEGUdHGTl/3FvL2/Xq/FHQ+hOp3z/n
         6rJjMVPxtVQIpg7ah/MSDf/rpTnLeN9LNoq74rFZq0JmRqbY1BboX9c+9n5xOK8M3+dP
         Pyr2rG/rdLMtouCOJ1yJK7HLk+YgH99RIPsDMIaxFIogQY41i0yB1hG/M3W1S3MplxBM
         +5GA==
X-Gm-Message-State: AOJu0YwYTlGIEa+hXjVZ+BMnNIPAozxMEIPJDhEy+K9OGQ20Mruy+CVM
	RbQEi4qZ9xwq/Ic40vG7hGFrSpFVs1AqSteWutXBorOj
X-Google-Smtp-Source: AGHT+IEdzB0wM/TEwbA2eg6vjwVJOuLg0FLV+ZJsh8EvxtrHGdH3000FEm6/cfVZiEf/tssERf+xYQ==
X-Received: by 2002:a17:906:b2c9:b0:a19:a19a:eadc with SMTP id cf9-20020a170906b2c900b00a19a19aeadcmr1675773ejb.149.1701478713583;
        Fri, 01 Dec 2023 16:58:33 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id z21-20020a170906715500b00a173547a28dsm2491456ejj.195.2023.12.01.16.58.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 16:58:33 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40b422a274dso28205e9.0
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:58:32 -0800 (PST)
X-Received: by 2002:a7b:cb59:0:b0:40b:4221:4085 with SMTP id
 v25-20020a7bcb59000000b0040b42214085mr244275wmj.1.1701478712415; Fri, 01 Dec
 2023 16:58:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128084236.157152-1-wenst@chromium.org> <20231128084236.157152-4-wenst@chromium.org>
In-Reply-To: <20231128084236.157152-4-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 1 Dec 2023 16:58:20 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XV0+G=uFBE_n6WFGVW2szGcKToZgCNTdSrNf3LVk9MOQ@mail.gmail.com>
Message-ID: <CAD=FV=XV0+G=uFBE_n6WFGVW2szGcKToZgCNTdSrNf3LVk9MOQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 3/5] platform/chrome: Introduce device tree
 hardware prober
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	andriy.shevchenko@linux.intel.com, Jiri Kosina <jikos@kernel.org>, 
	linus.walleij@linaro.org, broonie@kernel.org, gregkh@linuxfoundation.org, 
	hdegoede@redhat.com, james.clark@arm.com, james@equiv.tech, 
	keescook@chromium.org, rafael@kernel.org, tglx@linutronix.de, 
	Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 28, 2023 at 12:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> @@ -61,6 +61,17 @@ config CHROMEOS_TBMC
>           To compile this driver as a module, choose M here: the
>           module will be called chromeos_tbmc.
>
> +config CHROMEOS_OF_HW_PROBER
> +       bool "ChromeOS Device Tree Hardware Prober"

Any reason that it can't be a module?


> +       depends on OF
> +       depends on I2C
> +       select OF_DYNAMIC
> +       default OF

You probably don't want "default OF". This means that everyone will
automatically get this new driver enabled which is unlikely to be
right.


> +static int chromeos_of_hw_prober_probe(struct platform_device *pdev)
> +{
> +       for (size_t i =3D 0; i < ARRAY_SIZE(hw_prober_platforms); i++)
> +               if (of_machine_is_compatible(hw_prober_platforms[i].compa=
tible)) {
> +                       int ret;
> +
> +                       ret =3D hw_prober_platforms[i].prober(&pdev->dev,
> +                                                           hw_prober_pla=
tforms[i].data);
> +                       if (ret)

Should it only check for -EPROBE_DEFER here? ...and then maybe warn
for other cases and go through the loop? If there's some error
enabling the touchscreen I'd still want the trackpad to probe...


> +                               return ret;
> +               }
> +
> +       return 0;

Random thought: once we get here, the driver is useless / just wasting
memory. Any way to have it freed? ;-)

