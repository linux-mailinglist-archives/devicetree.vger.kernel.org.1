Return-Path: <devicetree+bounces-239040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAACC60CB4
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 00:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35B713AD7F7
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 23:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5ECF24291B;
	Sat, 15 Nov 2025 23:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="kPR3e9wP"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8372223C512;
	Sat, 15 Nov 2025 23:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763249292; cv=none; b=ftK0kTa+S6Lp/zum8DNGKRXAJhajpNF7dyjmbPDBUAqOf74mAZhBqRs4l8Wa1TekYOaTmc1298Scrwz4DBkFOkPf5EhxGPg4Ost0Li0lJSAOavYKlCLfzym/hsFKSp7hPwjXL/VJXFks+N4OC5qEIFluw1mnE1VyrxwY4Ngl/Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763249292; c=relaxed/simple;
	bh=V2Mqd7Rf1hGjVsmGfqMIWFkW20552hL4t0N1Zg5jrVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WsPl1Zqil2BNsmcw+dhBl3mT1Mdl+YkcpV+Ng2LZOvlfTgm0GewMRSePQaM14/Q2db8cfJx5kdYib1pE5mxYS9jbtrdcj+6nFZ8ddQoNOmi1QM1DzwPEQP7w3yyVUCGov0yMBhzZyKtEp+kz7r+HJliqoXcIHJiImW+wM/I+Vzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=kPR3e9wP; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=l82rx51AsbqXiASt6mT5fRvFZ6R8MXZa4sonzok/Imc=; b=kPR3e9wPKNamPD854AOIQaiw7l
	4xZAMXQlw5rAnZnUA1xYhV+d34O7688QgFE2vXy7evtO4fro+OUGIzZrB//0wFT5hdNSahDyScp1k
	2Dtgi/V3CBdov3nX9VbfibUDul+kavFcjajuE3iif/w06k4cWaUs3nRFb9cJLsOlupJraZAEwCsgG
	hqAyHSnhCVoSVA2Aivj25mxGAhAqjylfTMWE33/PMMIK+6J9hQgk52XNYQTiLY0MHOwsZlhmhv/CH
	IaZzAn/EjPhn03M7HfHYiA7CAAOF3mM/0MguWXmqVH2Tv1xWb5jGEfPknhK2hP2O4yIwJr50mR33b
	CEsbmNAg==;
Received: from i53875bd0.versanet.de ([83.135.91.208] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vKPgK-0001oE-GP; Sun, 16 Nov 2025 00:27:48 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Asus Tinker Board 3 and 3S
 device tree
Date: Sun, 16 Nov 2025 00:27:47 +0100
Message-ID: <2455319.NG923GbCHz@diego>
In-Reply-To: <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
References:
 <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
 <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
 <24561990-8293-0505-5837-eca416d01bb7@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Samstag, 15. November 2025, 08:14:58 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Dragan Simic:
> Hello Michael,
>=20
> On Saturday, November 15, 2025 07:03 CET, Michael Opdenacker <michael.opd=
enacker@rootcommit.com> wrote:
> > On 11/15/25 01:53, Dragan Simic wrote:
> > > Thanks for the v2!  Please, see one nitpick below.
> > >
> > > On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit=
=2Ecom wrote:
> > >> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> > > I'm sorry for not mentioning it in my earlier responses, but this
> > > line is redundant, because it duplicates the From value found in
> > > the actual email message.
> >=20
> > This actually comes from my Git settings. I need this when I send=20
> > patches to the Yocto project and OpenEmbedded. That's because their=20
> > mailing list server which alters the address of senders ("<sender> via=
=20
> > lists.yoctoproject.org"), and ultimately the commit author identity in=
=20
> > Git. See=20
> > https://docs.yoctoproject.org/contributor-guide/submit-changes.html#fix=
ing-your-from-identity
> >=20
> > I've checked that my patches apply fine and that this "From:" line=20
> > doesn't appear in the commits in the tree.
> > So, can I keep this?

Yes you can keep that, I don't see a problem with that additional
=46rom header.

> Actually, I forgot to mention that the From headers in your patch
> submissions are a bit wrong by containing just the email address,
> without the first and last name.  That issue should be fixed first,
> regardless of the presence (or absence) of From tags.
>=20
> Thanks for clarifying what's the reason for having the From tags
> regardless of the actual need for having them.  Maybe setting Git's
> "format.from" option to true at the repository level could solve
> this nicely, while also exercising the Git-fu a bit? :)
>=20
> BTW, my responses are currently jailed by the linux-rockchip mailing
> list, requiring manual approval, as a result of the mail server I'm
> using sometimes inserting some strange invisible UTF-8 characters
> into the email subjects.  Oh well. :)

I guess that mailserver needs a fix :-)


Heiko



