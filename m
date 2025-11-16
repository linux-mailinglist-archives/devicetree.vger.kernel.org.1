Return-Path: <devicetree+bounces-239095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D7C614FD
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CC103B36B9
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EAA2D7388;
	Sun, 16 Nov 2025 12:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GinTErf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DE42BDC03
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 12:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763297404; cv=none; b=mvLJIYFIBOs3h9m3RtBLzxRN1neNgm68SphNutX4S19UXOkJmDqMsrUJsNFra5Eaj3xVqG/05Zu7NAS109BgRNpDoaL0Femp6FdweMu8VrfdmpZDy7AJR3bb/kzr/0GwcQPTXGLY138AzzC1TI18ghQkFZGr/WVcXI3Pv6gzwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763297404; c=relaxed/simple;
	bh=gx19Zcpd8CDYwPtKOoighCsasUF/1FspQKnjhc/ZnL8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FBTGHBUOmg9zInSh731ZZc+kZNPEE1wUoK2A480XKxTUM1M+RUl5nUPOao/IjVYPAAbAgiNcazxFwGCxrz2352+KRwCkg5p7HPO5aCN0pjfnRU/amJquYYoZ567dNjSmu1OHm5QbJa08LIZ9hI7+D8DVRrOwdwcVTSv1iUpmOM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GinTErf5; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so22867855e9.1
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 04:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763297401; x=1763902201; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gx19Zcpd8CDYwPtKOoighCsasUF/1FspQKnjhc/ZnL8=;
        b=GinTErf5fLa1znIuvRUTgMcM1tG1DFj5iD/HlPj13JUfYXEoenqVm0/B9qsMG6tlyY
         lyUqhbCbMUTS98bw8KokcwsQozwMfG5E6STgE252SnmreboSE2P8G7R+7ATwoMXo3Fib
         4EEVKLPdQPt7qfSH3aM4uU7cSipLth126j6HTv41cR97bYR5PGxN/P1pj/IhrBXi9Dai
         kFo0EUhDbOfrB2/5lmeiyia0MC/QETYvB9CoolrkK/feeHpRasLCyW67m1ME0LlfdCsm
         nDZT9q1pE+BDemfNJQYhRZRnxOmcA93GxNCrb+vU9wWFfR0K6jAxuW1CzhAu7X2VeoLK
         62nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763297401; x=1763902201;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gx19Zcpd8CDYwPtKOoighCsasUF/1FspQKnjhc/ZnL8=;
        b=PGY6Gz8WpNDsv3pUDhshFgB4Ly7JFuwcUg4hOyyGFblM7igowjtpYa1C42f/1yAL0K
         mvqQqWAE9SOXvGXW6CsLXje+mTue/AKssMbXmVjIwbaEyF61DV85NWa1WDydVqX41a8O
         RKbLpEW6d2HfykboEbi+x3IG3ZKCOenp2jxDtxB9UbmF0MIi1OSNBqIu0aA0XtbArXP3
         8WubDWrPKjWgA7iVfD1m1pcAf4ZysSgc+0l2YwDDpy8G+jULR6DkPtzKaethlafI1iZI
         /wtXiB2k0Ud0i5X5Z/LV2YTV94MOP1arJAsgho3Dz8FKv8/f3HKh2nJRVmqclkNc1W9r
         Wobw==
X-Forwarded-Encrypted: i=1; AJvYcCUjQIZy9FK2XUQtsCLp3g00ykdgPiSZxjS6bj8tScGrY0hbjZ6f2k/3gGZVkwDB856IbeUKJu1oz5h8@vger.kernel.org
X-Gm-Message-State: AOJu0YwBQOkBH8vLNazZc/thly025pbpwZn0Nc0sOi0Kkrp57u79A5Gj
	EZ3eMDM5lvlyxd9zh/u3OvYQS2g/W75AOVXwEKCtqo1if5ApRl9L/950UjE+iWTrs9w=
X-Gm-Gg: ASbGnctbet+jzhHhu+onj48k8M8IwyuTYfdFksa3GL88jQM9D8BMLMUXP8op2MlmqRL
	fRPUCSCHPkWl7kZdMoVRADRjMKdPZhnFZS7QzQDXHWeBt00eWDMg71HYSezs8J1FH76diPz2n81
	lRN8YYrQRURmdaueBW9Zbb75T5Lny9aWMHCvFIE6r9NrEtM5DptlNjFetMKeuVylGNc66BleWjt
	dpx9zo0y+MZ86DuczZ1V6HKwVA4XhcV7MfmEuEYYKCRV6XKxjoio0DsN9w7Tc8UcfdgkT81nwZC
	ud4BHggLVmk5mPPUq0m5QD4khBUwqu0vj6R4IdGjMc1pvErG451swjD5HS1lkV8xHquobBrJnrR
	AWbLcKLmbBdSKq03e8jSq6McYUjs5++9qrPF+ehP/tB1pbKLRqKMLcPFmsu7qAZtBpFFYvOsrsm
	qU8x9f+gyVKSAod9p1lKgGEmr0BQ==
