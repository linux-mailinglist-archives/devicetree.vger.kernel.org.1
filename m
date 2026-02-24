Return-Path: <devicetree+bounces-268019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IA+QCeHsnWncSgQAu9opvQ
	(envelope-from <devicetree+bounces-268019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 720CA18B546
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 486783045A98
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE12023E346;
	Tue, 24 Feb 2026 18:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m8USWwMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD75D1A9FBD
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 18:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771956584; cv=pass; b=Mkcn52VCEI0VeJ3yh1CjzY+uQL6rBcb5evnb/VeWbzbg1jtxXywKUyRl7cazUdqZWV4UyGqcI58cqAL52b8QQUn4BYp1kI57Wnhmz3E4iosHfQ/CybrcUK9ajjRoJCCAyAfTyj3xRc22DKMVI4l1AnZfTBKmVgYHYsuZWK4tLRU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771956584; c=relaxed/simple;
	bh=vJaYNFnuf2hOYg3Wzwgr911xc+wa92WDutG7dqVnCzM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XOqqpv2jw9yz6NyuS9rR+G70e/7GIBRjKI7rOgLmXIK/paiMn167QgzL6WEPZGNqhojd5xFh+nmqOpWXZ45xsyJ3c79ztxIq9XdAz7UQlKAjPiec/xp6CpJ5uDbv063tVDCFpF2/BOb67Ai9ge1nTsDk1FdtcvNzFAp9lB2Vs+U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m8USWwMu; arc=pass smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65bf302471dso6118371a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:09:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771956581; cv=none;
        d=google.com; s=arc-20240605;
        b=EKsEL9BHLj4ZAiRDPLngdXlbizhBpEYInFs0qPWNPuqkF4L5Lm5PTxgJFOMcux4AmK
         ZVrpTLXPa2/xvUduu7GRjXdHhJS12EctTeqxrzMHVWKPelglr6ImkBsmEl8GS6CNrlQ/
         yxxagAVS7tkRgo2naDe981gM4QI1NIg4UeZ1f6Ia9D8X53q5B9Nk3Y457pou/6AkzTJQ
         gV67YYjYxonmtMiof3ukqJWSkbYa+wLMkXuFF57aZ+DURkn5CXX7aA4LAy78WmV9n+iR
         ep97GSQws335qgFvQwUr1HtiTIq8GmWAQzxNUW3YKf5F5P5PJrjkK/gwclIsFgxUlvbd
         qKAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WkhJvVlHP2HM21UJR495PsQ26BfaGB2+8QVHbNSzt78=;
        fh=IkBKHbEZeGrISjyF8e2u733SrtGKz5Sd/7X2Z1SMvp4=;
        b=A0+WpIyUAkZy4uS5VI/vPbftNz4hqb7VVvW0aOGv4/1Wp115EaOmuiDYtYsjzCcMsN
         2GnURqeDyJfVgPXb5L5/nMZmIfjkGJtH1jfXHe1WgjOq9Feco694Ep6I6E5Cs4KUQbva
         BRX+24l9mhAFonf7gXXWyLOKoTgTDPJEziQByxUwColfuefwfam7hz4KnM7vGULt1peO
         +bLOWJ41Bs0Dyk4T36Jgp+FiG2U7zTfNpGEpB3kCvkuL88rPSIcKV8r7lIT75Axc4Uul
         x+DJM7XOmvl2r7Y2OXhRKZDyN8afKf9dJvEslonP797/Jt/g9TXv6mH1CjAJNVReQKIK
         qCeQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771956581; x=1772561381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkhJvVlHP2HM21UJR495PsQ26BfaGB2+8QVHbNSzt78=;
        b=m8USWwMuu12L2sIRTkemL72vSy2QQjfQ63+kes29z0dSGvgdQQH/OkPoPpf/ls0y1O
         pbS6qgr9hkCg0TX/GJIrla7gSALHSD51qPPGi3qxRbYMh6b5OTP5yxrNbbVeEwVERR5g
         JCKMF2bXR9iq/n3FJZxD9nbs1Dj1KZKsrBDWuV08ZPgkJxPpw7w+jaE+OxF985A2qrJp
         FQL7xJ4un9lW96idpYMigaF9NUwz0dWyX9d5wWgqlai1kxj37S/KrXXKKe0JrNcdKrCq
         NGiyu0ulFxVO7SzaxUiJjl63h6FoILX/hPBAoyEZrsKLdpgJbgAT/HbwmgVDWaTmSpUP
         Cccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771956581; x=1772561381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WkhJvVlHP2HM21UJR495PsQ26BfaGB2+8QVHbNSzt78=;
        b=tfsQkyQ9znnBH7fZ3DAUPupfndNw1ikYAYsOftajXbPAbXQImd3me5Yh7+HitJCSYh
         IwUxlGuCdiDWY6BFhbLVBtpWggsBqPgklgiuRur8ONZKKTs5b+Ca+B1PKr7mHAk/3o3y
         sj8gHvQlkaZEckKDhCSs3TqkcaNvu4tN8N3XBvH02O505M6Gkz/N1p4esDc7wp/uUune
         47eLQjdsLkfVklEb9Od1q4/W9sxkgdJV6/sQBJT7LUdR5eUo4EKgWJIp+uQx4VnFdAhU
         ggho3efbh4HkptTKLEX3ychTeyzmMiaeEpXbKKE8Vwve8eLTDBjpWqZ/PfZMsSdTcmzn
         o1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5x30Ng4cIvX86CAPrPqsAQwx6Jh/v6jds3CkdSh4At9DdsgNQC80thC6BcCnhV7t+RKhZzwcEf3Nv@vger.kernel.org
X-Gm-Message-State: AOJu0YyGL/oyW6wR4WndCBCpfEJQ8Cfpe6uY69/Z0dulvtY7/LeNNhKB
	oLYCfXrsHNG0RVVXyYIOa9MzDuSudAwSS2ITkPqVBBtROhJ5ZkzhsbvKUsvvgC9nondHzODnpwI
	w7YoPJD3E4b/VCkZshmj+sP/ScUhEWxX5/cSZf3SImA==
X-Gm-Gg: ATEYQzzlUyM9r+IiR+ZIt+M3lh4kdr4dz/awT4SoNWmYuKcoIa7bwUjn7eqdcDjG0aX
	y3Zd3jPef9Up7lKUt16ooa5b7tVnVXiM0vPDGHz/Chh016srR52L+QpbxOw0BwNoOQj4I6M35rB
	ibiXQlv+UuGJEvyh9y8qLPB4NT3GzSZGwcoJyJ63VmSO9LWenRx+NqUNmh8ZFp+iZP2BnwTKt5r
	mAfoHiyChcEox9/ml/XmVJzcE/Ry2hlcOmG1EbU2xlrArD/FSLc6R4f7DJi+hovq2OxWDOmBvz8
	xRlb73ZIjAM+FCYhtTIphm0hTuzC1tA5bUHJZqH95Q==
X-Received: by 2002:a05:6402:460c:b0:65f:7498:389d with SMTP id
 4fb4d7f45d1cf-65f74983abfmr1106639a12.10.1771956581270; Tue, 24 Feb 2026
 10:09:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212213656.662437-4-shenwei.wang@nxp.com> <aae7c851-a93b-4d57-a118-43c6e68c4790@foss.st.com>
 <13f9d767-61d6-4e29-b36e-6dcc860ccb11@lunn.ch> <fd257c80-d97f-45b0-a12f-3a1888ba81db@foss.st.com>
 <396819f2-dd00-4c09-8bc7-c035a5282a56@lunn.ch> <PAXPR04MB9185A908F5090F0CA4FF05F78968A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <b21b9ee5-d84e-47f8-86b5-c111ecc3d43d@lunn.ch> <PAXPR04MB918576D67A268E59242964A08968A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <CAD++jLkUVFckLTq=SoivNFoFymhJo4KM=qGmajFcv9T9+7tPmg@mail.gmail.com>
 <b4c422ce-3538-40aa-8bfa-b70f02774b5d@foss.st.com> <nbzdtngifwrx2kyu4tsiwwua5v4i5cjtaotemq5hubaets3bcn@fk25twf5rv6x>
 <PAXPR04MB9185588C1DB71B1FEFA1DEE38974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB9185588C1DB71B1FEFA1DEE38974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 24 Feb 2026 11:09:30 -0700
X-Gm-Features: AaiRm513jfkXhWCicXSxk8RHd0EwNINnculQUiIBSoqo4oda2oGf6hKMPIXU_e0
Message-ID: <CANLsYkxAwgG1WkMRr8EJZuSUnN_jKVnsWhWTakVqhvtMBO365A@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, 
	Linus Walleij <linusw@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <frank.li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shuah Khan <skhan@linuxfoundation.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268019-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,foss.st.com,lunn.ch,lwn.net,nxp.com,pengutronix.de,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,bgdev.pl];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 720CA18B546
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 08:56, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Bjorn Andersson <andersson@kernel.org>
> > Sent: Monday, February 23, 2026 8:43 AM
> > To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
> > Cc: Linus Walleij <linusw@kernel.org>; Shenwei Wang
> > <shenwei.wang@nxp.com>; Andrew Lunn <andrew@lunn.ch>; Bartosz
> > Golaszewski <brgl@kernel.org>; Jonathan Corbet <corbet@lwn.net>; Rob He=
rring
> > <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dool=
ey
> > <conor+dt@kernel.org>; Mathieu Poirier <mathieu.poirier@linaro.org>; Fr=
ank Li
> > <frank.li@nxp.com>; Sascha Hauer <s.hauer@pengutronix.de>; Shuah Khan
> > <skhan@linuxfoundation.org>; linux-gpio@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; Pengutronix Kernel T=
eam
> > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; Peng Fan
> > <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-
> > remoteproc@vger.kernel.org; imx@lists.linux.dev; linux-arm-
> > kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>; Bartosz
> > Golaszewski <brgl@bgdev.pl>
> > Subject: [EXT] Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg GPIO d=
river
> > On Mon, Feb 23, 2026 at 03:24:43PM +0100, Arnaud POULIQUEN wrote:
> > > On 2/22/26 15:48, Linus Walleij wrote:
> > > > On Fri, Feb 20, 2026 at 7:57=E2=80=AFPM Shenwei Wang <shenwei.wang@=
nxp.com>
> > wrote:
> > [..]
> > > >
> > > > Is it generic? If it is not, let's call it "NXP rpmsg GPIO driver"
> > > > and rename files etc accordingly. Maybe it can share code with the
> > > > actual generic RPMSG driver once that arrives, that is more of a li=
brary
> > question.
> > >
> > > I would like to (re)express my concerns regarding the creation of an
> > > NXP-specific driver. To clarify my concerns, ST, like probably some
> > > other SoC vendors, has rpmsg-gpio and rpmsg-i2c drivers in downstream
> > > with plans to upstream them.
> > >
> > > If we proceed in this direction:
> > >
> > > -Any vendor wishing to upstream an rpmsg-gpio driver might submit
> > > their own platform-specific version.
> > >
> > > - If NXP upstreams other rpmsg drivers, these will likely remain
> > > NXP-centric to maintain compatibility with their legacy firmware and
> > > the nxp-rpmsg-gpio driver, leading to platform-specific versions in s=
everal
> > frameworks.
> > >
> > > - The implementation will impact not only the Linux side but also the
> > > remote side. Indeed, some operating systems like Zephyr or NuttX
> > > implement the rpmsg device side (Zephyr already implements the
> > > rpmsg-tty)
> > >
> > > Maintaining a generic approach for RPMsg, similar to what is done for
> > > Virtio, seems to me a more reliable solution, even though it may
> > > induce some downstream costs (ST would also need to break
> > > compatibility with legacy ST remote proc firmware).
> > >
> >
> > Could the virtio-based mechanism be used directly (without rpmsg)?
> >
>
> Technically, yes=E2=80=94it's possible to use the virtio mechanism direct=
ly without rpmsg.
> It=E2=80=99s a bit like talking straight to the IP layer without involvin=
g TCP or UDP: doable, but
> at a lower=E2=80=91level approach.
>
> As for the idea of gpio=E2=80=91virtio, which could be an optional soluti=
on that certain customers
> might prefer. I recall hearing this idea from Mathieu originally, though =
I=E2=80=99m not sure whether
> he plans to implement it.
>

