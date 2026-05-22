Return-Path: <devicetree+bounces-301821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJDLOQlXEGopWgYAu9opvQ
	(envelope-from <devicetree+bounces-301821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:15:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B195B4EFD
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10ADA30774E6
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBBE38237D;
	Fri, 22 May 2026 12:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deAIec7G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2F370AF3;
	Fri, 22 May 2026 12:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779454586; cv=none; b=Xd6Lu4fB6DoNjhycw7Lu3AJB+B5cx8nWjujxmssz9oX7UWMR0ukVXF3vhDtzq4U2lI1KYksH/3qVSft3LH+GpI8LS0CffrNmJ857Ot81UNll2pCFj3Jvs34ykX8E2H/Q5qO613dlQYktjqmMnyOinKPXzq78nf3Hv6LOmtiddbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779454586; c=relaxed/simple;
	bh=NPY6tTvJdf8czIhinVg83cy4u3+V1kPkXcLSPSj3bD8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GwRdH+z1VOQLzUSEnh5UJ231jxXCj+/09EmDvrAm5nCcXOQTySqNqsdKuA0UfUJ5PyRUQMSg8HmKz1bbczjkd4/zZYrj8NFsZJe0R2NHXne7cEH1LleSaEDzmnUPhl5rG8RA+PtHCuSAF2I4hbFgSopBiMLAu/Z596gKMmoiQl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deAIec7G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34FDE1F000E9;
	Fri, 22 May 2026 12:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779454584;
	bh=g0tr6Yh3FKk7hSqo6GTr+UUjL2W1eIwrk5OKxZH/yYs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=deAIec7GpPREeK/GUwRUyyCY1lyrGVojPGhtgWU0Mk1e5C9a5j5bBsRhDOQlI4tg/
	 uNPVd9ZpQ5dHPOtitkLMpD4Prs8tRSQ6hM5NGavPYQl4xpu71092rp4S2dAJylHmCq
	 4Y2VvLbNjUM4ZnMJFn7wpBrzeGD2t1TMsaH+Q/l2ZexXo+cFvkld8/U2ztjZWMndZK
	 3geG3IbCayliPcUSADyKOiGhLiYlIMd4SJennWsQ3xt8IAiO8WpcE8vBUY5Zi4iIv0
	 jlfSFVw8be35bpLnMeGbjvU3l/WvkzJ5bc2cOOMJCfB1e+1bAXgLkqQROJWOurlnP7
	 zX8hzKWeJXvNA==
Date: Fri, 22 May 2026 13:56:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Liviu Stan <liviu.stan@analog.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@analog.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/8] iio: temperature: ltc2983: Fix macro
 parenthesization and rename
Message-ID: <20260522135614.484c1882@jic23-huawei>
In-Reply-To: <CALoEA-xwm4bM+qp0jHu6SxcBz98y9v4jvdiJMdWWADSJBUdy=w@mail.gmail.com>
References: <20260521164323.770626-1-liviu.stan@analog.com>
	<20260521164323.770626-2-liviu.stan@analog.com>
	<CALoEA-xwm4bM+qp0jHu6SxcBz98y9v4jvdiJMdWWADSJBUdy=w@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-301821-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 97B195B4EFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026 11:11:59 +0200
Joshua Crofts <joshua.crofts1@gmail.com> wrote:

> On Thu, 21 May 2026 at 19:19, Liviu Stan <liviu.stan@analog.com> wrote:
> >
> > Wrap the 'chan' parameter in LTC2983_CHAN_START_ADDR() and
> > LTC2983_CHAN_RES_ADDR() with parentheses to prevent potential
> > macro argument expansion issues. Also rename LTC2983_CHAN_START_ADDR
> > to LTC2983_CHAN_ASSIGN_ADDR and LTC2983_CHAN_RES_ADDR to
> > LTC2983_RESULT_ADDR, to better reflect the datasheet names and avoid
> > them being confused as related.
> >
> > Signed-off-by: Liviu Stan <liviu.stan@analog.com>
> > ---  
> 
> Reviewed-by: Joshua Crofts <joshua.crofts1@gmail.com>
> 
I had a quick datasheet dive. The naming in there is rather
messy and to me seems inconsistent but these two names are indeed
used at least sometimes.  Along with conversion result start address
(which indexed by conversion channel)
(table 8).

So whilst I don't have a strong preference in favour of this rename
I guess it's fine.

Jonathan


