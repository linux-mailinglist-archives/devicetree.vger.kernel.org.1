Return-Path: <devicetree+bounces-256585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF9D399B0
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:23:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C543A3001FC0
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 20:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777F4301000;
	Sun, 18 Jan 2026 20:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h7GvZW0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FF527055D
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768767779; cv=pass; b=dE7Oh3petCViE7snZ203yUGFhYZdi71j3S8i32mU7t2OHF+gemYZ2Zjqpbf3t1VHG6GlW6oVo2Jc405ode/+6yd9MsqHZ8ZpAC6FDo4ZNhx4RC9TQMBls6NFzbuSzFq6J12vZECM7hKdMgSvlNc5Jmx6+mkjETqyLv0wd6xtmIU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768767779; c=relaxed/simple;
	bh=Xs4ESlb7Zdq9CXFXCc6KRL0lwZPoCS1UgCVuCslzQ2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b+l4z+6hWC5ErY+Tw8gcmrlfwTJ14qHz43WI0fMl1IrXg2f3a4STOGlrrc4Mb5JsQiN2aemcivm3y4PRexNiV25zK5lyW8pddnmDtpBjBonFsIJwWhy/RMGiCbSwYyWizf0QLJC9eB6Sgyb2/wvlpZVEJIqdHmZUrpkWGss3bNg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h7GvZW0o; arc=pass smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-45ca0d06eddso1490639b6e.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 12:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768767777; cv=none;
        d=google.com; s=arc-20240605;
        b=RHkQZdPensX+OyCMGmb8UvUw0atIq+Avj998AcoBvUsldTfbgBJK80uMRCL7NkmLlB
         IDgLRXVom/20ae0CrotBjFGlLRy+OahMpGOoYW/3YxXSCsbOUaElU1ugy/3aG/NnhMW6
         su0IesXB1+nQQHAthQWkG+knxqQOKpokJNDbIFslvSjuz+Svbs1X93eROsFLMKR13/nq
         bH+o2mt7wqOyB8kja1177Nfblrc3Qk4Uewo2eQSQYJivIBAgLCzcjU1SvAg2s2lDqy0J
         EMLt6wjaHFae0BqQe5FFM0sH1GbL57B6kLig5rvFLLBJCTmhbhrQfI95+jBxFTLWbRTa
         s+0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fXHlbS4DlpUMvr0r6REpatsLJ8Rf1gJh1GmrVBDqQ+g=;
        fh=sU6cmfZ73O+BmGJ7lQLx9w9UE4+VZXao0Nh6cazHtkA=;
        b=Uosw4k38JltDt6TPhdzyB1C94Trr+kuFHxph/H0dw0akLhKoYoim37DQPm7iJvzZ/8
         VfWzSvvS22hKaUg8HB4/5GkqtqFf3MafGuhyMD+uFl1q9tr9rlc/4TvaAiPP8Au778By
         5EKCYQYxLUDJke8J7Pgb5rgIZgMQaUuUphG52s+fERNs4uz7H2/AmytnDQXfkM51/tKT
         kyzf8N6a1dDRz6g0S7lanZ7uziYtzuzHVdQxjYecj/uk4YHtqOZA3rylFoU8+VuylhJZ
         30RQ1fy8CsVvyiDNJWBD20UwhU8p7n23qmgsaY9K7z1d5ZhTZlJufVTCYPQB3KH57YnF
         uy2Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768767777; x=1769372577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fXHlbS4DlpUMvr0r6REpatsLJ8Rf1gJh1GmrVBDqQ+g=;
        b=h7GvZW0oM9SAQEzSDA4pGufMjuLTv99cCv03PdvworXhBuY19aKrwDHdCeBH6qngQ3
         Ii+YtgzksJTS5PkpL8HNyzXTb3Tp0/nlQN64G0BYfejCoVavNPC8ajxks+cEbQvrH+Q+
         Jv/R9UPaPfjZVL8ubtDLvY1CUWCrISLxEZISqaVN4xGFKnROMas0UeAT8Rg0uCblxjm9
         uc3frZsS2KuxTzTAl7/w57GM3GZ/bXO2rm4UXv2SC5jCuZa/JzXLw8yu+XdGBsJeqweS
         oC7/2Xdx1iq8LFemacIrulxpVRWeOT01EjJsTWdnGuC5M0HcltqjHbesaQupN1mgvp56
         rpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768767777; x=1769372577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fXHlbS4DlpUMvr0r6REpatsLJ8Rf1gJh1GmrVBDqQ+g=;
        b=VcsdnzzQt/XCIu6fShGaNN4qT0AD464JRztEeg41rlJaChQ8rT4sFsiDrm2+zqtOMa
         sOtWwm+/rzMYOIKWvzQyPpNl7Nzah3GVouatmBgC4NycXtS3oDLi/XDGKbDyT5ibXVCQ
         35fQrXfgQsQiouliJbHRQou7l8mCX4BCCqqeqjfHw5DPSX9d+u826WKKBiQiGjcgmHKu
         X1h/uC8HZkDu/Qv4s4VgBnmbdaXwiXhk1J1GjJ+0wwjA3q5LI8QM8evs8Jhco1rAzGUs
         t8F9Qm3cUBiuCERW3K/2J+xLrWmc7Za9WGxqCM935IOPQ4OQWciGJmT2iH/cDaJWNb62
         /kzw==
