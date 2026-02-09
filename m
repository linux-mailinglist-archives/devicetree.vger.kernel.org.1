Return-Path: <devicetree+bounces-264081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C/SGAUSimlrGAAAu9opvQ
	(envelope-from <devicetree+bounces-264081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A1C112C38
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3F5130057B8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CF33803E8;
	Mon,  9 Feb 2026 16:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nQlJZrHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE041DFD96
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 16:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770656115; cv=none; b=T4JqAzYkGKXEXkB+BoLLVr0YOUJxi419lUv3DwU4T9KD5ctCO5o8oHr/xAWYb48xcjJBgY/d+nmBXOsrbuUr54uWaSd+4w8ASmIq4bazyPmiC9c4gb8h3Ijo2cdBYi41Np60BKU7Ik+Cxrt0OoJsfjRPWWXDNhSqgIEw5VLer4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770656115; c=relaxed/simple;
	bh=v+qJA8TFZ4eF5QFXbyiL/bkW3f0874FEFdX1Ez8W4ek=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mRiJyiyISTfWQTwduhIQDIax18WP6KoEwmTWigluTWVOq5KJh1ugKzP4Ms4MWbpNsT3H7hD6dzJ/aqrCPmoZEMbyOTyI6AU/BzplvnY0Pch3mlTIyjScsiwH6OslRORiMd7K6sn9dP3ppJyMe6HbJGjwKEhI8vLZBvyBECK1SOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nQlJZrHU; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1270ac5d3efso2515303c88.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770656114; x=1771260914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FT92D+WEWdNugJ+hR3oZoUYir4mHwlrstI4CZKYkgrM=;
        b=nQlJZrHUe37oU+mPj4kMRZHnAw3hOWO4UBzJnUTNixpBePmumFDbEooij02YVHfo85
         QjDKCj4lb9Se2iCmIG4au3p7T17lLltyHx9WDCOIAsS60B5WSqY9lPtNo5ckR95Wn3Rj
         YZLajWk2Mkq0euleTnTKrsK4UY03/60nxCxyOcDcxAE7ZaBwM0QOZ+b3/MFH4uw3x3Kt
         I4rk/s9hcQIHyDaBz4IjpHP2aBTY8Mfce+M6UzFFI+kcf4bsSJueGPIIOukryGJwFUKa
         C6PyWhfZXiHZPjpLivY4inBhTJtXWlJvfJ6grQYZ6edMCOQHMEYaLJH8bDtRxAXZgaV3
         xMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770656114; x=1771260914;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FT92D+WEWdNugJ+hR3oZoUYir4mHwlrstI4CZKYkgrM=;
        b=NBpphUYfAKvBqtwTNdiJt0X+hSxT0LAY2zx7HdyHW6vK7m+R0qK9ssff9kS5zwPoQy
         xFB8sTX+RUVCFwmrrqS2JVDMfMQ96LjL3xVQXx8ZJhv5R6YOYuTcK+6pWB2VqotyA13f
         An2vdnMl7hMcl5ihLuXuPMM2Ay/uLC9joMaNc0xP+z3Q1NDR4Nc62iMPNettNZe5o9S1
         6fjOgQezXIvfzSBDn+Ni/0fxpwbkrqXawRoMy9f3BYtXb79bYGgIBRdqhC8Cv0sy8iIh
         LNxFRi4GwrPt6JWXm2AHQ0tDXagkjoPzwvrb8zBaEpLRcQEltqDn4NGrDEx9L8+UrVMc
         hbQg==
X-Forwarded-Encrypted: i=1; AJvYcCU/VflAt0Dv7CR/o4Hh3QKR31D+ehX9XMxH+Kf7/xOrTcxMsa9eLKvxVmEEFpkNPoex82D8m3d8aTxO@vger.kernel.org
X-Gm-Message-State: AOJu0YxpzJJ5AJTy70XaBdXKA5EQ3GBmz1zJsPrm2ExgKrHGEJb1byei
	DETeb2WCehniQU4kxasqfve1Uov9v07i/SgKiRQ2Oxj85sK4Tfgk5i34
X-Gm-Gg: AZuq6aIjx8st0xd0NnZlcl7lKSjNE48j+u31aviNPERf/6hW+Weaq276ocorEB1386P
	pdD7Zt3L31ehDviUGYNOUT1/OQ9eWdNprZwaOa65whVPj42pN0mXXleVwxR6iZAK0oLvAHOvAyn
	pxWmjn6Wa4A6nuyuCl9opJrGa7hTm8plshamRy9OqV7m7dUdz2+kNe7cbxZ/rom3GUcTMUWWGCZ
	aAKgOy4SBdAEAZzVY0AUv8TcPmEnBZDCNwN3jbbPM1+wu/yWOYZY5iY2qY4dJy/NXVGX7VnCcJf
	oIJZHvMseZC4yAH4ZbZp5y4z9ullFA+WpPFZlgb+DQi5yybkiUL5h42/ICk0c/oqEKx2ftHw1Py
	hWqoPYcsdla5OkWp7UWx5gsf2iykYMm/hlD2hxqued4B4g4fDbDBU4utc7drfd2AKi6RsU555eD
	iwQSBZ12iEHQlOlQLl2KxBVAH/Ghp9cErEGBa1w4nnkn6EodDf6lNfVllYX+0mJVn/GUyGmJ2p
X-Received: by 2002:a05:7022:309:b0:11b:a8e3:847d with SMTP id a92af1059eb24-12703f544c4mr5668376c88.10.1770656113862;
        Mon, 09 Feb 2026 08:55:13 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433abdfsm9196896c88.12.2026.02.09.08.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 08:55:13 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <836b87c3-7de8-4732-8db3-05b4ff271439@roeck-us.net>
Date: Mon, 9 Feb 2026 08:55:11 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] watchdog: rti_wdt: Add reaction control
To: Judith Mendez <jm@ti.com>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Tero Kristo <kristo@kernel.org>, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Davis <afd@ti.com>
References: <20260206234255.380530-1-jm@ti.com>
 <20260206234255.380530-3-jm@ti.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260206234255.380530-3-jm@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-264081-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,roeck-us.net:email]
