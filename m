Return-Path: <devicetree+bounces-326959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QEaBJUh8V2q9PAEAu9opvQ
	(envelope-from <devicetree+bounces-326959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:25:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA7E75E111
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:25:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=BaxY1uPV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326959-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326959-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B80DF30173A7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBA646AEDB;
	Wed, 15 Jul 2026 12:25:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43172.protonmail.ch (mail-43172.protonmail.ch [185.70.43.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36B34657F3
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:25:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118328; cv=none; b=cdkrNDMt0IXiMt75sgrYp3+eEgNP4szcepihh6y60m0NLNqKkPnWvP63qN6TsrILTssYKxZYhSNWttD1rej8bYdjbWhzSdr469/WZTzCepiw0APl1Ea1cw+UbwE3317P1bA7uNr+STJ/LJ4HMQ9lGyzpeqA6Pcn2U5Yc2q6Ioz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118328; c=relaxed/simple;
	bh=/1JCIT7JbkusWM8jBca7pwdiuxeWCU2zSoxU4rAoFeo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=PWF1By1fgkO20h+ehhdPukmOV8TJE5zblFZrEFwyxAtEW0/haIi+E/n2LLfzaGe5ltln0N9WLeZU8U2PYzCnhelK/9iUEpvoEi0w7qvWODbEJppCUK32r0px6dSeKZHzfP6c3UKy7zCMJ5CA6gVXp46Cm0QI6IMx+7Wnk8RBJUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=BaxY1uPV; arc=none smtp.client-ip=185.70.43.172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118323; x=1784377523;
	bh=N9BgjdLpyBUrjx79keV+lQLR9W0VyIb22/dfHemNCn4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=BaxY1uPVG4B3O//Vmhq4WJUS31jbCGjiB2xowPAPE8jTdUjEDA2rjDXW+NvRE7zt1
	 Jyg3BEry7xdLQxJGKBK7GLIzInjAY8MkSILHptselIGKh3Hja5dEbxCcxUkNRPTVCs
	 WYFybGpQSZUE3JcDZoI3Y9F4VGe4/+t3v9iDXZkJ6G8n/Q1TZKw19fclTqMx2WND25
	 efUasinx5bz03X64v+A2pPXgcUIPTRohmgeLy5uoNpRZOVeIG23mYsudzncYa5yIhC
	 2I1S2Amt+hFmiXmqfotQ/ve9E3A6MaPjqPP1HfZvrNjQU2cte/w28rEVpremTis4/k
	 UKKOQudykbIaA==
X-Pm-Submission-Id: 4h0b3h1GxDz2ScqH
From: Esben Haabendal <esben@geanix.com>
To: "Joshua Crofts" <joshua.crofts1@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>,  "David Lechner"
 <dlechner@baylibre.com>,  Nuno =?utf-8?Q?S=C3=A1?= <nuno.sa@analog.com>,
  "Andy Shevchenko"
 <andy@kernel.org>,  "Rob Herring" <robh@kernel.org>,  "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,  "Conor Dooley" <conor+dt@kernel.org>,
  "Nikita Travkin" <nikita@trvn.ru>,  "Maslov Dmitry"
 <maslovdmitry@seeed.cc>,  <linux-iio@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] iio: light: ltr501: Add ltr329 driver support
In-Reply-To: <20260715110046.00001aa8@gmail.com> (Joshua Crofts's message of
	"Wed, 15 Jul 2026 11:00:46 +0200")
References: <20260715-liteon-ltr329-v1-0-31f027051594@geanix.com>
	<20260715-liteon-ltr329-v1-3-31f027051594@geanix.com>
	<4cMgwAFPJkUt759lA15Qqqxi3-vUgf5w6GlGkVubDu_IElhPOsDlIBsxCMlbSiQzapJVNQKOzYN7kip6WIuP_Q==@protonmail.internalid>
	<20260715110046.00001aa8@gmail.com>
Date: Wed, 15 Jul 2026 14:25:19 +0200
Message-ID: <877bmwo2xc.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[geanix.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FA7E75E111

"Joshua Crofts" <joshua.crofts1@gmail.com> writes:

> On Wed, 15 Jul 2026 10:23:50 +0200
> Esben Haabendal <esben@geanix.com> wrote:
>> @@ -1257,6 +1269,18 @@ static const struct ltr501_chip_info ltr501_chip_info_tbl[] = {
>>  		.channels = ltr301_channels,
>>  		.no_channels = ARRAY_SIZE(ltr301_channels),
>>  	},
>> +	[ltr329] = {
>> +		.partid = 0x0A,
>> +		.als_gain = ltr559_als_gain_tbl,
>> +		.als_gain_tbl_size = ARRAY_SIZE(ltr559_als_gain_tbl),
>
> While you're at it, add `#include <linux/array_size.h>`

Will do.

>> +		.als_mode_active = BIT(0),
>> +		.als_gain_mask = BIT(2) | BIT(3) | BIT(4),
>> +		.als_gain_shift = 2,
>> +		.info = &ltr301_info_no_irq,
>> +		.info_no_irq = &ltr301_info_no_irq,
>> +		.channels = ltr301_channels,
>> +		.no_channels = ARRAY_SIZE(ltr301_channels),
>> +	},
>>  };
>>
>>  static int ltr501_write_contr(struct ltr501_data *data, u8 als_val, u8 ps_val)
>> @@ -1531,6 +1555,11 @@ static int ltr501_probe(struct i2c_client *client)
>>  		return ret;
>>
>>  	if (client->irq > 0) {
>> +		if (!ltr501_has_irq_support(data->chip_info)) {
>> +			dev_err(&client->dev, "chip does not support irq\n");
>> +			return -EINVAL;
>
> Shouldn't this jump to the powerdown_on_error label instead of returning?

Yes.

And I will add a similar change for the devm_request_threaded_irq()
error handling where I think we should do that as well.

/Esben

