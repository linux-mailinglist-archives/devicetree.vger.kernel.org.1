Return-Path: <devicetree+bounces-289762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN1LAdhf6mmrygIAu9opvQ
	(envelope-from <devicetree+bounces-289762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:07:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 566A1455E9C
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B27A430903F1
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 18:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DE837BE8F;
	Thu, 23 Apr 2026 18:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvSRYz7X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F68642AA6;
	Thu, 23 Apr 2026 18:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776967394; cv=none; b=oFrbYc0pxiaZjgVvaJnKwgLyW1Ji8gQhlExnd54qRl4598pGBcryKsPZLeZTP23TXWWhKbQMO4VYtzuohf+YArukNVvhhNCOkoAZJIPCJy5i8K/KUsaiya0z/srMa4l/31fm4ZIhbZS03avlpv85AheZPpWH2aNbw8gC2RBWn+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776967394; c=relaxed/simple;
	bh=EHpWjMAwCtqlswKrTVZYZTYG/QQCfwOqSJOsa6+21OA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Axd9mnrCpcKSB6eeZ8EfHCTEvxr5ExeAdYq+KzGffss3G/fGDeWTi5uSNYtvnCPFIy9l38n1wLQsGntSGvj1UiDqiiCRi/gOluW+T0KZlaFamK5ERXbYygwg1t0r8CZOG5zVjn1dcDme/ow7STg4/0Sxw1LF+S022xmo69qMeRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvSRYz7X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C56AC2BCAF;
	Thu, 23 Apr 2026 18:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776967394;
	bh=EHpWjMAwCtqlswKrTVZYZTYG/QQCfwOqSJOsa6+21OA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MvSRYz7X8GKaO059s0KYld760Ux6kXUjq7D6qr9G9qe1TNIBoUN1beuePVYfzhDi5
	 yrnGDBmxyQg8GDoebISFifYpTmOcFMuZQSFsBsJtysKDria3PPHuolKpf11+/Qr/tm
	 SuINKg6QDtEzXjunUi8/XC/0HNA0GX36Dqhv6Ga1WavNqil2YUTRhD+0pN81/TjbJT
	 s+WbM0qhkollvop2EbC0rYfj8NjeMN5HX4W3Jphyn8w5seuiMeGds5m0hSWUTXSOk3
	 oUvyE2YiQyTgG5Ea92kqzcke2EgSmU6P4DYBPqv/xqCk/G1+o+UDbkJnpTFnEVa21F
	 l2AiixKobgDSQ==
Date: Thu, 23 Apr 2026 19:03:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Auchter
 <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees
 Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 13/22] iio: dac: ad5686: fix input raw value check
Message-ID: <20260423190302.338ecdbe@jic23-huawei>
In-Reply-To: <20260422-ad5313r-iio-support-v1-13-ed7dca001d1b@analog.com>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
	<20260422-ad5313r-iio-support-v1-13-ed7dca001d1b@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289762-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 566A1455E9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 22 Apr 2026 15:45:47 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Use in_range() to fix range check for input raw value, which is off by
> one, i.e., for a 10-bit DAC the max valid value is 1023, but 1 << 10
> equals 1024, which passes the previous check, allowing an out-of-range
> write.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/dac/ad5686.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index 19d791c655b7..07a944311f0e 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
> @@ -185,7 +185,7 @@ static int ad5686_write_raw(struct iio_dev *indio_dev,
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> -		if (val > (1 << chan->scan_type.realbits) || val < 0)
> +		if (!in_range(val, 0, 1 << chan->scan_type.realbits))

Might just be me, but I do find in range a bit weird when the offset is 0.

I'd be tempted to just make the check >=
 
>  			return -EINVAL;
>  
>  		mutex_lock(&st->lock);
> 


