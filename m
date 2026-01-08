Return-Path: <devicetree+bounces-252735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C79D030E3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D3D03001FE5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B6444BC8B;
	Thu,  8 Jan 2026 10:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kxnBbT8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC783EF0BE
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767868478; cv=none; b=WJ154zlZKVIvZuyhrVHiIjL15Y3C0nB99WtmwDI6HCEr2XO26YvbCGmvNB1S/7rCLI6e5biLqERBMdmKDCYSxX9s6Qb01Y0U5vWEUdMr4AXeyrJV+UxgA2VZuBfBHURKuSj7KICcoovYpB8To+IIPH59CHmS2PXIX16V9FWNeYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767868478; c=relaxed/simple;
	bh=8J95CUqGQzbNe9RQYZIjmFvxGxZyyAKIOnUoA40FzOs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dLVaWylw7MhossyYo8ea9/rEidFZcc4HzBt2G05xeXjWsrQvLIFl2ttLWqFQyvKmZKzPSPOTGqOKZ4ulxDkGfSSm9dZmqS6NoP+D/ak6CTLYUmg4tmMFRYq8nabQ1nre8CoMqYenLS7/tox45vSkEJVyYPA27yJ2rxVFS7tgD0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kxnBbT8k; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43277900fb4so775330f8f.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767868473; x=1768473273; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WAy6hcda2ByjMGo0ZNUpa3upflcaSQJbAAFWGQO0oJA=;
        b=kxnBbT8kAbFH7DMm/Lu6qn+KElqC5IMDTQ+sGAqkY60m1yFk05kzfZu/h+kNpgNAQR
         KAd0p/e6UlvOWfMi8J1K4HZZz2Pfp814/S6/8MM2YpXtQThCyAs8yZ540JYxzl3ttReg
         F09NrV8OVc7pF1/9Tat8JyIgw9/5c/zhb3DKLtHTcuJtW1GZmtM74XQ0EPINd7LlXcNz
         7Sp2EdOh5YVWVRfUy8I3KQYp2ijfifaR2EDXBgbJQ8DfBS7Qetexu2UPi4YSmXeVj6S3
         14arHjjewtMUIOnjvv1wU30temYpSPCRlNIUcVXWzb6Mw0WiBkyLLihUk1AH7xb8ZOqW
         d8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767868473; x=1768473273;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WAy6hcda2ByjMGo0ZNUpa3upflcaSQJbAAFWGQO0oJA=;
        b=AzPzyL38NLx48LaWtcJOIKZBHISJ4inanwdfZVXYkhxj0CKHsLDiY07F4Qj2CuLnws
         hEFdlfne45epoenStK/d4uWkgWHWKTXzNjdeSlXwlg0xO8z+BvA2pPnjKb6DlLSlPccG
         T9tzYcrGhGGf1UuEIdRbvwQ2Yh1aHwuPnY6eizfpEJaa/1g8v03DbBRPb5XY9jfpPLib
         CNUdCl+LaniYKQiceSdOtw40sDsOgct4Pu93zW1+vXbjmgmI+c3WNn/paT54o53BfqHP
         j4TXE92T0UjWIq/ZgQX1N7wIcxBVbNWn9TFrlkG8A8KJRq26xRpOLfsOYMvMXsreU+ey
         MfCA==
X-Forwarded-Encrypted: i=1; AJvYcCWSV5i26jM2uoeFD9JhJdJm5073qMJGKwsOAdJvDRHAiI3VyAB4n3cQ1aeFpg58EXkAx5MF2nmE+y3U@vger.kernel.org
X-Gm-Message-State: AOJu0YyMOsP3TJn2fvG+1p+WTji/l3bRGUKmdftNi1RvNSpooovTIsFe
	mPmNkzs9yvSD/hWV1K9kRfeRUvYdp4AZjEq7ERYxEaKDqsUcPpc4UrPeBGA4F2IWF592pWJyHFe
	jAMxXycuj1gEKplmnUz4WHMph5+QXSkQ=
