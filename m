Return-Path: <devicetree+bounces-306282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mtl4EFo3IGrEygAAu9opvQ
	(envelope-from <devicetree+bounces-306282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:16:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85134638772
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:16:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YGcPpNOS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306282-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306282-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D55A830AAEE5
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6D947ECEB;
	Wed,  3 Jun 2026 14:09:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EBC3A4508;
	Wed,  3 Jun 2026 14:09:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780495741; cv=none; b=XdPfsOiWU5NWjLPU/kWJ77Pl1y6CVop7Vw42wwulL8XuKZQJ8LiE779lIRG+/CRsmg8Xzq7lOibl88n7ejES+jJybpfHhHj7bsh7f/olCxoRm6iaP75WukOxlILfv8becJ5Iit3VKk6fy8poOEGp9uzlz+MbCTraos6Qs/Su+80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780495741; c=relaxed/simple;
	bh=DuYA+zryREOTpzvWbVuU5xKiHGO1c5cwqZ5Pa/942cE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=W06XNbmRW3bK8wSpgw1HX8d0vC+uAEksDE1UVXzdxMRyeXEBrBdfKyTos2WsVZAiEdl85MI8yJD28kkLn+CAA2KA7jMN9JW7i0DyXWJDE7QpPJ8PMx1tnWdZrxSBzq7Z9MnsZmTO4+DDep2lNWiAZpScbzWoiRZEpupLrL1G01I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGcPpNOS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 064531F0089B;
	Wed,  3 Jun 2026 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780495740;
	bh=nedUuBVMO/4KT0zZSmnalelQp4OIIOUUzQFp8dGHid8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=YGcPpNOSslUBVE4uF4h8ILATB+vnMIEBxOBIJBjBuXPl/B/DWrnmdzFUX6dG1sr7D
	 kAwhqSqoPpOy7Rb9cn1JqCDepETQCmxhW6tYYews0XYXztDdausBi2p9dp4OSuLGdF
	 sCgNxTm+STRkzshXL35NnzfSpYrzrTW9irWoRtAwKOdgtvcpdh3eevOJt9tYRTNNEv
	 q3cF6of+NlkT+bG+1XiEbgMOeIwNDUiSNeOcEvrFglNGlOkxuSUKXSZ3f5uJOCi1wi
	 +Fo9zbDMgpZ9m5H8CiDjZfik0RW85eNHxsK2Ka+Yj9qtpb5U4QXeUOboT4SOQveF77
	 br6nhtKvmmPgQ==
Date: Wed, 3 Jun 2026 15:08:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Liviu Stan <liviu.stan@analog.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@analog.com, devicetree@vger.kernel.org,
 Joshua Crofts <joshua.crofts1@gmail.com>
Subject: Re: [PATCH v4 4/9] iio: temperature: ltc2983: Use local device
 pointer consistently
Message-ID: <20260603150848.6060dc5e@jic23-huawei>
In-Reply-To: <ah9mbI8j2WhaneOe@ashevche-desk.local>
References: <20260525164013.118614-1-liviu.stan@analog.com>
	<20260525164013.118614-5-liviu.stan@analog.com>
	<20260527171820.4cbf10d4@jic23-huawei>
	<ah9mbI8j2WhaneOe@ashevche-desk.local>
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
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:liviu.stan@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:joshua.crofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306282-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[analog.com,baylibre.com,kernel.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,jic23-huawei:mid,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85134638772

On Wed, 3 Jun 2026 02:25:32 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, May 27, 2026 at 05:18:20PM +0100, Jonathan Cameron wrote:
> > On Mon, 25 May 2026 19:39:31 +0300
> > Liviu Stan <liviu.stan@analog.com> wrote:
> >   
> > > Some functions define a local 'dev' pointer but still use bare
> > > '&st->spi->dev' in some code paths, and some don't have it at all.
> > > Replace bare references with the local pointer for consistency and
> > > collapse some wrapped lines that now fit within 80 characters.
> > > 
> > > Reviewed-by: Joshua Crofts <joshua.crofts1@gmail.com>
> > > Signed-off-by: Liviu Stan <liviu.stan@analog.com>  
> > Applied to the testing branch of iio.git.  
> 
> As I said, this has to be split to three patches.
> Can we drop it? Or is it late already?
> 
This only seems to be doing one of the 3 sets of things you suggest.
"
So, this has to be split to three:
- dropping dup message
- moving to devm_kcalloc() and at the same time define local dev in the probe
(and only in the probe without changing anything else)
- this patch
"

The argument for the ordering is small. The duplicate message line gets
modified then dropped - not ideal but not a big thing.

The devm_kcalloc() isn't in here.

Given where we are in the cycle I'm not keen to back this out to get
the ideal ordering of changes.

Jonathan



