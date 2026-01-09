Return-Path: <devicetree+bounces-253323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E423D0AA08
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 15:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACB6E30533A8
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 14:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F0235E551;
	Fri,  9 Jan 2026 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="THA6yVu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D172235CBD3
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 14:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767968723; cv=none; b=hb6Zr57PieeUTSycD3kkp+l5C1en0dhZK57xhvl3wswtnvD6iJM4miYWq+39kdJrjnTzbmlmR4wbF/nCe3YPbTo+9uHmdXvWw5ELiRwMypi7t4D0nj65K1J6/XInKmmiX82rE39QXCh99iXDaRkvmjYtqApeaz3gP3HqUQP/kYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767968723; c=relaxed/simple;
	bh=vWS5wgStTvZMYsyqkJ91nJFk1e35QPzy/HyTmkbyjwQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wmz7NcL9Cod8xVTmwYU3kRsJdnBhSlrvVdgyFAMkkrjLBFTMkULNTl6Lr5JxbDhESdvVFDt58yNE1Kxu7oMrJI90duGlb5sYQCC4YIr3XLHvLgsOXAAgB976Fmr82zsvG/hm9Zk4ZKLLJmEQQGZSy4hoSMo1mAHtDeg8OJ+HA90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=THA6yVu5; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fb2314f52so2278879f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 06:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767968719; x=1768573519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2D/cMtJw19E2XiBZlICMduPGDZFgAVPWV/no22KZcBg=;
        b=THA6yVu5mLYJX4Wbmb8unRBsUVB2W87jVAja8vrRdnVB9MNzCAH2mOPnvrLbmKQTtl
         Afg6gB2+sYb10+vRCsW60YD2k5sNadf+RAMoXFHV7ja94ux8DFJH2E2Nmbw/GNP+kRkH
         BdGBVwqQc7cIP+U1IWOFksEFGJxktnCn7Q2Eto7SKYvbw3s2mnICRC2uE+eYx13nl6P0
         7SamgqP5yn5yEREWdng2uYX+S5IlkVu1FyJfr0g6mnM9GgpF5KD1FaPRQkOa9E4dX0dw
         wRL+5OYzJUAszmDtr5wIQzsuBnYWWeUmv/TLTA+jooPhuHxWcCss0LIYZe9X2fJPs5ru
         4qiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767968719; x=1768573519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2D/cMtJw19E2XiBZlICMduPGDZFgAVPWV/no22KZcBg=;
        b=Nm1K0FF0PJKTqRAv4qK0PyzUXFbfye9/iSjNP+SZy64PhnqjAv1mF026SEShPafo5u
         /E4unv2nn/qUBBYJYu2QE0a8GBmjsecFhQmiYqmtrD2nJ2C53uXpqAfEk+JNkrBOIfVw
         LySAhsDJmbLSTxT3z1U6T+eGnVcT7R63oRd3fVfiteyhl3Su/0U4ck7uSbxx0lB8BW1Z
         WMz/J3bwnkzpY7oJd01q63ch2NJb7KNLrnJPhzRzE2NfYRMjVrN6Pc/x5PobfjI/oVa7
         ANS9SZ1PJwy9wWIZV8mxKUSxjeHe8goaQmqA1PC6hFIY5xKFGIb7ixyqyZon0722mmTo
         JBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXm+/NhKPi6F9TnRx06dU6DL+/Ag4xS+Pi0XVzLRPfARMCU/xDcNtOp9ZARpFz80OWhFGUUUKJzGzoT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8XqtobKSe4L569R8901O4kjnw5+BeX+1fWkkI75Rn1AicvvNK
	3KV/6KjBCOw3vM/73OvF0lUfEgM6M2pqrY3bf1zStMCdFyasSdMH/ATlbczGYjN6hto2n7KVtlw
	iybw1LmDxNnR9N5Jq5j932RnsvCgR5aw=
X-Gm-Gg: AY/fxX4e29Ul6wmZO1WdKQog1pWrGXDGiASUdIveTIcLjZyYcWPpppHSoPKW0Nuf924
	RJXDFutj0pzisy+SzfTKKUw2ZYD09r8Rchl639OpqYXuWlR6ULrRzhVVgCrHVQzvIIt3i0+NYAt
	dsd5sP4DcznL3RWMRc6UdH1BRm4DpTohCQBA+UHZE8OtTeAXtn8piexolMW4rFFRkCswxgwZ6B9
	f5PoQcIAjPLV9wV48eLp/Dca5XS9woEIE9hIEMU1ZAt4khTeytvhz8y5BUtY8a17GgR7IR9vcPv
	vpYx2o3wJtn2UbwqzwBrzBeKBkdmo5p7kP/EU6pOkQBvbebdjhX9uMaBtf3EdBw4MmvAbevuLqN
	5IW6rXzGNo4m+
X-Google-Smtp-Source: AGHT+IFCXpHopv0CnTYKBGZQGAJBBDYem+SbnQhktvQUHhc24r5wwyxuIOji4OejFmeRbAePpFAv7cmMZfKOoTIcV+I=
X-Received: by 2002:a05:6000:200d:b0:432:8504:8989 with SMTP id
 ffacd0b85a97d-432c37c32bemr11765044f8f.56.1767968718975; Fri, 09 Jan 2026
 06:25:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109123828.2470826-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdWz6_NzvjZNMLk+Bqoa0NR2CKNFwDXynfmrTZgOGsqxTA@mail.gmail.com>
In-Reply-To: <CAMuHMdWz6_NzvjZNMLk+Bqoa0NR2CKNFwDXynfmrTZgOGsqxTA@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 9 Jan 2026 14:24:53 +0000
X-Gm-Features: AZwV_Qg77nOmp7wZB-kSrS_ejJiZLPin5aTjJnBXvyeQ0XDAs8licXEGydP6Z-Q
Message-ID: <CA+V-a8uPDpQ+wBW4EnKSJutywRhYDaRQoUUUJXaZQzknn1nyVg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: sh-sci: Fold single-entry
 compatibles into enum
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Fri, Jan 9, 2026 at 1:28=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Fri, 9 Jan 2026 at 13:38, Prabhakar <prabhakar.csengg@gmail.com> wrote=
:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Group single compatibles into enum.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> > +++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> > @@ -20,6 +20,8 @@ properties:
> >        - items:
>
> I the "- items:" can be dropped, reducing indentation of the block
> below.
>
Agreed.

> >            - enum:
> >                - renesas,scif-r7s9210      # RZ/A2
> > +              - renesas,scif-r9a07g044    # RZ/G2{L,LC}
> > +              - renesas,scif-r9a09g057    # RZ/V2H(P)
>
> This block now indeed contains all single compatible values, but it
> is still located in the middle of other multi-compatible entries.
> What about making it the first block in the "oneOf:"?
>
Ok, I will move it at the top and send a v2.

Cheers,
Prabhakar

>
> For the contents:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

