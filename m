Return-Path: <devicetree+bounces-280735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFGpNt48xGmMxgQAu9opvQ
	(envelope-from <devicetree+bounces-280735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 20:51:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8B732B805
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 20:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5362D3016279
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4561040149D;
	Wed, 25 Mar 2026 19:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjAqQxvC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209412D97B8;
	Wed, 25 Mar 2026 19:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774468244; cv=none; b=bsKYQw8y7imZw9i1457sfsjcDeje0DjK+N8yPErA4JisPZHskJmd5HlmEwyXUadkEDPuNW+pOiG2fNwSC7TricBGLE4zF54f/ksUh53whowORsvnUgyTCzD/B7FIjvK8KUttuASU/FOwexKuw+JP05smocDtuHC0inJXgbUgTWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774468244; c=relaxed/simple;
	bh=nQeZDZZyzJ0QUyjBgFQ7gwDYcIrAkMQ3Rph7tbZTKlo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oU42s5plDRGHwszXZ4P5k6BRAxOczhTbaHsVDkhfjrdYcA7t6QnijnhcaFrTsSUSKWdJSfU2Gb5Mi0s3DK2QG7+zNLK2dpIryh7feoepocLmUJHnqViPSL47DrvyBl0znxbYYQXMn7mRdqaI9XrskAfoWrHZXeOhh97/EDzx7jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjAqQxvC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95F65C4CEF7;
	Wed, 25 Mar 2026 19:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774468243;
	bh=nQeZDZZyzJ0QUyjBgFQ7gwDYcIrAkMQ3Rph7tbZTKlo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tjAqQxvCFLcjFth3nlCVxoSwTNF0vEyUIEQzZVsUT1ITggGMnoq/vLKQ4UzUAM7L3
	 kFi7cLMVH4jzKUVlZ6GM4CgjT5Ft36vTYjdCwbGtbabnzD5Dcllpiw9R5U2mrNPTFs
	 DdyA0JVE7CahDnsCsISV/Dx3zCNiKyq/bfZJ3uE4l3uzewPDbFClIiKn8d/h6E96m5
	 zLLOasf6g0uq3z4OPyHucXyKqzy3V7z0O0ISUEKq9liBjQBmwSJFzc6xFVkIkYMyjk
	 UBKOJg2yCpPgrfqoT7HmzPuCaIVrW5NGcmIqRa+4zRE1KKUD/nJuQiJwNg1dZD0K0m
	 hb1is6hLVyAYw==
Date: Wed, 25 Mar 2026 19:50:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] iio: adc: ltc2309: add support driver for
 ltc2305
Message-ID: <20260325195035.26214c91@jic23-huawei>
In-Reply-To: <20260325-add_ltc2305_driver-v5-0-e0d29daa54f9@gmail.com>
References: <20260325-add_ltc2305_driver-v5-0-e0d29daa54f9@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[metafoo.de,analog.com,baylibre.com,kernel.org,gmail.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5F8B732B805
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 10:24:19 +0800
Kyle Hsieh <kylehsieh1995@gmail.com> wrote:

> The series add support for ltc2305 controller from 
> Linear Technology Corporation(lltc).
> This is low noise, low power, 2 channels 12-bit successive
> approximation ADCs.
> 
> Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
Applied to the togreg branch of iio.git.

To hussle things along a touch I skipped the normal pushing
it out as testing first (what could possibly go wrong ;)

Jonathan

> ---
> Changes in v5:
> - Split the patch series to refactor LTC2309 channel enums first.
> - Explicitly assign hex values to channel enums based on datasheet.
> - Add support for LTC2305 on top of the refactored driver.
> - Link to v4: https://lore.kernel.org/r/20260311-add_ltc2305_driver-v4-0-bc350d347f33@gmail.com
> 
> Changes in v4:
> - Fix build warning in ltc2309_probe(): initialize 'chip_info'.
> - Link to v3: https://lore.kernel.org/r/20260126-add_ltc2305_driver-v3-0-951349a87f97@gmail.com
> 
> Changes in v3:
> - Modify ltc2305 channel mask to compatible ltc2309.
> - Link to v2: https://lore.kernel.org/r/20251224-add_ltc2305_driver-v2-0-061f78cf45a3@gmail.com
> 
> Changes in v2:
> - Reordered chip descriptions and code from low to high order.
> - Renamed chip info structure to use ltc2309 driver prefix.
> - Switched to i2c_get_match_data().
> - Removed unused variables.
> - Added chip info to i2c_device_id table.
> - Link to v1: https://lore.kernel.org/r/20251223-add_ltc2305_driver-v1-0-dfa0827fd620@gmail.com
> 
> ---
> Kyle Hsieh (3):
>       dt-bindings: adc: ltc2497: add support for ltc2305
>       iio: adc: ltc2309: explicitly assign hex values to channel enums
>       iio: adc: ltc2309: add support for ltc2305
> 
>  .../devicetree/bindings/iio/adc/lltc,ltc2497.yaml  |  7 ++
>  drivers/iio/adc/ltc2309.c                          | 81 ++++++++++++++++------
>  2 files changed, 67 insertions(+), 21 deletions(-)
> ---
> base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
> change-id: 20251223-add_ltc2305_driver-728fa9161bc7
> 
> Best regards,