As Daniel pointed out, gpio-virtio is already available and already
includes a protocol that is generic - no need to redefine a new one as
this set is trying to.

As mentioned in a previous email, I understand some implementations
will have restricted memory and need to use RPMSG.  For those cases a
generic rpmsg-gpio protocol should be derived from gpio-virtio that
would only deal with breaking down the standard gpio-virtio protocol
into something digestible by RPMSG.  That was Bjorn's point in an
earlier message.  This will allow to use the same interface and be
flexible in how we want to talk to the transport medium, i.e pure
gpio-virtio or rpmsg-gpio.

Fortunately RPMSG already uses channels to differentiate between
traffic, no need to multiplex everything on the same channel.  That
too needs to go.

> As the chip vendor, NXP=E2=80=99s role is to provide all possible options=
 and let customers choose
> the approach that best fits their needs; we don=E2=80=99t make that decis=
ion for them.

As kernel maintainers, our role is to advise on designs that are
generic, simple, maintainable and stand the test of time.

>
> Thanks,
> Shenwei
>
> >
> > If not, it would be good to derive a generic rpmsg-gpio protocol from t=
he virtio
> > protocol, and land implementations of this in e.g. Linux and Zephyr to =
establish
> > that option.
> >
> > Regards,
> > Bjorn
> >
> > >
> > > In the end, I am just trying to influence the direction for RPMsg, bu=
t
> > > based on the discussions in this thread, it seems others share simila=
r
> > > expectations, which should probably be taken into account as well.
> > >
> > > Thanks and Regards,
> > > Arnaud
> > >
> > >
> > > I just want to
> > >
> > > >
> > > > Yours,
> > > > Linus Walleij
> > >

