Return-Path: <devicetree+bounces-293426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CUHFT77+mmHVAMAu9opvQ
	(envelope-from <devicetree+bounces-293426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 10:26:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5124D7D46
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 10:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 938B5301285A
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 08:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699EB3E3164;
	Wed,  6 May 2026 08:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyEHbRzA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588E14B08A;
	Wed,  6 May 2026 08:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778055991; cv=none; b=gU8/RO6RCwDlGRpaQ2lFaAB68dFEGC4Bak2F5gneVxquUXbH1XHUPheJvB77THSpRo0DlXr/m+z6ogOBiujDu8uuIefeXJtSnOFApyX+8Nit4wv0QoUsZl/qnSN+CguLpJnHdGBtaAzIySvpRHgQKEKtdKqDCcLdfqHTS2JYytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778055991; c=relaxed/simple;
	bh=DwhWJ+pjboLiRZQ//nb4qIvtmoRjATdD0FdPcN1x66U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sFD6gTQeecJaeA4nE1v8fFShlnGFq8XgZ3KqYvv2H7YTkdj2H34EXMhwKFUTUB+fwTzp4Zh+VyqUOB5xv2nEz06SR9zT2FQaJKFcCo4y+LFibZJlW1QTY8AUgGsvbR9y93EvR4P83sPp7z8IRbD8bUv+nV2ybbwLmeN+v9uDaMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyEHbRzA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52B52C2BCB8;
	Wed,  6 May 2026 08:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778055990;
	bh=DwhWJ+pjboLiRZQ//nb4qIvtmoRjATdD0FdPcN1x66U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PyEHbRzA0y5lw0cj+yZr4bB+/4LvtgCP5SZAWG6zAEiNWvUdwLqXrq/BTzFn8uidp
	 zCye+WOEYVheWeB4oZEWhI1hhXht+PaEFaau5JS9P8QZGSnOVnTGBZfDpkPxGOz5CR
	 ZeecwFgVF5XoK+N1H8szpwHjF9fTzPHmTTiNOag/ywoMra5CekYiXgh8dPO+Yyco8q
	 sta4sZx/DJ6bnGbyHxTLcGV95YQbaWusIs7JM3CVHuvk9uw5OmfEDqO57MrClW5qDY
	 B+yCW/OkgDnoEd11cuzqGfdUwNnmMQViqkPERV8RKWigR0c8lKA4qYVg58OaO9bSIS
	 YjqVfCLxnte1g==
Date: Wed, 6 May 2026 10:26:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Srinivas Kandagatla <srini@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Lee Jones <lee@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 13/13] MAINTAINERS: add mt6323 drivers maintainer
Message-ID: <20260506-honest-cyan-cow-d6c5b0@quoll>
References: <20260504-mt6323-v1-0-799b58b355ff@protonmail.com>
 <20260504-mt6323-v1-13-799b58b355ff@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260504-mt6323-v1-13-799b58b355ff@protonmail.com>
X-Rspamd-Queue-Id: 5E5124D7D46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293426-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,intel.com,arm.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

On Mon, May 04, 2026 at 09:25:05PM +0300, Roman Vivchar wrote:
> Add myself as MediaTek mt6323 AUXADC, EFUSE and thermal driver maintainer.
> 
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
>  MAINTAINERS | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d1cc0e12fe1f..53493a24d00a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16337,6 +16337,18 @@ S:	Orphan
>  F:	Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
>  F:	drivers/mtd/nand/raw/mtk_*
>  
> +MEDIATEK PMIC AUXADC DRIVER
> +M:	Roman Vivchar <rva333@protonmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/adc/mediatek,mt6323-auxadc.yaml
> +F:	drivers/iio/adc/mt6323-auxadc.c

This should be squashed with individual patches. Otherwise how do you
imagine this being applied? By which maintainer?

You also should not merge independent patchsets into one patchset. I see
no dependencies here at all, although if you fix your MFD binding then
there would be a dependency...

Best regards,
Krzysztof


