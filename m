Return-Path: <devicetree+bounces-230290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E52CEC01424
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:07:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4786B4E2EFA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037B630CD86;
	Thu, 23 Oct 2025 13:07:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB7A31283E
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761224844; cv=none; b=k0BZBTArweZjBMLEusDvrlgdykDf39w070xd0UlLrBSfb7i9EguDrYUSx2nMOg6tsToo/t77M7rnCZ4oY5xEmon4enfzmykZAMhWqon5GdIReVX6iNobv0uHT4Z4af89uSOn71pAYLh7qeq/zGOd1iBt2Nwomhj2EGduDrR7TpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761224844; c=relaxed/simple;
	bh=1g9sL1pNrDVYwOAiQV7CDpxqC258lm15lCus2uSGOV0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rIUdcJGyF60k/rddfyXe0NQ8IaladqyaPQHuIoiHzoWpXJ5X3EEUOW14P4XlheBv7aFzVxEJK5DvDnRUEKBRKmLfVlWOS1aSb24s5f4KtvXcbqg9CoUDBhYoZY3+LrQgklGbaoqzLoH4TgHQ+e48wTObAiPxbHJyzxuysYy6mYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5db37a935f1so121006137.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761224841; x=1761829641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lIIdZrvjerU9TUToExl2D/WzzHrGb42zkKRg3dbolEQ=;
        b=amWAePHVpj71P1hMPJTW0pr2Lmqeke9rmL1/nEHq4gn+dsz7KGCIHc07AueSCt752C
         XtnHC8zgliF6oa9Dzb1PZQPBYRWxjESim4gR1y+ZYoPovnPWvy4pZ5r8jHooNb8i0gWf
         K48rhQfgKlzbWylQMwJXIHBVzatAEbjTcG2lE1UanKQQbftWdjfLc7aLB+skyeeQFiJb
         vmS1NQ6fBRiLXzox8Dek+d+X7hfP3ZAxiDBYkr9v/BipyKxv+v6OaeHb6eIW9JDn51xd
         K/9rUUe08V1b3fKjj9H8AWuXuTem7uD/XXIkcGLMXaIAGOzauLQ13UbXwCVFlY6O1aEw
         hjZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGl52NdSXhzebYcX1XDKfXhd6ZKi1vJQVVMF8xqvhhcX4PSsd4E5QRC27azihhTdAzjKPQeDMSEUuj@vger.kernel.org
X-Gm-Message-State: AOJu0YyqfVHgPzRp8pnZDVTGA7PU7mkVqjea2a5d9c9EesBD+XD7V+EV
	s4TVS43mt+3FhN23anhOmhtqf7tEOvJQEu8kuNKmPUhiJ5GJDAf9b73ZtvPaHUro
X-Gm-Gg: ASbGncsod+9tiYq0xFnaH4/+iF3otaF5e5t/QGPPKM5TIvJz/t77wC/xefTZKDkntmg
	RHPVwcUuGFpgcQ0U4W+/sYcT2yLGZ+XuPnt7Ph5Ld907cCY7Q6d7Bm0cJXAjOjJ/cNa4fMEG6Eb
	0r96z0heHo/FapPJQeR+pZ0VA5pgDRx2b9H6oAo2N1jhuvEN2WZWjWqwbeHOE4ZEN6HVVQAGNzv
	vpIO1UJXK+J0cUWsUfEOO9lfRyhykcdsO9kGk7vIeon3NLueIaKtpWg5E6cdl98idCzM4bNbV44
	O1XbX90tQbg370ia+gO0uv7WLhlpb2m6kz0D87nbqYlzD3eoCNDrA8JhFKzdvaQkpgjVijOSljw
	9g8ygdHbg5UPZl0HPy86kMIF+UkvkI9qdFJY+QZD1POnLgVJoLX3wqMAhGjwHDGKC/XOzuZxNP8
	snod+yr3noNWoZHj9S3ikeaGcl3QAUyNj4hAP6untM0pc0O3Bj
X-Google-Smtp-Source: AGHT+IF34SOjnhiFXh4b/cXKfvchKkkuISxHgbXgAP6ZqtpfjAfbYq5Gp+UtO61LfzJe/geYaGwrnA==
X-Received: by 2002:a05:6102:611b:20b0:5d7:de89:b7e3 with SMTP id ada2fe7eead31-5d7de89bc79mr5818167137.9.1761224840448;
        Thu, 23 Oct 2025 06:07:20 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934abb894e3sm881144241.10.2025.10.23.06.07.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 06:07:20 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db1aa8c93eso397018137.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:07:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXzasynS6xT9z/1wPaukil0XE+1gIC8sJXw6/RiemJ9gXGXFv5LgIaLygafNdXKTkF1rcA+hGTeTjet@vger.kernel.org
X-Received: by 2002:a05:6102:304a:b0:5d6:18cc:6087 with SMTP id
 ada2fe7eead31-5d7dd6d67e3mr6298079137.30.1761224839798; Thu, 23 Oct 2025
 06:07:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023123644.8730-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251023123644.8730-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 15:07:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXq=4zb421MnwFvhFT_0K0HM=-LhWKueCHnfaEcGEgSLw@mail.gmail.com>
X-Gm-Features: AWmQ_bk40KChNfSwzFv_aBWco4C4_I0K0e8reqSSxWUwprZ1XtIdssKPgaWL4cw
Message-ID: <CAMuHMdXq=4zb421MnwFvhFT_0K0HM=-LhWKueCHnfaEcGEgSLw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: firmware: arm,scmi: Document
 arm,poll-transport property
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: arm-scmi@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Cristian Marussi <cristian.marussi@arm.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Thu, 23 Oct 2025 at 14:37, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document new property arm,poll-transport, which sets all SCMI operation into
> poll mode. This is meant to work around uncooperative SCP implementations,
> which do not generate completion interrupts. This applies primarily on mbox
> based implementations, but does also cover SMC and VirtIO ones.
>
> With this property set, such implementations which do not generate interrupts
> can be interacted with, until they are fixed to generate interrupts properly.
>
> Note that, because the original base protocol exchange also requires some
> sort of completion mechanism, it is not possible to query SCMI itself for
> this property and it must be described in DT. While this does look a bit
> like policy, the SCMI provider is part of the hardware, hence DT.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -146,6 +146,13 @@ properties:
>        this platform. If set, the value should be non-zero.
>      minimum: 1
>
> +  arm,poll-transport:
> +    type: boolean
> +    description:
> +      An optional property which unconditionally forces polling in all transports.
> +      This is mainly mean to work around uncooperative SCP, which does not generate

meant

> +      completion interrupts.
> +
>    arm,smc-id:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

