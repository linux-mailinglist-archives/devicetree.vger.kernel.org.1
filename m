Return-Path: <devicetree+bounces-318975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xEThJBCwRWqlDwsAu9opvQ
	(envelope-from <devicetree+bounces-318975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:25:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF2B6F2993
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:25:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jN43zJEl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318975-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318975-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1D8A302F700
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 00:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA10E22256F;
	Thu,  2 Jul 2026 00:25:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15A42264C0;
	Thu,  2 Jul 2026 00:25:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782951948; cv=none; b=KmQUFWfmVJR/Q69DsQ5KgOflUvaB27DNXqkbCWDMF59TvT33pXmqMhFQ7zl+ZItjm4lG2XQ05i1k/teAZ8MPVZ6xm6Wtdx5/yOjJmB3+dFB1TRE57J/dXgKSscsca0r2AtOvaP59h9spjfTiSwLCX21j3ahu1MGEnzMFl1NOX6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782951948; c=relaxed/simple;
	bh=4/XWGLhuQ63tPtwQELz6+SAQXOr39alQK7EMVM5YvnA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LvcDSLHp3IZecQFNQmObvUAVmqdMjYJkw94HXpEVcQqPL73zxHmcp9nNLQYX+i18dmDLmGN5Dk21oofu5q7bb8ZDI0TlAzTP0tkwlC1//XrvbT8XmMe6f5DBi/oO6bGdkPpG9TNQZjLs1rXApjBq8FseLyJR4/FaPCzjCuQOuac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN43zJEl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9691F000E9;
	Thu,  2 Jul 2026 00:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782951947;
	bh=BjsNZnk2hPM0v+N9nW7xV0Aww4d49DFnt3zWI1vaTi4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=jN43zJElyXCV3L9396+pBFWWGGn8C6KxdgS4aipL6+V8LKgPqzNsvNeqUQkhyR1ix
	 aAi3nYFznDH1jxtq9W57GyuOf+eY4w8JIn5DzuLZoHutGwiJcUh5gFr5q5zcoYN8gE
	 ++JppFPBVx8wdSd3e6TdTfR9h/01O0eXy4EX5cRhZjZxjxlUGYm/1Qg+npjHlOWo8M
	 2mWyiLjxoroF4PftAOYYW+Dg/6MS8prlzpHxvdSMDMlehbs9COVAZXq4Apus8SvVIS
	 CeJl495GN4jgRz+6On0FX5iWPfKwkh3GmjILf6+fIQyHtPXPvdbnIBMFn+IeEvTzoT
	 EWAnu9kWxD9cQ==
Date: Thu, 2 Jul 2026 01:25:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Lukas Metz <lukas.metz@gmx.net>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: iio: dac: Add DAC8163
Message-ID: <20260702012541.41fd50c3@jic23-huawei>
In-Reply-To: <f57e9c71-189e-4316-aec4-5779d6211db7@baylibre.com>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
	<20260623-dac8163-work-v1-2-5b508158faa0@gmx.net>
	<5a19c272-e8fc-4fa9-b137-842b6ed6649b@baylibre.com>
	<ajt0vibLhh6Mmhoc@berta-MS-7693>
	<f57e9c71-189e-4316-aec4-5779d6211db7@baylibre.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318975-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:lukas.metz@gmx.net,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmx.net,analog.com,kernel.org,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFF2B6F2993

On Wed, 24 Jun 2026 09:14:43 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 6/24/26 1:25 AM, Lukas Metz wrote:
> > Thanks a lot for the review. This is my first time submitting a
> > patch so im grateful for the detailed comments and suggestions.
> > 
> > On Tue, Jun 23, 2026 at 02:17:04PM -0500, David Lechner wrote:  
> >> It is more logical to put the dt-bindings patch first in the series
> >> before the driver that makes use of it.  
> > 
> > I will reorder the commits in v2.  
> 
> For future reference, you don't need to respond to comments that you
> agree with (save us time reading).

Better yet, crop them out of further replies and save scrolling too ;)



