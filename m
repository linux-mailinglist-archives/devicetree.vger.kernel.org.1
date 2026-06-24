Return-Path: <devicetree+bounces-315097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z5O2KJ+MO2qRZggAu9opvQ
	(envelope-from <devicetree+bounces-315097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:51:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C699B6BC58A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:51:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jluGIgQo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315097-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315097-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 124743046413
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8EE3932EE;
	Wed, 24 Jun 2026 07:51:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0FE39281B;
	Wed, 24 Jun 2026 07:51:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782287502; cv=none; b=QmeSN6bdUPlY06MDTyuysb2+QTDNf0CD4RvxbrdX9PGvSvUiavhOPT3PgOBQnMo5NqNHY+LZyGGq6EUGGSWZHfTveQvVMigwi99UQz8Ih6CkzXVIePra7RfKWqnewgwxhADPe3G7qP6o9Tvl6cYzG1noCEUtZSmYts/EISwaukE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782287502; c=relaxed/simple;
	bh=DYe7VwFNV9j8vSBxh0sxvNFJ5tm4QCGE7sLXePjo40w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qXFeqqspyt3HVWC5YJOm7QHMpXGMnH/9YqeY7NAacYKuSx+v47UKExanShaaEWPPfyw8XfSz9wnDFP6QN4yR1qAzX1cj35Gxg45sjGKRVSD/UKZb6BhRSXh4o2swfFr01cKRmKI6zyXKmTTXWy0D8rG86eXmMWg54FcQbyRhIko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jluGIgQo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F291F000E9;
	Wed, 24 Jun 2026 07:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782287501;
	bh=NSEEVjv1/4kjXV4htQAieMuaFZE2MmtV1l1wYqenhLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jluGIgQojegfwtFhgq8ElqtfozWVNevAYkAS+7eRG+5ceLHulNoFDgbgOEEPKDyhJ
	 rbm/gwN+vQMLxFYA1EKDHmd394oQelcS9Jaq97jgrREgjDnNN7a9pMacaUm4x2+pmW
	 64eNX4jO8ucN6Gv3yu7V/rY/iDYJp0UexXaPfmRRPSAmlb35XxBrRona04RJngU6MQ
	 qZ0zueAe2rc5pEB/JgIcQ8wcNJaPcir9l9ZiQKeZZjB6MK2L29on4OIUo/Gr3XdPAs
	 xlCj+e6aRRXmKQvlXyY4jOWTWCCG+tB0Mh8wuQRjtiMuOvC4p/p7PfIdPVDWrqY+C1
	 DPhx5f6suev1Q==
Date: Wed, 24 Jun 2026 09:51:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, goledhruva@gmail.com, 
	m-chawdhry@ti.com, Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: Convert TI OMAP2420 MMC to DT schema
Message-ID: <20260624-frisky-wakeful-wombat-d1be2d@quoll>
References: <20260623094336.4172741-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260623094336.4172741-1-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315097-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C699B6BC58A

On Tue, Jun 23, 2026 at 09:43:35AM +0000, Eduard Bostina wrote:
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ti,hwmods:
> +    description: |
> +      Name of the hwmod associated to the MMC controller. Must be
> +      "msdi<n>" where n is the controller instance starting from 1.
> +    $ref: /schemas/types.yaml#/definitions/string-array

You should not use different type than already used and currently this
is a string (so also no items below).

> +    items:
> +      - pattern: "^msdi[0-9]+$"

"^msdi([1-9]|[1-9][0-9]+)$"

> +
> +  dmas:
> +    maxItems: 2
> +
> +  dma-names:
> +    items:
> +      - const: tx
> +      - const: rx

Best regards,
Krzysztof


