Return-Path: <devicetree+bounces-2004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 717EF7A9727
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:15:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAF751C203A2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365D716408;
	Thu, 21 Sep 2023 17:05:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF56156C3
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:05:03 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E15B26AE;
	Thu, 21 Sep 2023 10:04:43 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59e88a28b98so16622177b3.1;
        Thu, 21 Sep 2023 10:04:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695315705; x=1695920505;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VRwAkZSLNnOXU3DV95HgEKiIM/TzYZSIhKT8pNNff1w=;
        b=etkhXO6dSklwNPzjvSFj9GsohIYpRbSQ+8t7zdcNHKudUOJWy7sbaHdQZvvWZYfLI8
         Y1lX7dyxw4CGls29j9TyxthaPj7ekbEyyy8s7Nu1pVKsGTjDD21D/1jJ8LwZzdWHiTmw
         DyDtMocGMB8/7ApLeopWS4PTdeC6oxeSnSSD7v/L1R1PHRLNyfiPctzvTlHDbizy1lBd
         D6nKOzjXFPXg7U6BwY8epIA2wgpW5MWib105iLSGISBUVNPL8BaBd+Wyy5P5QOiPENBv
         oubkb745s0WV8KUY2bPTEMCl51aHM/G7DlkQhrRrcJuzRuE5Acw6THcvZhi6ZepqA3ES
         tUsw==
X-Gm-Message-State: AOJu0YyxY7yuXzrFOKVYK2BMDMQE0ZD6powfnWLRijA9mQzTm8S4PeUp
	uC+AQVKoxVHl1ajwYqntqD2rJEzzeCJZ1Fxv
X-Google-Smtp-Source: AGHT+IF0zB4v7TXI2EcRVhLvy8j6jI6Y3pGWxUDpXfIBxVbWosA2VWP9dsEgTyddf0aAe2297UGA1Q==
X-Received: by 2002:a05:690c:2b87:b0:583:aca3:469c with SMTP id en7-20020a05690c2b8700b00583aca3469cmr174823ywb.2.1695315705603;
        Thu, 21 Sep 2023 10:01:45 -0700 (PDT)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com. [209.85.128.176])
        by smtp.gmail.com with ESMTPSA id u124-20020a0deb82000000b0059590440338sm424684ywe.43.2023.09.21.10.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 10:01:45 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-59e88a28b98so16621097b3.1;
        Thu, 21 Sep 2023 10:01:45 -0700 (PDT)
X-Received: by 2002:a0d:e2c4:0:b0:59b:b9fe:1838 with SMTP id
 l187-20020a0de2c4000000b0059bb9fe1838mr164509ywe.1.1695315704940; Thu, 21 Sep
 2023 10:01:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <363186079b4269891073f620e3e2353cf7d2559a.1669988238.git.geert+renesas@glider.be>
 <1503a3857107e3a4f34e0c7fb5dada39@walle.cc> <CAMuHMdXN+HJb=zGeG=3t=Pie9cVpnBLYuEb_qX6=oSxG8eTkAw@mail.gmail.com>
 <20221205163306.GB2012644-robh@kernel.org> <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
 <ee03d150-51cf-4e12-ae2c-9475a192fb6c@linaro.org> <CAMuHMdW_-0f8DOmEzYb28XABqU3oFL4KXf9M-qKVyyrE_Lo+jQ@mail.gmail.com>
 <d4d998cff934328f58cec767f93a59b5@walle.cc>
In-Reply-To: <d4d998cff934328f58cec767f93a59b5@walle.cc>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 21 Sep 2023 19:01:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUK=HvvjeTDefzX9sbY-vaRFVixcSvKVqDPgBpGVt2dQA@mail.gmail.com>
Message-ID: <CAMuHMdUK=HvvjeTDefzX9sbY-vaRFVixcSvKVqDPgBpGVt2dQA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: jedec,spi-nor: Document support for
 more MT25QU parts
To: Michael Walle <michael@walle.cc>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@microchip.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Thu, Sep 21, 2023 at 6:01=E2=80=AFPM Michael Walle <michael@walle.cc> wr=
ote:
> >> We won't break compatibility with older DTBs if we use a list of
> >> compatibles. First the vendor specific one which will use some quirks,
> >> and if that's not available, have as second the generic jedec,spi-nor
> >> to
> >> fallback to.
> >
> > Sure, you should use a list.
> >
> > But the current recommended practice is to not have a list,
> > but just "jedec,spi-nor" (using a list with a new FLASH part name
> > causes checkpatch and dtbs_check warnings). Hence if you follow that
> > recommendation, you will run into compatibility issues with older DTBs
> > when you discover the quirk later, and decide to add it to the list.
>
> The SPI NOR flashes should be auto discoverable. Why do you need a
> compatible string? Quirks can be added to the flash_info database.

This assumes you don't need the quirk before you can identify the part.
I'm not sure that is always the case.

There's a similar issue with Ethernet PHYs on the MDIO bus, which is
why they are gaining proper compatible values in many board DTS files.

> Also note, that one reason *not* to add a particular flash compatible
> is that they are usually interchangeable and OEMs do so. So a where
> today a board might have a macronix flash, tomorrow that board might
> have a gigadevice one for example.

Yeah, that's indeed happening, and it's already an issue.

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

