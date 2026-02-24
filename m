Return-Path: <devicetree+bounces-268071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMp6Fv0MnmkfTQQAu9opvQ
	(envelope-from <devicetree+bounces-268071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 21:41:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C928518C733
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 21:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8741A3095545
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 20:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5CB933A9CE;
	Tue, 24 Feb 2026 20:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mQ8LvFOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F4833A9DB
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 20:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771965688; cv=pass; b=AlBqx5VORVtzsG70hX1oMlb8QYaZhHxnt/3zLLTk0NPEaxQi+EirsJx3bEjj3VL1Ph9InubWb0K6f1gV46RcO8BocQvGrYjpXZz6rRDfQaqUd+hPWbrrXHsPeAWbNkw8/H8ntjgY4khR19IaRWG2ghlifUXLaMAL1dMr4kX3ArQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771965688; c=relaxed/simple;
	bh=yQX0QV89eK/kIauizaoFSMFTRwwcZcFoSH8ajXCreAc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hW5FsaIN94K+Zqrcyl/Mo9W0kkZnxOxIi5h9jGXN89OeoPCGPxeowHHDhQTW5ROkeE9DbKn8/ZCvRB/cF6S5VF0oAxkFCAa0DuB6pDdTE0a3AiCQTcGyrmtCzdpnXrmIjF7hsGXnfXTEHraLLRqVwasikF9ah3yu92LsEkP+uVY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mQ8LvFOb; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65f812e0c83so573567a12.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:41:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771965685; cv=none;
        d=google.com; s=arc-20240605;
        b=lWgUWejLxUU2QSVsgRiw6niQQSNw8pp6kJ1g2nYlauVVkOxwIfL0fja0LXEsjvKwKD
         qVMqQsEwgjYcnfvyE2Yv6wd9SHjMOWZ+96q66jDzx9YZ1MAodS1Rq0GEmjBdqAujDSP1
         zzLliewd8HXtwlxQM2RFFiQ2MIqWdFSPwyuhR+BKnp2qfZ3sXDKQunwhfdeiOeexNXno
         ei9W0Osm2H3qjLYmn25oLhB1V665bhKKW9n++Djr4sXFIbVologeRcKw8EsrJhByHOi/
         Po84fXeXzNv/2GsUYy6HQYqJTNf1znuYJ1PFvP++Ksdro5hvAAT/xc0x6OLAtXDM/z8X
         62OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jNTWDS7xIFhn1fF1oG2R6ESQZOh+RfZzpB4H54GaJZw=;
        fh=6JjO2x5XI964uZznT5PHa7mUjG1MvquxaKO4lgbFyqY=;
        b=kPBaMYQq/CExHbt6DWV6QYgdCHTMTu5TZdbG5tH+Eh+c6uAB9P0yYD+67eG4uLlCV7
         9xlWjq1RMfw0XfM54Z8LZ4COY3yxIFWjDjH54VIwZUqfAInCkGadu8XzLmIW7DoAN0BN
         dZWiiNeropP8MPTDrDUWEu4TjkTZwyyDNIh4sPs3VIBIUdHfmGQoNc8SAASSUE7qLh1T
         uYj4gTceHYHS993bo2lc/p2XVjQe66jsJ9ix4KWcQLRbJPO0NNgDhh+dQtrTnXBB5L5U
         jGeq563ZMeuPnZZa63TqiDt4F3wONAaKN8AMPpRVCbvo1WOIqyC4vBcA2rst/oLpgtLf
         B5Pg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771965685; x=1772570485; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jNTWDS7xIFhn1fF1oG2R6ESQZOh+RfZzpB4H54GaJZw=;
        b=mQ8LvFObUuow31ueMI8aqGT+RwGqq0zODxHA7oWqksMnmvsIh6UdtVrGYipQ6EV8/I
         tFMoK+hob+WHT7o8obShVEDumfOCGIZDEkPARNqapQcp6xYFW1H/YIWy54xLqSbUvKAY
         mZf0aM04kndH84rwOufh3RzcKPGbYKQfKZrYfYBHVGFPWi9NhdBRGjxYfJ3dCcvPFsg1
         N5Anl6p41FkyI+hbDbItCOwPlgjmWqZ0r6TjKin0N3xEaTDqTuTb2Lv4vz2IZNsNy6nG
         tTQUC/G92HWSwLAbgHyOVGPoJ9Fq5Z+4V6RKK4fTI4GgYV7n5Q+is0Sq9xSMIKEmS8uk
         Hr+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771965685; x=1772570485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jNTWDS7xIFhn1fF1oG2R6ESQZOh+RfZzpB4H54GaJZw=;
        b=N3jrS08MR33UQM0fBkaXWAwgBfG5qDvUoOgP6wWnljN42tDHYRPDa82sO2z46hHmtq
         RcpP/316n+WD9EgVu4BQWX+QhRvIiTvLd+5FW4q5w+r7T1yz/BtTsu+G8vdSSb4N/zhr
         pw1VFQiwXy+e/aOCusF5beVOv68cZ3DDVHvuA7hv0IBaLFRogFA+sp0Nz51jih9YONpz
         RuCpKB1kEUuem3bO8gAamXDMkk6ccBpA94kSW06zJmqUkrOxY8ezxAhGuK+ij4xhdjdO
         VKs6mGopOvbt3KymxvMjjw2wsQMmq84BRUaT9PRpioE4GjpDoQcoTLuoR4p3yxsZ3kBi
         2CwA==
X-Forwarded-Encrypted: i=1; AJvYcCUUj7Tx3iu1BQQsXiHfeT+j5k3o3MzwQP2jRisMN6jKdeVvCJLz1QF69n5u/dH3swK5UXeyOkxoBTF7@vger.kernel.org
X-Gm-Message-State: AOJu0YyzYtZxTsKQBtfYHNzcktq6h9dlwE9Eikx98Npea+/u+84LIM/D
	siGLOHlxokB++2rnCE9aRWCKSjIRspbuMGGWEWGpRlTKk9D9VPIRiXAAk+myZtjvuY/cK0Uot07
	lFY7s282BBomt5K4QNjaWXkItKYgUM625F0kml7N44Q==
X-Gm-Gg: ATEYQzyUYSepTbvePghKc/0/hjSDUezjtQuO5oFqnhcRWLybeibFfhkWxCyWK5hAgfK
	BZiz76UrZ+zKNoHieQeWyDzORSLu6E3OEdbYsHAVs/jotcpq4LBFNsIOqdr06j93ktgecFCoB/i
	utrMxhTZuCqZ9xU4kTqrr2U13utV5WPRpr1M13HZ+LEIo1BS2R1uRxMnbhdQRFeS7QIypz1mgY/
	AXKixl2ubW6KhhNM+M1iAnxwKq5FtNLIMKmI5Bt91B3s4p/j92kZXJBv3F5HKnmCbGPbSm6w/aI
	J69KDcnONiYJBpls2geqruKAWZQyoFNaNkRGGpWlAA==
X-Received: by 2002:a17:907:9716:b0:b8e:a024:1c81 with SMTP id
 a640c23a62f3a-b908196fb16mr909923266b.7.1771965685358; Tue, 24 Feb 2026
 12:41:25 -0800 (PST)
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
 <CANLsYkxAwgG1WkMRr8EJZuSUnN_jKVnsWhWTakVqhvtMBO365A@mail.gmail.com> <PAXPR04MB91851D3DA6A92669CB5926A18974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB91851D3DA6A92669CB5926A18974A@PAXPR04MB9185.eurprd04.prod.outlook.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 24 Feb 2026 13:41:14 -0700
X-Gm-Features: AaiRm52VdXaBjzzgmhpL1Z-g6JThXBNeXEmeramA_XtCruXiC4qI2WpVWSvfPHI
Message-ID: <CANLsYkw-8ERXy3v8Sv55Cpq=+41Toez3EjLMbENAkavvr8STeQ@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268071-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C928518C733
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 13:17, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Sent: Tuesday, February 24, 2026 12:10 PM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Bjorn Andersson <andersson@kernel.org>; Arnaud POULIQUEN
> > <arnaud.pouliquen@foss.st.com>; Linus Walleij <linusw@kernel.org>; Andr=
ew
> > Lunn <andrew@lunn.ch>; Bartosz Golaszewski <brgl@kernel.org>; Jonathan
> > Corbet <corbet@lwn.net>; Rob Herring <robh@kernel.org>; Krzysztof Kozlo=
wski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Frank Li
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
> > On Tue, 24 Feb 2026 at 08:56, Shenwei Wang <shenwei.wang@nxp.com> wrote=
:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Bjorn Andersson <andersson@kernel.org>
> > > > Sent: Monday, February 23, 2026 8:43 AM
> > > > To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
> > > > Cc: Linus Walleij <linusw@kernel.org>; Shenwei Wang
> > > > <shenwei.wang@nxp.com>; Andrew Lunn <andrew@lunn.ch>; Bartosz
> > > > Golaszewski <brgl@kernel.org>; Jonathan Corbet <corbet@lwn.net>; Ro=
b
> > > > Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>=
;
> > > > Conor Dooley <conor+dt@kernel.org>; Mathieu Poirier
> > > > <mathieu.poirier@linaro.org>; Frank Li <frank.li@nxp.com>; Sascha
> > > > Hauer <s.hauer@pengutronix.de>; Shuah Khan
> > > > <skhan@linuxfoundation.org>; linux-gpio@vger.kernel.org; linux-
> > > > doc@vger.kernel.org; linux-kernel@vger.kernel.org; Pengutronix
> > > > Kernel Team <kernel@pengutronix.de>; Fabio Estevam
> > > > <festevam@gmail.com>; Peng Fan <peng.fan@nxp.com>;
> > > > devicetree@vger.kernel.org; linux- remoteproc@vger.kernel.org;
> > > > imx@lists.linux.dev; linux-arm- kernel@lists.infradead.org;
> > > > dl-linux-imx <linux-imx@nxp.com>; Bartosz Golaszewski
> > > > <brgl@bgdev.pl>
> > > > Subject: [EXT] Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg
> > > > GPIO driver On Mon, Feb 23, 2026 at 03:24:43PM +0100, Arnaud POULIQ=
UEN
> > wrote:
> > > > > On 2/22/26 15:48, Linus Walleij wrote:
> > > > > > On Fri, Feb 20, 2026 at 7:57=E2=80=AFPM Shenwei Wang
> > > > > > <shenwei.wang@nxp.com>
> > > > wrote:
> > > > [..]
> > > > > >
> > > > > > Is it generic? If it is not, let's call it "NXP rpmsg GPIO driv=
er"
> > > > > > and rename files etc accordingly. Maybe it can share code with
> > > > > > the actual generic RPMSG driver once that arrives, that is more
> > > > > > of a library
> > > > question.
> > > > >
> > > > > I would like to (re)express my concerns regarding the creation of
> > > > > an NXP-specific driver. To clarify my concerns, ST, like probably
> > > > > some other SoC vendors, has rpmsg-gpio and rpmsg-i2c drivers in
> > > > > downstream with plans to upstream them.
> > > > >
> > > > > If we proceed in this direction:
> > > > >
> > > > > -Any vendor wishing to upstream an rpmsg-gpio driver might submit
> > > > > their own platform-specific version.
> > > > >
> > > > > - If NXP upstreams other rpmsg drivers, these will likely remain
> > > > > NXP-centric to maintain compatibility with their legacy firmware
> > > > > and the nxp-rpmsg-gpio driver, leading to platform-specific
> > > > > versions in several
> > > > frameworks.
> > > > >
> > > > > - The implementation will impact not only the Linux side but also
> > > > > the remote side. Indeed, some operating systems like Zephyr or
> > > > > NuttX implement the rpmsg device side (Zephyr already implements
> > > > > the
> > > > > rpmsg-tty)
> > > > >
> > > > > Maintaining a generic approach for RPMsg, similar to what is done
> > > > > for Virtio, seems to me a more reliable solution, even though it
> > > > > may induce some downstream costs (ST would also need to break
> > > > > compatibility with legacy ST remote proc firmware).
> > > > >
> > > >
> > > > Could the virtio-based mechanism be used directly (without rpmsg)?
> > > >
> > >
> > > Technically, yes=E2=80=94it's possible to use the virtio mechanism di=
rectly without
> > rpmsg.
> > > It=E2=80=99s a bit like talking straight to the IP layer without invo=
lving TCP
> > > or UDP: doable, but at a lower=E2=80=91level approach.
> > >
> > > As for the idea of gpio=E2=80=91virtio, which could be an optional so=
lution
> > > that certain customers might prefer. I recall hearing this idea from
> > > Mathieu originally, though I=E2=80=99m not sure whether he plans to i=
mplement it.
> > >
> >
> > As Daniel pointed out, gpio-virtio is already available and already inc=
ludes a
> > protocol that is generic - no need to redefine a new one as this set is=
 trying to.
> >
> > As mentioned in a previous email, I understand some implementations wil=
l have
> > restricted memory and need to use RPMSG.  For those cases a generic rpm=
sg-gpio
>
> I think this highlights why some customers prefer RPMSG over using virtio=
 directly. Limited
> system resources and development efficiency are the two main reasons that=
 make RPMSG
> a better fit for certain environments.
>
> > protocol should be derived from gpio-virtio that would only deal with b=
reaking
> > down the standard gpio-virtio protocol into something digestible by RPM=
SG.  That
> > was Bjorn's point in an earlier message.  This will allow to use the sa=
me interface
> > and be flexible in how we want to talk to the transport medium, i.e pur=
e gpio-
> > virtio or rpmsg-gpio.
> >
>
> Once the remoteproc chooses to expose devices through an RPMSG=E2=80=91ba=
sed protocol,
> deriving another driver from gpio=E2=80=91virtio doesn=E2=80=99t really m=
ake sense. That would essentially
> mean re=E2=80=91implementing parts of RPMSG yourself instead of using exi=
sting one.
>

We clearly do not understand each other.

> > Fortunately RPMSG already uses channels to differentiate between traffi=
c, no
> > need to multiplex everything on the same channel.  That too needs to go=
.
> >
> > > As the chip vendor, NXP=E2=80=99s role is to provide all possible opt=
ions and
> > > let customers choose the approach that best fits their needs; we don=
=E2=80=99t make
> > that decision for them.
> >
> > As kernel maintainers, our role is to advise on designs that are generi=
c, simple,
> > maintainable and stand the test of time.
> >
>
> These adjectives only make sense within the context of a specific use cas=
e. Different
>  systems have different constraints, and people choose a particular solut=
ion for valid
> reasons based on their requirements.
>

You can choose whatever solution you want, that is entirely up to you.
Maintainers can also choose to reject that solution for mainline
Linux, which is exactly what we are doing.

> Please respect their efforts.
>
> Thanks,
> Shenwei
>
> > >
> > > Thanks,
> > > Shenwei
> > >
> > > >
> > > > If not, it would be good to derive a generic rpmsg-gpio protocol
> > > > from the virtio protocol, and land implementations of this in e.g.
> > > > Linux and Zephyr to establish that option.
> > > >
> > > > Regards,
> > > > Bjorn
> > > >
> > > > >
> > > > > In the end, I am just trying to influence the direction for RPMsg=
,
> > > > > but based on the discussions in this thread, it seems others shar=
e
> > > > > similar expectations, which should probably be taken into account=
 as well.
> > > > >
> > > > > Thanks and Regards,
> > > > > Arnaud
> > > > >
> > > > >
> > > > > I just want to
> > > > >
> > > > > >
> > > > > > Yours,
> > > > > > Linus Walleij
> > > > >