X-Google-Smtp-Source: AGHT+IEgM25ruVJqzrK8xcgzvUOa4umu05fH/BlFqcaH2LfSeCBEN0GdEDr4Mmb0LqjvXyPsvNFoCQ==
X-Received: by 2002:a05:600d:486:20b0:471:793:e795 with SMTP id 5b1f17b1804b1-4778bf41181mr85683265e9.0.1763297401071;
        Sun, 16 Nov 2025 04:50:01 -0800 (PST)
Received: from salami.lan ([212.129.81.71])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e2bcf9sm254128125e9.3.2025.11.16.04.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 04:50:00 -0800 (PST)
Message-ID: <845ca29cf8af53bd3093d1dcbea64cc3e04432f2.camel@linaro.org>
Subject: Re: [PATCH v3 09/20] mfd: sec: Add support for S2MPG11 PMIC via ACPM
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,  Liam Girdwood
 <lgirdwood@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz
 Golaszewski	 <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Griffin	 <peter.griffin@linaro.org>, Will McVicker
 <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org
Date: Sun, 16 Nov 2025 12:49:55 +0000
In-Reply-To: <aRklfJtOJ_Cy7tEE@sirena.co.uk>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-9-b8b96b79e058@linaro.org>
	 <20251113162534.GO1949330@google.com>
	 <45ce203c03ec34631a0170baa7e4cf26c98b9cd3.camel@linaro.org>
	 <db7e95dd-2361-4579-b52c-b9556da4633a@sirena.org.uk>
	 <f1e9a9e35f7c16d8db0e39128eb184f3f42b7d02.camel@linaro.org>
	 <aRklfJtOJ_Cy7tEE@sirena.co.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Mark,

On Sun, 2025-11-16 at 01:14 +0000, Mark Brown wrote:
> On Fri, Nov 14, 2025 at 09:56:41PM +0000, Andr=C3=A9 Draszik wrote:
>=20
> > I'm happy to use an alternative approach that can solve my problem, if =
there
> > is something that I have missed. I think the commit message for patch 8
> > describes the problem in better detail than this one.
>=20
> The more normal thing would be to just register one child device for all
> the regulators and then register them in a loop in the probe function of
> that device.

Thanks Mark, I'm aware of that, but that approach doesn't work as
I hoped to have explained in the commit message in patch 8 in this
series, I'll copy it below:

--- snip ---
Bucks can conceivably be used as supplies for LDOs, but currently it
can be impossible to mark BUCKs as LDO supplies. This becomes
particularly an issue with the upcoming support for the S2MPG11 PMIC.

The typical use of the S2MPG10 PMIC is in combination with an S2MPG11
PMIC in a main/sub configuration. Bucks of one are usually used as
supplies for LDOs of either itself or of the other: several S2MPG10
LDOs are consumers of various S2MPG10 bucks & S2MPG11 bucks, and
several S2MPG11 LDOs are supplied by various S2MPG10 bucks & S2MPG11
bucks.

So we have a circular dependency here - LDOs (and potentially also
bucks) of one PMIC depend on bucks of the other.

This means that if all S2MPG10 rails are handled by the same instance
of the S2MPG10 regulator driver, probe of all rails will defer, because
the supplies to the LDOs can not be resolved during probe. The same
goes for S2MPG11.

The result is that neither driver can probe successfully and probe will
ultimately fail. In other words it's currently impossible to mark BUCKs
as LDO supplies.

Additionally, multiple (LDO-) rails may share the same (buck) supply
rail and some of these LDOs might supply important consumers, e.g. RAM.
To stay with RAM, if one of those consumers needs to defer probe before
the rail supplying RAM has probed, the shared (buck) supply gets
disabled and the whole system comes to a halt, since Linux hasn't seen
the DDR-supplying rail yet, and hasn't had a chance to mark the buck
rail as having another consumer.

By splitting all rails into separate driver instances, the circular
dependency is gone, each individual instance can probe when its supplies
are ready. This approach also solves the multiple-consumers-on-one-rail
issue during probe.

The mfd_cell's ::id field is used to inform the regulator driver which
regulator to instantiate.
--- snap ---

Does that explain the problem well enough?

So unless I'm missing something, registering just one child device
simply doesn't work, the rails have to be instantiated individually.

One could register all bucks as one device, and then only the LDOs
individually, but IMHO that approach would make it more convoluted,
not simpler.

Do you have any other suggestions?


Cheers,
Andre'

