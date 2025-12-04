Return-Path: <devicetree+bounces-244167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BA0CA227C
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 03:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E14F6300F1B6
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 02:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1350D238C36;
	Thu,  4 Dec 2025 02:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W1vHYVKy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805B3157487
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 02:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764814776; cv=none; b=NpVcGwKDQ37vC0eK4EoLSaX7WCQtQ/d9lAIZPtY6B2vAwvJFdrlQrP9FjUg0JI+vJS5fn/03Jni0n/B3P2FRI9xf/39ZG3nxiH3IjUbVBuReM9+C3BdE8OLi7VNc6IuSE3c0Xj6of0aJHZE5EJAAOAvwoGJPUwgV1tne2IPPmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764814776; c=relaxed/simple;
	bh=gCeE1v5pCwA2FCR7GmE46SltFLYJHoN8J5dUprMsAnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kANIvZOjCeDrFfFXoAYQsyqIfJZaaYvU5uafjEOj4sT1jEAyXamPcos688Q/0yjiLqmR8WPxkYUA5bqb8FbPzCtVng5h6Jgo2Df9bLVCBRD95N6etNwuBi1/JaAAKeAuwr4EJ5gegcQucadR721AgRxMsrt/ht8Em26JLZpp3b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W1vHYVKy; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-450b2715b6cso241447b6e.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 18:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764814773; x=1765419573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uG7PaGlKRMu5bDo4p3yFYL9GqIngsADyTUqMK4j8Mb4=;
        b=W1vHYVKyn06LOGKzI8dXJE7IscDNNTo/mDYFiTgsam2UCHzb3kQ2S4ls/tkc2LDYzt
         GiWzPMbD7G2HgT6crDvHPNjKehqQvxmcD9tCAWNw0wTvmWdNgezYQczXYXYuPJ0F3Vl1
         pxpg8bv36caY4Y9MVXvjZsIEoGlT6NtkIf8JU3qNucUU+FyQnM1YLLL5i/3iKJ8TizTv
         bigelT8qLhBkZt5mGuHDt6pcWt7UUfHb+zyO/OYSHAqkFRypt6DGPSvxhCnKsy5WDdGz
         TLglh0uR7JIegKw9/EphVauUidCeUJ+FDQPcwQapQGfVFhzYahXGFdXQLxkSgf61J+Bh
         faFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764814773; x=1765419573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uG7PaGlKRMu5bDo4p3yFYL9GqIngsADyTUqMK4j8Mb4=;
        b=Y9IA0aQDemPSxGDyklrN/CJDdM2RUC9B/zQV5O5tXc6Y/KiMN3XbbERL3mx16OaMkS
         Q0LKoL3nlndmQZOYpKsB/hXMxN6iURn5Be3517th/LCsqTZELqMADcFZOXyGEA6z1i3X
         zArvjL9S793sBn6KQeBep18YLtId2sEwgUmvTr5hxqiYs0KheoqbRYKxxSHH+OKth7vu
         cRe1Flmcw+cDGcs7lVjw+i1BCAinxyFs79XXydwm+FxxWv1fK1ZesxdGAvXtZL26TEei
         CyFX+Zxakpvt2mHNoytKwmY+cN6k81++xnZNv9ZcwFItPPQY2GIAQMFRdsQy2Z/k5nzJ
         KhQw==
X-Forwarded-Encrypted: i=1; AJvYcCUtMbBSg9N95a4xxd8iast2XZNQg8wAwYD0tJhNE08gc6esKfE+DqWYTMTZp61sCPTx90YWoolZJLrq@vger.kernel.org
X-Gm-Message-State: AOJu0YyTe1TyzhKJSVwyf5N/Uzl8B1wfcHPMjEFVMaXsRVNlEvyD5y/4
	tmZRIvA66hJEzyN9h1LNj3zgeTjREeBFZzIyKXIkggYXcxIv2HUsRPhwbG9O9qkJplOJ35fmMII
	cLYV+O50YBPrkrzVJaaW8pbEeykpBMp4=
X-Gm-Gg: ASbGncs2e1nYsC5+T4ZNxpmP2sRxu800qY+mb4ezKOf87rIrx1BxGGQx8QrqRFFZqvK
	i/4wWdkX7KqdmbWpurbXlDLM11jGh8F2P7tLo95lBOaPZ9ox581xIoK8FSnga+lZdfSAlAN7Jb5
	M/UmQrLo0sbe/XmYbtbe0dux6/ul+n6/ofs6j+UwoIv+QKkwnQvn81uHdC3LFFxkV7Z76akLVy2
	ax7UzrJjP+6u/vVY9ieP7n/ERttl8r7Au1Kw2TdTNAKVbWPm+OgZ8ODqn50nmCN5chf9aSX
X-Google-Smtp-Source: AGHT+IEqB061cfOqCwBgL5GmPx2RSj4lzThZw1cWLyYykeKeoUInbmIZmdnj3e40MG0mT+uUQiKQyBPTmgsYn3oAUT4=
X-Received: by 2002:a05:6808:1b8c:b0:450:89ee:923d with SMTP id
 5614622812f47-45379dac9b1mr796186b6e.31.1764814773581; Wed, 03 Dec 2025
 18:19:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6prsl2z.wl-kuninori.morimoto.gx@renesas.com>
 <87ldkvsl1k.wl-kuninori.morimoto.gx@renesas.com> <CABb+yY2C32cTwh=8pFGGZijwd1KbpAA5=FfFzp_u1OOo8XPn1w@mail.gmail.com>
 <87h5v0xdfr.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87h5v0xdfr.wl-kuninori.morimoto.gx@renesas.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 3 Dec 2025 20:19:22 -0600
X-Gm-Features: AWmQ_blIhviETDC4lCQSXKa9EPrNMcjcSEfDZbmIhU2CpNMAnpufetADKUmSWyM
Message-ID: <CABb+yY15RqOtCav_ug-7z8n59TPnm2axVCUeiw3RsAvgroLqbg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mailbox: renesas: Support MFIS mailbox driver
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 11, 2025 at 7:11=E2=80=AFPM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Jassi
>
> Thank you for your review.
>
> > > +       mbox->chans                     =3D priv->chan;
> > > +       mbox->chans[TX].mbox            =3D
> > > +       mbox->chans[RX].mbox            =3D mbox;
> > > +       mbox->chans[TX].con_priv        =3D
> > > +       mbox->chans[RX].con_priv        =3D priv;
> > > +       mbox->txdone_poll               =3D true;
> > > +       mbox->txdone_irq                =3D false;
> > > +       mbox->txpoll_period             =3D 1;
> > > +       mbox->num_chans                 =3D NUM_DIRECTION;
> > > +       mbox->ops                       =3D &mfis_chan_ops;
> > > +       mbox->dev                       =3D dev;
> > > +
> > Please fix whitespaces, here and elsewhere.
>
> This is for cosmetic, but not for technical.
> I know many opinions exist to this kind of topics, but I like aligned cod=
e
> because it is easy to read, and is also easy to notice some issue if exis=
t
> in such code.
>
Cosmetics are usually for enhancing the beauty :)  If you want that
please use spaces instead of tabs before '=3D'

thanks

