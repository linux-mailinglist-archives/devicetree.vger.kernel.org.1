Return-Path: <devicetree+bounces-253300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42932D0A6FC
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60B713006442
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B195433B6D3;
	Fri,  9 Jan 2026 13:28:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7731E107
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767965302; cv=none; b=DUTsQcYi6D9ennJMwPt+0W1zUa6sER1+3VsUKVH5JuxNvxsJ8f5WrEK/rMULAKVsfDmZA6O6P+iPOiRjlAwJi0YZR756yB1eyuLOufedR0EmerDJUR4WCgHcKxO/2AGUT7CplV73FuFXcWuSuSdRaQ897fcfzAs2o6YRH661vSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767965302; c=relaxed/simple;
	bh=1L4cZo3EX6X2INs8QItbxpM2uckTHwqOzvEIQWAvQCM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ivm+zroJI7j/ek9dTjFUxcbYg8sdP3TGCMV+oXDH2qcvjjN5gwyCJHOfSoBBxUNCOChC0Y3aANqqlO2PRslCiCW2kEJg0rZUcsdyMt31PxwMx/+E9qHg6MHpvwId/Jd2ErIcC0I/ADa0mkl6JJ0zuJLNMJI+MPU3Ayu2vW4jko0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56367b39e3eso457144e0c.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:28:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767965300; x=1768570100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNFPugqE664J76/2PrjHrid00raf31+fo6rdSr79tJE=;
        b=UH1c/W9zZLGxpT/+aDQnon+r8zKSXAJbgceEsI7mglqoI4ro+hX1sVrvEeReWA9vip
         Tx8EE39BDA2MLjGak8d000tcnHKPdKfliglh+Ix7MAG4XERaMxc3uIirUzyN3uRXR/H+
         XvyuL0LvLEGWxz2/FJC6X313MoZo60GZ1EuagKt2BqjBIh4Ecruwf7upDIMLMjMxxKAy
         lfpceusMihMPB0HreDudGABVIbvdpQ++YsRu7FeAQmZbCWcDBhPkEL92Mv1R1qX2FoZn
         fhiDrTAOTEV0KVPZvfqY4YoB5pR58SGx52wBD5MLPyKi1AXiH1q1oi1dofRJni9aQutj
         bBTA==
X-Forwarded-Encrypted: i=1; AJvYcCUeyFzIgw10QwkqYRnP/Or9uDIlRIy30ggkkgjKJNF3bOcFiYgN3oBHaIItSYM26lblClYKiRwEMrzi@vger.kernel.org
X-Gm-Message-State: AOJu0YzFN/HV+7XtLx/XGS1HYyvuSzHFrqnbq4v3wv4tOkz1FIcidlIw
	CaYL2+Om05941YyTa8yA50opOjBp0hCdIlhvP7yobbFTlIHWVYIxi6VIOAUdlC32
X-Gm-Gg: AY/fxX6FCUuM2D8jmTuFoBvrCe3hks100N0NVpjdpx0hU3y3ZE5E5QMVWPtHm+kU0QD
	GAzhTwzcSwMvypZt7XsGDxBON2RZZ3/ADSWpj4ppBtPsn1BfmerR8pchjsT8n2H8j/iyt8Jeiaz
	zUKXp4cnS3Rg8p2mFoXEWJScHFju1Om2BQEQVCcjii55ie5/0LKs2/btccxBwVgAHUARjKtI/kJ
	FviewPhrllmW3VH4H2hAFIPi79u/XbZVhLtkTb6N479Sx23l4XBXBgh/6PhEJ99xUJV4lpowllw
	2IC5uYg/nTOHm5DEZT8eEY8tdCMefkUJnXmrLtLKMLjUzrgCpp59offhvbdVRANvUSoJvSltAsV
	bzfVQ4AsimH0QTJAQDlIlxckMvHiV6nxtBCtY5H2HuXTZ0hH2KsdvHLTv9s/X+Eup8U34xQabCR
	VhutuaJCzf0S4VXj1Z9s/qMIPbsV2jpychHjx39sAbOfYtJBtv
X-Google-Smtp-Source: AGHT+IGc44IJ/x901CqW57sLk1pynWkKlH5w4hc5eD/MX0ns0T57Ii5hxjD54SDJcXu0fQ9IuIPEFQ==
X-Received: by 2002:a05:6122:32cb:b0:563:45d3:9b1d with SMTP id 71dfb90a1353d-563464bd28emr3707723e0c.9.1767965299361;
        Fri, 09 Jan 2026 05:28:19 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5635f13471esm3740256e0c.14.2026.01.09.05.28.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 05:28:18 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5ecddf73062so2041384137.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:28:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXGTCmquFcbz7l2Pa9yGjCTbAqrn4XDNc7HHeH6ZA47zXivkJUBwaOvych1PxvMswbCpKPcCw4zPuYe@vger.kernel.org
X-Received: by 2002:a05:6102:4485:b0:5ef:233e:6b25 with SMTP id
 ada2fe7eead31-5ef233e6e06mr1027510137.13.1767965298725; Fri, 09 Jan 2026
 05:28:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109123828.2470826-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260109123828.2470826-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 14:28:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWz6_NzvjZNMLk+Bqoa0NR2CKNFwDXynfmrTZgOGsqxTA@mail.gmail.com>
X-Gm-Features: AZwV_QjPN-Mv2BgxTufNwYwKmRE2uazISkHQ_FJOwRqpRjGwaHZxOt7DyuKNXD8
Message-ID: <CAMuHMdWz6_NzvjZNMLk+Bqoa0NR2CKNFwDXynfmrTZgOGsqxTA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: sh-sci: Fold single-entry
 compatibles into enum
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Fri, 9 Jan 2026 at 13:38, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Group single compatibles into enum.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> @@ -20,6 +20,8 @@ properties:
>        - items:

I the "- items:" can be dropped, reducing indentation of the block
below.

>            - enum:
>                - renesas,scif-r7s9210      # RZ/A2
> +              - renesas,scif-r9a07g044    # RZ/G2{L,LC}
> +              - renesas,scif-r9a09g057    # RZ/V2H(P)

This block now indeed contains all single compatible values, but it
is still located in the middle of other multi-compatible entries.
What about making it the first block in the "oneOf:"?


For the contents:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

