Return-Path: <devicetree+bounces-320790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AwwyGBfjSmq7JAEAu9opvQ
	(envelope-from <devicetree+bounces-320790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:04:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F8E70BB38
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:04:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XCydvWeY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320790-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320790-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48537300736E
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 23:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76DA030F924;
	Sun,  5 Jul 2026 23:04:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE67433E7F;
	Sun,  5 Jul 2026 23:04:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783292691; cv=none; b=bj7ZVKdJMhOZnW5A/ex1RF6a1lRFTm8qJ3rUknzNLAuFMQbT413nxVY4f08S5GnwaqpNshczynWF5uUumA05R7o/K6f6wRXd1w0h+gGv3WpmBJxopCky7uXjAUkuaCo/T20PZNFWQp0I/F1TKISvpz11K/UCs3l9VQdlJYHfZbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783292691; c=relaxed/simple;
	bh=Y+4BPhA9/VyraCpKnYp4m13FQvEl9GeFXy5Gfz1PwJg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DeU1XcP9VwiEFEWKcB0kfb26lJ4YYpaclRZ/ESiWgkoWeCwGzdgAbtLu4jX2Xs1blfmfMm+Hw8UEv6Y3/IuG02sYoBB9DIIlB0cS+UQJJFSXI/UrbsSs7YmZgeqtjlfcCwPuo+eD6RgFJvD1OmhLp3XcmHiHhcH2VLTd19Ux8b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCydvWeY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61DF91F000E9;
	Sun,  5 Jul 2026 23:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783292689;
	bh=ffPL0UFrnUQ1Z40lCU566ipIccROYO67WvnBVyYNZdI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XCydvWeY14IYadK6Q1p2izwTDC1cpJJjymXJh8NisKblE0fxFIsSZvN1AWHRjftHC
	 tsVgxfupLAr+xmdbvHmjXay8zSv/8lceEb3EZ2gsorJRDv+7e6Be9qc2XM5Rs5DqXE
	 RIzBZiepND+5Q7KEPWYdapKSpsUAuDtAi9q5lz3LqWXhc0/bbzWxd4aaln5RkXx7Ak
	 F8XUW2Hea8zvkElkW/UJvklhEmrTdvIsgHKmc9immPEEgNCN0c81Y2/l59PZvGksGQ
	 MzIaSC7Jj9sIW253ppXt6cIRHTBXs5RBP14NFkZborA1+4IaKVM0BrgOOeNX3Sq8sR
	 AtKFSzLD2NEMQ==
Date: Mon, 6 Jul 2026 00:04:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Maxwell Doose" <m32285159@gmail.com>
Cc: "Mikhail Lukianchikov" <avermoal@gmail.com>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "David Lechner" <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Michal Simek" <michal.simek@amd.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: iio: adc: convert Xilinx XADC bindings to
 YAML
Message-ID: <20260706000443.13c3446a@jic23-huawei>
In-Reply-To: <DJQTOY88KR1E.1U2393N7KUH12@gmail.com>
References: <d7607a98-f5e1-417f-ad64-d0029c9de662@kernel.org>
	<20260705165620.9818-1-avermoal@gmail.com>
	<DJQTOY88KR1E.1U2393N7KUH12@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:avermoal@gmail.com,m:krzk+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:michal.simek@amd.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320790-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,analog.com,amd.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5F8E70BB38

On Sun, 05 Jul 2026 12:44:46 -0500
"Maxwell Doose" <m32285159@gmail.com> wrote:

> On Sun Jul 5, 2026 at 11:56 AM CDT
> Mikhail Lukianchikov <avermoal@gmail.com> wrote:
> 
> >>> Convert the Xilinx XADC binding documentation from .txt to YAML format.
> >>> This conversion is part of the ongoing effort to migrate all DT bindings
> >>> to a machine-verifiable schema.  
> >>
> >>Sorry, but what effort exactly? Where is this effort documented? Do you
> >>have a mentor if this is some sort of mentorship effort?
> >>
> >>And if this is ongoing effort then don't duplicate:
> >>https://lore.kernel.org/all/?q=dfn%3Axilinx-xadc.txt  
> >
> > Hello Krzyszof,
> >
> > Thank you for feedback.
> >
> > I'm the newbie at Linux kernel developers community,
> > and sorry for my mistakes in sending commits.
> >  
> 
> No worries, we've all done it at some point. If you're looking for stuff
> to do then the todo in drivers/iio/ was just recently updated. There are
> still a handful of drivers also in iio that still need conversions to
> guard()().
Tweak that to 'may benefit from'.  I don't want people doing that blindly
with assumption it is always a good idea! :)

> 
> >
> > I'll answer your questions.
> > I am not part of any official mentorship program,
> > I just decided to try to contribute to the development of the Linux kernel.
> > Yes, it's a ongoing effort, and to be honest, this effort is the general
> > community initiative to convert all DT bindings from .txt to .yaml. I didn't know that work
> > on this file was already underway.
> >
> > Tell me, should I continue working in this case?
> >  
> 
> After looking at the link Krzysztof sent you it looks like it's already
> being done, so I'd recommend dropping this one.
> 


