Return-Path: <devicetree+bounces-255945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D92D2E835
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 871DD3028D57
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B06E31B100;
	Fri, 16 Jan 2026 09:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KB6qHY9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAF62D8796
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554547; cv=pass; b=mci2uIz2G0Du3/6pjJ4mlegvrq4UrfIISpJ1ojXHXEnRSFTwFAx94LNC74RUwYl/Bv9YH1RXIgzMCx8hyKXMzaTqAjkwFR4eaC6x1ue+DvaHbrB2mmGbcX6iKrEAkqf1wABfbyAzA7dOACoa7WI3Z8pfVsaJdrnD2dSpsNpQwZM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554547; c=relaxed/simple;
	bh=PjK03eNHVu54e46b4LG7wzxw1HUYYstUJemKKBLfOos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lmOxcsVe7HvQBnOfdsasBl+AAH8Oph6ZwEcAIOgF4SHN4/2bhvhN1LpQHUyZ8b314Su1EWPgZ5Wv3VOIsQUyxFPjZLmTCbNTpZfAsOqS9sL3g2ID/lkRXAZOf8OUJ4oeMqjYwYBwR+AqswjrYurGJPu+IkbPKkCy0vDz02pVAKQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KB6qHY9a; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4327555464cso972254f8f.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:09:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768554543; cv=none;
        d=google.com; s=arc-20240605;
        b=kpjGeUR8xf5elFFGndcEpv4ny+VOj8t69p2orvWwWHDkzuZYvYb7fYFo07mdTkk0je
         6GNkFJ0g4yxshEJMvQsksOIuKz1xxv1Z45Xsnfy9PSccRLf+MerTpx/JLmaBTamT4aDf
         6c+pPOufczbl8FwtwZ9DE+QdZNJpmmfq5J0JBruu1PzDtODRVTeujN+9VV9gnY2bygOE
         myuf3uIA6mGaAwXNxJPxtQQbCF707HdPBy1xX8WjtAZ6TNIXEqlSaVlfXljPVjZlnSHH
         JddTeQIF5q3KmUhdGJ/jR3Hnz8Pu548sor3jqtinFM0CoN0WF040LB329E7Rzm5KRBJX
         sKqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=p3RHWH4ytRePUw0e46MQem9UGA0Z3K6iBpKhJ5leauk=;
        fh=z8cUuwnhJ8WQIoztrAyfzowmMpUgYvGmpZJNp1gnRvo=;
        b=hHfTUNidff0aYPmokLM91wphZvTFIA2ZYNUgAheWhWTBbJmLsg/+hQ+BWPyyqDQ6MW
         eDFTJeAtqis172yotZ1Q8lKWXhNGOCRBp2FZrTRCzEMC/zkidv9DjQIlVeorUk5OhPlW
         Lxix59y0z4kbkb1hqj3xOwBPl3yYuuwMoogwcbRzImP9rEt+9Ov+VkUzuNrp/qU5aZqm
         udJbpVce1YUb6SMbgjc13R/4SciOHKG/1GORdm9jC55g0dcF9N+skPzGHUcgXt9kUU8g
         eMFasT+y65cKEaBSRJNz6PwkxQtICRehpmvVxGS6cvuvkb75P4vRIBx1BcM31WC6Csvl
         Gvvw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768554543; x=1769159343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p3RHWH4ytRePUw0e46MQem9UGA0Z3K6iBpKhJ5leauk=;
        b=KB6qHY9aUmTlBw53ee9wvSbISR0dx0CFgMdP0XMBBFcmCw1xuCagmejYQTKbQ4tUGd
         VvHZJ//mpdIU5xCmnV06hmvqZpZM4ZseEHfzjtKOnGGLQwVhtDj3VAcj72LYErB5yd+b
         yhDMOO64iHxD+s6nh4Pu7uVuuWqMziMHckk3gnQpYDDCCmzd/yyQjxX7CoWPOnUUxgPL
         3szzRJDiOqWw6elaFH3jERVKRYmsbwus2VRMfCPDO68b2LR26/ZzjZaW3a0TYxYEOwmB
         LAY/sMEEBX6tF+4v1u3gud6y/7nepT2Eekh8FWzjhL4g6cqhdX7emL7zivvibYnhOjHa
         u/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768554543; x=1769159343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p3RHWH4ytRePUw0e46MQem9UGA0Z3K6iBpKhJ5leauk=;
        b=bsYNkJBFOxgnUE61F9RIazpgJL66U8YfL0Kovid0RU5JrhWsR6PjH1XGKRMF1pbAFM
         +ph4ZYN2xSe4tNAHrNiez8MAlyFpvFYTekEK2dyZUnuBSNcFbbbHaLVFoJCmUifHdN3b
         mPp9MQSbhIo2DsCpeTO1WauRNebBTrfrDuA9WYVvh1Tpf4rqnwJ5uedTSaQIv4kauvKa
         nRvXrb7iqEXtR9G0Z3pAxEee7p0ug+8OgG8c10Wumh/CSbmxdb57XwaIX5zOzUzxx9jq
         cG+iuJ4eyPPd6C/tYspUsx9L9Nn7S5FfB4gTgEaVMSL8LUj1IUDc5PCBVcYa61C+sI9K
         dG+w==
