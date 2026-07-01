Return-Path: <devicetree+bounces-318209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tMmIIl/HRGpk0woAu9opvQ
	(envelope-from <devicetree+bounces-318209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:53:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D22BD6EADF0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:53:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=j2DcNdYd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318209-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318209-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B40C0302A054
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7951D3BED30;
	Wed,  1 Jul 2026 07:50:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1533B6C01
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:50:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782892211; cv=none; b=rrPgs0R6YBYXRw/GK6Ro22bGfTdG/XQpMPQoy1ieHaPtX+t4UWSwULbaL0Pz3Lu5CgUOY2sPPz3Tq3FeceRe87KIQlOZgCGMHSQeMSTrAOzltSJW5Zgp3oTdE6iPE35SFdieUqlP6qGicydSByfM7HZCQK1XTk9MvWpWG6xCtX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782892211; c=relaxed/simple;
	bh=dx1O75jqKMARjEbw4xneNk7aG4r2yfuJioWVDgA4Lp0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PLfg5qDWuzs3DBG8DLVVxJdQvCmoMmJm+pOKrWscPw6udRpOdi2BrdGUI+tQ8kIW1mWDbdpFNAl7n4BE9JudUidAJZwL5eR0qKy5noHAiYG2BmlxudC7gGephegeaWccfgDD44EwBQpKTV7etsnSsuLamft2+StaSWXUPZrItwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2DcNdYd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FC4B1F00AC4
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782892210;
	bh=dx1O75jqKMARjEbw4xneNk7aG4r2yfuJioWVDgA4Lp0=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=j2DcNdYdADDJu+D3REmFeOGs5cw/wVRDCtpWACgDuKjqrOOLm2M4y5DN23480AZ1+
	 vdbHErYbb2InVSGUdjvxGuamb9E+yPRsBVjhCVCiXyKaOxignCJrhJJ+sCulqREuj2
	 JZxBrhhL8M2bGYMeKhgzQoRiW4OCC68fnAE12cgLy2w3/40ruKeTVw7/mHAPBTxFXf
	 MW3RIJTIy2p3JhCAAmsgmH3SkxgQcdyu4tbovvpGx2pi551ZcwYmfASnsbjb8Sy5Am
	 u1HrtfRlZkc2/+8NNkXk6EuHohgDRlqIW5fn+gweETKl82yJ2QHYPWNfZQsisst93n
	 oOXXzvbJsIhvQ==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-39b14a7e53aso3399271fa.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 00:50:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrD7J6k6zGBDBoh/+vXe4EUqCFoztKgAAWANdYbwD3ofurXbRXBg4SImXKFveW7PPapYInL0iA67gp4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7G3nbV6YvudpFw9GQzsCYz/oUiGs62QFZITWSneGeiQViljhE
	PbNNdWHWHY7TFlN9MuKedLCLliMVxDuMvv4JQ9m/7uPDubW+bYCxmNPpRSTEa+awY6LiEJj+Y/H
	7HAl9RyHKQkNhUpEiPcPAcKOsblRGIwrCA5vOrfjmEw==
X-Received: by 2002:a05:651c:1593:b0:39a:f75e:a147 with SMTP id
 38308e7fff4ca-39b340d882dmr882981fa.34.1782892208779; Wed, 01 Jul 2026
 00:50:08 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 00:50:07 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 00:50:07 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260630125403.546375-6-khristineandreea.barbulescu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260630125403.546375-1-khristineandreea.barbulescu@oss.nxp.com> <20260630125403.546375-6-khristineandreea.barbulescu@oss.nxp.com>
Date: Wed, 1 Jul 2026 00:50:07 -0700
X-Gmail-Original-Message-ID: <CAMRc=McZEw4P3LS9HzaS5W1qonGWkdvCYaEvFiY8m6sm98aWjA@mail.gmail.com>
X-Gm-Features: AVVi8Ce65ZHRsdwHuQE2lkQelFQAZtLRoTaOMFpaCpGigaio81APEbQW62eUHbc
Message-ID: <CAMRc=McZEw4P3LS9HzaS5W1qonGWkdvCYaEvFiY8m6sm98aWjA@mail.gmail.com>
Subject: Re: [PATCH v12 5/6] pinctrl: s32cc: implement GPIO functionality
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318209-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khristineandreea.barbulescu@oss.nxp.com,m:aruizrui@redhat.com,m:clizzi@redhat.com,m:devicetree@vger.kernel.org,m:eballetb@redhat.com,m:echanude@redhat.com,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-gpio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:s32@nxp.com,m:kernel@pengutronix.de,m:vincent.guittot@linaro.org,m:linusw@kernel.org,m:brgl@bgdev.pl,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chester62515@gmail.com,m:mbrugger@suse.com,m:ghennadi.procopciuc@nxp.com,m:larisa.grigore@nxp.com,m:lee@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:festevam@gmail.com,m:aisheng.dong@nxp.com,m:ping.bai@nxp.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:srini@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,pengutronix.de,linaro.org,kernel.org,bgdev.pl,gmail.com,suse.com,linuxfoundation.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,mail.gmail.com:mid,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D22BD6EADF0

On Tue, 30 Jun 2026 14:54:02 +0200, Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> said:
> From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
>
> The updated SIUL2 block groups pinctrl, GPIO data access
> and interrupt control within the same hardware unit.
> The SIUL2 driver is therefore structured as a monolithic
> pinctrl/GPIO driver.
>
> GPIO data access and direction handling are implemented using the
> gpio-regmap library backed by a virtual regmap. The virtual regmap
> translates the gpio-regmap register model to the underlying SIUL2
> registers: MSCR for direction, PGPDI for input values and PGPDO for
> output values.
>
> The existing pinctrl GPIO callbacks are used for the request/free path:
> they switch the pad to GPIO mode on request and restore the previous
> MSCR configuration when the GPIO is released.
>
> This change came as a result of upstream review in the
> following series:
> https://lore.kernel.org/linux-gpio/20260120115923.3463866-4-khristineandreea.barbulescu@oss.nxp.com/T/#m543c9edbdde74bdc68b6a2364e8b975356c33043
> https://lore.kernel.org/all/20260504131148.3622697-7-khristineandreea.barbulescu@oss.nxp.com/
>
> Support both SIUL2 DT layouts:
> - legacy pinctrl-only binding
> - extended pinctrl/GPIO/irqchip binding
>
> Reviewed-by: Linus Walleij <linusw@kernel.org>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> Signed-off-by: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

