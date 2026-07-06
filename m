Return-Path: <devicetree+bounces-320844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0H9FNjFXS2rAPgEAu9opvQ
	(envelope-from <devicetree+bounces-320844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 09:20:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 550AB70D720
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 09:20:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QEnjCdEm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320844-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320844-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4C3A930D34B5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 07:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7920E3F23B6;
	Mon,  6 Jul 2026 06:42:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0B03E6DCA;
	Mon,  6 Jul 2026 06:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783320128; cv=none; b=r+s8PFcz4WA4dyNqR9xKOjH4gbeyYcj/I4VsVxdZFVXqx63Qx4ADa3rgKbtYOyy765kyItDbfpsLXsRzej9Fa4MbXBqXAVhNbgiprE9iq/LnGej1sQZ1fBG1bfgS/wdWI/Akv5W7BuRkfJcaOnVz9B4WMiUV+AicrOBHH48kXSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783320128; c=relaxed/simple;
	bh=jbBpCOyUMEsy8a+GprXgH0vJEMLAOZ5R1XWQNLOUECw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JASpq2L9uJmjyGNO/4sr8BfFxnm+hcVsSh54nBXx6HUm66ixLtTaABbgkE8TtQwTrfBcv2aIYw9xOggdl3n3J66P8E6WNjqWBNGuRCno2WKV2WhDpcQgAsXs9E88EKpTajBZRwMDLTcGDLy/XTPF+BnqjzjR6LUai6C+rsz75dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEnjCdEm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 694EA1F000E9;
	Mon,  6 Jul 2026 06:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783320122;
	bh=5oFT09zUFU7HLvgp/oTJPf1QWhr+VlujSHQXzF8La2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QEnjCdEmzDbcDWp0J9fanINLQXyR0qTUfl6ukzs9TTR7gVUDX76uytWLnHgqtG6kC
	 9MjaZOEK3WE+Z5EZ3xFGl8XJ496+JZcbv9MRPw7bONFM+bBlURvUnZ9zjXfOEzZNDn
	 FCGtO3BG1K8d1vTD5M5pjjzzGthmsWVB2aN4makA4gAWQbc4vcsIGfW8wLun/uTjo4
	 MiJkzUMijYVCyad9w6gETrU1Gy9aqS2mx9+3Olw7W+Hrp+t1oRWKKWVak5A8IJ+9fH
	 7INBTePF/xNnnus8iLGdkzbGWqEhO3KXzqR5Roin6k3P2TFh5H0xmf3RfhRU1nwCmj
	 bas83PsntvNwg==
Date: Mon, 6 Jul 2026 08:41:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, goledhruva@gmail.com, 
	m-chawdhry@ti.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bus: Convert DA8XX MSTPRI to DT schema
Message-ID: <20260706-camouflaged-girlish-gazelle-e03b81@quoll>
References: <20260630124631.2991596-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630124631.2991596-1-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320844-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,ti.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 550AB70D720

On Tue, Jun 30, 2026 at 12:46:27PM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments DA8XX Master Peripheral
> Priority Registers bindings to DT schema.
> 
> Documentation:
> OMAP-L138 (DA850) http://www.ti.com/lit/ug/spruh82c/spruh82c.pdf
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>  .../bindings/bus/ti,da850-mstpri.txt          | 20 ----------
>  .../bindings/bus/ti,da850-mstpri.yaml         | 37 +++++++++++++++++++
>  2 files changed, 37 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.txt
>  create mode 100644 Documentation/devicetree/bindings/bus/ti,da850-mstpri.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