X-Forwarded-Encrypted: i=1; AJvYcCU+wKICM4rFs+4+p20lPmfuyQ32OqEaTo82AngTDGgRKVKIydoS6feMDgpMHewlXVPGjjxlqLUvD2at@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkod6lzfo6QUgi5en/r9gby/8zIDgjoSjmbXBKwoL33z0zsrD7
	0lJSYJGDrrSdwaavXSxH3JaidrVH+/M4T18QXTR08ybnD/PZGkPyQqvFIs5f9LsWY3pl1/J+hvP
	ZUcGG6gGpKI43m39Xm0cS7/JvxSftdJ2k1aYCsr4=
X-Gm-Gg: AY/fxX5scnoeSQrCh4haP8z1V3y9CEjru7yPwWaLsQf61+hjoPU1c80DhFK+eH5A96J
	0VUVyEH8JmjeYkO6Wkusy/5+MJmP97K8ghIIyfOgCdBUiDZc3Kq0hoVk4RmQHb7pbbMj8/Bffse
	cawEvq+9B/66rYYYo1u+6IfWpGasIdoPlViFQ5CiDE3k4xXy5LOHaK20RPkmbx1M9Y8ftTWeslf
	mY5UiqoNWH8dvJLyIxyFlmpO/0eYrgS09TcQ3FgVNC5vU46uT93+tULK/NRoy+Aeh2BCaWLa4MG
	etUIh3PtmLwv6jXYZoexMir0XrqhF/Qhtw2+ltephKbaEkg2xV8luYKQMg==
X-Received: by 2002:a05:6000:1865:b0:431:8f8:7f1e with SMTP id
 ffacd0b85a97d-43569bc7bd8mr2589126f8f.48.1768554543273; Fri, 16 Jan 2026
 01:09:03 -0800 (PST)
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
Date: Fri, 16 Jan 2026 09:08:33 +0000
X-Gm-Features: AZwV_QgFbQun55gGsT_2ZrF5-QmyzEueFq5_0nBPjc3PDQivLg_YkXjnYFLjBnE
Message-ID: <CA+V-a8u4o7=PXjE6nw9Bfo7Tn8dFoMQB-LGEuqk6skK_7zXCcw@mail.gmail.com>
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
> Perhaps this is a documentation issue, as the same limitation was
> dropped in RZ/V2H Hardware User Manual Rev.1.30?
>
I got confirmation from the HW team that it's a typo. Similar to
RZ/V2H, setting it to 0x00 results in 1 Tq and this shall be reflected
in the next UM update.

Cheers,
Prabhakar