X-Forwarded-Encrypted: i=1; AJvYcCWazBSp39JWSy4UK3h6ZZikf+kQZb9UYeagRYe3lPioni6aXMdoBPyLfelfuzBlIcAMApsxjIaalzY8@vger.kernel.org
X-Gm-Message-State: AOJu0YwMngJVktFMLCabhhH8ZurEH4va/LJx0AY4Z6X7TvfxL7VaGHSj
	5aaz77FKtdL27iQQ28GE1vSYTkUyjMfbk4c8EVQPqgvuzRbyCOglo5WqwA+E7K1qUHiu4FanGbW
	pFcKxvF00JnKJB0+1sjNnuQpPz07CpEw=
X-Gm-Gg: AY/fxX4aKchxbsKzdVAYufeCm2t7EO44R1M1tuTkjub3hvIhVzNjgQU1seCndMyHmFJ
	e2+AmcZGEzyAhLlUmSnQJ006Hr6xHbs6w6LbRrKeK6mTDlNsBtVNiCaIVdExBG2IG3TEpieBnKz
	LJjFOaRmU59xuEoaj1OmawaALO29KPlXuzweAhJLEzmx2U+N1F631X4VqOw/mURSv9Nac5CjvtN
	kDcxP8mC3zt1PVlxN8roP6nKqTn1TBUqCKklQIUZw3L/qoO7x9t/7hoRQtQCn9sgUAbGugE
X-Received: by 2002:a05:6808:318c:b0:45c:9a62:91fc with SMTP id
 5614622812f47-45c9c1d5d5emr4670382b6e.67.1768767776953; Sun, 18 Jan 2026
 12:22:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6prsl2z.wl-kuninori.morimoto.gx@renesas.com>
 <87ldkvsl1k.wl-kuninori.morimoto.gx@renesas.com> <CAL_Jsq+sJrFcAu3AZ7jhL9kUMTBOWOfeirVRdbTcgELtZDus0A@mail.gmail.com>
 <87eco3aa7x.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87eco3aa7x.wl-kuninori.morimoto.gx@renesas.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 18 Jan 2026 14:22:45 -0600
X-Gm-Features: AZwV_QgokVPvWwIb5AzILNY7C27rOJPona5om7G6qvlydKkJ31lGUPbnmB4ycJs
Message-ID: <CABb+yY22iNJZBrFOHNxKtEOvt31B-DYZmyn-6-FOync6yOQV5g@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mailbox: renesas: Support MFIS mailbox driver
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Rob Herring <robh@kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Linux-DT <devicetree@vger.kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 5, 2026 at 5:52=E2=80=AFPM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Rob, Jassi, Wolfram
>
> > > Add Renesas MFIS mailbox driver for R8A78000 (X5H)
> > >
> > > Signed-off-by: Masashi Ozaki <masashi.ozaki.te@renesas.com>
> > > Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> > > Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > ---
> > >  drivers/mailbox/Kconfig             |   9 ++
> > >  drivers/mailbox/Makefile            |   2 +
> > >  drivers/mailbox/rcar-mfis-mailbox.c | 168 ++++++++++++++++++++++++++=
++
> > >  3 files changed, 179 insertions(+)
> > >  create mode 100644 drivers/mailbox/rcar-mfis-mailbox.c
> >
> > Seems this was applied even though there were review comments on the
> > driver and binding (affecting the driver)? And the binding was not
> > applied, so now there's a new undocumented compatible.
>
> Thank you for pointing this.
> I have also thought that v2 patch-set was ignored/rejected because it got
> many reviews...
>
> After posting v2, I have talked with Renesas member and now we are thinki=
ng
> that this driver style should be changed/updated to based on MFD driver.
> Wolfram is developping it now.
> So I will post new version/style of it.
>
Ok, dropped from the mailbox tree.
thanks

