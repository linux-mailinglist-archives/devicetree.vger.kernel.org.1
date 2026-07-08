Return-Path: <devicetree+bounces-322532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YWVzCS73TWpSAwIAu9opvQ
	(envelope-from <devicetree+bounces-322532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:07:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 606DA722788
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:07:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tp2i60Xp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322532-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322532-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F33A4304E304
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BDF53F20F4;
	Wed,  8 Jul 2026 07:00:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22983ECBD2;
	Wed,  8 Jul 2026 06:59:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494017; cv=none; b=pi1c+NF/9V0QQBoBCdtGYtUZsiUHO4fC/abbQ7ThSqhrx/ubAHPNJRfZ3M/GqiqiCMtifv3xPkV1hGaA9udFdTsC9nz1cNypT7aJq6Oi3bZSc8pzn38irOnFU0yNrzHQuIyFINzMV37ZgYfWzEDQokYXCk/GW8R/IdCWTYzcK9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494017; c=relaxed/simple;
	bh=UdPn7KgQpAM5efHb7R93tjHl4XQNuAQRnSo2okpp3YY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ajVLZclw1TOEbDS/8g8x+Ob8WTF0hYL1X19F+HbofWU9f/EU6Gs+3YlEa8lNU/45ujASq7lqw4Mms2gVFTM8Jzw7AiJWKuPdYlg400pBub8lKUNzCuRG6RiU7EOVMhmJV9ahl8xLYhdljUf7JUD+m2OuQiUh1qUzkutdVpTS/RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tp2i60Xp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 324101F000E9;
	Wed,  8 Jul 2026 06:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783493992;
	bh=v/+f4DSXKr6LsSnrzjxGc5X9148iKuxB8UNCTMax2rY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Tp2i60XpLw9y52p0jVg4GO9SdRn2TGTaUGcHoOr8eY3fcdnqUzv3/rAQCqxS6tShB
	 oTpP9wcJ+6yrPxLE47FwEV2tJObMh3IqWbNM1iP2jxRKU0MCYOe6IQQKdoFdu3OyCb
	 EtvtVou/loshwaSsZw78VNT1wpqtd93Sf4IB4K8IJzmvMHrT+mm3uo8LoANGLUQilU
	 WOVgT8hrJfveUpQ0RG3zmRMP5jTwq/F5U3byCqwkxPZ4ycPf9ye6L5NoD+McQo0QSy
	 jtdicsirYJ948Idf9JJDjrwLM2DAs26LZ2P4oEBnK9DsUEN6WAshutChR2BQOdkJCf
	 wTPgyLpVRiLnw==
Date: Wed, 8 Jul 2026 08:59:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, daniel.baluta@nxp.com, simona.toaca@nxp.com, 
	goledhruva@gmail.com, m-chawdhry@ti.com
Subject: Re: [PATCH v2 2/5] dt-bindings: soc: ti: omap-dsp: Make ti,hwmods
 optional
Message-ID: <20260708-wondrous-antelope-of-prosperity-7fa6a5@quoll>
References: <20260706085917.835875-1-egbostina@gmail.com>
 <20260706085917.835875-3-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260706085917.835875-3-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322532-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 606DA722788

On Mon, Jul 06, 2026 at 08:59:14AM +0000, Eduard Bostina wrote:
> Make the 'ti,hwmods' property optional to resolve dtbs_check warnings,
> as several in-tree device trees currently omit it.
> 
> A review of the ti-sysc driver (drivers/bus/ti-sysc.c)
> shows that the property is not strictly required for probing. The driver
> only reads it to populate the 'ddata->legacy_mode' flag. If the property
> is absent, the probe sequence continues normally without error.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/ti/ti,omap3-c64.yaml | 1 -

Please squash the patch. If conversion leads to known warnings and
original binding is not correct, then the conversion was supposed to do
all necessary changes. See also my announcement/guideline for all
mentosrhip-programs:

https://social.kernel.org/notice/B4DukxPLisztLVWuEi


Best regards,
Krzysztof