X-Gm-Gg: AY/fxX70FXXaLTSJG/+bxhtjK8EYqZhEwYgHh7oqKAAXCLOPyAhIPrI9EI9lX+8dQxh
	oICCyw9rKg5FgKXIgl6OOep5T0nKN3KhrWZLtyzYCoS6EmPV3AmOxpXH+f3cC8I/r4bIQB4IYLh
	3bXAsVoUSq85TCOUOwcVVp5U0yeoQTj8+SA04Kgbvrpo8TRhWpWaBrfbgq02uGwSk3eOq5qusKw
	dAkStvxI4nIpyEjs2K0t3S17NlaCwU5nCTGzBdeFmQEl1awiDY9R9qFGboL8ZcDYQPzXUrY9N3c
	mW8rjW0pXWnBVXqDG6l+0c6v1d3c2RQF2U++UAtWfr1YDv1Si8Wr5REF9k9pNlUQ0lqn0vzmecP
	WvNFcc+F/Kz5YVQ==
X-Google-Smtp-Source: AGHT+IG/lLLmJ7tqQ48LbhbdSS6ekHFjJMW9NFEvYoJ3mgIa0icSTmZLc9yjQbv317Rt2eLWoD8wp+yF3Smx93c39Uw=
X-Received: by 2002:a05:6000:430d:b0:430:fdbe:cc4f with SMTP id
 ffacd0b85a97d-432bcfad0e3mr12151914f8f.13.1767868473270; Thu, 08 Jan 2026
 02:34:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251230115814.53536-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com>
 <CA+V-a8to1W2xbA7LpzLa5RSy02hyUFG0AeDR4iSsj7jt36VKVQ@mail.gmail.com> <CAMuHMdUe6gkbgQj7cjeZ5w2Mn_HPDwiuh5yEp8nQEE-vQPLqQg@mail.gmail.com>
In-Reply-To: <CAMuHMdUe6gkbgQj7cjeZ5w2Mn_HPDwiuh5yEp8nQEE-vQPLqQg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 8 Jan 2026 10:34:07 +0000
X-Gm-Features: AQt7F2qYwu7k2jqryxnQQ1-oDkkg98jFJTRBpMxesBcsc9xHPBIinmS0EUGvnI8
Message-ID: <CA+V-a8t+R3bfMJ2JY7NsGcX9b-tgz-aBkHrt7bF2Lh7eiyeniA@mail.gmail.com>
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

On Thu, Jan 8, 2026 at 10:21=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Prabhakar,
>
> On Thu, 8 Jan 2026 at 11:13, Lad, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > On Wed, Jan 7, 2026 at 4:37=E2=80=AFPM Geert Uytterhoeven <geert@linux-=
m68k.org> wrote:
> > > On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > The CAN-FD IP on the RZ/T2H SoC is similar to R-Car Gen4, but diffe=
rs in
> > > > the AFLPN and CFTML bits and supports two channels with eight inter=
rupts.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.c=
om>
> > >
> > > Thanks for your patch!
> > >
> > > LGTM, so
> > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > However, compared to other SoCs, CFDCnNCFG.NSJW[6:0] has:
> > >
> > >     0x00: Setting prohibited
> > >
> > Sharp eye!
>
> I knew what I had to look for ;-)
>
;-)

> This one was indeed hard to compare with other SoCs, as the structure
> is completely different. For e.g. RZ/V2H and RZ/G3E, I could just use
> diffpdf, restricted to the pages I am interested in.
>
Yes, the T2H manual is different as compared to G3E/V2H.

> Still need to enhance diffpdf with shift up/down buttons, so I don't
> have to adjust the page numbers manually when a few lines are suddenly
> moved to a new page...
diffpdf was insightful, I wasn't aware such a tool existed this will
be quite handy. Thank you for the pointer.

Cheers,
Prabhakar

