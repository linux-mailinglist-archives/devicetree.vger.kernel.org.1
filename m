Return-Path: <devicetree+bounces-252732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF899D02408
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C792C301701A
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE0934886F;
	Thu,  8 Jan 2026 10:26:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99ADA48BD4E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867997; cv=none; b=UXqsoojHD0nN0QgfGnlGjiKPWIvW7ktRHygXYSZHuT3fJXMN+5hogiqsxmgwnbfVfpBF2hAlZb2kZUWRjUwyiCNfB6ETpt2iHCW53FH3Oz+jRSOnnRwSDHdlBCWfMYptGQE5krCqvL9rufSj/U4I1g1jnHo3XKfk5z0bxoPXZ0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867997; c=relaxed/simple;
	bh=pGg9zkdVQOf89+usv8Daa9DstO50p1qO1Ru3e94qQX8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iKX5FGEIOtwqji/GaFka5xtHf7+OK4QtP7qs9SMH3VY5pPXJJRId8EY9BqEfjjG8znLo9yLbDB5r5KQtQU8Si52sJpXNOMEOi0tyu595oJoToR+GezyrOsvuqKnj9DstJc5hs+R4zPr+FkMS/mrFFeoUsJtN+Zltq4MCH3preZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8ba0d6c68a8so333671985a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:26:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767867986; x=1768472786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6KYTwUPo18TQzTPppR+0uTL0qRsTCN2Iw6Xw2gz/T9k=;
        b=DBtP0WNRzgwjAdPGlVtAOKlpyJxVuW5Xrl4jKb8bHr3VVhvzmcaExKNKmLP3RBPdZs
         xkbvSekysWYBEFrAZ/rU+7ja+pEKqV6e7TpwygQbreXLYySgSlRkZOznx8NfKvZ/kAtI
         kE+nvexZp7hoOoYEtcq+U3+H7wOVvzq3121gMHJy5TVyEnVwqkdQrc4eBQnR5QpI2dUl
         pMlrCuxfSYzjObd4AytDHfmf1PvWuXFF0BZOMpEcsVerGgslx0nAALiPGQNbkxSh6a3c
         doRAq4eIYwScf+SxkabllARY9ixTYgLgAcN66IOwHkA+ULcYVHppa6KrG4fTJh4Rap/D
         QVDA==
X-Forwarded-Encrypted: i=1; AJvYcCXiGh3OlOIJXq0sbsatlCPn+jCIVSmI1LrsYj/zLQSpEzGIVjT+ltbhv/WavSA6ZzqcCKhiKIpyMUez@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsq8W0u2U/c8gG6A0p+OrFjykxuX3tuYkj8R13S4rZlIB0cdrP
	mrhSERarVTH4A3CvQg7yNyKL+xNbVFUGfw399xyiXOHuTOlkTElGcUA2CAlbQH05
X-Gm-Gg: AY/fxX4cjrcNGxK2fbsqMJPkf0GkX7gC5GdRqr72rO5+/SQde2yT2ERdITg01eL69bN
	4VwBJta5G29nB0bZrOmPewhXKXwSTcf+j9vwuaX6+L/LJ58egZ+j5c+EzTJr2Z7ocrM02h56WOs
	vPob/4WWX+ABW9r4QECYilMprCzLb3p7MVP3I++Io/HVqzPch3eD2AqqQ7jV9oWumcwBOwj569E
	lAlZqUUsPb06uEkl2/KiMBPgGh/HxAxIpTESShkNmIwMRtGu3NFE6wrDwLMrYUk/0VSRKhaTmVO
	OYfn4eDGbnlnFrcYsLP2OKrxdxA+N2dqCwBfjZKbAfZ/vHx6R6Erzg9id7OJ9WxzTrxFs/RogG/
	6r3MXFAnpNj/AwqA2jt4lGUPi7srJ1GWsw/OBunozGqL4+KJ9CvU/BMHyW1MrKhbw/rTlKGeJ68
	1SUr5/dtnbj+X2m61EkuCeTzt3DHGgT2JVhwaEbcDsxwB5l0sA
X-Google-Smtp-Source: AGHT+IH1RqdkRJ0wZMw4j5kxbgGbdzKItmWiKQKZKw3oqD3gUVoS261r+q8K5stcjFHn26StcUWgdw==
X-Received: by 2002:a05:620a:2545:b0:8b2:6538:6b4a with SMTP id af79cd13be357-8c3893a22f4mr696956985a.20.1767867985849;
        Thu, 08 Jan 2026 02:26:25 -0800 (PST)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com. [209.85.219.42])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51ba4bsm567382185a.34.2026.01.08.02.26.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 02:26:25 -0800 (PST)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-88a2fe9e200so26461946d6.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:26:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWfVQDQdWke0h6049etzyVg4+bOgMDkvnAjNvq5oHwWqXhwaPaMxJVQHQGmQVsdeYdnwEVUk9V4orRS@vger.kernel.org
X-Received: by 2002:a67:e716:0:b0:5d7:de28:5618 with SMTP id
 ada2fe7eead31-5ecb1e6f437mr2335328137.5.1767867662424; Thu, 08 Jan 2026
 02:21:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251230115814.53536-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com> <CA+V-a8to1W2xbA7LpzLa5RSy02hyUFG0AeDR4iSsj7jt36VKVQ@mail.gmail.com>
In-Reply-To: <CA+V-a8to1W2xbA7LpzLa5RSy02hyUFG0AeDR4iSsj7jt36VKVQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 11:20:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUe6gkbgQj7cjeZ5w2Mn_HPDwiuh5yEp8nQEE-vQPLqQg@mail.gmail.com>
X-Gm-Features: AQt7F2q329GKSf7dgOJYdzgZ3DUM2vDua1zqaJTIpmI1KP2q0zp9hslKg4nKf7k
Message-ID: <CAMuHMdUe6gkbgQj7cjeZ5w2Mn_HPDwiuh5yEp8nQEE-vQPLqQg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] can: rcar_canfd: Add RZ/T2H support
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Prabhakar,

On Thu, 8 Jan 2026 at 11:13, Lad, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> On Wed, Jan 7, 2026 at 4:37=E2=80=AFPM Geert Uytterhoeven <geert@linux-m6=
8k.org> wrote:
> > On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > The CAN-FD IP on the RZ/T2H SoC is similar to R-Car Gen4, but differs=
 in
> > > the AFLPN and CFTML bits and supports two channels with eight interru=
pts.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >
> > Thanks for your patch!
> >
> > LGTM, so
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > However, compared to other SoCs, CFDCnNCFG.NSJW[6:0] has:
> >
> >     0x00: Setting prohibited
> >
> Sharp eye!

I knew what I had to look for ;-)

This one was indeed hard to compare with other SoCs, as the structure
is completely different. For e.g. RZ/V2H and RZ/G3E, I could just use
diffpdf, restricted to the pages I am interested in.

Still need to enhance diffpdf with shift up/down buttons, so I don't
have to adjust the page numbers manually when a few lines are suddenly
moved to a new page...

> > Perhaps this is a documentation issue, as the same limitation was
> > dropped in RZ/V2H Hardware User Manual Rev.1.30?
> > Linux also has no can_bittiming_const.sjw_min field.
> >
> I've notified the HW team to get it clarified.

Thanks!

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

