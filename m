Return-Path: <devicetree+bounces-261446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JEKOXwlfmlQWAIAu9opvQ
	(envelope-from <devicetree+bounces-261446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:53:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2C0C2CAD
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 704F930238FF
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CDF339847;
	Sat, 31 Jan 2026 15:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qqVN4ap1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2AE3254BD
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874809; cv=none; b=f1YfBHUrvdPPveKC7WF5Z7Revsk35l3rkQNVskIVychG/PITkHX569eQfqf5mWzwGRUr+CxBPfeMl4+5NogLuFksBe0943gNcwMjqsod4vwjNXHrvMwZJNBzUPwbJ+ZQSsX+YOg8ugwXebFEuM5QmoaWnXWcj7nR+RYS7rCC3+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874809; c=relaxed/simple;
	bh=UYAieOC/Sd+Ax/qh7bv2PygLHfhC007jTLqyzImPAxg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sYIBqMKvVjSeoIMrUTNppNPmhnzM3Wkv48Glfw3DbMg80ZTakmpjnxntjeM162Tv5i/zr3FyBL0Y9ke+0utuduL5KGUtwG+Dw8iF+yF6oBlVpSsuZesc4ndNrPzPE+RA7kprm684mk+2I7/clCCzb8MQAijcS6EG3Q6lwUL+fbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qqVN4ap1; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so32632755e9.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874806; x=1770479606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4/rhOR4DhfaQj1RK0nVCHUbeV/3vvEtnoUlZ/Uv+pIQ=;
        b=qqVN4ap1OHFkS9p2337iHHfOn4akGihduvLje5ZQ7tuTIIpRjZcuSjaMh5MYhTa25s
         nCXzU+5webRi19YluMMogCCvCJecjrzkJ9RLLJaTKfUCq/CXU80oDBV9XxHA9B+okRoQ
         T3POhgy1QPq6nfEXPsdFqme4w8mHNL4+zaZpT/QqbbBoMFXqKZA7oncJn/j2NTJL8xQE
         WZWcsatOJJrn9PWGs37t5AYd7HesH1s4bpXzQRGOMinFFYZjCAq5VThODApw5Liu3gta
         3hwveckonyM02jt3tb69EoyHCfBxNauYfteXPhdmjDhf7J1kTTU/Mqwv02V3F5Cj2ZPC
         m9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874806; x=1770479606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/rhOR4DhfaQj1RK0nVCHUbeV/3vvEtnoUlZ/Uv+pIQ=;
        b=ba7U1t3XYRpmMgfUNCsR5diaJpoHlgNdxReOiIiP2HUDvRlnJTskX9fUPudDxclWFz
         9yCSr1tSRN5YYcFlFC5u+jy6t0oIuCKsOTc0XP9GXoUhmo8EOZBsE7GpUZIgOG3bGYKp
         gYGp2EV4d8qi7gfu1TXanJE/pnd4VkZc4v502VVLSdUFy4m5a4Q28LuEfB+xKBYtu32j
         l7I3CLuU7vqsCTIIUlclTQo3WaQwWURrVp+EAfhOEb84UfV6mvn+hkaKOjfjHN4KLt5Z
         9HRZzrqSjlAh30ukEUeGg6BvwcJ3sb/cNL5fGf/WgE1nsR6H2qqfy/zReU+xDkq+oGmB
         NWFg==
X-Forwarded-Encrypted: i=1; AJvYcCV4caPxXFChAO1P65TPEZYyCoaHYqK9tRfy/5ihsU4A0H4Zv0ovUPy9EVa3qS19FnqWpuCU3sIjakkv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/IRcpzgu52iT0zaXcFTfIQFJbT9oOcOPsV4jF309v5wsSOXYT
	BmB3KicDPyc1bFBf1Ex1w5FpakONNKHYxy5jfbWH76N76CeJkb34OweGWwZ1BfZNpls=
X-Gm-Gg: AZuq6aIncioAwLrdaBzS1ieVyi9jvafAawzVIX2Ipt1RD7h88SJ2ZXFr8Bkw7qHo6l9
	1ANFKO8b1Li/38J/elsn3EMamThMATOpOl6meO7HezjQR/2HijtbcTdcs8gaSPoYCrpzvGVu+kM
	j8ugb194UmBzvlNp8+JTMYFfjP4C8e2ghdgWOHwL9SLf+i9s98Ri9f1bmNtL9fdjWkzQECK3W7V
	5wv2Dr7wrqRrHYQ2tnFZUoCGD3CDdbsq5YGlJAjbhxZmUfc3gZzmzazXfBbiH6hfbQoH47EEc3s
	b3Q4e5/pPbBeb4h7CA24Yk+PtdQ+SlnY55Rft/8v1mR7u8nAnofZsZAIVfaOeIEVINwRUvBBpwL
	u9Cul9ZNnvBsUzIABbp30NL1Fv/4YgZbTyyMrhHTGthUi8BkH/8IKOWsp4gwmvdiltBH4ar2sTk
	Dy9ewGYrFZc8PXJxwXdUkn1YvXEaQq
X-Received: by 2002:a05:600c:a08c:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-482db491ef7mr85082515e9.22.1769874806018;
        Sat, 31 Jan 2026 07:53:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e256482esm41222055e9.12.2026.01.31.07.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:53:25 -0800 (PST)
Message-ID: <920da850-7caf-4385-b4b5-10fe6a828066@tuxon.dev>
Date: Sat, 31 Jan 2026 17:53:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/19] nvmem: microchip-otpc: Add SAM9X60 support
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-6-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-6-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-261446-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,thorsis.com:email]
X-Rspamd-Queue-Id: 3E2C0C2CAD
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> Register layout is almost identical to SAMA7G5 OTPC.  SAMA7G5 has some

Can't you just use a fallback to sama7g5 for sam9x60 and drop this patch?

> additional bits in common registers, and some additional registers all
> related to custom packages in secure world.  None of these are currently
> used by the driver.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - no changes
>      
>      v2:
>      - Reword commit message (additional information about SoC differences)
> 
>   drivers/nvmem/microchip-otpc.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> index bf7e5167152cb..d39f2d57e5f5e 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c
> @@ -269,6 +269,7 @@ static int mchp_otpc_probe(struct platform_device *pdev)
>   
>   static const struct of_device_id __maybe_unused mchp_otpc_ids[] = {
>   	{ .compatible = "microchip,sama7g5-otpc", },
> +	{ .compatible = "microchip,sam9x60-otpc", },
>   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, mchp_otpc_ids);


