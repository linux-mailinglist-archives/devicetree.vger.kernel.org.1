Return-Path: <devicetree+bounces-287696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QB5nHBwF4Gn4bgAAu9opvQ
	(envelope-from <devicetree+bounces-287696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 23:37:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D102D40835B
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 23:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D6B2301F1B7
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 21:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB25B38B7BA;
	Wed, 15 Apr 2026 21:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvVkkk8x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E003126B9;
	Wed, 15 Apr 2026 21:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776288885; cv=none; b=qy3We6T5AYLxDHl8p0w0rn/c8xMM5E01tlDsgU++qYrxHrZR7MR/l3LWh0MpAg1CuXiHjXrPiOHiQM+LhrlzGy3zGT4riNrewWpBEe1XpCbmi9tv6lIT9CUdCgF+tpzXVb3shfHiJwVvtrJxxThV8/+2v9h1SV9nW+Eu2wd5xHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776288885; c=relaxed/simple;
	bh=uxvv9k/yYu+Yqjx/Or4JX/wVZl0+qopF24eDGX7bZc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CMrmnZ5y5EvsXLIjiwD0/UreaIjS2PEc8ZSmVeTAYZInMM7beIEj1dqhSa/hw5OZga6zggYXbLzP9QrCj7i+oLw7sfScOXbon1+qNDtKrMiR7y8WQLb9XL+EOXT1EOKVNJ5zbfNNSpMX/QBPO6CrQJ1hAUZOu7XhYhN8k0dewuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvVkkk8x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27795C19424;
	Wed, 15 Apr 2026 21:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776288885;
	bh=uxvv9k/yYu+Yqjx/Or4JX/wVZl0+qopF24eDGX7bZc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DvVkkk8xhF3LzLYQOg7YIOeKBi5S2sKDEsU8behzc7vF6Pi94/mPqsYykSaEQfQtr
	 qzKSZ1+zaDGM5WStx3+cCtzYCHYPoLX3FN5AQQRaOGrIZixNN64Q8B1NxBfAh8aD6u
	 +w2qVNqVHJTRGHO7WEZ//qkXWOx2fDCktjp9dLzUSMwD1iSnCEK1/WAk56KsnsaVL4
	 aP9eGVmTFzn8tU1xLFGyzg71YKPlIQ+8M8gUETlMHaYRL5+JYdpkH1LUO7IGxQm1w8
	 QKD7QjD2kr0gMX8JmIXkUmsArCXzWQos41jWXGQxTODVno63UQXeIWkDDv+b/7A7VV
	 CHo1knbct5s0w==
Date: Wed, 15 Apr 2026 16:34:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: phucduc.bui@gmail.com
Cc: tglx@kernel.org, linux-input@vger.kernel.org, krzk@kernel.org,
	dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org, conor@kernel.org, devicetree@vger.kernel.org,
	mingo@kernel.org, krzk+dt@kernel.org, marex@denx.de
Subject: Re: [PATCH v4] dt-bindings: input: touchscreen: ti,tsc2005: Add
 wakeup-source
Message-ID: <177628888260.592110.11727813820499601669.robh@kernel.org>
References: <20260403040714.106093-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260403040714.106093-1-phucduc.bui@gmail.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-287696-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D102D40835B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 03 Apr 2026 11:07:14 +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> Document the "wakeup-source" property for the ti,tsc2005 touchscreen
> controllers to allow the device to wake the system from suspend.
> 
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---
> 
> changes:
> v4: Drop redundant "type: boolean" for wakeup-source to use the core
>     definition from dt-schema (as suggested by Rob Herring).
> v3: Remove blank lines (suggested by Conor).
> v2: Revise the commit content and remove patch1 related to I2C and SPI
> wakeup handling
>  .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml     | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


