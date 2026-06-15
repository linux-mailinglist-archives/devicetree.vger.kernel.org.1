Return-Path: <devicetree+bounces-312190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GPwhHGVrMGp7SwUAu9opvQ
	(envelope-from <devicetree+bounces-312190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:15:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FC868A1FF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:15:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ELwF1Yei;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312190-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312190-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8343730B5E2A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 034F03A9DA4;
	Mon, 15 Jun 2026 21:15:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038C833BBD9;
	Mon, 15 Jun 2026 21:15:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781558113; cv=none; b=QzHPDxGKvwakzaI5ilpxSW7Gnrz86JeCpUMa1vyQiMoBTAZFyJ4NiWW6qoaT3WTK0jO3hHmoC7JFdrL+SD3UFEL2hscjQYls32koJo39pINq0IyjpswSEnWAelJRDMdtNTHpFUSB0kKawMjPZiS+wRzFIeCfHmgD7k3g1wRt6sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781558113; c=relaxed/simple;
	bh=S1WpUMOEPRN+THgJTlL+7X75kgLTtijIEKOOxaDy4AQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o7yOS+LrI+biHqO1RkdWJnzVYfAAgvOiB8EN32Trmpdhz6XTxE28tYYGZlFrkR+YLr0MnzRYchBfQdMp1kFaoI6qRwKD0/KDhqxJM/ln4o/T0IcBWRG5GSYucxfe0JW0ICfn6/tuldj0ySLbYmaXRc13vc8aUnDSRI8xqadLHwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELwF1Yei; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E3CD1F000E9;
	Mon, 15 Jun 2026 21:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781558112;
	bh=v1F2ZzzT1p3w0X8otzyBIUwMYdx0HypLdu4oZbFgfuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ELwF1Yei7oqYXgY0gwiKte1dZgGVEmw5mkICcQ0YX4nJZ+EhwZQt2oK65GqxAJfgt
	 KemtZYQw54YN3Xh32ZwVvTsJDsbVtlUsXqv7Hh4bZ0oq8Z/8nR3GzqMLhos6QL6b4q
	 FHUwzNIwDSkLUYmJQpAiR8ngHAN0SWWO4JPKdDIKq8fsDkhHIX6G1Vm9Gy8G6HXD+M
	 8VlYXdgBhmnpDoaDxHxBBkGsurQjjQALM9LJGseD1WSSFxNiN/uxnHOYtbRWcJIQ0P
	 1yJb3OuzTItnuD0DuhYdJYPg1mRja1o6pPkMnnabNKr2j6tlpdRdKHvqXoIeOG3RFS
	 k9aIxokuOlZWg==
Date: Mon, 15 Jun 2026 23:15:08 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-i2c@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
	Peter Rosin <peda@lysator.liu.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Message-ID: <ajBq_yjuV-LeqgpI@zenone.zhora.eu>
References: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
 <ajBGibftf679T6P4@arch.a226c7d-lcedt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ajBGibftf679T6P4@arch.a226c7d-lcedt>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312190-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:wsa+renesas@sang-engineering.com,m:linux-i2c@vger.kernel.org,m:treding@nvidia.com,m:peda@lysator.liu.se,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,zenone.zhora.eu:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0FC868A1FF

Hi Thierry,

> >  maintainers:
> > -  - Wolfram Sang <wsa@kernel.org>
> > +  - Thierry Reding <treding@nvidia.com>
> >  
> >  description: |
> >    This binding describes an I2C bus multiplexer that uses pin multiplexing to route the I2C
> 
> By default I used to list the subsystem maintainer as the bindings
> maintainer if the binding wasn't Tegra-specific, or in this case the
> original author wasn't active anymore.
> 
> I'm fine being listed as the maintainer for this if you don't want to,
> but I prefer to use the thierry.reding@kernel.org email address for
> communication.

Just to be clear, are you saying that in this file you want your
kernel.org e-mail or are you referring to generic communication?

Andi

> With that:
> 
> Acked-by: Thierry Reding <treding@nvidia.com>



