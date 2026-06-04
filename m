Return-Path: <devicetree+bounces-307073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EMRSH8LwIWr/QgEAu9opvQ
	(envelope-from <devicetree+bounces-307073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 23:40:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CF9643A6A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 23:40:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XsvUPPeb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307073-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307073-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88EEB30097D2
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 21:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A348D4D8DA8;
	Thu,  4 Jun 2026 21:40:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B6C3164C3;
	Thu,  4 Jun 2026 21:40:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780609215; cv=none; b=jsPERuamGC4seIF6KhvNtyVNn9+o25nOsfrn/ak+kUY3QTvRyJXjn3Mrbhy4OynjVU0pQBqPncYNxTqJu+YBFuoEDZeQr+NkvLm8KIaLo+0D00ZOz+Mw2S/UJLXSMWjARsRISnqKysk6sfVUA8hk+itCS1zsejDxL6OVxPvRUB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780609215; c=relaxed/simple;
	bh=OT7TALPoBOsm5N3PpWtluBEYuUhbF4gi2Buj3v5UKkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/Q7GZpJWII+fLZyy8Xr9HT0rYigjLj/TXVapo38Foa8I44rrUeYyuAoc9JVoolbVyg4mbJ0dKYm0C2N/lCzoGl7Aje0Oo9pPS0Wc0e5jdqXmiC1kZ67h7Uc0eM1wOkHfyTwbm4P/cPjPmwyOPCt9Peqx0r7fdwmQJXXJhV99Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsvUPPeb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B53791F00893;
	Thu,  4 Jun 2026 21:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780609213;
	bh=aif6Z7qHHLhcGKGHK5W+M8u4/6eAhcS67Qk7Tlh5D1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XsvUPPebuG9Z1lFzkhBaasIR0v1WqLX3+y8y11f727klQjs4FJvxHArEu9owldEFN
	 jJNtxY4pS51yvppWupoUgHrFTDDjWmAdZdfktk1TCGJtZ0YZVjx9rs4I+aauoFvAbf
	 CqTUk6TmhsJmzJuZtOuuGFdFE9ECc0iSKLhPrwNQUb2oRxMn9AbqZFdp8iUpr+0ypF
	 eXYjwf/7QjyGe8HXf28u+Zo3wGaV7oDRzZaQjo4B4m+2FWG32eYdOY1TcfItFfJUDA
	 eGLjxD9GHZYHDHGObNFWDTUNq5lnoiRo265dmgVftFbk93Zyuu4kcJXCZtM8Des/3H
	 sVflgjyURRPeg==
Date: Thu, 4 Jun 2026 16:40:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
	Tony Lindgren <tony@atomide.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-omap@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
	Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: syscon: Disallow simple-bus with
 syscon
Message-ID: <178060921244.1298375.8605331769477177888.robh@kernel.org>
References: <20260531110404.12768-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260531110404.12768-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307073-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:aaro.koskinen@iki.fi,m:conor+dt@kernel.org,m:khilman@baylibre.com,m:linux-kernel@vger.kernel.org,m:tony@atomide.com,m:andreas@kemnade.info,m:krzk+dt@kernel.org,m:linux-omap@vger.kernel.org,m:rogerq@kernel.org,m:lee@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8CF9643A6A


On Sun, 31 May 2026 13:04:05 +0200, Krzysztof Kozlowski wrote:
> "syscon" is a system controller with registers having their own
> functions, thus not really a trivial MMIO simple bus.  "simple-bus" on
> the other hand is just a bus on which multiple devices sit and the
> "simple" means no functions are allowed here.
> 
> Combination of both "syscon" and "simple-bus" is abuse of DT for easier
> instantiating of Linux device drivers so add a schema to disallow that.
> 
> Unfortunately there are a few old cases of that patterns, so add
> exceptions:
> 
> 1. "cznic,turris1x-cpld" and "img,pistachio-cr-periph" are already used
>    in upstream DTS.
> 
> 2. TI has several DTSI with a child of SCM device (e.g. "ti,am3-scm")
>    using "syscon" and "simple-bus" but without a dedicated compatible
>    documented anywhere.  Add new compatibles for such cases.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../bindings/mfd/syscon-common.yaml           | 27 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