X-Rspamd-Queue-Id: 04A1C112C38
X-Rspamd-Action: no action

On 2/6/26 15:42, Judith Mendez wrote:
> This configures the reaction between NMI and reset for WWD.
> 
> On K3 SoCs other than AM62L SoC [0], watchdog reset output is routed
> to the ESM module which can subsequently route the signal to safety
> master or SoC reset. On AM62L, the watchdog reset output is routed
> to the SoC HW reset block. So, add a new compatible for AM62L to add
> SoC data and configure reaction to reset instead of NMI.
> 
> [0] https://www.ti.com/product/AM62L
> Signed-off-by: Judith Mendez <jm@ti.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since v4 RESEND:
> - Fix commit message grammar and capitalization issues
> - Store only needed bool nmi field instead of pointer to match data structure
> - Add NULL check for device_get_match_data() with proper error handling
> - Rename data structures with SoC-specific rti_wdt prefix and add const
> - Update struct documentation and clarify WDT expiration comment
> ---
>   drivers/watchdog/rti_wdt.c | 39 ++++++++++++++++++++++++++++++++++----
>   1 file changed, 35 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/watchdog/rti_wdt.c b/drivers/watchdog/rti_wdt.c
> index be7d7db475911..c3c7715140ea8 100644
> --- a/drivers/watchdog/rti_wdt.c
> +++ b/drivers/watchdog/rti_wdt.c
> @@ -35,7 +35,8 @@
>   #define RTIWWDRXCTRL	0xa4
>   #define RTIWWDSIZECTRL	0xa8
>   
> -#define RTIWWDRX_NMI	0xa
> +#define RTIWWDRXN_RST	0x5
> +#define RTIWWDRXN_NMI	0xa
>   
>   #define RTIWWDSIZE_50P		0x50
>   #define RTIWWDSIZE_25P		0x500
> @@ -63,22 +64,29 @@
>   
>   static int heartbeat;
>   
> +struct rti_wdt_data {
> +	bool nmi;
> +};
> +
>   /*
>    * struct to hold data for each WDT device
>    * @base - base io address of WD device
>    * @freq - source clock frequency of WDT
>    * @wdd  - hold watchdog device as is in WDT core
> + * @nmi - Set if this WDT instance supports generating NMI
>    */
>   struct rti_wdt_device {
>   	void __iomem		*base;
>   	unsigned long		freq;
>   	struct watchdog_device	wdd;
> +	bool			nmi;
>   };
>   
>   static int rti_wdt_start(struct watchdog_device *wdd)
>   {
>   	u32 timer_margin;
>   	struct rti_wdt_device *wdt = watchdog_get_drvdata(wdd);
> +	u8 reaction;
>   	int ret;
>   
>   	ret = pm_runtime_resume_and_get(wdd->parent);
> @@ -101,8 +109,13 @@ static int rti_wdt_start(struct watchdog_device *wdd)
>   	 */
>   	wdd->min_hw_heartbeat_ms = 520 * wdd->timeout + MAX_HW_ERROR;
>   
> -	/* Generate NMI when wdt expires */
> -	writel_relaxed(RTIWWDRX_NMI, wdt->base + RTIWWDRXCTRL);
> +	/* When WDT expires, generate NMI or reset if NMI not supported */
> +	if (wdt->nmi)
> +		reaction = RTIWWDRXN_NMI;
> +	else
> +		reaction = RTIWWDRXN_RST;
> +
> +	writel_relaxed(reaction, wdt->base + RTIWWDRXCTRL);
>   
>   	/* Open window size 50%; this is the largest window size available */
>   	writel_relaxed(RTIWWDSIZE_50P, wdt->base + RTIWWDSIZECTRL);
> @@ -210,6 +223,7 @@ static int rti_wdt_probe(struct platform_device *pdev)
>   {
>   	int ret = 0;
>   	struct device *dev = &pdev->dev;
> +	const struct rti_wdt_data *data;
>   	struct watchdog_device *wdd;
>   	struct rti_wdt_device *wdt;
>   	struct clk *clk;
> @@ -254,6 +268,14 @@ static int rti_wdt_probe(struct platform_device *pdev)
>   	wdd->timeout = DEFAULT_HEARTBEAT;
>   	wdd->parent = dev;
>   
> +	data = device_get_match_data(dev);
> +	if (!data) {
> +		ret = -ENODEV;
> +		goto err_iomap;
> +	}
> +
> +	wdt->nmi = data->nmi;
> +
>   	watchdog_set_drvdata(wdd, wdt);
>   	watchdog_set_nowayout(wdd, 1);
>   	watchdog_set_restart_priority(wdd, 128);
> @@ -361,8 +383,17 @@ static void rti_wdt_remove(struct platform_device *pdev)
>   	pm_runtime_disable(&pdev->dev);
>   }
>   
> +static const struct rti_wdt_data rti_wdt_j7_data = {
> +	.nmi = true,
> +};
> +
> +static const struct rti_wdt_data rti_wdt_am62l_data = {
> +	.nmi = false,
> +};
> +
>   static const struct of_device_id rti_wdt_of_match[] = {
> -	{ .compatible = "ti,j7-rti-wdt", },
> +	{ .compatible = "ti,j7-rti-wdt", .data = &rti_wdt_j7_data },
> +	{ .compatible = "ti,am62l-rti-wdt", .data = &rti_wdt_am62l_data },
>   	{},
>   };
>   MODULE_DEVICE_TABLE(of, rti_wdt_of_match);


