Return-Path: <devicetree+bounces-232241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B961EC15CD4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39EE31A66476
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8146826A0DD;
	Tue, 28 Oct 2025 16:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="KCJnb7ZS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA0E21CC59
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761668463; cv=none; b=SOPoL+eVAZNYorg4dPX5VFbtxx8RhPojKNpdcovYLIxqRiygT++Jq2RXv+oTh2CDzg7tgVhDHIJIXb4aVU6HKprRrxWfjvoUyBshuisI/4Cw9oQHI8L2ZAzgP7kmUaDDnRR1VInc2QnODpWVYsjZJJGO5OR054fCfpf3dF5LmWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761668463; c=relaxed/simple;
	bh=z2gmi5A9sdMhOB9KSfIt5x+ZIc+vGxgYVE8BEvo1P9M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=pCQ+jDzESaAPkiEnZKa96bp21A4PoRtMTvNxV9ToL6z6rfSIN6o20FrsGPmEHyl/GYSJHr4yuqusnFTKiyd7+8edNyRd+zp7Ub2LcZrzeDZBLGmWrZ9uKEte/Ts6jsru4Y5RrZ2raLJNr/XLE70NfjE0JRWlta/auQTiC9aIRLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=KCJnb7ZS; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0F70DC0BEA7;
	Tue, 28 Oct 2025 16:20:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 40FF0606AB;
	Tue, 28 Oct 2025 16:20:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9DA7B117AC2F7;
	Tue, 28 Oct 2025 17:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761668457; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=z2gmi5A9sdMhOB9KSfIt5x+ZIc+vGxgYVE8BEvo1P9M=;
	b=KCJnb7ZSsKeg4swbTs2c0T6Pg/HT+ws9lWd6MSyvhjUkIl7Q6MhbEsl/T5zqMTATMJAGI9
	+AcpEDrRx7loU39FZ/fM5LH4yxFqJEosm00gIDdispbgdjpE/aNCbUav02KAsaG7c/13jT
	gHJlm6Ea/1YV8NSJFbWcHzUCpgyxgxXA+eJqksWBGk7EGFLut/Z+1aKbo7ZoudjToC6PZD
	84QFupfTS0L5VwpWLPVW++YDZoKCVqr1YoCfSWwVb74hAa8l3PV0jvm0EF+nnf5eTXRLwk
	taILyzLFkR6wt/aT5PaWbxhw9YFJwIHQJ6TnsjXc8197SvOSRQ9kkhOJdF/7rQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Chen-Yu Tsai
 <wens@csie.org>,  Samuel Holland <samuel@sholland.org>,  Richard Genoud
 <richard.genoud@bootlin.com>,  Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@baylibre.com>,  Wentao Liang <vulab@iscas.ac.cn>,  Johan
 Hovold <johan@kernel.org>,  Maxime Ripard <mripard@kernel.org>,  Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-sunxi@lists.linux.dev,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/16] mtd: rawnand: sunxi: rework pattern found
 registers
In-Reply-To: <6097267.MhkbZ0Pkbq@jernej-laptop> ("Jernej =?utf-8?Q?=C5=A0k?=
 =?utf-8?Q?rabec=22's?= message of
	"Tue, 28 Oct 2025 16:41:48 +0100")
References: <20251028073534.526992-1-richard.genoud@bootlin.com>
	<20251028073534.526992-8-richard.genoud@bootlin.com>
	<6097267.MhkbZ0Pkbq@jernej-laptop>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Tue, 28 Oct 2025 17:20:41 +0100
Message-ID: <87v7jz576u.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

On 28/10/2025 at 16:41:48 +01, Jernej =C5=A0krabec <jernej.skrabec@gmail.co=
m> wrote:

> Dne torek, 28. oktober 2025 ob 08:35:00 Srednjeevropski standardni =C4=8D=
as je Richard Genoud napisal(a):
>> On H6/H616, the register ECC_PAT_FOUND is at its own address, and not
>> part of ECC status register.
>> So, introduce the pattern found register offset in sunxi_nfc_caps, along
>> with its mask.
>>=20
>> Also, introduce a non compile-time field_get() because FIELD_GET() and
>> u32_get_bits() don't work with non compile-time constant.
>> https://lore.kernel.org/all/cover.1761588465.git.geert+renesas@glider.be
>
> Urls should use Link: tag and be placed at the bottom.

I was about to apply, so I'll fix this while applying.

>
> Code itself looks fine.

Thanks for the review!

Miqu=C3=A8l

