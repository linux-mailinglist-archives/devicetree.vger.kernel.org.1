Return-Path: <devicetree+bounces-311945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0ryqKeD1L2p7KAUAu9opvQ
	(envelope-from <devicetree+bounces-311945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:53:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE7F6866D0
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:53:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mB6RCqnZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311945-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311945-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8BA4C301C9CD
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB193F4DD9;
	Mon, 15 Jun 2026 12:39:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB033F484A
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:39:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781527191; cv=none; b=F9z24thO6i+Kati9V8J1yyhJNWV5Mq9wxx+kp87UwWTufHxpiUbW6ug7B0fDz8hj1yLUyTt7E7ExgByRGSvgiHgIcAXLmN+JPdbA1i4oexMd7ZabVgN219xKBRdLlPBitvM8nOT1OXYyRKVdbG4Jym31Wo7v8l+wzZ2ZxpK/ZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781527191; c=relaxed/simple;
	bh=bdVJ07nAphri25imo7nsgUcUOxQUMPVUR1ipYfK5CAM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=By/kHfWgBXYkFZa5iT/bLXRCZ9WxLF7C/tuCP3G5AJSv81Tw512kidDOlCaI27CTtYL18atvkeKSKBQrNhnd45QOQfu8ABu3GeKrAHgV17nIALFL1LsIIwouvX9zp+F/KDkU/eGeNvpRTreHPl+pd9Jj4eBjCbnFe6TXPEi1zHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mB6RCqnZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F8911F00ACA
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781527190;
	bh=3HwTZQKx3R5nFnMVQD0UnmKNX6QPykatQ2QJBzWpTuA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=mB6RCqnZfoadfqstkbuB9D1ya4jx79P2NLyAKcqY+vTLunCOaY9NQk5dmAoVYTJos
	 Jemaf1tWnPw/tXIi5yvdpBarHzXLfLJN6VRS6efYEWF+SrH/stpK/uNX6pi7AB5YMb
	 GiK5oCaYzPRaV9uameTmnUMlA+/i76Us/dazyR21H3DG3ztnbCHszDXHVGPlJ0lNTZ
	 CIRxjNTaCBCTfTQxPGF0HXEx5ZH770t0kwvEk7I/rAhZkStRZt3h9O1NuAMU+5vMkY
	 wz0SVGSzvVopRGio0InHmHDU+F+q32rCiNvZPhlm9IsUlzwZTTYOrh4wSt/d/YV4mB
	 eFeeNksEBdTTw==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aa69131836so3073133e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 05:39:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9AtaZA8cqp0IhOym92NSelOslZ1jTaI/sNCnM+HNF70omW5ZhhxlUU87zEvjyV/lpuIhd10c24jZYZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxxmNabmsosVE4GdOzGjIfqvEy+L7uCBnOCk/dnawp94MyVGsdX
	dkrcKOV+LFsaQNP24iuNHO0xTbFbKeBMErWA0teVR7In1N7LTIz4lEbHY04MVBFrI3gYMRtGVX6
	ZTjuoAeSke3vv7bMhnnDqDvMI2B07iw4=
X-Received: by 2002:a05:6512:378b:20b0:5a3:f25f:cc30 with SMTP id
 2adb3069b0e04-5ad30dc0e51mr2166732e87.32.1781527188817; Mon, 15 Jun 2026
 05:39:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20260612161148epcas5p33904df90bd840d20a6db05622aaa28b8@epcas5p3.samsung.com>
 <20260612163020.411761-1-alim.akhtar@samsung.com> <20260612163020.411761-6-alim.akhtar@samsung.com>
 <CAD++jL=mQUJCqVyqK746UdkZCsO+2oeO1MCQM4F-_pSOfpuQuA@mail.gmail.com> <007a01dcfc9d$aa94dd60$ffbe9820$@samsung.com>
In-Reply-To: <007a01dcfc9d$aa94dd60$ffbe9820$@samsung.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 15 Jun 2026 14:39:35 +0200
X-Gmail-Original-Message-ID: <CAD++jLkX99o8B0jhU1UA8XtMPtEfJwvGHvi6fQ34HXdkN+hE+Q@mail.gmail.com>
X-Gm-Features: AVVi8CdJ5ZyduBAkMoAW0l1uu5Q5fbJbTHlK3_-9P33lCUu398OHaVFPyVfP_0w
Message-ID: <CAD++jLkX99o8B0jhU1UA8XtMPtEfJwvGHvi6fQ34HXdkN+hE+Q@mail.gmail.com>
Subject: Re: [PATCH 5/5] MAINTAINERS: Add entry for Samsung Exynos8855 SoC
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: krzk@kernel.org, peter.griffin@linaro.org, robh@kernel.org, 
	conor+dt@kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, hajun.sung@samsung.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311945-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:krzk@kernel.org,m:peter.griffin@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:hajun.sung@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,samsung.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CFE7F6866D0

Hi Alim,

On Mon, Jun 15, 2026 at 10:05=E2=80=AFAM Alim Akhtar <alim.akhtar@samsung.c=
om> wrote:
> > On Fri, Jun 12, 2026 at 6:11=E2=80=AFPM Alim Akhtar <alim.akhtar@samsun=
g.com>
> > wrote:

> > > +F:     arch/arm64/boot/dts/exynos/exynos8855*

^ Actually what I am requesting...

> > If you really want to single out a single platform like this (and I don=
't even
> > know if that is a good idea... how do you keep the big picture in mind?=
) you
> > should probably want to also add a wildcard for all the
> > 8855 device tree files.
> >
> I am also not sure, just followed what was done historically, other Exyno=
s8855 file will get added once they
> are posted for review, e.g. clock driver.
> Let me discuss with Krzk during OSS (Mumbai) and see how do we handle thi=
s or any other better ways.

I just misread the patch, dunno why, probably too little coffee.

Sorry for the fuzz.

Yours,
Linus Walleij

