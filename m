Return-Path: <devicetree+bounces-319024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Oi9GOcERmrMHwsAu9opvQ
	(envelope-from <devicetree+bounces-319024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 08:27:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3BC6F3CE8
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 08:27:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PIY+TDJ9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319024-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319024-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B474304929C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 06:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAEB2386C31;
	Thu,  2 Jul 2026 06:23:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9728F386C1C;
	Thu,  2 Jul 2026 06:23:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782973433; cv=none; b=LLXV3Ovv35LBHQTTs4VdYl42fZbizgji1b3ZBtYRfHhLuITatszXSQs1V/Oq4rs4kvx67OAfCyxK29aydexBiCMozIhegv5aO6u74ac1PzEtGjyNOohL21C2baq11FsluVuMXr1eMyRQGtPzVVKR5bN1efbKEDXvFk3I3UwT0Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782973433; c=relaxed/simple;
	bh=Uvtz3YesQ6nkXbwzT8gF20rjQOjTSwmrZjE5f4P2aKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IVz6FaaPSxM5EHPDdk7pRdck2kiOWYz6dUNSTvMJOGukwXOmoTKuT/8ugocVTN+DipFHlcM4pyRdS7XVbpSXwSq4HazSmhnxpUQ8plRhnxt3b+8biAWyHELw+DPOKXmC/u1MU1f0iJWgm7QqQmgP2Jk07GEERJlZYaJ1BDgc2g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIY+TDJ9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2A461F00A3A;
	Thu,  2 Jul 2026 06:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782973432;
	bh=XBY9rp8EKn144/cyQOvwrADc4v44FFdbbkw6wB5GINE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PIY+TDJ9mIq+2AAkVUcRIH3+kgPxcQ19xY0Vy6FujkiGNDF8Ycrm1OolKflvB1fV3
	 dR7OXB5XdaKe1mabHIfTkhmDGLGDwqtxRG1GD2tCJUeMSuPkYARraNDvTuBK372hjy
	 lzcpiUVmRhNAvJZx40iq1fkzFpDWUYde3P/ZzFI0PLMp4x+HoQz/vDHC9AvMIgwtXw
	 zuYqqfPT1990a7f1Tp2d/v4F0oFKkB7VuItO0DeWilhJghQKgpuFzhO2UQlk/h7ber
	 lMy6QcuplEePpZAolAYBFEGuYFFZ3weDRUU3kJ2EWNvt+uASb4NzjKLUlunCWkLF8f
	 7IjInO1PavoxQ==
Date: Thu, 2 Jul 2026 08:23:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gokul Praveen <g-praveen@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	neil.armstrong@linaro.org, nm@ti.com, robh@kernel.org, sjakhade@cadence.com, 
	kristo@kernel.org, vigneshr@ti.com, vkoul@kernel.org, yamonkar@cadence.com
Subject: Re: [PATCH v4 net-next 1/2] dt-bindings: phy: cadence-torrent:
 Update property values to support 3 clocks
Message-ID: <20260702-vigilant-tody-of-inquire-ffbede@quoll>
References: <20260701142457.81874-1-g-praveen@ti.com>
 <20260701142457.81874-2-g-praveen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260701142457.81874-2-g-praveen@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:nm@ti.com,m:robh@kernel.org,m:sjakhade@cadence.com,m:kristo@kernel.org,m:vigneshr@ti.com,m:vkoul@kernel.org,m:yamonkar@cadence.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319024-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD3BC6F3CE8

On Wed, Jul 01, 2026 at 07:54:56PM +0530, Gokul Praveen wrote:
> Update maxItems value of "clocks" property to 3 as description of
> this parameter already indicates 3 clocks(refclk,pll1_refclk(optional)
> and phy_en_refclk(optional)).

But what if description is wrong? You need to provide rationale why you
are doing it and you cannot use existing code alone as that rationale,
because as you pointed out - existing code is not fully correct.

> 
> Update the maxItems and items value of "clock-names" property with multiple
> combination of clock-names possible since pll1_refclk and phy_en_refclk are
> optional clocks.

Why? You need to describe why you are doing this, not what you are
doing.

> 
> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> ---
>  .../bindings/phy/phy-cadence-torrent.yaml        | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index 9af39b33646a..96c664d50629 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -34,7 +34,7 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      description:
>        PHY input reference clocks - refclk (for PLL0) & pll1_refclk (for PLL1).
>        pll1_refclk is optional and used for multi-protocol configurations requiring
> @@ -45,9 +45,17 @@ properties:
>  
>    clock-names:
>      minItems: 1
> -    items:
> -      - const: refclk
> -      - enum: [ pll1_refclk, phy_en_refclk ]
> +    maxItems: 3

Drop

> +    oneOf:
> +      - items:
> +          - const: refclk
> +      - items:
> +          - const: refclk
> +          - enum: [ pll1_refclk, phy_en_refclk ]

Drop these, pointless. You were supposed to grow existing syntax.

> +      - items:
> +          - const: refclk
> +          - const: pll1_refclk

So here is the enum.

> +          - const: phy_en_refclk

And this stays.

You make changes which do not make the binding better and are not
explained in commit msg. Focus on WHY you are doing things and also
explain WHY you did such complicated syntax (if you insist on rewriting
correct code into something odd we do not expect).

Best regards,
Krzysztof


