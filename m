Return-Path: <devicetree+bounces-290038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAb9EeNZ62nkKwAAu9opvQ
	(envelope-from <devicetree+bounces-290038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:54:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C2345E0EF
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 431DB3004F21
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 11:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097863BFE40;
	Fri, 24 Apr 2026 11:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmjCrgt/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95133BF698;
	Fri, 24 Apr 2026 11:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777031648; cv=none; b=lmpkeP4hZAIKroYAQD+iQ3iIj9mTQWczYQq+k/U+LlMP27yDwPne1D56m6HnAp9DxdPBA0cbdBCyH7tqS0ygDIjvd4bPO9V//XcY7sz9F7aRB3LUNNZ25CxvnEFuNZJzrhmttly5Ekxfg2oVFv952sv1YIlSiMNhTE8OXOEB3po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777031648; c=relaxed/simple;
	bh=808lTDl04hQuAcOTl7NSXgrrpWzJkXTovjgT4CRrcVc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jjWumxmTSNzRb2b0nSdW1zS7LGyTR7RgnPDx+asX+ttd2pvj3nUYVCaQbqWpNsPrpIYVqFh5Tkrok08F+/PQwpJb7GL4ieIj2ezkXprpRhOGL2r1eHirQPJnsBB57w3VbhHbj9jZXCJm6h+UF9BYv1rTiSWHiB8ENrnbIV5ccn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmjCrgt/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4E2DC19425;
	Fri, 24 Apr 2026 11:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777031648;
	bh=808lTDl04hQuAcOTl7NSXgrrpWzJkXTovjgT4CRrcVc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tmjCrgt/5IIvO1cH1j8dim9pGu/vc3SVVgOCPqM2tu7TMzEaRW1HMs3Z9FWvEhZ9/
	 qeq0JQPznbhJzsguPhjCanaBG1M3q0crsxG9zmx0aQh2Sd9/YZ13dGqCJVG3NcCzC+
	 tEuXcDv8AU2Odi5ilGTdrJVVrRRVtRGB9jl/FLyanp3zpkmGHd6RZJS8CnSK3nWzuy
	 2BnkgxpWCw/DLGfBoEju0gHq4IvyqgAcWNorxgqIuFyAOC1WsE88V65gcwd5kVrZbJ
	 BTuuU9kGKvT0gcYAxYggI1OEsdDH8frYE7iqdYKXhsWno9Mcwuyd6OAnldjfg4JP/Q
	 cC8SS+pLIDSEw==
Date: Fri, 24 Apr 2026 12:53:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Andreas Klinger <ak@it-klinger.de>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Andy Shevchenko
 <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] iio: adc: hx711: refactor to per-chip
 hx711_chip_info structure
Message-ID: <20260424125358.3fc54fe9@jic23-huawei>
In-Reply-To: <20260422175910.1258579-3-piyushpatle228@gmail.com>
References: <20260422175910.1258579-1-piyushpatle228@gmail.com>
	<20260422175910.1258579-3-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D5C2345E0EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290038-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,it-klinger.de:email]

On Wed, 22 Apr 2026 23:29:09 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Introduce hx711_chip_info to hold per-variant static configuration:
> device name, IIO channel spec, channel count, and iio_info pointer.
> Store a chip_info pointer in hx711_data and populate indio_dev fields
> from it at probe instead of hardcoding them.
> 
> Pass trailing pulse count directly to hx711_read() instead of
> computing it inside the function, and change hx711_reset_read() to
> take a const struct iio_chan_spec * instead of an integer channel
> index so callers can pass the full channel descriptor.
> 
> Use device_get_match_data() to look up the chip_info from the
> of_device_id table. No functional change for existing HX711 users.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
One trivial additional thing from me.  The white space tweak at the
end is correct but not in a patch doing anything else. 
Maybe that would be ok in the one Andy is suggesting that includes
the update to the text just above it (though mention it in the commit
message as a 'whilst here').  Or just check for other whitespace
cleanup and do a patch just for those.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 1db8b68a8f64..a444a2872257 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c

> @@ -571,7 +602,6 @@ static struct platform_driver hx711_driver = {
>  module_platform_driver(hx711_driver);
>  
>  MODULE_AUTHOR("Andreas Klinger <ak@it-klinger.de>");
> -MODULE_DESCRIPTION("HX711 bitbanging driver - ADC for weight cells");
> +MODULE_DESCRIPTION("HX711 and compatible bitbanging ADC driver");
>  MODULE_LICENSE("GPL");
>  MODULE_ALIAS("platform:hx711-gpio");
> -
Stray change.  Check patches after you generate them for stuff like this.



