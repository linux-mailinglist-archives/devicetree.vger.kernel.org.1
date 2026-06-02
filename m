Return-Path: <devicetree+bounces-305710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6GwnI4j7HmqibgAAu9opvQ
	(envelope-from <devicetree+bounces-305710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 17:49:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B1B62FF44
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 17:49:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B0qA0WE7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305710-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305710-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C199830C6816
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 15:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1C2368291;
	Tue,  2 Jun 2026 15:18:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FA0360EFF;
	Tue,  2 Jun 2026 15:18:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780413495; cv=none; b=hSFQHwtAWznxW03sG3KAOXqn04WbbjhVSa+CNN3ucn/lFs0jo5NNMUWeNp7jhsV9/PO6hAOi3SFV9E/BW8kt6ETYf2F3x8D6KRFdWdZlqe4Gx0fiVMylgN+2egLl/HTBZfwxmf+wVimZ4p3G/V1Z+FQAu6t/7E5R7mPqhGqEGKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780413495; c=relaxed/simple;
	bh=A+YZoYMkSIKXQ2ydh8tGwbrRQanTt6JX3dFD8Wswidc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CmWCbbQMohCFUPx7ohECDVmGxoOThkFxWtSOnu3sVqw1izi05sjCDfUl9bxHAuu6kcBX3m6ZcRy0RQyqg4hzgzDp37jC6C3Wtc562cSofaXBmxGuQ1y9Hg3cEFgG6p3Zq3p5RUGaQVYsIobj0iGNEvoRU2yjTw6+xfbkg5evueI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0qA0WE7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FC21F00893;
	Tue,  2 Jun 2026 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780413493;
	bh=8lZiucNBdfcVM/fyiIvBK0be1Pkkk47CqnYhRaryo4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B0qA0WE7LWlrFe51ogEMvTF9jRHVIKKqegVmpaq1Nj18Ow6bregW34n7DDtlBc/sg
	 tFnh7YmbYuMmjf2SnZZLfwJKn7fWwAq+dL9JEqn0KkUN+DdIeAvw8GfJ3k3Q2/zgGw
	 S8QDu4ggFzQuxA3bY7Eb7nOn/s24dFUFIAT3yg+YMiKGmNvvz6JN7Tg2d23Yrz9KQB
	 kIbj4XnTxwcMu70rnVg8Y96aKBKs5sPdDzAzhORj8YWd9t4IjJieS26W9jspHMZIfd
	 KOxrVVJwseAttDYD9R/3hrvyNsKI9VvozFTtRj9bqHvQdgyY5ZRJAuOpblllzGDjN2
	 KWGwkURe6mfgA==
Date: Tue, 2 Jun 2026 10:18:12 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: linux-kernel@vger.kernel.org, saravanak@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3] of: reserved_mem: only support one <base size> entry
 in reg property
Message-ID: <178041345940.355357.208300843136248973.robh@kernel.org>
References: <20260525121700.2706141-1-chenwandun1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525121700.2706141-1-chenwandun1@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305710-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:linux-kernel@vger.kernel.org,m:saravanak@kernel.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lixiang.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 92B1B62FF44


On Mon, 25 May 2026 20:17:00 +0800, Wandun Chen wrote:
> From: Wandun Chen <chenwandun@lixiang.com>
> 
> A /reserved-memory child node may have multiple <base size> tuples in
> 'reg' property, but multiple entries in 'reg' have never been fully
> functional:
>  - fdt_scan_reserved_mem() in the early pass loops over every
>    tuple and reserves them all.
> 
>  - fdt_scan_reserved_mem_late() reads 'reg' by
>    of_flat_dt_get_addr_size(), which returns false if entries != 1.
>    So 'reg' property with multiple <base size> entries will be
>    skipped, no reserved_mem entry is created in reserved_mem[].
> 
> Supporting multiple <base size> tuples is not a good idea:
>   - It requires reserved_mem_ops->node_init support. Currently,
>     CMA(rmem_cma_setup) and DMA(rmem_dma_setup) are not supported.
> 
>   - of_reserved_mem_lookup() is name-based, only the first entry in
>     multiple <base size> tuples will be found.
> 
> So change to support one <base size> entry in 'reg' property.
> 
> Also update dt binding:
>   https://github.com/devicetree-org/dt-schema/pull/197
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
> Tested-by: Meijing Zhao <zhaomeijing@lixiang.com>
> Link: https://lore.kernel.org/all/20260506014752.GA280279-robh@kernel.org/
> 
> ---
> v2 --> v3:
> 1. Fix out-of-bounds issue in v2 if device tree contains an empty reg
>    property [1].
> 
> v1 --> v2:
> 1. Support only one entry in reg property, suggested by
>    Rob Herring [2].
> 
> [1] https://sashiko.dev/#/patchset/20260519082427.4181476-1-chenwandun%40lixiang.com?part=3
> [2] https://lore.kernel.org/all/20260429065831.1510858-1-chenwandun@lixiang.com/T/#m29fa0f1c22c23e6343070e70f905c9482f930901
> ---
>  drivers/of/of_reserved_mem.c | 43 ++++++++++++++++++++----------------
>  1 file changed, 24 insertions(+), 19 deletions(-)
> 

Applied, thanks!


