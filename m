Return-Path: <devicetree+bounces-252818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C63D030CB
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D02B1308A797
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A162FFDE3;
	Thu,  8 Jan 2026 12:48:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D00125A9
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876492; cv=none; b=TwC3HVPD6upQOrcvcSCeogGD6VsQSKMzR2JBqGV1u1BTJVlOuE8Ejv4WU2mykdLBfwVKvo99PR5Ngkn7lkXVo8SWR5dO50oqu9gHwlydILJ8g1UT9RU3krzouoEp6ODZVjbiUfi602z/bPFIYg9OHx2NKxIqUn8UPHDodb/ybag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876492; c=relaxed/simple;
	bh=gYLqcuQR8Q+WXhLk5WsSY60ZFCxF9gWLSAXbl+g0qyU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UvNvbJq0HVFxAIiGGIAX0hrGq2jiNHEVkgEyq0yaE3KXjNFjBzBFSULAGzV4gIRghocxLZ/NU7dB03rm81tvQKu0zVjtsI67MFIp1/Oj3lYr5x6NDGrchR9nBv4m+qTE5tj1GCYYKY+1j1a1zE3h5kdcWkr43UzKCW3ImZjpl/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f66.google.com with SMTP id a1e0cc1a2514c-94240659ceaso997022241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:48:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876489; x=1768481289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/B4tidj+iK0D3xATA4P9Q9+i8tTKE7sCV5IU5EjdDtk=;
        b=j0v4unl2t0780uzQR7EZEQ1szhF7mSOLrzmJiqX0ddCFWdI1wt9WRpwP4NuxRMmBza
         S8H1SRbg38yVPeAuA56g0VXrGpMdf+TcfqMpBkUursBnNZd3wl+3afIcOKrLHPWsDjUX
         UXrlXP6SDZDGkN9AOfv9kaWvHSulG4c3GSehJuHWlYTre0lyE9+1jLS0g7D49mWpb4Yn
         lRcc03bENMJl1418iO3uoAdEqqUlH+idUDuoMR+CE4zOe8hmFqlyAUsMVVkp8GADODaS
         9DV8GGBtzO3vzCDehkpGYdS8bIbfq2tg35KtRnAqUb8zajo9MF/5p3KRNWVYIb2dloOO
         VxoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtgayvlCvQPnhMlGE1n3h0QatChu63sgOYvRjrM4wOwBvRxILIUVAWIxOjw3bUTvOWFnXpgZiOuR0b@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp2oLblasUSqxS9M9jT53eTBochsA9nQEWVDcy2ASVzysujSvn
	Nk8uN39n7eI76i7D+MQNbznHYZJOkRliTNBcCbVsiI0Ujt9kgIl+QbPx8VD8A5syWqA=
X-Gm-Gg: AY/fxX6cyxgYngwxz+Usyr9Xrb3g4qIEZVYByUj6f6x676t0OMieb7q6RZ24r4FMdYk
	MnYwFVQM0N1ZrnfOM67uXnjGijMA11G05cBA92s1grb/oJdyWTW2x7rQVVZpEwR7QB0iMI1bO7M
	sxSqyeWSeOhWh4hDche47HTQNbW8x2lvSZbpF4/oKzSYPu/6iyBdJQ5ywkaiFK93IZI6sBYdRVN
	3rYUOCJG3rJhaDWS77coSFAMSMC+8tW25DsHQ2p3/RNTnwfpBwrlpCby0+JcSvuf0McoLPVsgO9
	L8w9F3tR6qSmH/SPKYQASJcfkuUJl0m474ddbgn47EVcDAWb1chWAth4CTfmx3vQ9zrl5PpIfMg
	YhzNc9UAVjyZGWQXogrE59bKRAOHSHoABGO2hWtRV8AAm7HZpWizcYo5RWS8BZpY8qgBHYxeUIe
	M2QdzCG/uP5ht4QqRAEnpKSvDYGkRtOMkuW3E45PxHNqL97xmJn01IYPUDHzI=
X-Google-Smtp-Source: AGHT+IHR8Ss7xD9JHIpCebgoneDk5dYP27Ca9BQROkXVCa7VIg76u6KmKH/BJQyKaoA91rGppyqGbg==
X-Received: by 2002:a05:6102:9d7:b0:5df:b4a8:fbaf with SMTP id ada2fe7eead31-5ecb68e20d7mr1934639137.31.1767876489401;
        Thu, 08 Jan 2026 04:48:09 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772e0ce8sm6173299137.12.2026.01.08.04.48.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 04:48:09 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93f63d46f34so924517241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:48:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVx5SHjtN53UiI98SjybPLPn0B82uM8D0upZeAMzTJR7mLkbU4xFkoWm+9xXRBIDwfXG4eE1DSNFl7Q@vger.kernel.org
X-Received: by 2002:a05:6102:508c:b0:5db:cc25:dd7e with SMTP id
 ada2fe7eead31-5ecb69083d6mr2121654137.34.1767876488653; Thu, 08 Jan 2026
 04:48:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222162909.155279-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251222162909.155279-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 13:47:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVJe68Vz1nk_30KT54t040mYv6MBD=Kttruw4nfz1qLWw@mail.gmail.com>
X-Gm-Features: AQt7F2qW201xE1CipQTEgelw42wE49kIh7jGt0uhdogu1_rDaCTLbGtcolX4WD4
Message-ID: <CAMuHMdVJe68Vz1nk_30KT54t040mYv6MBD=Kttruw4nfz1qLWw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: renesas,rsci: Document RZ/V2H(P) and
 RZ/V2N SoCs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Dec 2025 at 17:29, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the serial communication interface (RSCI) used on the Renesas
> RZ/V2H(P) (R9A09G057) and RZ/V2N (R9A09G056) SoCs. These SoCs integrate
> the same RSCI IP block as the RZ/G3E (R9A09G047), so the RZ/G3E
> compatible is used as a fallback for both.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

