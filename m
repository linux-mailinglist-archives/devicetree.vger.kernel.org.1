Return-Path: <devicetree+bounces-323238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PjwDHM3YTmpUVQIAu9opvQ
	(envelope-from <devicetree+bounces-323238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 01:10:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA9772B0C1
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 01:10:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ZqLGG/La";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323238-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323238-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 661493010D2D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 23:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2757396579;
	Wed,  8 Jul 2026 23:10:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3983385D97
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 23:09:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783552200; cv=none; b=EgCruD5zYIX+Dpk/bHKdfAGnb511ZIaU3qqyEcaX8Zx2pnWA4vvq/hpIC7TYw76TCsyLSYSDks2BipEmBXlIrXoJPTGwMK7vdznGbgZblXT19cT2wVFSvKRk/digipPml0ngYQyjS2jYMYfKcp6x2A1nwlCJ3wufx0XgD6J4llw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783552200; c=relaxed/simple;
	bh=53loIXpyqY+B+k4wJXgZBf3N4G7JmilBoyIBp13Tbc4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NOqVIc0XdpjdoG9goC3GZZYX7HokZ4S41PH+C7QSqkcVsw58tR5oZp+7v94Ei2EL0dOaMadjj6JBczxc/WZYjeD9daaUTof01oOEYwU/T/X/1oqVOZqojlDk3i6ALUcs0K4yNK7myxYUOBoToU6zQdEydJFOvqyJa6KcdbU4paI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqLGG/La; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F9A51F00ACF
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 23:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783552198;
	bh=LR60eLgUfNNIz6B0v46FKwzAtiy9XGoPTayqxcAz4UQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ZqLGG/LaE2yyMqM5XS0hIvwyGP4VAC2nYijzaQlQfIaDqC4xDUQr93yEZe96t90jy
	 VymKJ+2dNoXJ0R90xBkWS3du9UT3kY79XAn6bzUKknfEpUTxnHM6QE7X2l+BB0xYbo
	 cwLCu/lnPGJjQS3pil9w7fjr6vJN/rv+nWiHl6vwGXiVOcVBJ0Sg0UuLfA7DpObG8X
	 3dtK6Nb/81VPz7HN1L7VIbbeezTa9yQCWAGc/Bb0heQOcjAxtvPDGvlr4CsC+tQDDf
	 XQ9VtCE1WQQ5Sx8FsNYcHIPYNyyrcoAuBxDyDOZ8Y0d+4eXb8TBqQwXlD7MHuq2KVY
	 /XVaqMZw9G9iw==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aebf120839so451851e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 16:09:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoKWIcnc2n9HzX49eDR95fQl0SgSHb3hYRxceQQv0AayTbp7oAChOQavxYI6/xMGuZhjolYmig/WGOp@vger.kernel.org
X-Gm-Message-State: AOJu0YzWnBsQAQg61fzl2XewZEbaKuZRl+2Lhvwk3KjC1UUNANJUhWJK
	/D1+pdiWvfgGh0Q62XP7a4tiikJeb2VOuhE7p5ohDkm63xvdG2EkYVdvBXFI2YZGoGhtO2jJw1q
	viIgt9GxLWj3B9/JJI82sW5S4UKrR1Rg=
X-Received: by 2002:ac2:4f08:0:b0:5ae:b5d7:7844 with SMTP id
 2adb3069b0e04-5b016d1b33fmr49718e87.5.1783552197150; Wed, 08 Jul 2026
 16:09:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708-dts-stmpe-v1-0-1f51d15bb358@nxp.com>
In-Reply-To: <20260708-dts-stmpe-v1-0-1f51d15bb358@nxp.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 9 Jul 2026 01:09:43 +0200
X-Gmail-Original-Message-ID: <CAD++jL=tBRFXzqa6gXNnZ3-DRUMvs=waSdDvq5h5MPHAQoheqw@mail.gmail.com>
X-Gm-Features: AUfX_mwW-7N7MmlP00AndlWeAaBl8FEBrFYJNUhifSWGKsGcvxauySd-Uj-hISw
Message-ID: <CAD++jL=tBRFXzqa6gXNnZ3-DRUMvs=waSdDvq5h5MPHAQoheqw@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: imx: cleanup st,stmpe touch screen related
 CHECK_DTB warings
To: Frank.Li@oss.nxp.com
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323238-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,foss.st.com,pengutronix.de,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,lists.linux.dev,nxp.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DA9772B0C1

On Wed, Jul 8, 2026 at 9:49=E2=80=AFPM <Frank.Li@oss.nxp.com> wrote:

> cleanup st,stmpe touch screen related CHECK_DTB warings.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Frank Li (3):
>       dt-bindings: mfd: st,stmpe: add deprecated properties
>       dt-bindings: mfd: st,stmpe: let interrupt property optional
>       ARM: dts: imx: remove undocument properties of st,stmpe*

Those look OK I think:
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

