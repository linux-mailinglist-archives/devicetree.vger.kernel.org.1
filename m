Return-Path: <devicetree+bounces-269584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LkwH276omkZ8gQAu9opvQ
	(envelope-from <devicetree+bounces-269584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:23:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9D71C38F3
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1437F3096B2D
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C929F41C2E6;
	Sat, 28 Feb 2026 14:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IA2/qqfN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A7F363C69
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288547; cv=none; b=NdddgAcV29tbMwKcvqLZnqVPOCtvRGRvnG9SzqteDK89IDPoAx0jNaODqJWt+zNqyjaXGQzebcn8YJq/dfYtO1NLB/wZvaUFG1PHzulvyOi5wqQVbSBGhvEnhPNVpXfr4MmEUuHz0wYjB5WZzg36sxXUkhFqbw5WFJc8MIKe8Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288547; c=relaxed/simple;
	bh=cdMeSBcwMEAfIQGzdu8kqieWYjvBMRGrwvzxRNQyUck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZIgtoU9I7zjCPrhyruI/OVNPe1uEW9JekdBwlXprMKDw42pHu52m1YOWEJbmspPc2w6ZP5htjg1Dp7hm9DgsKxzzipdQbAu6XA4+Sh6n+nfHe1lZQwubGgX+GiJ1l7x+pnKwGwF+cpF0SHnoQXER1sSL2uH1v23XJ1PLP0cCtxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IA2/qqfN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4836d4c26d3so20661515e9.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772288543; x=1772893343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vtW+TvDVbM5bVPkT5f4veuf3YOot6jvs+xND9WyGWvg=;
        b=IA2/qqfNf34lDP8pHByF28263YQ4Z6xRN5eQAXx49WmB9Iz9nSdt7dVcm5llJfHK7o
         Mmwj9XfBREp9JEnc7ihbGEhEw7+3gMo65ncWULZofDlknlEPZws2c+PkelB3rRuFCRdl
         qKfM0sRp/VG3+3FINgOjybBoTpQGIgdw3Mkw9r8AAmTDFiNavfVANphxpHNA6MkZPaIy
         2R+FbXoablV6wK2uX5E1lUogoecHV0zh7BOaevIkBWbrShS0sD0fk/8v/zBB/+taQv0B
         QS0nU6d8LBaWC8Q4UKhR2fPYiFvMGoKcWoVbfYArpgCMOwn/qGGXIr7uDJt8Mv24cLgx
         XmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288543; x=1772893343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vtW+TvDVbM5bVPkT5f4veuf3YOot6jvs+xND9WyGWvg=;
        b=PDo9ZB0CxO1ZfSJ3+XBrpaQRhZjtGOdLHkOLsqUvBPwRagHgIft2cP9iCzLLSkjXoQ
         b0HIZ759sC8OFqBOpAY0Cul6hu2pFTqwvchljDXdD1cPnnRAyL24deDtQtM8QxuZVgbY
         WbcjAvT3HDJp4GnIfNeBeGHGGPp3s/Mtp6CLfJqtvAApx1LeTjtUY1UNK2T/TibNjpNz
         ZuxV1qSP7zat6R77+Wwid0irgSgII4fXXqtdl9IXIyV+L0Z9yb0Vh7p2HKS2bJFPubwl
         hrv8tVEKwdt+iCxrIaP+GPuAwCw/fLxQUJG7E3gFNN3MRTOr3w3qDXxmsJIV5GoBGunM
         uLEw==
X-Forwarded-Encrypted: i=1; AJvYcCVCJ2KfWKLKLUybkQ99TFkNgmLvFctTL6UFRLaZMVfGQr2YQFPNRw2sA4hhSodsZPNiAsJSuUAErgyi@vger.kernel.org
X-Gm-Message-State: AOJu0YxBLdZXYAt8WwURNaei4zZVS04XsMrt1FIwWw3nRwBpdPAjZ6OX
	qh6bIYM3Wmg4ZiviZliQ/dyRUfRiQmvLGL0U0aPJGBOcca13rK8Gsp+TQz9ltwzzj3U4eQwbscU
	fatv5
X-Gm-Gg: ATEYQzyrHUvfaX5WzoQq7JrkW2XjlQd2jjYtC3QcyQ437hU2SclgFPceIhRHTnLov3r
	qIUsEweKhjf8l9JeNMVRtBylIoZ/BPJYbV4MUsFp2JG8srbZfLUodqDGJIgjPgMNl/gnR14k6RR
	rDwnNRjkfF5dzwIcmAKwhoS6UUlTQ9tDQ7wKV5AYq7tmyjaZAFwWiL3BlhKyTulOTvapOlER0Oh
	1fUfbMa0JIvxdzQrUK+NEsK6h/JDqYXXOCou0xO0pvE9b6uJ0b7amKjWTNOn2QrOCSZTm5gErCX
	JgVKRhJjZODZ5Rj9cXAjsY5M12Kv2/hGQu7O+IIDm1n/MHeHanW0n3AV18PUyPz18YF6GfO4GkP
	nAlsVNZUzkgNFJKjW5A2flSMowJoP2aJm51Y5D5WZcHxQnEvL5mgl+ETrZQwTXw00mxbjw2tkhz
	xsASfEfRtRp3a08Xh+5m81CVXT2iOEcA==
X-Received: by 2002:a05:600c:154b:b0:477:5af7:6fa with SMTP id 5b1f17b1804b1-483c9c2059bmr90939375e9.32.1772288543254;
        Sat, 28 Feb 2026 06:22:23 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb4f8bsm212800145e9.4.2026.02.28.06.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:22:22 -0800 (PST)
Message-ID: <9965d2fb-e1ee-4103-a5d3-01cb94468db0@tuxon.dev>
Date: Sat, 28 Feb 2026 16:22:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] clk: at91: sam9x7: Remove gmac peripheral and
 generic clock entries with ID 67
