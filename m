Return-Path: <devicetree+bounces-315233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wc8rCkLTO2ofdwgAu9opvQ
	(envelope-from <devicetree+bounces-315233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:53:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A57E6BE487
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:53:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FqZe9GhH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315233-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315233-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35F8C3024170
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA14B3AFAE7;
	Wed, 24 Jun 2026 12:53:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4356199EAD;
	Wed, 24 Jun 2026 12:53:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782305598; cv=none; b=XyD9qEEvJ85bN1k6yeTOhNc+vXN9tjuXEd20Ktsw2Mgw5LAHIP2Kd3PO58qe6ScqzqwJ28cHpo222HSTrhiHBhASuGFIiwNmXS51hxBltCnScXfKoAL7ATuNnkJMzhxpnHX7N1jwPcEEPpUMEqA2tBzAwKPnmF1K19DlZQG57Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782305598; c=relaxed/simple;
	bh=KahWTfQ6QzHVNxKce8Q1/jzulRXDPsDhkVoGTbwS14I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JsRKLrPk6I5yrEoeOM6hgl8p13BnXHuVftkLc+WHTwJCiONIFrFAEs9dI3uBbvAdADWL9WNNtpElt/DPSnPtwNklrQnA3/hIfUixLlbdam/a7N6VQXBuS+IQYrkjxn69gzb8eVZcB2wzK1NKpOStQTXX2gTSkhRyJfSY2g/U2Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqZe9GhH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B211F000E9;
	Wed, 24 Jun 2026 12:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782305597;
	bh=HJKPKyjooasBtuw7pvPpV0lDfiXrWt987kFsIu3bzBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FqZe9GhHzOTTWP54ShlMDrtjxg67FtUO8+DOBweU09ATTsnzg65sr+eaybs1z8tZr
	 VGCHRpOaqd4kdSw3pNVpRUD2M8HyW/A0FQCcNYdp8C2avSfPntdSGU2igZ2Bj43QZR
	 DzbTwUm4IkI7jJNbzNuPwerbyVEJ4NS9j3k70OjqVq3dD8Bu7TAqKA/5hNztaLUrkh
	 fUrZ3at5KyDSTFAEhhSLHkS+mzmtNp1jxvLO5HehPR22q9bp8fWLtMzF3TFc24oREA
	 kvpaHvQxg/ZRPXIVGOXUi+VXKn/J0IuKxJ6V3Lzu6RiPctu4sp6MftN5mTT0ERUOSq
	 706522OnAGF8A==
Date: Wed, 24 Jun 2026 07:53:16 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ronald Claveau <linux-kernel-dev@aliel.fr>,
	linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: thermal: amlogic: Fix missing header in
 the example
Message-ID: <20260624125316.GA4032772-robh@kernel.org>
References: <20260622100231.438435-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260622100231.438435-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315233-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:glaroque@baylibre.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel-dev@aliel.fr,m:linux-pm@vger.kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A57E6BE487

On Mon, Jun 22, 2026 at 12:02:32PM +0200, Krzysztof Kozlowski wrote:
> Usage of defines from headers requires including relevant header,
> otherwise dt_binding_check fails:
> 
>   Lexical error: Documentation/devicetree/bindings/thermal/amlogic,thermal.example.dts:59.27-34 Unexpected 'GIC_SPI'
>   Lexical error: Documentation/devicetree/bindings/thermal/amlogic,thermal.example.dts:59.38-57 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
>   Lexical error: Documentation/devicetree/bindings/thermal/amlogic,thermal.example.dts:60.37-45 Unexpected 'CLKID_TS'
> 
> Fixes: b1c8ccdbd4e9 ("dt-bindings: thermal: amlogic: Add support for T7")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Fix for current RC - commit already pulled in merge window.
> 
> This should be applied fast to fix current RC, thus maybe Rob?

Both applied.

Rob

