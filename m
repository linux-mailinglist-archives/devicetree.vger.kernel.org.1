Return-Path: <devicetree+bounces-289556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOeVG8XU6WnxlAIAu9opvQ
	(envelope-from <devicetree+bounces-289556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 10:13:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E1744E665
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 10:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C29C93042D31
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 08:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1077B364EB1;
	Thu, 23 Apr 2026 08:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HzewHmE8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5513826ADC
	for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 08:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776931990; cv=none; b=NpP536yZV1pY+CFUiqX3o36070fxdq2rH6Rj1gGa/5LI9DEAkJB7G1nFP67fibOwfu3kLuPU+/XWDajaLwVc0YY7Ry8UpQLy/B1F+z82b7EemwSk7bq42UuZrnKZX3pfPMNXYZisScyD583OnagcwZkuYU/8DGjQoHBffThxxv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776931990; c=relaxed/simple;
	bh=LnSlgQumZUymdbffnu2vKTkuUg/jqjTtpU53P+tI4/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LJ07KjUeYjjSP3YEQllqwLC+q73yVDlGTyqPRY6DNt4KbfWkaEPqVitYL+WLHXK1v1rx3xfui8dOpw+A0ttj8dTey7eLxXvqWkEslnFgaElb3ppY6mkfMpSG1otf6rDjrt1y1lFw2Ktu3ct7BE5v57eImjtvL5pRv0up3ea3dw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HzewHmE8; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48374014a77so82903975e9.3
        for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 01:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776931984; x=1777536784; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TJ/DBvdc9fYsH91lLLkmQGITtRq+02I8omXtrs2jaHE=;
        b=HzewHmE88QfzJe5H8u7jpQ9L32urpkszkqUX7kZb83fDqw12zm3MQ5qRLHIkWFehkC
         b6JtwqSubFjuZAZCoZalERm03pCc2syyDbUwQg/CQJmgcZW4fNofqKBiUZDLD0AzvMfZ
         ZIiL1/36bZ3+jSD2Lsyp5OwzSf6Du9eGUw4KXevieTB1MrXEb3nEtt/424neKKaQHiHq
         g9HqqJsq464f1gs1twntie7bepbsyFIMtZqL8YAKS9Rcs4eWcB+67JLpPdfhKl1Ky7eM
         4uny3ylFz9R0ucfO0b63dC1RAgWgGub2zTlzlFPboIt00yHEwc3Q3qK1VL1QKs9klw1P
         W8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776931984; x=1777536784;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TJ/DBvdc9fYsH91lLLkmQGITtRq+02I8omXtrs2jaHE=;
        b=OiV35Qw47rmy3jV1E/tYR1HqPlRlvRtkyyM0k1BRGqfJmkU1HLhp9xDiXx419LEGGM
         YPg7PPcYwCI/SDDPZ/BgpKPVvfy/pqcqJaBt+ESRzWRv37uBfccU++uxLq2OSNKVEv2R
         IQbCaK3AB6fyBiWRPpG8mJT7zQpPbtRlFENsCPXzEq1SE1qkInd8JvkHvVbSdqLnv2EL
         Z4mJOVM0X8oQy30QVZyV1GIPRX2tDAkB2eZPjEAY8jqXDAa0n2x9I8PZnugg4T8U1TyG
         ohXzlFdR5ON/+nVtTecmNYG7pinLOyOI+XOwsfSIdlKFevwNSLHoZn1caUvmw3mdc2wD
         l7pQ==
X-Forwarded-Encrypted: i=1; AFNElJ//VyIaMNkAU8biQRzUEVqOzzgkw8HmfxA9K437/FYLverEiXh1CKYUYqwtmPDg8b/R6TZto8k4Zv5E@vger.kernel.org
X-Gm-Message-State: AOJu0YzKNdbbSOTCjrgAP+uBPlUvqDdWF5B7W/8kEn6wcUpSJxZwL7ds
	jQ7dGB13/E0lXZxl3OczB5WpTlk21ZPgwnj4SfYSvfJzCTIsB5OQa9FD
X-Gm-Gg: AeBDievqXeKnPjO8J117K4ons/ZzkhGjJuGjRfitZoxYWfKHXfOCOPRFmqOQX/lD9aa
	ONuhiFbF7QyJ1a5A1AkpkV9kjLZOJZUC5VvTXd1ZXmTiwV7lu1BE35QpYTmxyXvnFDRmOS+YhOS
	9slKKWfatPDA9oWr9LtbVfIFmydl3W3i0IvUP2UEfsL1FRx8DgAI2sk1gKiOlf5fZy2jS5igfip
	KbtQrYu/RJvZfpRt0UKnhm1uT41thDJeHFKbhwBE+QPfpkXmAYvGpJ1YxRUv+gAPUoNMRqUPjmg
	wE260/R31kcxxqlkprrMuYuB0VVjTjetp9V2s3jmBDNR0fO5eEh7uUdtbOvAt7O15wRL3s4rVaq
	XjMh6kuTFD4hYrenKJMTbm1njyqUTaaMK/+bKHqB2nQlmLj7WhdW1ZMZzC1ObkGse116hZI/JZa
	It80YhJH9pv4J05BuNdjBN97Tt
X-Received: by 2002:a05:600d:10:b0:489:1b0c:8b43 with SMTP id 5b1f17b1804b1-4891b0c8c48mr201117645e9.1.1776931984093;
        Thu, 23 Apr 2026 01:13:04 -0700 (PDT)
Received: from nsa ([45.94.208.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc100162sm517098165e9.5.2026.04.23.01.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 01:13:03 -0700 (PDT)
Date: Thu, 23 Apr 2026 09:13:54 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: rodrigo.alencar@analog.com
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Michael Auchter <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 13/22] iio: dac: ad5686: fix input raw value check
Message-ID: <aenUZEkeDGaovVir@nsa>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
 <20260422-ad5313r-iio-support-v1-13-ed7dca001d1b@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260422-ad5313r-iio-support-v1-13-ed7dca001d1b@analog.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289556-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E6E1744E665
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 22, 2026 at 03:45:47PM +0100, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Use in_range() to fix range check for input raw value, which is off by
> one, i.e., for a 10-bit DAC the max valid value is 1023, but 1 << 10
> equals 1024, which passes the previous check, allowing an out-of-range
> write.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---

I'll reply just to this one but it seems to apply to all "fixes"
patches. They look like a real fix so I would expect to see a Fixes tag
(as Andy suggested) and see those commits coming first in the series.

Other than that, code looks good (for those patches)

- Nuno Sá
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
>  			return -EINVAL;
>  
>  		mutex_lock(&st->lock);
> 
> -- 
> 2.43.0
> 
> 

