Return-Path: <devicetree+bounces-324838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BvE9A25oUmq4PQMAu9opvQ
	(envelope-from <devicetree+bounces-324838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:59:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62596742105
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:59:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IFf30o6A;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324838-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324838-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 66C60300C9A9
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5863BED06;
	Sat, 11 Jul 2026 15:59:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEE52D8762;
	Sat, 11 Jul 2026 15:59:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783785577; cv=none; b=Ge64dDMM0GFvuxe2KsJle2f2qL3RG+MXgzD5YVFy7PTlZd1Eftd0iC7mlU+lcotJuLlDqhvnAg4Wk8oTJ7PDjMRtWOzHymgsOMD8r8eh7eZ/VV3aVErhxyXSfSyEQ0cFf+UrYOBpwUlJqmT2AbY9UvKg0xX+zmNLpYG67QJ7V+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783785577; c=relaxed/simple;
	bh=887orLYBb/L8almYyQu8pzwnip9RmUZnFzGOBLdhIlk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SsJ1TAnGSEgk5qEowccVZYY59df2Tyg14Ui8weqK94cajPdOQyJQdOLMdw5CCueJkW5+i3kLqMGDetF/0/o9Z1CGlK2v8XpPGLue8eJWBT6fUkh4GGj5BpG/LTc3SoimjaizQdVoQ7crV40No/FJd7TIUxHt9nDol2f89ANXdHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFf30o6A; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B191F000E9;
	Sat, 11 Jul 2026 15:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783785575;
	bh=xeLK3cA0iJxWaaODc/9uFvvMIgVsymEnCJ0p1F5rh9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IFf30o6AfZz43t5tNpIG0XblzblbhZCyELmVSwLtFqVmbTZK7AWcjq8pSBzW2G/pb
	 BcyQayCGGJQvQXJuIjg1SvJodisNwHget00IL8TP/dOuJi4TCZWLBTH4hne1L0Ttwm
	 2Jj26tqWwOg7J9gwuynUFu4ZDuFU0mcN0JldXRC9SY/0TIYtIDeOcccvT2R9bLiy61
	 XYl+LEuUlJ7VrdONLsyslbAJXoaw5FFleO5gTH4QzvjkTr1tpxurJb9QSRh3aURz9x
	 jPnz5xl4MuiWoyy/fRQWbQAoTNEQ8p8qQ+BbYTJPir54CvOp0QTL48nZHOgm+2w16L
	 NdgJk93dwPcTw==
Date: Sat, 11 Jul 2026 17:59:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, daniel.baluta@nxp.com, simona.toaca@nxp.com, 
	goledhruva@gmail.com, m-chawdhry@ti.com
Subject: Re: [PATCH v3 2/2] dt-bindings: soc: ti: Convert IVA to DT schema
Message-ID: <20260711-salmon-of-noble-blizzard-55d2e1@quoll>
References: <20260708111914.1706800-1-egbostina@gmail.com>
 <20260708111914.1706800-3-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260708111914.1706800-3-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324838-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,nxp.com,gmail.com,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62596742105

On Wed, Jul 08, 2026 at 11:19:14AM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments IVA bindings to DT schema.
> 
> During the conversion, the following updates were made:
> - Moved the binding to bindings/soc/ti/
> - Removed 'ti,iva' from the example as it is undocumented and
>   unused.
> - Make the 'ti,hwmods' property conditionally required. Modern ti-sysc
>   deployments do not require it for probing, but older
>   OMAP2/3 platforms relying on omap_device.c still need it.
> - Documented the 'dsp' child node, which is actively used in the OMAP3
>   device tree (omap3.dtsi) but was missing from the old txt binding.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>  .../devicetree/bindings/arm/omap/iva.txt      | 19 ------
>  .../devicetree/bindings/soc/ti/ti,iva.yaml    | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/omap/iva.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,iva.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


