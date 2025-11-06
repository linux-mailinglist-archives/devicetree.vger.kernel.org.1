Return-Path: <devicetree+bounces-235534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F0C39AC1
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 09:55:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A4ACF3506E6
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 08:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0653090E6;
	Thu,  6 Nov 2025 08:55:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF4A305044
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 08:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762419302; cv=none; b=VYkFj6yMrqfgqX8fZZ/XhhcCjbqzWxrItRqY/aeTTAAOHnyIgqyV0xiiuRA/YAVykvFIM6c3rzWdAlAHfaY5d4/ul2fInJtWUkXUTiQjsTCV3Zs9ODBWOiYKpUYJQmpJGYjMJwk84Y/NyKQZ+W1f70ho0yO2q+Tf7+OtYohQ3tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762419302; c=relaxed/simple;
	bh=r4WI112XNVPvAwbD+KTwJYuTD4uzGIUEVqXtqMZFfmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FUvRfJYzv+gON9lPbWFVLu+LH7LeV1tcnVHwieqD/XxUThYkBZpJ/Kjo0BstX4e/DCl6FQuTa4vqh/lwyHAdYIVPkhs+aZU1suvlei+5bDCFMW4AmZFw1bb0H2vL1NJOSKEnUam9zntCr8B/bt2GRBytmrZ08FRIWUQBpak3q54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7c6d13986f8so630980a34.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:55:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762419300; x=1763024100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zdhdbS5PtOsV4kjxfjLI8puwF2f4n5VCEZc3tH68S6k=;
        b=Wyu5xIgzrRPMMSVcliMfzSNLzcX3laNp28vPj/YPJ3rgtVKNLfhuSSdAo4loThciVo
         GWPVMB2fuPyIvCA6qiHR6ykXde4HWu0O85+siwJ/D+a826IJlBXtIwnbhDThgBToXmZ0
         yQm9srS+D6IcULC+uxw4SS11mYcydVmYUUqvU5tu3kXdYl8oH2YrzLBVHuZGc7Td/l6X
         SGbIaBfdr06pATdyxwqA/RxZSyN58QnEH8vKeLwOoL0hnghO+9mDhJUvUf9BelyGr7qk
         64a/W5Sre4akGaNkOP61ED+iAIGtiKbEwyxoH+duJHleaZ2Iy7UpdiA67bJbYXsW9pHz
         2d8w==
X-Forwarded-Encrypted: i=1; AJvYcCXzEBezqW1fDH1OAzv5VQGVTKKjri9QR3YNNUxUGZyoeW40IJsndPJWtql5tTjIpsoLGLYHJ1ezCBvH@vger.kernel.org
X-Gm-Message-State: AOJu0YyifRwIXMorbITGW6CvVrDKxpJzJlsZuBMH7aDYCuYY1C3l1n8Q
	d/nwEg+qTAuL2HDsUgaoTvnklE2wZ7V1D0gqbXYN5P5r2RaKa5z1bMaaXLS9IiYL
X-Gm-Gg: ASbGncuKfcKGDfYSA38clwlfGmATSVeq+1gpdMsT9XmtEgrxso41SRUxEEYRS6jWven
	eytxYztj05jDPJ+A0OLvfDFrefPCNdikwi3RPH0LCH9QYtf0MwYZ6VjjlhPe7YW2fDUL9+r6pQU
	+jmSdIY28dQtqubvyrlqYbeBEeBVoFEa8ArAWQvAR4zDAplvWqGumSdhrJhm7E2rfIH5itl3bms
	qNRY6AKBFgEGcPW3eGOclQDKblaYlY9h2acEhCnezYiWbyPgZd8fNaWjjt4Sun0nIufn490dKnf
	ELCsx7DKMl5fss0Q+9MiLGR1Rhtong84SAxSH6T19Qaak3IVCF0WMXoR1TBawKz0eQrClFM2SII
	TVduoSVdSyIF3TDHTyS0h8ybdUmvA4YaVNu6mEEumYWBRe3i/ODA5vsy2RRiKjbBKwOntecvKM9
	xSQ7IFnXQGb/YBgAwubN+KZZoSa55Qxqg1qB4U4A==
X-Google-Smtp-Source: AGHT+IE/bc79Uqbbotq5slytomdaQMIGxG2PZLRQUYUUNyWmH2nkWhJG4yiFTBhVXMtNe4lFGJwOoQ==
X-Received: by 2002:a05:6830:6e42:b0:7c6:e8d7:3ac7 with SMTP id 46e09a7af769-7c6e8d73ccbmr354138a34.12.1762419299630;
        Thu, 06 Nov 2025 00:54:59 -0800 (PST)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com. [209.85.161.47])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6e32d2177sm830361a34.17.2025.11.06.00.54.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 00:54:59 -0800 (PST)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-656bf426c81so428894eaf.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:54:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW8bmLG/BMtU10LYC2SHLN2nNZM0FH9Jd0+H/ulN7IgId4+6NxksDvqb3oxFy02rDcDPxUWBXMGWbi9@vger.kernel.org
X-Received: by 2002:a05:6102:3053:b0:5db:e179:1c2f with SMTP id
 ada2fe7eead31-5dd9feef219mr849186137.18.1762418859485; Thu, 06 Nov 2025
 00:47:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021080705.18116-1-ovidiu.panait.rb@renesas.com> <20251021080705.18116-3-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251021080705.18116-3-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 09:47:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUR=_5Ex57gvgFXyxhSDkqdd0DjcTqV0m59tquxKzQnNg@mail.gmail.com>
X-Gm-Features: AWmQ_bkMn9K93ASfX-CEwYoeGvJMeNWd5c5VED4d6zuDLnmC2ge-cRo7TaazeRI
Message-ID: <CAMuHMdUR=_5Ex57gvgFXyxhSDkqdd0DjcTqV0m59tquxKzQnNg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: rtc: renesas,rz-rtca3: Add RZ/V2H support
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	p.zabel@pengutronix.de, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Ovidiu,

Sorry, I still had outstanding review comments I hadn't sent yet, as
I hadn't finished my review yet.

On Tue, 21 Oct 2025 at 10:07, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> The Renesas RZ/V2H RTC IP is based on the same RTCA3 IP as RZ/G3S
> (r9a08g045), with the following differences:
> - It lacks the time capture functionality
> - The maximum supported periodic interrupt frequency is 128Hz instead
>   of 256Hz
> - It requires two reset lines instead of one
>
> Add new compatible string "renesas,r9a09g057-rtca3" for RZ/V2H and update
> the binding accordingly:
> - Allow "resets" to contain one or two entries depending on the SoC.
> - Add "reset-names" property, but make it required only for RZ/V2H.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> ---
> v2 changes:
> - Added "reset-names" property and made it required for RZ/V2H.

Thanks for the update!

> --- a/Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml
> +++ b/Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml

> @@ -61,6 +63,39 @@ required:
>    - power-domains
>    - resets
>
> +allOf:
> +  - $ref: rtc.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a08g045-rtca3
> +    then:
> +      properties:
> +        resets:
> +          items:
> +            - description: VBATTB module reset
> +        reset-names:
> +          const: vbattb

Please add this property to the example at the bottom, too.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

