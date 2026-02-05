Return-Path: <devicetree+bounces-263152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFu8EjX7hGlC7QMAu9opvQ
	(envelope-from <devicetree+bounces-263152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:19:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5DF7155
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E46B301FA8F
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169A130DD36;
	Thu,  5 Feb 2026 20:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTd4wLr5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E792E1F461D;
	Thu,  5 Feb 2026 20:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770322736; cv=none; b=S9bnAbKL7sZTDREP5CkBA4aubFoFo8/NYgDNpQH4AEBD9Ii8Ii48toPEdUy1hMff9oytaWDwRBT8uMBeQPrWrVtQ+GvPh606uX1A5rKQIxu2TLjZ/yyXMj8z+yXEY4yLXl14enxOS0ZVCNG3hXmXPpu1MtYC9IuMUta1sc3mqbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770322736; c=relaxed/simple;
	bh=ZNub6FKTS7oYBWlJK9WJPTmPOMsXKWDLD4y7vLexFM4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qKn07VCPhg++WTTKjPENQ6NLUxtIhbe0GvQIuIFx+i2E4Mc+vwSfMz6ICiQ30IlN+3S4/2PYPQuqq8hIOIWRfoEz8kncU9ttuOWFNAI15vlQGPRDgSH0oh/m0detMaRuulivkf27yF6Jg3yy2fEGgIftkb+caQ6kKcfRXtexIiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTd4wLr5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40920C4CEF7;
	Thu,  5 Feb 2026 20:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770322735;
	bh=ZNub6FKTS7oYBWlJK9WJPTmPOMsXKWDLD4y7vLexFM4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dTd4wLr5D4KzhMTyDSJCEE6OgS3TF8ZzLz755nQAJq1LtCO9Hbrp9CDiF3fRynoJ/
	 IfhfQoEEIbBTuhUJbdQz5i7537KApl8HK6msA72YUz0azclwkAIAO9Rw7atEDjaKzq
	 UkSi++y528+uAtaYwaKQDzqHZ3MFt6aqT5x608lk6RZf44RBV0cNQNyruggeodhiV4
	 SKKUDYMWHHPLuFh3viCwByga3c36xxQFDwE9pCdYjwTu8oXUyKKW8lbG5lcorm1f2G
	 jBadJ8+O0PXwJ7kFTAl79nUB48LFHt7FtRTUjnQsHy2tpxOAVnMlRJFnhHpt2TVzxK
	 hzUMHcK9Xj0EQ==
Date: Thu, 5 Feb 2026 20:18:44 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Andy Shevchenko
 <andy@kernel.org>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, David Jander <david@protonic.nl>
Subject: Re: [PATCH v5 06/13] iio: dac: ds4424: use device match data for
 chip info
Message-ID: <20260205201844.01efba05@jic23-huawei>
In-Reply-To: <aYNVndcMVRj3JsKL@smile.fi.intel.com>
References: <20260204140045.390677-1-o.rempel@pengutronix.de>
	<20260204140045.390677-7-o.rempel@pengutronix.de>
	<aYNVndcMVRj3JsKL@smile.fi.intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263152-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: B1D5DF7155
X-Rspamd-Action: no action

On Wed, 4 Feb 2026 16:20:13 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Feb 04, 2026 at 03:00:38PM +0100, Oleksij Rempel wrote:
> > Refactor the driver to use device match data instead of checking ID enu=
ms
> > in a switch statement.
> >=20
> > Define a `ds4424_chip_info` structure to hold variant-specific attribut=
es
> > (currently just the channel count) and attach it directly to the I2C and
> > OF device ID tables.
> >=20
> > This simplifies the probe function and makes it easier to add support f=
or
> > new variants like DS4402/DS4404. =20
>=20
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> with a hope that we get rid an I=C2=B2C ID requirement at some point.
>=20
> ...
>=20
> > +struct ds4424_chip_info {
> > +	u8 num_channels; =20
>=20
> If you wish, you can provide name here that will go to ->name field.
> Linker dedups string literals, so it will be just an additional runtime
> pointer.

I'd prefer we did this now.  That avoids any future issue where we get
subtle mismatches between DT compatibles listed and the i2c_device_id
names.

We've been bitten by bugs around this before, hence tend to push names
into the chip_info structure instead of using id->name.  IIRC correctly
the fun starts when we have a fallback compatible.

Jonathan


>=20
> > +}; =20
>=20


