Return-Path: <devicetree+bounces-267064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JMZFl3CmGlHLwMAu9opvQ
	(envelope-from <devicetree+bounces-267064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:21:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD23916A997
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0181130209D8
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2292C2F0661;
	Fri, 20 Feb 2026 20:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xr7d4Qoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EEB2E8DFC
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 20:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771618894; cv=pass; b=nj0Blh30afj6ZtjxWduGSsiR5lo2/ixEbdOl0TR2m5wbhPi4GQcvgpn0tLuuao4HY3SbsIo5j70KVGRqeMSUYSyjgVQF41VFd029kbOlORAic5Tk+1ZNUiC1+hnmPtbYqhsxs61/GEQGGqNP6tM7MlvF9pM/nLVlRJuxxuouqLo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771618894; c=relaxed/simple;
	bh=/MQjPz3AFp9hJYRg6RaO7nd5l2K1vMZNwkI3RJIJr/s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m6CxCu+W2wsI5z0oRhsWHNEffQXBqJ7mLsOlQIuG63kAPEBP/hom4jMwM1x7F/FlfjxWGAweUr7X3I5uZuotPGcepKscqdfDpErugTxcld5k+2DmZqNH8Cc8AiGS4yYVPmcHXnS9565Ck5IA5+5tS1q/YXypnw23DGNtHoxPMt0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xr7d4Qoj; arc=pass smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-65c01595276so3747586a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 12:21:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771618891; cv=none;
        d=google.com; s=arc-20240605;
        b=Kz/0ZNE/P10aB7WjzCkBaC/rl7fp/QUXecCu8HMYTZLaz86l5yKEnRRO3JytqJs8uS
         g26t97BxjFK5YWU3khAhl05lr51LbW56fmZDyG3xYG2RS+3Z+FLDww3LToY06gQZriyY
         SCC/zWlNDOMrpe4PIKzcRXmaHY5wChD2WP2kUTQbnarsGQgY8MJnPUFAAYT5Iw6ICPt0
         nkqRIIoU8vY3gjFz9l4G+x1VZQ2+yr2OpUwKAS3vIWnWwY+EFhMgwEa1O/u9nSf2yiWG
         Y178SHToJYJjQvL3Rj2y1SEKEvQFLeO/cSEzE9Ppu613T8NtK2ZXM4w+B6K0z5qpN6WR
         4p/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CWagENeZ05MKy23i76GqV0Kg7bzJ28L44P2dnAeTMoc=;
        fh=k3mGTcf7n7DI7FPi3RkEgrmWeYseAiJv9nxWtw2IMEE=;
        b=Nw+lTKzPpaKvXVDI/w5p9p8kcT4o+J2t/LmU5VvnITnaplIUPYzvcPLDA6mZ9hltGq
         UQf/X6XIiX6/wxhtsS/J2fn5dLIJNBtf9sDG7UUdjbfGdn0l9NLLhlZAWuKfSb+TeKXt
         M/AHjz4SEPSW7JRKXCWUKPgT3dvekOxZMuzLbyxbTLNNqJnA39s11ZPzDJg5DpRisTcY
         gumxfQ7zlDNB8+Vl+tXckqaW4Ef43NguNbdLJe0w8Iwxc8/GB99u2NSenrHaWCoxeiGX
         dOkyFZ0ghehgLJKmdIumBIDP0cboFATNI0aM3zujX3NAhZtZIPNGfde1L9UUm1Vtw677
         TOsA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771618891; x=1772223691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWagENeZ05MKy23i76GqV0Kg7bzJ28L44P2dnAeTMoc=;
        b=xr7d4QojHNK9zrZ4MdKJDM+AOXyfokLc1h1vWUBN4t7a2bELnxrwhtSV/I2cLP5bpE
         suKa13NWnDXp+yh/+ONEY1Y3rWxnViFCF0591/RaiS44zOL9E3TQEs16A29oEdifuHr8
         Gzjs8RPM8dimS4NrQ6agpqQvyBseoev18AeXXnnZC00SnZJYnjSoTo2Ue5dT/U5tTRUU
         hsWfCGdSyGWLFYmcfdI/F+m5R7RZo36s1S7cto11L8G4CQzpC1WKPStx4Jn/P83ZOTgM
         U2RrsDITF+ZktPG5JB9xKYtrN98GDujYTnrGjjI6881VnFwiAS5DtBPI7DEI0EhE3aD1
         /Q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771618891; x=1772223691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CWagENeZ05MKy23i76GqV0Kg7bzJ28L44P2dnAeTMoc=;
        b=CvMTevMsQJ6wA0CYQKnTw9JmN5Ksi+fkSh/CtijH5A6OUCIuNHtJM5WzI1YBo3oK/7
         ZRFQrSAb2nsROecip5V9F6KF/qO5DTEKYds55UDL4x1tyOVYdTyfVAepyEeMSEmdDPQO
         9VY4Eg31/+0BgaMPSbj6ZMps4XmeYX4vBw9Md8Bpo3mjMwk5YvvCXgiRA8JaOtfsb7MA
         7MCbwW7RsaZ3vTPh/HcKUXCEkar9IJF8zYb4Q8bnOxlXigUrL4hycCeiNQtphiPW4eid
         I0DWGwGGiSdScDRQsYx9EqfNJ/eYvb+2kNNTg6bOPSOPGEnj177n+odHrX4+oBOxVfN4
         KMQg==
X-Forwarded-Encrypted: i=1; AJvYcCXPoKRPEXqR0QyabWIB+GQ6dBIIifHl9XmKijvxdQ6yKo6HBzyB3BSTsKV+9IMRsLOWaLf1rzUCh75V@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuto8WR5fUnNU9YlUCQiM1sD0FrkZ0gG7Wc5tEt2sd3rIDO8kI
	maqxOrVkvRKQ9e4JDmxeI2Hd6XFk4c0lTJOqJ0+2yt1sakYtsuW2+XLge6eTV+bi1VUFZdUrmvI
	hY1l0aq76+lwloVk9d/F4qc1KO5FbYQGBe/5uYmV6aw==
X-Gm-Gg: AZuq6aLzEC5NU89eDRPuW5Ul04+Qxkodr+9kNn3vmbWtZn68bLfjfMkbBSlshDshtYF
	w2e2/GVeGzYudBxiQ8EV84LR4B30MsM6gmXenFFmmvqO5kcW2J2CxWAfolhn6O1qBI4nbaFqQww
	ASP5WGdZ5sw6xGQdq2rtdyMCMEzB8X48hsfDbuy3iZJl3crzIgjdQsyQHgyB9lWFdT7+FNofXeX
	72o5Q85A3oQNqDy11EB1UqL3KHMTLaLInHHwI7QlSnjJk7i9tWVEx1AhYiJfNvmvOGnzReL8W8Y
	8FY5PJV0wKObOLW/odSiv5SM2tUtIKmAz+EmXCcryw==
X-Received: by 2002:a05:6402:3547:b0:64b:83cb:d943 with SMTP id
 4fb4d7f45d1cf-65ea4ebf346mr552702a12.6.1771618890856; Fri, 20 Feb 2026
 12:21:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212213656.662437-1-shenwei.wang@nxp.com> <20260212213656.662437-4-shenwei.wang@nxp.com>
 <aae7c851-a93b-4d57-a118-43c6e68c4790@foss.st.com> <13f9d767-61d6-4e29-b36e-6dcc860ccb11@lunn.ch>
 <fd257c80-d97f-45b0-a12f-3a1888ba81db@foss.st.com> <396819f2-dd00-4c09-8bc7-c035a5282a56@lunn.ch>
 <PAXPR04MB9185A908F5090F0CA4FF05F78968A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <b21b9ee5-d84e-47f8-86b5-c111ecc3d43d@lunn.ch> <PAXPR04MB918576D67A268E59242964A08968A@PAXPR04MB9185.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB918576D67A268E59242964A08968A@PAXPR04MB9185.eurprd04.prod.outlook.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 20 Feb 2026 13:21:19 -0700
X-Gm-Features: AaiRm50Kkz1w5MRtvgIyG-wO2YfHNIXg4Tb2fsX628-LWgxPRUtWFjuasLWIuqk
Message-ID: <CANLsYkx0Wubx0FiV8ypEnHcstXc2shfEc+87Jn_p=RDe8ib1xg@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] gpio: rpmsg: add generic rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Frank Li <frank.li@nxp.com>, 
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267064-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,foss.st.com,kernel.org,lwn.net,nxp.com,pengutronix.de,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,bgdev.pl];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DD23916A997
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 at 11:57, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Andrew Lunn <andrew@lunn.ch>
> > Sent: Friday, February 20, 2026 11:45 AM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>; Linus Walleij
> > <linusw@kernel.org>; Bartosz Golaszewski <brgl@kernel.org>; Jonathan Co=
rbet
> > <corbet@lwn.net>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Bjorn Anderss=
on
> > <andersson@kernel.org>; Mathieu Poirier <mathieu.poirier@linaro.org>; F=
rank Li
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
> > > If there are concerns about specific design elements within the
> > > driver, I=E2=80=99m happy to address those, but redesigning the hardw=
are/firmware
> > interface is not something this series can solve.
> >
> > Then i think you are limited to using the out of tree driver.
> >
>
> Thanks for the feedback.
>
> To clarify: is Linux moving toward supporting only fully open hardware pl=
atforms? I=E2=80=99m
> not aware of any rule that prevents a company from upstreaming a driver t=
hat implements
> support for an existing hardware/firmware interface.
>
> Given that, I=E2=80=99d like to hear from the GPIO subsystem maintainers =
=E2=80=94 @Linus Walleij and
> @Bartosz Golaszewski =E2=80=94 on whether a driver that works with the cu=
rrent hardware/firmware
> design could still be acceptable for upstream inclusion. My understanding=
 is that upstream
> generally supports existing, real-world hardware as long as the driver me=
ets subsystem standards.
>

The HW can't be changed but firmware can.  It is not realistic to
think upstream can accommodate all the quirks happening in downstream
trees - this approach simply doesn't scale.

As if I wasn't clear enough already (along with many others), the
current implementation will not be merged upstream for reasons that
have been amply discussed.  You either comply with the comments we
provided or use the existing out of tree driver.

> Regards,
> Shenwei
>
> > Sorry.
> >
> >         Andrew

