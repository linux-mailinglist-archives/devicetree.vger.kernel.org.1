Return-Path: <devicetree+bounces-274353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAyRKi/wsWkgHQAAu9opvQ
	(envelope-from <devicetree+bounces-274353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:43:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3255326AF79
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCAAC3046506
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61891395253;
	Wed, 11 Mar 2026 22:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awIQD2MV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F22C36A03F;
	Wed, 11 Mar 2026 22:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773269037; cv=none; b=P6BdaGURXBBm66crMIzF8fWotYfGh2gtjnqZ5qzgt4i+U8ImTIP1gM5sN4F3uRkjBraYpYwLoVSqNGQf/WsyE0qPA07nS5H08jk9aniDrUS9efXA/7PFGXnB3oEfxGjDOqZTbChhj31kjyyEqbSZcPkASkYlsHnN0+nbv1bd9Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773269037; c=relaxed/simple;
	bh=c1sFzzJhl81tFs1mB4ANzV3bJ+NACWIUHIA3ele5Qec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jkmsiObZJoB04JVzYl+XLMVqstLce5FIFvdDkIXkXlGII/YVwxnTHabWkSzeVWAzkrhMVioj/47gpKeazcH9yCRIBR+pbk3jI3X3i90zlE8Q5qektX+N7TXQpYrxTH6vypjAKSmPXj9M1I0bioRTqb+XlRyjzdvBVFcS3yV8WRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awIQD2MV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F29C4CEF7;
	Wed, 11 Mar 2026 22:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773269036;
	bh=c1sFzzJhl81tFs1mB4ANzV3bJ+NACWIUHIA3ele5Qec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awIQD2MVpRblVnbJrsIcod9JXaE6cbEWoekA2mg69uooqiPGOd/mnph7tevoqhE7L
	 RZ9hwjGOHvdUpuLLKlHntFi/gRFEOfpKa35zvzY0PbRAqsuvRxm6UNApz36KIlEXYJ
	 nHAa2YC5hcekE1oZaW7Rl93s+/tdW3Lzo1F60Uy36UnaCk9jTzzsYsbmDcizmjY1cB
	 Wt4r+0x9awbyTdGiu1tO1Y3JPKUZMfARSTrdiFSpxfon6o8eI4QTG5Rf8u6xnZ7/ts
	 uHk5PzGeiFyfceetw3qGFzG1/nGqlCGUUGiVveJq0vF3vadz/MPhH4Fb4qR35tZg4E
	 z6VonKoMGbmng==
Date: Wed, 11 Mar 2026 17:43:56 -0500
From: Rob Herring <robh@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 0/2] bus: Remove Baikal SoC pieces
Message-ID: <20260311224356.GA1078900-robh@kernel.org>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274353-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3255326AF79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Feb 27, 2026 at 08:26:24AM +0100, Andy Shevchenko wrote:
> Baikal SoC and platform support won't be finalised, remove stale pieces.
> 
> Andy Shevchenko (2):
>   bus: Remove not-going-to-be-supported code for Baikal SoC
>   dt-bindings: bus: Remove unused bindings

As there doesn't seem to be a maintainer for drivers/bus/, I just took 
both patches.

Rob

