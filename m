Return-Path: <devicetree+bounces-313419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tKMdGQPWM2pFHAYAu9opvQ
	(envelope-from <devicetree+bounces-313419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:26:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FED69FBE2
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:26:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=esiGBbDd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313419-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313419-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 640FE306FAC6
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230663EE1E4;
	Thu, 18 Jun 2026 11:23:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0AF3C6A2B
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 11:23:52 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781781833; cv=pass; b=aZnLgKLdqxSeJh4c+bbrRndVemrdkrNx0kvf6PKVPAB6O+RmKhNgiEneRXOj7TYMbRGCxxosdT2k7eiSp+frs5GZbvTcmzA3ZH4Cd1j4nx18tp/AcQzUhJhKNLKyIuDSLZpcCDIeOmJThPaEgUIJm8UDFyJ7rZA5ygBF/LB4KMI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781781833; c=relaxed/simple;
	bh=ftOGb6HrIA4XLF+PgZmXudPusKXh3HbuMIuy1WSwPxI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IHan37MQUpC9PWFQcfJf+2lcjbhd38YuJBNX60Y98iPj3TF82foAvLc1FbCczj3SAVTz+OEysvCk/XHjZxzyu8EM6ytPelbFuDPkqCYXw8BY8/HVMxhm4c0ZVt5fQBP0w6MOP7gsgeqPQd+sLwu8ZlxZT8wkeoh/nnHoiQnGQ88=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=esiGBbDd; arc=pass smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso5820435e9.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 04:23:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781781831; cv=none;
        d=google.com; s=arc-20240605;
        b=JIKZiJHH9Lu+bsRfFr+DDJ3g/f/ZJ3l/uu+NrMMXPCntlzIdjISG2dymrgbecBw1rN
         2xJrDwVaoJp3SNTETgrx06/AsWqs40mYBF5PTX994/TtHc74fm1ER/FPQKZfZaT17gwT
         adQ8pkDREKQXZqfYGTFyouXTvoE47m4jf23V5jZZqJXYNT6Kkd3T6W6kmm6N9D2qmbrZ
         y65SdcWwAqo5jvVUxTXNElic0umNzdAdV/coXSs+GnI5648WFIuB6zMmLwr01POoN1dV
         3Lt6pXqOd/tIYzkJ4KJ+v7qfe2kzaup2J1kC5MN4r57+Ocxy+XKQP2TkGwMpGubrwtQw
         Ffdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O7pE6Ixio0KUcBqTkyHkIjyjk/z6EK5II6djKg6cLrY=;
        fh=Yo3jOwEMFpySwown/fBBfwGvu8oyPjp6nxtPEUbKA9A=;
        b=fPCppf9MyfnlLzOHuRM6KH/VSHioPjUGauKK8ItGlnMkj8gaTX9Wv0DdJN71LQS6oz
         29ROhx3jkb+TlxW+E1NeJbanCL2BcEoloFudH7bCp5X3ZhT7xXdDQ0ZbNX0hnLYdLj4Z
         KHdrmpPDwGDeSwLmU6i0AglgvDBfbI2pyFbSmOxBiJuq7uWPxJmQ41QoL4cST85EJbRX
         8FyM/SYSGTEAaDoGuaGJevRN8R6WsXrrVC/ruN8y8SmGoVlhwTdMldmhrZxLwWxrhOzw
         WqdKvvv11qDtnQnfVWL39dldIr85roMWs5cj1JnmDmQesGiCXWHRp++60YTEqL2zmuQ9
         PpKg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781781831; x=1782386631; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7pE6Ixio0KUcBqTkyHkIjyjk/z6EK5II6djKg6cLrY=;
        b=esiGBbDdiJAOH7zUs3QSC/EklyV3tnmrmWZxHM5jw6+G3Kb5/gMWna6ZtQJHHwi9Ln
         foE/gYtJ19SXNC6G+skr36HCGb5iWJgB/ZsZZlwbZa+lhXqLHEbiRpfubQ53TwrSGRd+
         LQSJEKLtWfnL9bZhwT+d70ZNmwrgLcFoxw8iT51pZhoRDseE8TJM1OygSqwFO1h090Om
         tslpULxZfKYxcqLJ7imRoPxDDnX0J6xRCoOaOAAtnSFdHa6G0os+6UIlWIihqcF6IJHt
         q1aKL81Iwu7jjcGydsf9OBQmWf/Z3OiYU+38Dab4oyq4rksQp/4b2fSwLUuzK6Xv1U7J
         VuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781781831; x=1782386631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O7pE6Ixio0KUcBqTkyHkIjyjk/z6EK5II6djKg6cLrY=;
        b=cb4YQkYDJAC1uhxEVoh39hdHMoq/2KInaN7r7fw/GBzBeCUu2voCK4Altwt+rswiYQ
         0Zhdeqb9469h8PfMPFEauhKkj2PF2GoO6seQrc8v7s8ddx4s+4m2DkWChE9cSETL2Ilu
         +/kuvDC7lNclgBrF7mPQXmrBgKb6O8y/6j/bi7xx5t8WEMkjmLr5CVrx71TEjGbN0GfA
         GvNUqqtXQATfms4SIn35nn8EWak7CMmdKsqfxH/pq/IdvYMYA3ogzDxV2jEyBBqsdX7q
         bHaB9f1yq85G6Na2lRqlwdw9XqF6Z+SnUu/gmIYm+pKj60jrxqUaKxmifKG7RcTTxxLc
         Pw4w==
X-Forwarded-Encrypted: i=1; AFNElJ82yg9SDyyV4oaau8crf183XUlVrr5iB4SLUwhfJBizc1dBRylMfqgnv0QejXvSyTRRfrtz4flGRiTT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7h59kxNlETlnTL7EUlZHi1xx5k2aiXD4jJBtv2+WYkPPuys81
	ABf4OqwALk+o89r4sYj9SvYvHrdVkgcPjS95Tc4Sm9onlGYmQL/Hgi6vJNDwSZNHiHWAHjHbE4u
	NCpEdDxDi0LZUscuyaflChkQQKjqKGyo=
X-Gm-Gg: AfdE7clyOXOST8aECjviHJhPiymzsXE1i0ksEOixOiQUWP4NQG1PmTLQRJnnWkGmBoP
	AfSNmZkdN1jWnbTR+2zyklztyJc/fmv81hceXtbczTXzryBbatjsYYYbXb6+L6M7pQseZAL7z2v
	74/9ivtMFpeDWvxhfbqwrIEOgl1OV6h+tIXAXvR9powKq2w7krJHmcYoZ+AikTCXSmchOegwdG7
	WJTgixa0GrkYPELOS976nuvr00E0Mhz3eCx0272MezA3AVb4o2qUbSZYCFTylu+cA+Et0p+3mUc
	kjg29FAoXrDv6YENBX1xeoCYexRcoSzGm4NX+dtQf+tDdZApdXF8gwhhuD6MwCOhv5eWFfcAP0T
	WfuZRJ5hBaNAurME=
X-Received: by 2002:a05:600c:8b58:b0:490:3d62:f5e1 with SMTP id
 5b1f17b1804b1-4923341fd3cmr119267995e9.22.1781781830725; Thu, 18 Jun 2026
 04:23:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260615154805.1619693-9-prabhakar.mahadev-lad.rj@bp.renesas.com> <ajJ95P-jxChrTY9w@shikoro>
In-Reply-To: <ajJ95P-jxChrTY9w@shikoro>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 18 Jun 2026 12:23:24 +0100
X-Gm-Features: AVVi8Ce8X_0PfKSaPq_0DdhjnZ-uD3CRtAOp5rNvdMgkWFj4LOFbrRZD_iGqSMw
Message-ID: <CA+V-a8sJoX2CT9fq3nxBdWOEw2vOz6tOFtP5JZAHhxkpG0WVmw@mail.gmail.com>
Subject: Re: [PATCH 08/12] rtc: rzn1: Dynamically calculate synchronization
 delay based on clock rate
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313419-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sang-engineering.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9FED69FBE2

Hi Wolfram,

Thank you for the review.

On Wed, Jun 17, 2026 at 11:58=E2=80=AFAM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
>
> As mentioned in another thread:
>
> >  drivers/rtc/rtc-rzn1.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
> > index 06339adae71f..bc6af59744e4 100644
> > --- a/drivers/rtc/rtc-rzn1.c
> > +++ b/drivers/rtc/rtc-rzn1.c
> > @@ -71,6 +71,7 @@ struct rzn1_rtc {
> >        */
> >       spinlock_t ctl1_access_lock;
> >       struct rtc_time tm_alarm;
> > +     unsigned long sync_time;
> >       int alarm_irq;
> >       int sec_irq;
> >       bool alarm_enabled;
>
> rate =3D 32768 here...
>
Agreed (in the rzn1_rtc_probe, to be precise).

> > +             rtc->sync_time =3D DIV_ROUND_UP(2 * NSEC_PER_MSEC, rate);
> > +
> >       }
>
> ... and move this to the main body of the function.
>
>
> Then, we should have all values always initialized.
>
Agreed, I will fix it in v2.

Cheers,
Prabhakar