To: Mihai Sain <mihai.sain@microchip.com>, mturquette@baylibre.com,
 sboyd@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, varshini.rajendran@microchip.com,
 cristian.birsan@microchip.com, balamanikandan.gunasundar@microchip.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ryan.wanner@microchip.com
References: <20260212100147.5007-1-mihai.sain@microchip.com>
 <20260212100147.5007-2-mihai.sain@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260212100147.5007-2-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim]
X-Rspamd-Queue-Id: DB9D71C38F3
X-Rspamd-Action: no action

Hi, Mihai,

On 2/12/26 12:01, Mihai Sain wrote:
> According with datasheet table 12.1 the instance ID 67 is reserved.

Could you please mention the datasheet revision ID?

> This change drops the gmactsu_clk and gmac_gclk entries from
> the SAM9X7 clock description tables.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>   drivers/clk/at91/sam9x7.c | 10 ----------
>   1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
> index 89868a0aeaba..d9603f1124d0 100644
> --- a/drivers/clk/at91/sam9x7.c
> +++ b/drivers/clk/at91/sam9x7.c
> @@ -420,7 +420,6 @@ static const struct {
>   	{ .n = "lvdsc_clk",	.id = 56, },
>   	{ .n = "pit64b1_clk",	.id = 58, },
>   	{ .n = "puf_clk",	.id = 59, },
> -	{ .n = "gmactsu_clk",	.id = 67, },

Could you please keep this in a separate patch?

>   };
>   
>   /*
> @@ -702,15 +701,6 @@ static const struct {
>   		.pp_count = 1,
>   		.pp_chg_id = INT_MIN,
>   	},
> -
> -	{
> -		.n = "gmac_gclk",
> -		.id = 67,
> -		.pp = { "audiopll_divpmcck", "plla_div2pmcck", },
> -		.pp_mux_table = { 6, 8, },
> -		.pp_count = 2,
> -		.pp_chg_id = INT_MIN,
> -	},

And squash this changes with patch 3/4 "clk: at91: sam9x7: Add gmac generic 
clock entry with ID 24" and also provide a fixes tag for it?

Thank you,
Claudiu

