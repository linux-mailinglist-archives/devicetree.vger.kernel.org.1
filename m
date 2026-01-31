Return-Path: <devicetree+bounces-261450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMXNA9gpfmkJWQIAu9opvQ
	(envelope-from <devicetree+bounces-261450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:12:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77455C2E79
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:12:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08D4C301C90F
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF39334370;
	Sat, 31 Jan 2026 16:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WrfCOFVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A189329E73
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 16:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769875922; cv=none; b=RqBtKA/apbVZPodnN5c9IPPZiNqzCmCxyML19xmAOzhQawJKRwYndkKga/VHj2yVCZxrk/EssSZdjaEChzdxn5EsMtNX52NdNYVEfEFzsFYRNeDlSOoEJra5WOEJLI7S0YFBE1RAlMBcTY17YImrVDmQ9sz+t/khjtn/loCrLLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769875922; c=relaxed/simple;
	bh=NGykyrCEun0ee1EVP6m9B/0TcaQSlwXO9GN4B5I/nt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J0W/TRN95jShQLX58sX1rUtnflSnVmn7Xo2SMYplEc158iHthoYnMMMQ4iYoUypeTsQeRihp2bhm75u5i8bww4hvz4l/t3yxzDTX2yX8xUsafcpzrQQq+8F8DG/B7OfV3uoumV302e+cpAro2+AD3OMe/YNJlTAZxAqMcIDdJaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=WrfCOFVk; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4359a316d89so2379094f8f.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769875919; x=1770480719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wt0nnlrDw5KDdKulBm7PH7mhYJ/mBjNcrtsksFarjCk=;
        b=WrfCOFVkfxIOeZ9NwHVVa0oDP0+p/tZFqJjc/OHkYIceVvJ3cJiBIgOC7vOPb1olqs
         r5ZsVK2uBgfo2ivCkGTyCg4WuehcqVt9RyeF+DWQNM8viRsOB4VkniIrwUjMaOibKaOC
         1t0Hp90ev03KpBAaFmZCUdRWw2wNQB3FcsG/eBTTO9VRT5boDU6T0b7A3O8bbDQlT48J
         BDlY7BCdHE+UNTWAJPbdhn7NEURvS60O0znC88Yn0BQ+Gw/Yf6bvS7MjS5McUNtvjrGw
         xkJzQ9U3gKfD4BKl6zJGuYGwe+JU+JHjMjQl59XPXSTjAxEUG9JZ5/KOHsCvHWWyRMIa
         AkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769875919; x=1770480719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wt0nnlrDw5KDdKulBm7PH7mhYJ/mBjNcrtsksFarjCk=;
        b=EMbLcMogK+buGmORmgwSLgugxQtUArMcEG5t2oL+owQHjd9If2+/xXzhTMjSttqq/Y
         z+c8nTNm93QAzV5OfLxogCGXMFuBH5RdVnJzGhlivrlqzJcEdz9BCSUoMQ08A66Sj9gW
         bfmDaWhhfSjO1jmQiOMahpHO1j1+YEH5FMEwCf5GC2UpyIEj0jxvATOF/0e2mOUhnQw9
         ZVscbPpWJm7MIoXV8AMRqj40XDiBb/2yeR0ZwD28yxnwb5jMLZeMKJxtzyX8YpGPKuDq
         jHxF7RnGlUQJ989fm+flGpHRx5oMGjNyuhj4hNRWGHDmCMaIc+LFuYWYpxWAlSWqRluk
         VATw==
X-Forwarded-Encrypted: i=1; AJvYcCWa1JGvyR461kUd9eLOl9Z+a/zaO+86er7VHsOfwahHk41aWPfu3G0nK9RJwgIGqyMpbMPWoxEALFyG@vger.kernel.org
X-Gm-Message-State: AOJu0YzRSMIwmV46hfjUfuHhjAHsx8ix3svWqtRB65QkVNDDm49eqvMu
	/AqqtV/jLl7GK4BkAG2zcdRAbci074e47vqI+vg8d0GyPbF1dVvYjyyL4ZvBhXQwSf0=
X-Gm-Gg: AZuq6aJdD/OaSl4NHteKY3MCSgsk0mtp5L2Itl6CPRjOOwaCGC+ySMKXmpN41ltTiN4
	CXojoTIOz+cbt+UlRDooXKtghUKiFeu5RaneTBMhfO5y+WcB70fT+4uFtV3zSISk1FHEnmcMlyB
	x6QC7TTSJDbALPvbOrc7L077DFdk3uZFesHNMf6a1bEQPV6vZVTtkXMIOqr+ce30NXTcthUT70g
	FJ6Tjecym5ICyCU+yo9+Kp+q9YpdwLZEJCkZhs4Jr9BUEYukIjq5C93JvcOXRkBuFKHjds5PiAO
	ZXQ3Im3JDeNa0GkbPxqOF643PnfA67e4jyiXCee1tgLULvOB5o2ea5SL7qRxSqr92IJdZKvKFYQ
	Fg9NozxcJ9mFPJZb8DetZ1BhFdSkuMVB5CjKN8eldIzodySyrfxdOunbcO8W2z2IiecXrWyDHuG
	iqiteJiswuzJtA7e8WMA==
X-Received: by 2002:a05:6000:1a8d:b0:431:3a5:d9b2 with SMTP id ffacd0b85a97d-435f3aa7aa0mr9659948f8f.39.1769875918622;
        Sat, 31 Jan 2026 08:11:58 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee078sm30719880f8f.16.2026.01.31.08.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 08:11:58 -0800 (PST)
Message-ID: <05128a16-553d-49d5-b09d-2c3e03cb4421@tuxon.dev>
Date: Sat, 31 Jan 2026 18:11:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/19] nvmem: microchip-otpc: Expose UID registers as
 2nd nvmem device
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-8-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-8-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-261450-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thorsis.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,mchp_otpc_uid_nvmem_config.dev:url]
X-Rspamd-Queue-Id: 77455C2E79
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> For SAM9X60 the Product UID x Register containing the Unique Product ID
> is part of the OTPC registers. 

