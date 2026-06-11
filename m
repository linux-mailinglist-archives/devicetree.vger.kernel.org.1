Return-Path: <devicetree+bounces-310525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eE6YCh/pKmoHzQMAu9opvQ
	(envelope-from <devicetree+bounces-310525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:58:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 732C6673C7A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:58:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=okaG9bdi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310525-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310525-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13C8533E7E3D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 16:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF7A3317153;
	Thu, 11 Jun 2026 16:37:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9847F9E8;
	Thu, 11 Jun 2026 16:37:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781195875; cv=none; b=Dnrg4qyczii2m7oaXpQ+eg1umbBqE+Jy7hJVzgQVjRPMSNgmVKWcBzwDOkS1XGobIkUh7TcHCVQZ6GDwGBiHzcvNqxpc/WsrJdiRL0Y+M58uwg3Asqla0ROD30JbLvm4rzSMN1wnlLJdDXc1IAcy8rU36d8Mo8MdEqVpOenfJvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781195875; c=relaxed/simple;
	bh=Czp49NyWJhyOcAe+nFbYDUszD3TnaiMKBGQg3us4D+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G5zzD6fxVoHZ0GJVFlCbBIcX5lhgEVoeIXZcQ2SLe414FCWeu2PemjPabiMhh7Uf2K8GcSZdc0qPaB9BWp6klYETXUpz/778IepI9G4N4yCkgeHsoqxiH5mAfvyEHbHDuLiIYD5lJN9TKckBd8YjZVZljx72v2ZtEfGNa8FjyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okaG9bdi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 070CD1F00893;
	Thu, 11 Jun 2026 16:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781195874;
	bh=ef0nR/F/3mauVtjPQKNzv0MDN5cCbO2Pdn8BUSaOyxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=okaG9bdiR0+20Z2ZlUm2AZfM/nYhVULe6RDzWHnaRvEBHroTojrpfwlptOET66ZiA
	 LHiZgcVYzwnzyRk7IENhOSxWu8MFc6lvQeqxwcqqq/VVgOEKSOzw5AEsBzgNt13C3X
	 QyVc7Ru+IsBM7hgT1nA7hTZT19XrWi9VYnbH/vAFXguoHRl+Zd4s+yy3BwyPd4RnKb
	 OTjF+LleVIyGNWhC+5Xg5iyP/YkPGPpr36JlFVI5NP0lfNw+UF9oAkTMj6+6LGcT1+
	 ObsNTmr8+Q5r5sXFbOSMuj9eR5x8NImDfijzM6x7FzU8jmoqZHoGG7Xr7/NOKUXMTz
	 jnHBSoHogBd3A==
Date: Thu, 11 Jun 2026 17:37:48 +0100
From: Lee Jones <lee@kernel.org>
To: rva333@protonmail.com
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 3/4] mfd: mt6397-core: add mt6323 AUXADC support
Message-ID: <20260611163748.GB1212816@google.com>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com>
 <20260602-mt6323-adc-v1-3-68ec737508ee@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602-mt6323-adc-v1-3-68ec737508ee@protonmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310525-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,protonmail.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 732C6673C7A

Interesting.  Has this been considered?

/* Sashiko Automation: Issues Found (1 Findings) */

On Tue, 02 Jun 2026, Roman Vivchar via B4 Relay wrote:

> From: Roman Vivchar <rva333@protonmail.com>
> 
> The mt6323 PMIC includes an AUXADC. Register the AUXADC in the mt6323
> devices array to allow the corresponding driver to probe using compatible
> string.
> 
> Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
>  drivers/mfd/mt6397-core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> index 3e58d0764c7e..013b0857fb54 100644
> --- a/drivers/mfd/mt6397-core.c
> +++ b/drivers/mfd/mt6397-core.c
> @@ -125,6 +125,9 @@ static const struct resource mt6323_pwrc_resources[] = {
>  
>  static const struct mfd_cell mt6323_devs[] = {
>  	{
> +		.name = "mt6323-auxadc",
> +		.of_compatible = "mediatek,mt6323-auxadc",

[Severity: High]
Does adding this compatible string expose an unhandled edge case in the
auxadc driver?

If this device is instantiated directly from a Device Tree without an MFD
parent (e.g., at the DT root), dev->parent could be the platform bus
(which has a NULL parent) or NULL itself.

Looking at mt6323_auxadc_probe() in drivers/iio/adc/mt6323-auxadc.c:

    regmap = dev_get_regmap(dev->parent->parent, NULL);

Could blindly dereferencing dev->parent->parent here, or passing a NULL
device to dev_get_regmap() (which calls devres_find()), result in a
kernel oops if probed as a root node?


> +	}, {
>  		.name = "mt6323-rtc",
>  		.num_resources = ARRAY_SIZE(mt6323_rtc_resources),
>  		.resources = mt6323_rtc_resources,
> 
> -- 
> 2.54.0
> 
> 

-- 
Lee Jones

