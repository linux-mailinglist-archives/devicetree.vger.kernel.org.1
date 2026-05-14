Return-Path: <devicetree+bounces-297564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFQ3BE/IBWqFbQIAu9opvQ
	(envelope-from <devicetree+bounces-297564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:04:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0627454215E
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7AD8830055FA
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 13:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291753A9D9F;
	Thu, 14 May 2026 13:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIirzK/K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05791345CAE;
	Thu, 14 May 2026 13:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778763848; cv=none; b=beA7ku5Wwchcy6U27Rnv1HdKbUBYi4succfq2Q9GkDdU1pxna/09C4wLlfrPruBBPFUSuceVQ4wVVSM26cwtnO1zO7C0mkFgsqNzDLJzos2+8phtuFjHZWsF6wh+CFJhjO/Y5jKvffGPdgmDoaoxBdpOoTLWhW98Q5g1hxtOtCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778763848; c=relaxed/simple;
	bh=OdGG5xXy9ZZA5TnSlthBNAmvAAymtWcgYy8s949UAxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f00rtc5pfasGhMpUVMGc6Hf3Hb1tEvrUD880iw2QjxS9dD1Qvm/+XDyTMHIY1znpAVVIRKMCEc7qcAV3etIWM4Qh+x84sSoZtNmuzd/bcVS0UGbuaZC7HyhP4rh4pDRRUt+e7mpolAWtIgItLV6WwxI4eiWZL8gaqR9hF12y1E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIirzK/K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6180C2BCB3;
	Thu, 14 May 2026 13:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763847;
	bh=OdGG5xXy9ZZA5TnSlthBNAmvAAymtWcgYy8s949UAxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIirzK/KhZ4BYItDppKnSzFxSZAhqdCboG4hNbblFVl+JsTC2NBysOOa8vboKgv1u
	 k0PUFjbDH36xwEjcRiNYfNuv0TRR/rekwbUgt2cylkgQmc98SrS3hUV7FjWXAPuSca
	 UUp2Uvts2+wZR8EOYKrbZjFjSj4hS38HqnohnlM6GF5R762Cj4pgxBJTqHjlNzvdLD
	 iaRfq2vPngcDLECGbYICWUnKashX99DhX+xka8e2D53Jo1C3TvXel4a4xuguOwCMs/
	 R0fTbNmJpk75qVhDppO9txBp1T+3z2NqTw6fobXk+obVDOawExCODnE8rrjQhVHql/
	 CDdd/rD9XPIEA==
Date: Thu, 14 May 2026 15:04:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 15/16] MAINTAINERS: add MediaTek mt6323 PMIC EFUSE
 driver maintainer
Message-ID: <20260514-spiritual-grouse-of-abracadabra-d91bc9@quoll>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
 <20260512-mt6323-v2-15-3efcba579e88@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260512-mt6323-v2-15-3efcba579e88@protonmail.com>
X-Rspamd-Queue-Id: 0627454215E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297564-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,mediatek.com,intel.com,arm.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mediatek.com:email]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 08:18:29AM +0300, Roman Vivchar wrote:
> Add myself as MediaTek mt6323 EFUSE driver maintainer.
> 
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
>  MAINTAINERS | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 52249c301633..bf2e066f377d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16342,6 +16342,11 @@ M:	Roman Vivchar <rva333@protonmail.com>
>  S:	Odd Fixes
>  F:	drivers/iio/adc/mt6323-auxadc.c
>  
> +MEDIATEK PMIC EFUSE DRIVER
> +M:	Roman Vivchar <rva333@protonmail.com>
> +S:	Odd Fixes
> +F:	drivers/nvmem/mt6323-efuse.c

I don't understand why this cannot be one maintainer entry.
Really, these are just single drivers.

> +
>  MEDIATEK PMIC LED DRIVER
>  M:	Sen Chu <sen.chu@mediatek.com>
>  M:	Sean Wang <sean.wang@mediatek.com>
> 
> -- 
> 2.54.0
> 

