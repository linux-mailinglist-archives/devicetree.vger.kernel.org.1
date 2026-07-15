Return-Path: <devicetree+bounces-326874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j1NOGPpwV2pLOAEAu9opvQ
	(envelope-from <devicetree+bounces-326874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:37:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48575D9B5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:37:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=WivdqmVR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326874-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326874-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A9EA3095F45
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57C6448D0A;
	Wed, 15 Jul 2026 11:35:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43171.protonmail.ch (mail-43171.protonmail.ch [185.70.43.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5485A439009;
	Wed, 15 Jul 2026 11:35:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784115353; cv=none; b=ayuCeH6snwqBlw+2vdnjpPOLsMaeu2kSiwknFuTQC7E4ZcSqfbfRxvW+jyBlgQ1fDPPKo/7ZA6UwIjQmqNBoC2vVd0hkDqvgDM/BbXKBAXIIgfnsFx3+Qp5MMw8QywYuJLCuX5axp63non9PXHMaRUvn9AXLTdFXpbPJrirLlE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784115353; c=relaxed/simple;
	bh=yT4MVaeHQyVB9n7HPL6AfqF1C+RpXIhVO9zZ6Cm40H8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CAbKtWTxhgbLFZsJFJthaMuXV0YGeg4vDi4ZM8k16x6vSqdZB6pMY9YvnzCONo1GcILyfhP0WCPxcpwz3e/jM9dUdPRxLYPFVrYkamavecHtUnU5xAui2AUopTd6XgsNvzDXufX7L4IeIyDjTmkNJCOpuGN23tqjJt2NDaC5gcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=WivdqmVR; arc=none smtp.client-ip=185.70.43.171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784115345; x=1784374545;
	bh=vw3eiTKMHGN7k4PMh36M/r9ybREuXYjf2b40KXBhK/Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=WivdqmVRvHFbAn38DXpzLC7sX7CWeBTekytpnuzBvc00Q+iguxkcgzbnlWgef+vu+
	 bglbMc7zXb0CplLO1OHgPO+WCD8G56S/pQYnT6kxIIfetJ6lvxXp0lMIdZdmX9wg91
	 QgbVkacaMfxnjTa2HO5U7eL1TVAXU1uuMn9sPArmOn8W8eNoi5PECZydtaQuYDvBgG
	 yqN7JcUMtLpeCx6Zjla7CLOM59JKB9Qvxn67LmNdQbp59X4iDz/MGTjZy6IB2eA4v6
	 IxWDiwfXX2Kl8WhHSjugZFwkuEJmYvW+viWkEBWyNZE+nxnmzklp7vJeRBU4C/Ejso
	 npXDT1LBpg3QQ==
X-Pm-Submission-Id: 4h0YyQ5SdGz1DDL5
From: Esben Haabendal <esben@geanix.com>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>,  "Lars-Peter Clausen"
 <lars@metafoo.de>,  "Rob Herring" <robh@kernel.org>,  "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,  "Conor Dooley" <conor+dt@kernel.org>,
  "Martin Kepplinger" <martink@posteo.de>,  "Sean Nyekjaer"
 <sean@geanix.com>,  "David Lechner" <dlechner@baylibre.com>,  Nuno
 =?utf-8?Q?S=C3=A1?=
 <nuno.sa@analog.com>,  "Andy Shevchenko" <andy@kernel.org>,  "Martin
 Kepplinger" <martin.kepplinger@theobroma-systems.com>,
  <linux-iio@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: accel: mma8452: Allow open drain interrupt pin
 configuration
In-Reply-To: <aldH3vtk_eKh6oCC@ashevche-desk.local> (Andy Shevchenko's message
	of "Wed, 15 Jul 2026 11:42:06 +0300")
References: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
	<20260715-mma8452-open-drain-v1-2-b1dd2a440c60@geanix.com>
	<cA7m1VgJxkr39GAxpnMPw9PVIKX2TR8Ju4Q0m6L2SxS_jJNITfZ6AA5LOeMIK0jGFXaUptY1_vPhDd_imWw5FQ==@protonmail.internalid>
	<aldH3vtk_eKh6oCC@ashevche-desk.local>
Date: Wed, 15 Jul 2026 13:35:41 +0200
Message-ID: <87ldbco582.fsf@geanix.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326874-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,geanix.com:from_mime,geanix.com:dkim,geanix.com:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE48575D9B5

"Andy Shevchenko" <andriy.shevchenko@intel.com> writes:

> On Wed, Jul 15, 2026 at 10:07:39AM +0200, Esben Haabendal wrote:
>> When sharing interrupt line with other chips, the interrupt pin most
>> likely needs to be configured in open-drain mode instead of push-pull.
>> If this is needed, you must add drive-open-drain property to the
>> device-tree.
>
> ...
>
>>  	if (client->irq) {
>>  		ret = request_threaded_irq(client->irq, NULL, mma8452_interrupt,
>> -					   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
>> +					   IRQF_TRIGGER_LOW | IRQF_ONESHOT |
>> +					   data->open_drain ? IRQF_SHARED : 0,
>>  					   client->name, indio_dev);
>
> Why do we care?

Care about what exactly?

We need to add IRQF_SHARED flag in order to allow shared interrupt, and
we should not add it when using (the default) push-pull mode.

> The (hidden) problem this will have in the future is that the IRQ core
> will splat a warning in case that other shared IRQs might be
> configured with different flags. Putting that flag conditionally makes
> it a mine field for the users. Instead just unconditionally add that
> flag and we will get reports as soon as there will be a user that
> shares the same interrupt pin with some other devices which drivers do
> not use the same settings.

If we add the IRQF_SHARED flag unconditionally, it will be set also when
push-pull mode is enabled. I don't see how the kernel will be able to
notice that that is not going to work. If you have another device that
uses IRQF_TRIGGER_LOW|IRF_ONESHOT|IRQF_SHARED, it will not work with the
MMA8452 device when configured as push-pull.

> Also setting to _LOW in the flags unconditionally is a (historic) bug.
> The problem is that we might not fix it without breaking the existing
> users which omit that flag in DT.

Ok. So let's leave that as is for now.

/Esben

