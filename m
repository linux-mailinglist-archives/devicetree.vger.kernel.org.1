Return-Path: <devicetree+bounces-317324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xd22DCwDQ2o2MgoAu9opvQ
	(envelope-from <devicetree+bounces-317324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 01:43:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5196DF444
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 01:43:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qe2M+ppn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317324-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23D00300679A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 23:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8CE3CFF5E;
	Mon, 29 Jun 2026 23:43:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696D6315D53;
	Mon, 29 Jun 2026 23:43:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782776617; cv=none; b=r+bMwHlAlNQTB/I84zkt5Xf7Yej/VlAjUsZGkOFk3cxVRVyD3dUHW/tpeSoL7ArDY8pngvl06lP/MDDAhS8ZoR+SaU22Dk0sKyryD+vE5x0yySf81KAs0BCaXlIO5CdtQesXPfgFpAXKXkBuF3I1iXCU5iwMDnM/6J8SteSlw1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782776617; c=relaxed/simple;
	bh=MoMKnesAl7723DUIMewnSHfad4y06mPzTdapbJ9qY/A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FDk4VBTTTd5rb0uzOHl9oZRmcfhirJ9XiNNvRH6ycDErEoPbh+UaQWMfHTgFJeDPGbzzcdU8s7qmALeO/bAEbH3jOliaaqFXkdbBQ7XMh1o9nAsEHvsOp0uMsGOhcXOMKoGp4GBhnurEG0D1blGTGKvB7BcmldfF4Mp3yNp6glM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe2M+ppn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22C3C1F000E9;
	Mon, 29 Jun 2026 23:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782776616;
	bh=/OjkqCPo1cGwYr2tXP/RciVXObNPz8yMQMnfJck0Tgo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Qe2M+ppnLLQTaO5jVpMUoF1+NETgkS7HDzZ1ssd0NFsBgkD6dLfhnT1VtisBvHnrW
	 dgLO8PzRIitjIWgd5Yb3rjAr3YUfKL9uTIntH/wJ+PAttqpBmR0eXk+n/PXmz29nie
	 Ptk6U3uKSt74FznHBo+DPqksD74ydGLE4rz7GeX0dPgmmhbByUmCYpU+WQ1fjHrRmU
	 7M947e4pSNObN5deB8zS2+Y5ksqf9soiXMjJo0Tlr0Qcy2kj+bTP8Rg0E7J+9vDb/P
	 b/A/X7qnLTf9EPFvR1Lj9zjGwFwJdrADvUjbL0Z7Eiv8FJBtpPlzah9lKLXZiPkJWD
	 MGHJQuT5HMP+A==
Date: Tue, 30 Jun 2026 00:43:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
 linux@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, Michael
 Hennerich <Michael.Hennerich@analog.com>, David Lechner
 <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook
 <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v5 07/12] iio: dac: ad5686: add ldac gpio
Message-ID: <20260630004331.086f4efe@jic23-huawei>
In-Reply-To: <20260628-ad5686-new-features-v5-7-577caadbf7c0@analog.com>
References: <20260628-ad5686-new-features-v5-0-577caadbf7c0@analog.com>
	<20260628-ad5686-new-features-v5-7-577caadbf7c0@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317324-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB5196DF444

On Sun, 28 Jun 2026 15:08:14 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> If wired LDAC, should be asserted when unused (pin is active-low), which
> allows for synchronous DAC updates. This will be used to update all the
> channels at the same time when adding buffer support.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
In the interests of moving this forward. Applied patches 1-7
The rest are tied up with the triggered buffer support and that one
comment from Sashiko so should all merge together.

Thanks,

Jonathan

