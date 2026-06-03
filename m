Return-Path: <devicetree+bounces-306149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QMt/Jl8IIGq5uQAAu9opvQ
	(envelope-from <devicetree+bounces-306149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:56:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AAC636C23
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:56:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HQSW2Ldx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306149-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306149-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B0DB30958CE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 10:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4904405869;
	Wed,  3 Jun 2026 10:54:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1D93D4108;
	Wed,  3 Jun 2026 10:54:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780484087; cv=none; b=pJbou3Jm+v1KOUwijbAOwsysG+2ZA8FyZAMWzSOveA4ZX+0ptYbG9wndFckqZnzhjqN3svq96CTtbV3tvGfeAsnxKX19A+3AW2FWYFKvGHsUfud7iVAEyLD9W+gKgb5intkhJu3X07UDrFkO14n7yGbRj9uicixR3JXA+iT0IJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780484087; c=relaxed/simple;
	bh=fM3lVMoWRNs3P+Z8HysbOxgd9rT1/qMXGot5Kn+63OU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K2g7D1iwhXvEo7MW/VecZcvDBmAih7hl2DTiP9Vfw7d686aGqaTz++DPUMB0XtVkAeIeNMEQ/xiq1sImgVgniZ9NcKYFVRzOQyHDQsWReeVb/wAcOyHbbYA2Ea3sSQd/OXYnUw8zRNb7TTMyKbaoaDb3+3oYyD2TOP6vLQnSkQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQSW2Ldx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1F31F00893;
	Wed,  3 Jun 2026 10:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780484086;
	bh=SagKm0C+mLWJRzJo5yiqGPYEzpXXDxrNz+NqSO0sSkI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=HQSW2Ldx1czdQqiE7HC/gkmWGHkfmTYFYXNaiWQvZ6EjgnO0ie/05RIvQKVxVBJy0
	 XF/4JSGJOLFl7v279nSVV1lNBRsI4f4j8u3chSS8XHnoxuLsK35/E1lOEjkJhNDCOH
	 206TAL/orTdY2J0VL7dDpZ8YKUMz3GNdi85tL15QRjjHMc9oGsiywJiBXM7yd3o4m0
	 00V+BGUJ9KxTn3Y09VHbsE5By6mq0GMNh2QNs8Z6+tigJFmsW2zHf7MA0jEfB9X7D+
	 sH39PUUzBVLq02+W/2mzWZJd/BhK2kNxOQgE8+G6jkn5fUYqIQ5CKfCph+3NOTwoj7
	 xUh0WlhBTPc+Q==
Date: Wed, 3 Jun 2026 11:54:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Taha Narimani <tahanarimani3443@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, David
 Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "open list:IIO SUBSYSTEM AND DRIVERS"
 <linux-iio@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 RFC v3] dt-bindings: iio: adc: add ad7816/7/8 digital
 temperature sensor / ADC
Message-ID: <20260603115439.4f0a2264@jic23-huawei>
In-Reply-To: <20260602-pork-unsightly-fd091c88e5a3@spud>
References: <20260530165917.55767-1-tahanarimani3443@gmail.com>
	<20260602-pork-unsightly-fd091c88e5a3@spud>
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
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:tahanarimani3443@gmail.com,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306149-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,analog.com,baylibre.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,checkpatch.pl:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4AAC636C23

On Tue, 2 Jun 2026 18:05:44 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Sat, May 30, 2026 at 04:59:15PM +0000, Taha Narimani wrote:
> > Document the Analog Devices AD7816, AD7817, and AD7818 digital
> > temperature sensor and ADC bindings in YAML format.
> > 
> > Please note that the driver for this device is currently in drivers/staging.
> > This patch is sent as an RFC to clean up and standardize the device tree
> > bindings prior to any major driver refactoring.
> > 
> > While reviewing the AD7816/7/8 datasheet to correctly document the properties,
> > it was noted that the current staging driver attempts to request a 'busy' GPIO
> > for both AD7816 and AD7817. However, the AD7816 is an 8-pin device and does
> > not possess a BUSY pin (only the 16-pin AD7817 has it). Therefore, in this
> > binding, busy-gpios is strictly limited to adi,ad7817.
> > 
> > This resolves the checkpatch.pl warnings regarding undocumented DT
> > compatible strings.
> > 
> > Signed-off-by: Taha Narimani <tahanarimani3443@gmail.com>  
> 
> This seems probably okay, but I'm not willing to ack it as an RFC.

You will get to see it again in the series moving the driver out of staging
so wait until then.

Looks fine to me as well.

