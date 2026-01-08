Return-Path: <devicetree+bounces-252726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97995D0217F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C491300FE0D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224553B9601;
	Thu,  8 Jan 2026 10:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hdYgb6tY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1B53B9602
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867243; cv=none; b=b7a2K8AkyueBZmFs68a8R1ilHoo6t0x+5qhEBRWX2lrQ9dOTa4nnPZC1claYYqHj0J5JKWlHkUnAHojTIwMyS7yiypvGhPz/14sqYuVvOcT/OrwSSm7AmPqBT2trCxJY7onkS8GEMZAmKpyd5M3r2MaByEMp5YNwKCu1qWRw8y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867243; c=relaxed/simple;
	bh=sXoW4mVTyRQzIbKcvvJZzwtyNNh7crECPosOAqfEHSI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YwKaQwjYlb/UKyXgZyq5xeEZ+VDpoQnn0ni3zZs836PNEYwMsScic+keGl3LbRoIeqIZvbpDJCk6s61Swh9S6/eNkJl/3eocRypGIYlW7WfjBPMQ8LixhOlN4YWkC3DcwfEJv0piowS7SpItlvGkv+01bz0fu+rpZynCBw3UoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hdYgb6tY; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d182a8c6cso19163005e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767867237; x=1768472037; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qhDPeXMLOmbhNZMmayEqn2Xyh0RUQfbS2x0SaXmYylI=;
        b=hdYgb6tYe8y13ML2C51MbA7pxqTImRwxAl3Jv+1dG009POEsUfy6fjaCiMdC3wpJ7k
         ABHjdEhOMxn41RQEnNsblqclCJGl6wtqDf+/kfWGZpwFIBhZPGmjnsA/gnu/IWlLhmK4
         SBas7yMPZaGbv1y1Gn49VPQNckLLkVELo2jKXGOUIecdhoMsxjyElDAoUH+44PwjmbWa
         W4YMUGCa0wPaTX7PRB182RCQQ2RTf5kXmT0lXRDbeXNV8I5w9wY20Oqdi1SFeleUWW7Y
         vyHjhg2rmkVwt7gd/SPShNZpWF5WJBoho3VmpCw3isJRKMO6ucEPjDovdQWocGEUB7d3
         oR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767867237; x=1768472037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qhDPeXMLOmbhNZMmayEqn2Xyh0RUQfbS2x0SaXmYylI=;
        b=ZCKi/dcjJyTPH6pmFpACKYOxWpknSBcH10kPOi9gN6X21NZelMV3d7vfDXNb/0I+bx
         WxFLv3pTjjJ7hnavBKRcym+FG8Np0ZH+c015EwkPNXbbXofMgaemDNM5VCdBmvXrYsAB
         hbQ2z56KeO42SGtMti9MdYlxF4vUub0Ot7scM9DzIQ/o3WKjYi8HlFYIBKfPx7xahFb7
         1zaaClEOAaVN9EDkP11+vhUfj0zhV/ww40KeV4WUAlU13oFAQ4o54dYxXDsWpk6eNFme
         5Rt0+DZLK+At38BUxaGEanZXKPjs9A/Wt1mgTnqOUaAjTgGsPGxD8E4AEhlszqhj/Afv
         DR/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUOJlXMtURuTSJ7s/XuaLA4DH7CvQ9loiEu0WaHfSfK0Kcb3UZVeTnlLlwt0k3uA4ynBPXX+QAb3Y9b@vger.kernel.org
X-Gm-Message-State: AOJu0YwypQ0IoJP+QxyRRYi0IPQxDerYrKWELXHxJ+qjnwETisu++aou
	VAgSlVM0FldE7WqnLkQ599SV2y6M24JvP7Nl48+jGPtYYO90qMRadG+frH6qup0sk0oB3eV6ejh
	VrnWQ1gzQL831DYeYk0tVER6sPJIjQPk=
X-Gm-Gg: AY/fxX4p+lj8CgKLCOQdUbKYzGS1WwoewVwqDacSN4SyNnJuMVcuzGUouEMROlspgSw
	hJasd07+/c59v+qEvKMPVbyzNEyjSWR2t848QNzqBVdyfVvCdsGIx6GMSFihYEVm0sPg2qCEk3/
	PvMqEY7V99nIyaER8BqZp+93Nggbf5BuzaL2R31SViyUcgYozE/3SJsoJeoSPaXdFZULU+SJTH/
	q/jfonnkaDNB0uexMJysfWPj/+MIThrOaMhwTWytMNFGfq0TW2/lj33Q8grmUQMntuh/28ON+4m
	bNjiQ/8NY6qfG00+U8APJqPOWUt3vel/G+HhO2BDw8tQM27W3bk5PLgyPQ==
X-Google-Smtp-Source: AGHT+IFP0dUQJo6LOh2kBlHH57wWlfc/4287ppA81OjmXtNFTh6Sm1IDnpOcmlyPE+R331Nvt9CzRNqdOsB9pumwoec=
X-Received: by 2002:a05:6000:40dc:b0:432:5bf9:cf2e with SMTP id
 ffacd0b85a97d-432c377298amr7420571f8f.13.1767867236499; Thu, 08 Jan 2026
 02:13:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251230115814.53536-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com>
In-Reply-To: <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 8 Jan 2026 10:13:30 +0000
X-Gm-Features: AQt7F2pfXBaU0qS8scxlI8e3JZryt-q1cuaCgkd0suVDe9HGuILaVv9inKd0-_U
Message-ID: <CA+V-a8to1W2xbA7LpzLa5RSy02hyUFG0AeDR4iSsj7jt36VKVQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] can: rcar_canfd: Add RZ/T2H support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Wed, Jan 7, 2026 at 4:37=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > The CAN-FD IP on the RZ/T2H SoC is similar to R-Car Gen4, but differs i=
n
> > the AFLPN and CFTML bits and supports two channels with eight interrupt=
s.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> LGTM, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> However, compared to other SoCs, CFDCnNCFG.NSJW[6:0] has:
>
>     0x00: Setting prohibited
>
Sharp eye!

> Perhaps this is a documentation issue, as the same limitation was
> dropped in RZ/V2H Hardware User Manual Rev.1.30?
> Linux also has no can_bittiming_const.sjw_min field.
>
I've notified the HW team to get it clarified.

Cheers,
Prabhakar

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

