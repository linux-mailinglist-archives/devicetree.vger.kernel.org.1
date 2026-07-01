Return-Path: <devicetree+bounces-318873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XdC0EFdxRWo/AQsAu9opvQ
	(envelope-from <devicetree+bounces-318873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD12E6F131E
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:58:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l1hpxxz7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318873-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318873-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B13753004261
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9CB349CC1;
	Wed,  1 Jul 2026 19:55:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CE7431E6B;
	Wed,  1 Jul 2026 19:55:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935750; cv=none; b=GYL+AGnk4mr0ipUZ+cl7VSvPJlNAz5WU/f50+0nKrL2qtyFfwG4AJecEGdy9dtZbkEL4VhVtvOeQRmZZyg6tgVOukeGr7BnclW1NCoeiMx/AyKMM4VxQQ0QahKjiADJHjZenVI/MM05O3ISPLAeVILqB5U9hZT/uvyPdtiuCLjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935750; c=relaxed/simple;
	bh=pOFkrA3zCUUVdWqBIPFy2zYh6CO+DFoWtbnxpaCJIEg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rb5CThu3wKuDSNPP9/FvYcybJlu4c+ojaJP7P2ghgUFcjppb0J2pDz8TxTwZ/NnGeQIB2A0dZatykbVVySO9VveRMFbaVxxDxA0nl0wxtlEuZzj7WhehNr1F434mKwzHatFJ55wzdZcUMS7mEhXkWzSDppxBA3Eterl+Hbstnfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1hpxxz7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B00E1F000E9;
	Wed,  1 Jul 2026 19:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935749;
	bh=0wn5niCO/L6zQgj0eemljpNDylkhdJtawO5djCFgqo4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=l1hpxxz7RAlyGIKGmgqFfIHJHXTzLLA24GwRODxJtufo1FJp+IKce60UoN+8NVf1q
	 NPfhe5ZVsg7qch7cYViw/hHI26AWZDaaunbfRFXpLwPgV65rZdo4XJowEuUoYiidfb
	 6wPEvvpoQS1LPKdEFprowanstGjaMWW5iWvstAq9U+qc3ogSIL/Nywea/MyC+1djWl
	 3yfWJmwF0QJIDw8QbfRM0h0EffxcIMdARIDuIqVmrNqyqFKZXXalPiRHyguzcpxjNz
	 Cll6WwQTqnPBxUzj3SPH/5OQmrLFMwtDMOYngp5m0BPAwUVtl/wSs0qUII/OlLjDxj
	 UheQJfXCHz+dQ==
Date: Wed, 1 Jul 2026 14:55:48 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: pmu: Narrow definition of
 reboot-mode
Message-ID: <178293574811.1635397.4546983398159311773.robh@kernel.org>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318873-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:zhangqing@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD12E6F131E


On Wed, 01 Jul 2026 12:58:50 +0200, Krzysztof Kozlowski wrote:
> The 'reboot-mode' child of PMU node must be a syscon-reboot-mode one, so
> add missing $ref to enforce the validation and disallow other
> reboot-mode handlers.
> Defining 'type: object' is on the other hand not necessary when other
> schema is referenced.
> 
> This can be further restricted to match hardware/firmware:
> syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
> a subset actually makes sense and is valid.  Provide negative look-ahead
> pattern to disallow any modes not supported by the device, which
> tightens the binding.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


