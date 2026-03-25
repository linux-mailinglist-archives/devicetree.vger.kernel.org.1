Return-Path: <devicetree+bounces-280351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPuHD6a5w2nctgQAu9opvQ
	(envelope-from <devicetree+bounces-280351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:32:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BCB323061
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D378C300C329
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0751139526F;
	Wed, 25 Mar 2026 10:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEQrkKEz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83C3391859
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 10:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434268; cv=none; b=jIAz3BOoDwj5sBNo0k23kc5Bqkx0QfK3p1G5Axdtlcf3oscfgs5GgV92aQw2NArd4aDcy8+PWZZjlIxZrn5rBnEZUGa20H+HUHeWMDJutYuzB9hntN6M+j0PKjHUOyWhtcdIIxjKlcua8u/Y/fxOVeDU1DFt99yKrXVQ7VixEwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434268; c=relaxed/simple;
	bh=DQWAjarmAEIR12f+N5kRbQsMdjqbb6LUni3iSD57BnA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ClPlOi6eh61dlZNY1UBVSwBTRnNjVSyDa0ydAUQTDr0iG2P+DyQw2EpA4fQ/lNgG+yuvaULIVuZ2NuDm1KPDBKyPRDhQDYD2c5F70iRdGGmn3QEkaaS+Kc9Omn2yuSeIK9asZS2zQK7cdJSjRfngxhaszxkf159h2sQ7x9eOsnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEQrkKEz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D7DBC2BCB4
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 10:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774434268;
	bh=DQWAjarmAEIR12f+N5kRbQsMdjqbb6LUni3iSD57BnA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bEQrkKEzQxDGG2rRmwMwwzN1PH2pUmPqRZOMb7514c+kC5R2sVannMWLpgjySJZVe
	 mbV+bE/TRHqs/ehwzg20kGw9dIaKov4LyqKeOg0JDwDgW84Bk2zOWCJ1thteWuIOKm
	 pTPqPAOOCcooBmPBydv03XO29dmd9KDMaPDzA9ew2sjRhNnTsRP0TnNTwZy88n83Z4
	 cuY6nJP5L7IN/VFyC6ZCF+m8vEywUbh4PWv31+bbtWma0mkO9TK79+f4Jf0FBzGmtc
	 dVefH9QRJYh1T75xstMx0JOCKh6AZjLbU93SSPNR2iI/no0EE4DyOjTxgZclmdErBM
	 DNK+jKKaLi7Bg==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-38bf47a6f02so18016001fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 03:24:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVsHi9ioH2zl/YTkrwCWXVV3PdHOvkXMPhmMOXGcvxmMj3SYIdZElg3vJj3Fwu9E2IPWTAcu/+4TEJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YxPlP/GYec8VoSt8aViYHjkZkTbpqWe5Yvth1RqpR2o7bt4CNs5
	VotlndO1hJmaf7glCoGRN5ig30ffAtcWncRPN6FNP3I73qWNvjJguy272X5O36LVCgbxwt03c+i
	xtDgTrryUR9Wtcm8/Uupsb1tnBVe9dH09LQkt8YZ6oQ==
X-Received: by 2002:a05:651c:1582:b0:38b:f0f0:e3cd with SMTP id
 38308e7fff4ca-38c4320ca56mr8033351fa.36.1774434267149; Wed, 25 Mar 2026
 03:24:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1774283146.git.dan.carpenter@linaro.org> <CAD++jL=mz5jOLkq6GA6ZWzfGfFnVOLTCoXKOd38YHj2UZaZ9ww@mail.gmail.com>
In-Reply-To: <CAD++jL=mz5jOLkq6GA6ZWzfGfFnVOLTCoXKOd38YHj2UZaZ9ww@mail.gmail.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 25 Mar 2026 11:24:13 +0100
X-Gmail-Original-Message-ID: <CAMRc=Me2pyUshFZeXqWU0DF2eTkNjNvVDUP3LL9DO0ZfMOPJDA@mail.gmail.com>
X-Gm-Features: AaiRm50nqwnVr1AXzgZWPax30PNVL9bQfMa7oruOnr447gPeYYgO3Xx86_ZMZ5g
Message-ID: <CAMRc=Me2pyUshFZeXqWU0DF2eTkNjNvVDUP3LL9DO0ZfMOPJDA@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] gpio: introduce a GPIO driver for SCMI
To: Linus Walleij <linusw@kernel.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, AKASHI Takahiro <akashi.tkhro@gmail.com>, 
	arm-scmi@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Cristian Marussi <cristian.marussi@arm.com>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Khaled Ali Ahmed <Khaled.AliAhmed@arm.com>, 
	Michal Simek <michal.simek@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280351-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,vger.kernel.org,kernel.org,arm.com,lists.infradead.org,intel.com,oss.qualcomm.com,amd.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D4BCB323061
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 2:11=E2=80=AFPM Linus Walleij <linusw@kernel.org> w=
rote:
>
> On Mon, Mar 23, 2026 at 8:01=E2=80=AFPM Dan Carpenter <dan.carpenter@lina=
ro.org> wrote:
>
> > This basically abandons my earlier attempts and goes back to Takahiro
> > Akashi's driver.  Here is the link to Takahiro's patchset:
> >
> > https://lore.kernel.org/all/20231005025843.508689-1-takahiro.akashi@lin=
aro.org/
> >
> > v6: Fix a build error when CONFIG_PINCONF is disabled
> >     Fix the dt-binding subject and my email address
> >     Use pinconf_to_config_packed() instead of PIN_CONF_PACKED()
>
> v6 applied to this immutable branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/=
log/?h=3Dib-scmi-pinctrl-gpio
>
> Then merged into my devel branch for next.
>
> Bartosz, you might want to pull it in!
>
> Dan: thanks for your efforts to fix up the remaining hurdles and
> bringing this to completion! Sometimes the last few % of work are
> the hardest.
>
> Also thanks to Takahiro for this idea: it worked out just like you
> imagined.
>

Pulled, thanks!

Bart

