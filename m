Return-Path: <devicetree+bounces-78947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E867913BBF
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:28:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 260D31F21988
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B7C181D14;
	Sun, 23 Jun 2024 14:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="o61UA9bs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF45F181CE8
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 14:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719152894; cv=none; b=BbWqg/nMhJ/KOE8raj8FqOqUmmyrM1U/CWjliTatkHSZW4rgJ5faxhBtTFJ1A6nFa4qwy1lgb8mLDu7gH7qWyvnnqQWXu/oKSaRPKXbqzNmyJYvxJ05IJ7o3lZ6Mg1pGZP1d/4LgNnqSncgv7RflMuYwyV9pPH6WNCbhlvrFIEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719152894; c=relaxed/simple;
	bh=p2f8DUSz8DROoAsYTAw+MXvtHHb2ZG99ZIQwCFQ4oL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RXTy5+7wnZty5hPjh13aPpGHoSDE2H5b1XG0kYwu5duBMMtJBKfHbuzBRTgGTemkAwubQF9brAvRrIa9ILlVKN7IaSgb8/9nbKgCwy7RkdvZMeNPHkQ8DVlrlqklCmW/B1nR3qkdUGDMVwHvJcm9B66L28fRxN14zSB4tJciCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=o61UA9bs; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-424720e73e1so28458165e9.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 07:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719152890; x=1719757690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C77wSrQB/NaBy48U37PFKpmHxfYcLZB3cUzjno4UYIs=;
        b=o61UA9bstgTqiTy5dQMqHedLciRkFFpHs4xLaCLWE0PVumFWEJjAn1ehdt67719UJe
         Wn4ROZsd9C/vyIDC8nfy85rjnC4l2vGQioELWBd6BpRsqywAymU2IE5l4N2EaDUXDNwR
         0gPkdJ20fItg1lFuuBV4D6yjBccSF4+lcobJF9V3FM8CPSX8gM7bScljBcJAXGgMBrDj
         BHoGI5Z5LvBdcB52Ozirc8n0Z7fnpkNy9tv5M/qEFvOH56Vw5tlyDmL03hXbuslAeyTh
         tAGmR157PqyPj7OLjcf74+7aGnwj9vWR9ADxswtfn+JZvBriealdPxSEi50aIklSnrdG
         6TrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719152890; x=1719757690;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C77wSrQB/NaBy48U37PFKpmHxfYcLZB3cUzjno4UYIs=;
        b=envDfWAyGto9+TyjW+Jknzusr1dsTs9UN+1rbWbosDFZH4WKOa2jqYpMSaQhpyTxNs
         nQ5JLZmn16dXUFNjXlVQFNmd1Vz7jPr7427Ec291tNjHZJY2tEkmfrKfUBuAzIZNU/yU
         mBNb9nCaEpbfRNeiUHKZPuudbx+HT7rRjxFRv6MfJHYdkogXIxMkLlmQ0GMYHQOSSS8O
         732sMWU76vzeDLVKzcn85wSLdBvhs2FbRGm7aANINSJ8KIfJMr3yipHC76uadKmMFsNn
         7LoQSVmQkUK6vYKsMQSZGQ5yUOAAd68Uc0uL7hTi+V2yFEDJVsw9VpO5ijj4O9jZvcuu
         Fgrw==
X-Forwarded-Encrypted: i=1; AJvYcCUsF54AkQ1Pzud59xksWkHbct4xZwbX2FApzc7v1GzRx5u8m1xgmMoTU8mtcwQhvMJ6/GLM4Lrz3hX5NnUzDK2qJp6QLA+2TYD9Rw==
X-Gm-Message-State: AOJu0Yyx5pKP3dVbsLvri9j7YmDlVFGG8UIluA/oqfaR1ufS9D8NsdG8
	HUCUeaumE24Y9weELQS5dM2C5W/8kIfhDbZuB5oCmjDCUeo93F3LPnYcXsYgJFc=
X-Google-Smtp-Source: AGHT+IFL0FEvHU9N9xYrTbQTmo7x5xkf9ARxGKoZM4nSOC4B4u7B6D2SfM5qGX6jy+kRHe70HXQwhg==
X-Received: by 2002:a05:600c:2106:b0:421:e179:b1d5 with SMTP id 5b1f17b1804b1-4248cc6666cmr17348815e9.38.1719152890232;
        Sun, 23 Jun 2024 07:28:10 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be9fasm142958035e9.16.2024.06.23.07.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jun 2024 07:28:09 -0700 (PDT)
Message-ID: <c4c2e6a5-3190-43cc-bdeb-9ec9d832ed24@tuxon.dev>
Date: Sun, 23 Jun 2024 17:28:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v7 2/4] net: macb: Enable queue disable
Content-Language: en-US
To: Vineeth Karumanchi <vineeth.karumanchi@amd.com>,
 nicolas.ferre@microchip.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux@armlinux.org.uk, vadim.fedorenko@linux.dev, andrew@lunn.ch
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, git@amd.com
References: <20240621045735.3031357-1-vineeth.karumanchi@amd.com>
 <20240621045735.3031357-3-vineeth.karumanchi@amd.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240621045735.3031357-3-vineeth.karumanchi@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.06.2024 07:57, Vineeth Karumanchi wrote:
> Enable queue disable for Versal devices.
> 
> Signed-off-by: Vineeth Karumanchi <vineeth.karumanchi@amd.com>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  drivers/net/ethernet/cadence/macb_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 9fc8c5a82bf8..4007b291526f 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -4949,7 +4949,8 @@ static const struct macb_config sama7g5_emac_config = {
>  
>  static const struct macb_config versal_config = {
>  	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
> -		MACB_CAPS_GEM_HAS_PTP | MACB_CAPS_BD_RD_PREFETCH | MACB_CAPS_NEED_TSUCLK,
> +		MACB_CAPS_GEM_HAS_PTP | MACB_CAPS_BD_RD_PREFETCH | MACB_CAPS_NEED_TSUCLK |
> +		MACB_CAPS_QUEUE_DISABLE,
>  	.dma_burst_length = 16,
>  	.clk_init = macb_clk_init,
>  	.init = init_reset_optional,

