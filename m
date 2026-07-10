Return-Path: <devicetree+bounces-324678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2oLND/dsUWqgEgMAu9opvQ
	(envelope-from <devicetree+bounces-324678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 00:06:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8374E73F537
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 00:06:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U+WJ1JYo;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324678-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324678-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFFAB301E3E8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E8E3CCA13;
	Fri, 10 Jul 2026 21:59:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BE3B4EB3;
	Fri, 10 Jul 2026 21:59:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783720749; cv=none; b=MObLnfXUBVGGhpDDRrMY/5z0zlB+yKwlcLQmm6ri1ENjAxneHjhaEKfmtRViW4rKxc45UYkM1qduR1LnIX2jtIfrYZ4BhtPc2PyRt84k8Xf0KCcgn6HkPcDhKtx3B6+ZV12+lEEe9zloie4L2w63KSS01JReLtXLUCLZjPx9evk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783720749; c=relaxed/simple;
	bh=Rv+00UNMh9dDVXb81yBg+4+3/d7/dITVlQzsoALiI0c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MvcZrJjeWQHSZfZzdFykzaPrhhUF6kN+kLMBI+siw6HTQ20SL+r/KycaTZRk91nglt4hGMsskPi6dtoRa/NGz9ft6X3FptvSYGhGMIY3elfyLeMk3Ny8PmegYvdaJZeIfVnos2kFNgRqXAzDZHC5Mk6HkiFt5fJXL+xKyfulrmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+WJ1JYo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B45DB1F000E9;
	Fri, 10 Jul 2026 21:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783720747;
	bh=LtS4nogenjGKyBY0LN40SHha2E4jCmg57DAdATWHF7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U+WJ1JYoxJZJVgP79jppI9DVRz0Qd5PwSGBAx3wxu5XyqCe7DWYSne/D4f/qlDB5R
	 6bCJIs4OJEu2XfnU8ijPBX3BsUd5ml/5XKFs0qqobwMEf3a28WKpA4N6khyA3SIl5+
	 Goy6WgCH++nwCiakCG/IhzdmGXE2Q67tQVkZIe0Pje07W1Vtjj0LxCdobyg/NZe3Yf
	 40Zi9ABm+PsGW3G5w1QTVRKGtnn1AaeMukVxIDmgdzP2o7LmFyr5kBBat7EDraUFyA
	 o2PZYCN71v6C0a6GUmpCEEUiuxhUNbwcwoq1cUH3UIe2fT34cHDYODYvHtAyAo5kbL
	 KElz7bPkyubYQ==
Date: Fri, 10 Jul 2026 16:59:07 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-sound@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] ASoC: dt-bindings: ti,omap4-dmic: Convert TI OMAP4+ DMIC
 binding to YAML
Message-ID: <178372074660.1412241.7384502507366665799.robh@kernel.org>
References: <20260630-ti-dmic-v1-1-9e4400230266@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630-ti-dmic-v1-1-9e4400230266@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,ti.com];
	TAGGED_FROM(0.00)[bounces-324678-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:linux-sound@vger.kernel.org,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:peter.ujfalusi@ti.com,m:charanpedumuru@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8374E73F537


On Tue, 30 Jun 2026 12:25:49 +0000, Charan Pedumuru wrote:
> Convert the ti,omap4-dmic text binding to DT schema format for
> validation with dt_binding_check and dtbs_check.
> Changes during conversion:
> - dtbs_check flagged reg-names, dmas, and dma-names as undocumented
>   on all four in-tree omap5 boards using this compatible (cm-t54,
>   igep0050, sbc-t54, uevm)
> - Add these as required properties to reflect actual hardware usage,
>   since the original text binding was incomplete
> - Drop ti,hwmods from required, as it is a legacy property tied to
>   the OMAP hwmod framework and is not mandatory for DT schema
>   validation going forward
> - Update the example to exercise all newly documented properties so
>   the schema validates cleanly against real board DTS files
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../devicetree/bindings/sound/omap-dmic.txt        | 20 -------
>  .../devicetree/bindings/sound/ti,omap4-dmic.yaml   | 68 ++++++++++++++++++++++
>  2 files changed, 68 insertions(+), 20 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


