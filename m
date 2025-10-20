Return-Path: <devicetree+bounces-228893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C146BF1C99
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D295F4E4218
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4552FC879;
	Mon, 20 Oct 2025 14:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XBTGnF0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D463725E44E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760969802; cv=none; b=Us72so8pjADIwOPuqhbZ8dmlpNXtBBZyZ3RMituiXpqswXF9Eo5DP58vBU3+aVFmZSDjvWzu4ciAUSBu1umWFBjv2JV9d/b1afH/uR5rPNSIF23fkpFtM5ulZegRq1jeH2WEQT1RBEdwHGB2t4w0ljqCDAfTcnacljBi8p7MitM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760969802; c=relaxed/simple;
	bh=bqdq9WmXPaR8Gsjoe2b8oxuoY7eohXxoBpzukdwSAp0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y0gMxfqBW93oSALkWRZtUGLwZ3Shwbasv8hQFzvA0M5tTl2UOvZv10S9Ojx+BdZaPN+bGt60DJF/2qMz3i+8YJ7op0LbP7q23iwvn+VbhCe6v/63slWkxD9AOVPEJeCNksIjLpZgt8YzbctQCMAzoJ8OfZ+f5AiBi50GIj8KWE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XBTGnF0o; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-26e68904f0eso43868935ad.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760969800; x=1761574600; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqdq9WmXPaR8Gsjoe2b8oxuoY7eohXxoBpzukdwSAp0=;
        b=XBTGnF0oO/ykFeiHWuJ0sK2VjnSv4wGXIBjWTZs1XrUvxDNfd4zIo9fR/2IsN/WdyY
         iUrtBTUgTph8f6rphym+aR8PvqJSFg3FnpyHapNKiDysgEkBVyx8kQ66drEQh6P1S41j
         fnDWtQNJAKSCKJb5N7dz+3b9HX8UQJH6CC38MukZTCr7aSG6oYVAnwWJo1CCEZQWUSuG
         sIlYFzVGAVVFRZFP4Gyc/70vaZ0T/idGY2jQwPRYdSNYb1JseOUk+dxWMJfFfVWqScDc
         Jj3vpVJpzGi9XpjaAjvuIcG7bJUohanYbKWhXBQ50qnzLROZNvhKYmRqJvRvrucnVLuf
         8BtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760969800; x=1761574600;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bqdq9WmXPaR8Gsjoe2b8oxuoY7eohXxoBpzukdwSAp0=;
        b=ptveS/okw1bYlqekdwoaimOsUaa8asHQSk3NS+jDpyMi+MEeyTUrkL2Y6Nw+StbuW8
         MvPfKY7Dek8fuONNkoJkuqcUWbkU0EnegeSYz2PrBFZZf8oO/AvDHg7Gx5ixP10IdSK9
         SYjfnAzAQ7JpQrnkcKaBEq2mst+Zlw1qo/azGSjaXkqQJ7M7Act0DGXGHyAKd/d53YGe
         nBiwJRNhbnuI02n64KFNjikdZb6nNxY2THbWcuiKCJoIJEW0CyaxoEe5HHU5BdrVZThD
         X2piXsZL2jpkqvWC4Nm4kU/U8mvnjoks41L9t9s2og50Gox8wolOpCS+Vj22QIZWWaV8
         F12Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZUzL3D1nTLhVpjYDwGEG+s4V+PVS4xXO3Xpu8DO5XLX5ETlwaclecJkYQ4hvhMjhxZ1rcC8hZh3HD@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ+8rA0IJwubVNNKiN5aPfuvTgYjp7XhKqDAXo5vpDui4GCG/Z
	TUiowBw5axuLQrL1cBwJh67dcExX1RsmYGA608AosMw5b7DqsXPJy91UpHgWUbwlQTqpj3gRJMw
	QiCaN0Gs1NsmRkGbSU0k3UAkn8KXAYrQ=
X-Gm-Gg: ASbGncuJnYHy+zf3bo1TyTTc80xvOH4wvdDn0CNt1UlAkFqbVhqq/omJ+hXOz3SRu1N
	R/7bzeOoGkkfwOtnW5XIcn5I6AB5PI4KEw8fG7B2Xkz3mcDftNj82tdqPUfseHP77RR1LNORUx8
	cWriLvceGQmS5NfnAWxECTy5PsNz4A+X9bJpTM1tPztwS+pnzRd7w0Z64OLU3NZWXAgc2KcZikI
	9WnSWvHDvN+lz7kFnzLYdSeTpRniVrFi5SNwmoQhNVr1rTC1AVCNlslWmXvPXGPZANIjRIEUrHD
	tJ7M8b7yFFruyBODfcvDTEm7
X-Google-Smtp-Source: AGHT+IF71shr5BTQv0oq5eLWvgxmXcOQ1nEZ8rFk3kgzINgGyypUZnjlZnnQfErZnclV+r8kM1yF7mXz80sc3mNjFCg=
X-Received: by 2002:a17:903:11ce:b0:290:9da8:f88c with SMTP id
 d9443c01a7336-290c9ca6b61mr160740585ad.17.1760969800070; Mon, 20 Oct 2025
 07:16:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-7-laurentiumihalcea111@gmail.com> <aPJZCv+iG6cuxsj4@lizhi-Precision-Tower-5810>
In-Reply-To: <aPJZCv+iG6cuxsj4@lizhi-Precision-Tower-5810>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 20 Oct 2025 17:18:59 +0300
X-Gm-Features: AS18NWBTX8pCKgoouBoSyxGFd8xpmwwpvcDYztextRp06KZCPCFp7jOkfhl48Co
Message-ID: <CAEnQRZBd1nadLPE0NSWOJLRNwFEnRhOTENv_vestHCLxe41Rbg@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] reset: imx8mp-audiomix: Extend the driver usage
To: Frank Li <Frank.li@nxp.com>
Cc: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>, Abel Vesa <abelvesa@kernel.org>, 
	Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 17, 2025 at 5:57=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:
>
> On Fri, Oct 17, 2025 at 04:20:23AM -0700, Laurentiu Mihalcea wrote:
> > From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> >
> > Some NXP SoCs integrate one or more, per-subsystem, block control IPs,
> > which allow users to control the assertion and de-assertion of the
> > reset lines tied to some peripherals present in said subsystems. Some
> > examples of such SoCs include i.MX8MP with AUDIOMIX block control and
> > i.MX8ULP with SIM LPAV.
> >
> > Some of the aformentioned block control IPs exhibit a common pattern wi=
th
> > respect to the assertion and de-assertion of the reset lines. Namely, t=
he
> > user is able to control the state of the reset line by toggling a bit f=
rom
> > one of the IP's registers.
> >
> > Linux can take advantage of this pattern and, instead of having one dri=
ver
> > for each block control IP, a single, more generic driver could be used.
> >
> > To allow this to happen, the previous approach, in which a single reset
> > map is used, is replaced by a per-driver approach, in which each auxili=
ary
> > device driver holds a reference to a certain reset map.
>
> Can you shorter your commit message?, basically, you just add
> imx8mp_reset_info for difference auxiliary_device_id.

It is always preferred to have commit messages trying to explain the contex=
t.
I have never heard anyone complaining that the commit message is too long :=
D.

Daniel.

