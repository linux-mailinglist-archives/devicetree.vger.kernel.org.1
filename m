Return-Path: <devicetree+bounces-303506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLzcIJMZF2pR4QcAu9opvQ
	(envelope-from <devicetree+bounces-303506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:19:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3EB5E7A1F
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 198A43077DF1
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 16:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F625426D09;
	Wed, 27 May 2026 16:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eT0IKcwR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575AA407598;
	Wed, 27 May 2026 16:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779898394; cv=none; b=owBOvF3j7vUEv6vx1iREWFxKxs8s2Z0kUy13z7yVPne2nZonDBABZVz5O/up7R2pA7I7bvshHYetuGaNu7HfWdABN/cJw+S2qxtXUvlBuxQxFkLhXKaclsZnMYsEC1qqmhAgOoNfK1eBej+Sth0o0YMtIdyXGNnT3blbIghFm7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779898394; c=relaxed/simple;
	bh=iaOWztjPPQ5U1w8gMPiG/oo6M6LqHPIpj+27VF9fm7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aYMwQ4HsFzZQelpPeaMQY6nh7KvUl1EDnZgDchTFeqfT+xlwKU8YOQu+c1LWvE0PR8IhCl9z/cMARyHRNObAR1YVV4qkPxRUVVFH/+mzgREEGwhvf7NOE1+u8YRJ2K0gsv0393if/70BIfb9Wgm6Zt3qt2JfKydRX6Z7Z1kCsQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eT0IKcwR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 277BA1F000E9;
	Wed, 27 May 2026 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779898391;
	bh=+WhpF85NQTDydAEMHYGS1EBnOjCjpp45ffoVno1/Wyg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=eT0IKcwRxdu3nF36hv1ef9FelUfjxc5R7j4GkvTCLsUVFa1KVMm9e66GBOHd5LcYo
	 aZqDNeZz+EozCbWGs3BTd3Jnjxs3ff7FaxhFGCBC14lMhtz/jDZ/ka69h1xhS/56Ij
	 LDpYly5r1PKv+w8IP6cCSYQM7/xUov5rDTKty5ZLZMHXHzdzioXqqw4xPx2oaz3E+W
	 mxSlmfwp/PDlrMnEe6x56PefxO64BN+DZNZQfjM219P1blz3+a6XA8xuMrBlqZf2ab
	 GvQiMEMmfW8bj4jlswSnhme1b1yZnKHze7pcJrMpIG4CiLCxCWqwpJFicKz/DPdUYV
	 ZzARPBNPfnVhw==
Date: Wed, 27 May 2026 17:13:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 2/9] iio: temperature: ltc2983: Fix
 reinit_completion() called after conversion start
Message-ID: <20260527171300.6a344ad3@jic23-huawei>
In-Reply-To: <20260525164013.118614-3-liviu.stan@analog.com>
References: <20260525164013.118614-1-liviu.stan@analog.com>
	<20260525164013.118614-3-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303506-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 2A3EB5E7A1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 19:39:29 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> reinit_completion() was called after regmap_write() initiated the hardware
> conversion, creating a race window where the interrupt could fire and call
> complete() before reinit_completion() reset the completion.
> 
> Move reinit_completion() before the regmap_write() to close the race.
> ltc2983_eeprom_cmd() already does it in the correct order.
> 
> Fixes: f110f3188e56 ("iio: temperature: Add support for LTC2983")
> Signed-off-by: Liviu Stan <liviu.stan@analog.com>
Applied the slow way (to the testing branch of iio.git) but marked for stable.

