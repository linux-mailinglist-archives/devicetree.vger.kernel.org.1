Return-Path: <devicetree+bounces-263153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLnzD+j7hGlh7QMAu9opvQ
	(envelope-from <devicetree+bounces-263153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:22:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED4DF718D
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64EA230055CD
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E2632ABC2;
	Thu,  5 Feb 2026 20:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHOgyat8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93491257845;
	Thu,  5 Feb 2026 20:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770322912; cv=none; b=iMoyDMkF39sUaNTHbZquKh3wOhsmJ4dp7SVy4/Q8xTHLpD55SuVr2fECTJ2FC+6ZBJMLPG0ff5tu2KvG9j2KvtTnTwanQ3UOJGqB82BBkUXe0WaertYS4u/5QKkDbRDpEG/nWtP3OnoT1pfR1Hx3amrXfJY8EFAUzHYEvrJOBLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770322912; c=relaxed/simple;
	bh=ev4k0vmwg1ndfY7N6a3n+0scnnNx7bQGCzMDRh8V/GU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Pd38NqWyBY/Y9BLUJUMs0vhedaNREiOy9KY/563cOi9ZaHoajSLfzajgBvbApx26+Zte4Tm/ik/dslo+UCSld6qNtR4gOsyfODn6PRL358En6awtX3BTjrHOK2abg3bZuLIU3ixtO+yv25rcCml1oEBtBxatCZdEN606O5zlr4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHOgyat8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBCB3C4CEF7;
	Thu,  5 Feb 2026 20:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770322912;
	bh=ev4k0vmwg1ndfY7N6a3n+0scnnNx7bQGCzMDRh8V/GU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FHOgyat82kXAQPpBM+I/ImHk1PYB08dB+BCAZvGv4W6d/YYLy5to+yK3n1cgFNmwB
	 26/1VzLh/3gKmJIV95e73wkMtkpIEf+j5H/YwUysZaW3LmnRa7bfoigbza3UvLjXQO
	 7IwCWLP54zL/u/bWjbMZBTKRjgdqOKOX7DS3pU7Tt4YufhXXUn5d5x9rlTvqGmuwfQ
	 kRayvNt6YGCBIO5djSPCTE2yeUk0MisntEOmXKZDIJNU/PdKfp83kiExJg9iJoa2Ce
	 p5jm0b4nDUT60234qFemmYMmTF9r+PKgmJW1Zjb4IlmTqE4Nwc2vXbxDfpIw2fEzBW
	 qPqVyE6uR6ngg==
Date: Thu, 5 Feb 2026 20:21:40 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, David Jander <david@protonic.nl>
Subject: Re: [PATCH v5 00/13] iio: dac: ds4424: add DS4402/DS4404 support
 and scale
Message-ID: <20260205202140.73e9ff90@jic23-huawei>
In-Reply-To: <20260204140045.390677-1-o.rempel@pengutronix.de>
References: <20260204140045.390677-1-o.rempel@pengutronix.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263153-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email]
X-Rspamd-Queue-Id: 4ED4DF718D
X-Rspamd-Action: no action

On Wed,  4 Feb 2026 15:00:32 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> This series extends the ds4424 IIO DAC driver and its devicetree binding
> to support the DS4402 and DS4404 current DAC variants.
> 
> DS440x devices share the same register map as DS442x but use a different
> resolution (5-bit vs 7-bit) and a different full-scale current formula.
> The full-scale current depends on external Rfs resistors connected to
> the FS pins, so a new optional DT property is added to provide the
> per-channel Rfs values and allow the driver to report a correct IIO
> SCALE (mA/step).
> 
> While adding DS440x support, a few related issues were addressed:
> - Port to regmap
> - Reject -128 in RAW writes on DS442x, which cannot be represented with
>   sign-magnitude encoding and could silently program an unintended
>   output.
> - Preserve preconfigured values on probe.
> - Ratelimit read error logging and use device context.

Nice series. Just that one thing about names in chip_info.

Given we are delayed anyway by me wanting to get the fix upstream
before waiting for the next merge window, feel free to spin a new
version. If not I'm fine doing the name thing as a tweak whilst applying
(in a few weeks time).

Thanks,

Jonathan

> 
> David Jander (1):
>   iio: dac: ds4424: add DS4402/DS4404 device IDs
> 
> Oleksij Rempel (12):
>   iio: dac: ds4424: reject -128 RAW value
>   iio: dac: ds4424: refactor raw access to use bitwise operations
>   iio: dac: ds4424: ratelimit read errors and use device context
>   iio: dac: ds4424: sort headers alphabetically
>   iio: dac: ds4424: rename iio_info struct to avoid ambiguity
>   iio: dac: ds4424: use device match data for chip info
>   iio: dac: ds4424: use fsleep() instead of usleep_range()
>   dt-bindings: iio: dac: maxim,ds4424: add ds4402/ds4404
>   iio: dac: ds4424: support per-variant output range limits
>   iio: dac: ds4424: convert to regmap
>   dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
>   iio: dac: ds4424: add Rfs-based scale and per-variant limits
> 
>  .../bindings/iio/dac/maxim,ds4424.yaml        |  42 +-
>  drivers/iio/dac/Kconfig                       |   1 +
>  drivers/iio/dac/ds4424.c                      | 367 ++++++++++++------
>  3 files changed, 281 insertions(+), 129 deletions(-)
> 
> --
> 2.47.3
> 
> 


