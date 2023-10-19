Return-Path: <devicetree+bounces-9996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3372F7CF4BE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:09:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91C70B20BD7
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307A1179A9;
	Thu, 19 Oct 2023 10:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6D71798C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:09:26 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C0A5129;
	Thu, 19 Oct 2023 03:09:24 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5a7cc03dee5so95440137b3.3;
        Thu, 19 Oct 2023 03:09:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697710162; x=1698314962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xakoCHP0UqUBxiXAUCeloI+dGQZ3rFKCf0jLKLTYknY=;
        b=r10Cqd1rU6cy3CfWvgYlt4c5KqO7f2L5pgZ05tB2a+/xD95enaWLRIppRLqGb2f70X
         0NFcgT/zLTI5fTnmTokjhYtsumfjTjKYWS5a0/2+THHau95LAOX69AifnpldqIEMman1
         724dUJea9uWwy8wdHVA4nVkMDxVUEfVi1BsYTWOeucYHwfxzew/L7Wlww7u8cszneN+W
         ZnNgfVZiwhCULmmlrTCE+RkqPWLD8Y8qdigtf0zYl1j53e0ZVvih3KvPsLnZ1LGb3yhq
         K4Rbf8nLtwIbtNE6xYPMjsg/Hp4XSU2j+NKfqjw229AzcHslMg5ZuDgB+1TQdtCwFUb7
         3AKw==
X-Gm-Message-State: AOJu0YwCzTYwT2nnynssvWdHWefu36k+KEzrqlWiAEQdd8To3VIgV9Uo
	eZsfih+dbtkg8KLOpDXM9500JcgKqxy0yw==
X-Google-Smtp-Source: AGHT+IHzalEo6s11B+/Y2UPEZbUxPhiu3b5Nn9ALWSn4awdd7VH2o9e6IFYct4pz4pYf2eHLoJQRKw==
X-Received: by 2002:a25:37ca:0:b0:d9a:ccdf:3873 with SMTP id e193-20020a2537ca000000b00d9accdf3873mr1741281yba.48.1697710161656;
        Thu, 19 Oct 2023 03:09:21 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id y33-20020a25ad21000000b00d7ba4c5e31fsm1956073ybi.39.2023.10.19.03.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 03:09:21 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5a7eef0b931so95806917b3.0;
        Thu, 19 Oct 2023 03:09:20 -0700 (PDT)
X-Received: by 2002:a81:8486:0:b0:5a7:a838:3fa with SMTP id
 u128-20020a818486000000b005a7a83803famr1994997ywf.3.1697710160501; Thu, 19
 Oct 2023 03:09:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230531111038.6302-1-francesco@dolcini.it>
In-Reply-To: <20230531111038.6302-1-francesco@dolcini.it>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 12:09:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUkPiA=o_QLyuwsTYW7y1ksCjHAqyNSHFx2QZ-dP-HGsQ@mail.gmail.com>
Message-ID: <CAMuHMdUkPiA=o_QLyuwsTYW7y1ksCjHAqyNSHFx2QZ-dP-HGsQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: serial: 8250_omap: add rs485-rts-active-high
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Francesco,

On Wed, May 31, 2023 at 1:14=E2=80=AFPM Francesco Dolcini <francesco@dolcin=
i.it> wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
>
> Add rs485-rts-active-high property, this was removed by mistake.
> In general we just use rs485-rts-active-low property, however the OMAP
> UART for legacy reason uses the -high one.
>
> Fixes: 767d3467eb60 ("dt-bindings: serial: 8250_omap: drop rs485 properti=
es")
> Closes: https://lore.kernel.org/all/ZGefR4mTHHo1iQ7H@francesco-nb.int.tor=
adex.com/
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
> v2: removed reported-by

Thanks for your patch, which is now commit 403e97d6ab2cb6fd
("dt-bindings: serial: 8250_omap: add rs485-rts-active-high")
in v6.4-rc5.

> --- a/Documentation/devicetree/bindings/serial/8250_omap.yaml
> +++ b/Documentation/devicetree/bindings/serial/8250_omap.yaml
> @@ -70,6 +70,7 @@ properties:
>    dsr-gpios: true
>    rng-gpios: true
>    dcd-gpios: true
> +  rs485-rts-active-high: true

make dt_binding_check complains:

    Documentation/devicetree/bindings/serial/8250_omap.yaml:
rs485-rts-active-high: missing type definition

This property should have been added to
Documentation/devicetree/bindings/serial/serial.yaml first.

>    rts-gpio: true
>    power-domains: true
>    clock-frequency: true

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