SAMA7G5 as well.

> We have everything at hand here to just
> create a trivial nvmem device for those.

Please massage a bit the patch description to match 
https://www.kernel.org/doc/html/v6.13/process/submitting-patches.html#describe-your-changes

> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - no changes
>      
>      v2:
>      - Use dev_err_probe() for error reporting (thanks Claudiu)
>      - Move required register definition over here from removed patch
> 
>   drivers/nvmem/microchip-otpc.c | 38 +++++++++++++++++++++++++++++++++-
>   1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> index 34c0d7611f3e4..b35ed13b004bb 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c
> @@ -25,10 +25,14 @@
>   #define MCHP_OTPC_HR			(0x20)
>   #define MCHP_OTPC_HR_SIZE		GENMASK(15, 8)
>   #define MCHP_OTPC_DR			(0x24)
> +#define MCHP_OTPC_UID0R			(0x60)
>   
>   #define MCHP_OTPC_NAME			"mchp-otpc"
>   #define MCHP_OTPC_SIZE			(11 * 1024)
>   
> +#define MCHP_OTPC_UID_NAME		"mchp-uid"
> +#define MCHP_OTPC_UID_SIZE		16

I think you can drop these as they are used (individually) in a single place.

> +
>   /**
>    * struct mchp_otpc - OTPC private data structure
>    * @base: base address
> @@ -230,6 +234,16 @@ static int mchp_otpc_init_packets_list(struct mchp_otpc *otpc, u32 *size)
>   	return 0;
>   }
>   
> +static int mchp_otpc_uid_read(void *priv, unsigned int offset,
> +			      void *val, size_t bytes)
> +{
> +	struct mchp_otpc *otpc = priv;
> +
> +	memcpy_fromio(val, otpc->base + MCHP_OTPC_UID0R + offset, bytes);

Include <asm-generic/logic_io.h> for this one?

> +
> +	return 0;
> +}
> +
>   static struct nvmem_config mchp_nvmem_config = {
>   	.name = MCHP_OTPC_NAME,
>   	.type = NVMEM_TYPE_OTP,
> @@ -239,6 +253,15 @@ static struct nvmem_config mchp_nvmem_config = {
>   	.reg_read = mchp_otpc_read,
>   };
>   
> +static struct nvmem_config mchp_otpc_uid_nvmem_config = {
> +	.name = MCHP_OTPC_UID_NAME,

Should the type be filled here?


> +	.read_only = true,
> +	.word_size = 4,
> +	.stride = 4,
> +	.size = MCHP_OTPC_UID_SIZE,
> +	.reg_read = mchp_otpc_uid_read,
> +};
> +
>   static int mchp_otpc_probe(struct platform_device *pdev)
>   {
>   	struct nvmem_device *nvmem;
> @@ -269,8 +292,21 @@ static int mchp_otpc_probe(struct platform_device *pdev)
>   	mchp_nvmem_config.size = size;
>   	mchp_nvmem_config.priv = otpc;
>   	nvmem = devm_nvmem_register(&pdev->dev, &mchp_nvmem_config);
> +	if (IS_ERR(nvmem)) {
> +		return dev_err_probe(&pdev->dev, PTR_ERR(nvmem),
> +				     "Error registering OTP as nvmem device\n");
> +	}
>   
> -	return PTR_ERR_OR_ZERO(nvmem);
> +	mchp_otpc_uid_nvmem_config.dev = otpc->dev;
> +	mchp_otpc_uid_nvmem_config.priv = otpc;
> +
> +	nvmem = devm_nvmem_register(&pdev->dev, &mchp_otpc_uid_nvmem_config);
> +	if (IS_ERR(nvmem)) {
> +		return dev_err_probe(&pdev->dev, PTR_ERR(nvmem),
> +				     "Error registering UIDxR as nvmem device\n");
> +	}
> +
> +	return 0;
>   }
>   
>   static const struct of_device_id __maybe_unused mchp_otpc_ids[] = {


