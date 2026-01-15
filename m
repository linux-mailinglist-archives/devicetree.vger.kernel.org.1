Return-Path: <devicetree+bounces-255590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 05474D24969
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:45:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71DC5300AAEF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F40438F25B;
	Thu, 15 Jan 2026 12:45:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B041EFF8D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768481155; cv=none; b=GFVcjdcuzWCsNfHHpuKl/mJYrJJq0iY9r/pa20eYtoKPXjUltO2Xk3/KXHhMSnzF8WfjDZVkIgy1nlX2Bi5ErKxRjdMtKilbw9v/PPWLxRZcrZGoUIl8tbwYyMQxnh6BsgrsVZoyBZVdPt9yAXp9IurPH47V2KLGEZnAJL2kRv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768481155; c=relaxed/simple;
	bh=G0llLSNnn6NcC6KSkN6kYKOlUKIgvNvU2oPhikHdlbI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cV+BUjS+ayk/tV2bNnmccws1oxyxNdEVTX9Q3qciyAT5PAo0rJwcoZU+3L7G4Rrp0kF401zJL6O3oCwZAsV4Oygsm0/xx2ycleqTAZMEN95EAeVl+nWU1pf56SZjUbyWyQgPTBh5O0lbhT2IIsszFg4FqimPX/6x77XtIwN4iz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5636227a6e6so282455e0c.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:45:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768481153; x=1769085953;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTjFGVrWlLy/q+nJJcYxgEGTZ7R4mxUKMHt8K/er7Bk=;
        b=UJbztjzxAmcmnhIjzE0+VfoyDpyxWtWiifjwyKyZ3hB1UX+7WtJbr7psqqYhBohgbm
         NNpAlB48nekCakNuIu9mtJ82GsomKMrb6Y4deWSbAnwv2yYIB7h7zOzDHsotXY2VgDwX
         kehdl1JMRhJid13KjcDxMI7JPSVV0FIJ8wZ5bGXTHArdYqrgOjq6VLzAp4kmizKdd3fo
         CicFTLfBAGSbUd5pQAFsiusKFTKD4Y/YPyEr7rowG2NLewBwlvfb65bS0ZGItsgLp367
         lZrwccW+LOyRvmb0udhOUq8GYGTbZFO0OKP0S/aDzaN2pNJmB5FDkvk7riVbV2hbaZJo
         Y8+A==
X-Forwarded-Encrypted: i=1; AJvYcCUvStyoi0mPZ8lzJJUydl8v4uiQGGh0I1XX4V/nJMgZi+wJJAkUB4S0yrC4FhJ+ZfBUYqdQlPG6GJxD@vger.kernel.org
X-Gm-Message-State: AOJu0YwCB05I+3snIFu8FMz4ZWmsVmaNHvVJU9majNEWH+ry4r3S4kR1
	4LTqtXb5jJHMxDx+Zy68PkCzuNbcpERPqngxOvP7H1PzwVpBktBtDPCASUzr4EpI0Ec=
X-Gm-Gg: AY/fxX45h9cPvpckgA5ia82mxz5NQzquHkahqkh3n8dwmEWsNOpMN+0idu2wyjm1UDw
	hnJrxDMcgzrtXBhECq5P0Sh4pdc6u0eSWPuVKbiS6Zwexz5ydaL98sS0oFuLHA87QPW8aS7FmIM
	M5iAwH0mVUbC1UB3jl7Yck6oJs07yKrhnIUpUvm8CAHo/pxtvXpHbJCZhUvxbdvQeWSC9YrbGRO
	HkpwBU2qT+wVzXZV0Shmgi3/hJpo1CmVbNgHVH398629nGeU30B3ev7mvfl/S1gwEynHKGGibbB
	hn7kwTTnOxF3KWPzSXVoZesoDDZ4c3KfN3KDD88ipH0/BpM8OMExmkmaBwYtRm1pdE1TEDwSqV2
	UAMgjg0u1Jk+mUHKUXRevWZ/RkreECPzUgwzWe/hQ7wr6UiuGkdmTLeinEi5IISoxgv/nY1oTPz
	+kXiJ+OCH9tndocbD31u1kFP9Hu7cWFP6+Qzg1SrSXTOTos2wA
X-Received: by 2002:a05:6122:45a8:b0:54b:d7b6:2eee with SMTP id 71dfb90a1353d-563a0a20eddmr2081629e0c.11.1768481152810;
        Thu, 15 Jan 2026 04:45:52 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634d9162a4sm23857586e0c.15.2026.01.15.04.45.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 04:45:52 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5ee99dec212so308186137.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:45:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWcDtaaYtY94QBHWePXuMJy6YYIjY9JUziieItRyQyT+zVdcnXYTeG4HtvwhVuHsN5ax6caNgtbbO2j@vger.kernel.org
X-Received: by 2002:a05:6102:3f47:b0:5ef:b3b7:6e3f with SMTP id
 ada2fe7eead31-5f17f416e55mr2503254137.3.1768481150952; Thu, 15 Jan 2026
 04:45:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-schneider-6-19-rc1-qspi-v2-0-7e6a06e1e17b@bootlin.com> <20260115-schneider-6-19-rc1-qspi-v2-1-7e6a06e1e17b@bootlin.com>
In-Reply-To: <20260115-schneider-6-19-rc1-qspi-v2-1-7e6a06e1e17b@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 13:45:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW5hwNu-07-7xvyWdcGKUZy+pCX0=W=JNgd4h7m72wQFg@mail.gmail.com>
X-Gm-Features: AZwV_QhONECo5-MoxTpQjjP-7GyvFR79J783OyYxOrmcopvq9NEZH1YUXPhgpUI
Message-ID: <CAMuHMdW5hwNu-07-7xvyWdcGKUZy+pCX0=W=JNgd4h7m72wQFg@mail.gmail.com>
Subject: Re: [PATCH v2 01/13] spi: dt-bindings: cdns,qspi-nor: Add Renesas
 RZ/N1D400 to the list
To: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Vaishnav Achath <vaishnav.a@ti.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Thu, 15 Jan 2026 at 10:25, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> Add support for the Renesas RZ/N1D400 QSPI controller.
>
> This SoC is identified in the bindings with its other name: r9a06g032.
> It is part of the RZ/N1 family, which contains a "D" and a "S"
> variant. IPs in this SoC are typically described using 3
> compatibles (the SoC specific compatible, the family compatible, and the
> original Cadence IP compatible), follow this convention.
>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> +++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> @@ -80,6 +80,10 @@ properties:
>            # controllers are meant to be used with flashes of all kinds,
>            # ie. also NAND flashes, not only NOR flashes.
>            - const: cdns,qspi-nor
> +      - items:
> +          - const: renesas,r9a06g032-qspi
> +          - const: renesas,rzn1-qspi
> +          - const: cdns,qspi-nor

Doesn't the need for (at least) the CQSPI_NO_INDIRECT_MODE flag mean
that this device is not compatible with cdns,qspi-nor, and thus the
cdns,qspi-nor fallback must not be used?

>        - const: cdns,qspi-nor
>          deprecated: true
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

