Return-Path: <devicetree+bounces-261449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF/jLugnfmmLWAIAu9opvQ
	(envelope-from <devicetree+bounces-261449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:03:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20134C2E37
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F22E300916C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154BC314D13;
	Sat, 31 Jan 2026 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ji51cIoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFA52E54D1
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 16:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769875413; cv=none; b=RApdb6QR0MMCxe8SaLpmFhmPPkYAIRpA8VTLQ1lHElmEQTQFYwF5S7vXzObbARYSYVm+NO5V9cAZZprUuK/wMaG9iWoAdEVIF1iSDMo+RBY4HRQt8NG4m6CK+iwJyGwwKdCiLGnuNPCdKnWTNDyWb1ALV5mt4RaSCzcA6mMjAk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769875413; c=relaxed/simple;
	bh=65aEQ+psn0HxtwrakcrSAT8w75jbaihld9FOtkSvwM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OZe/rlZ8QGxOeJDuLfzn3HFfhzuNNjatbeBpet4AN4m7DBYJA5XTB06QGwHOrRJWYZDEQjBO1XS0M62zbl16jAlhEkESFeD3yqD6jvgfuzina8XKvb7MYtUJ7RHhjL4VItNGXDmq7GSruEumF6ml77naXBg2FHQSeVO9Wj3vPAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ji51cIoF; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806bf39419so25159685e9.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769875410; x=1770480210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0MlGEqpxPuA5ARImYdl/1cKu2LSvKdYbg1W1S81a7ZI=;
        b=ji51cIoFIclxfIQyadiHY7ipsYd7t3iHckjvs1ORsSyXrotWuMwoZqJ2N85y2drltu
         0KFyEXdiqQAwKwF//+APYOf+hwJQ/vo/795tVW9L0uJWnhqOTzM0hvH5aHZKP0T1ZjkL
         BGbmDUtpR2X6lP94/0mTEoyBpl8WU/On+TypZpM445UeIWUxVV/vWK0QMtgooCmv532L
         Nq1L6ra5z6NUYhZTj7f2A+q4B+bwcWodmjzp0LL4SW/b1vP/ZGM8RNj03nhzWwFz967D
         Ba99m6/AI/ndtOzmUVpDPd/pbGp4JgqTXFSSpVTk7wBevsRN/NAWLNyHMgUc9WzQpufe
         +TrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769875410; x=1770480210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MlGEqpxPuA5ARImYdl/1cKu2LSvKdYbg1W1S81a7ZI=;
        b=YqWnd97U3Q6x7hFHTkej8pZ/08DEdow9IjsWvttuW2MLFOQ5MUlfRYST9lV0HrT3CS
         m3mcPsqbGO4rxcck7sY0nBfBbrjJPlq1/oaR13DCOMXsHTZOGmq/m+/Q3KTxenvrQYy+
         zQTsDdiskBnyem7fU3XwdVKCNq82O/XVieAIMVoaIaeP0xZT2dgKujghb9yowy8AQFk6
         xPDXIUFzqju+msTXlAAx78FkYWWvoqYsG8TGgFcc5MKASHAFEF6mNG9Tg+1fzTkFDtM/
         gpCWhvht9T/AHUU7qbEhdXcmX/jb7J4EgDawW8oiYTmHBlJojttgteRlg5OcUDW07PhV
         2arw==
X-Forwarded-Encrypted: i=1; AJvYcCVn2iOZYgvOUQ7xMkS3SpTjtZB9YEcd1KfjEea/GtdShPret4vRAi69CjHd+3tUs2VbC17sOAEEO/VD@vger.kernel.org
X-Gm-Message-State: AOJu0YyN/CFPD4fRLSuRND1Ggn8M+JQiWU+/ddXW/YH25K4bajnfQAXg
	be9euzmYzOqqzTwg27R55/OipCB8UYG728GCSGUzaJ4BbcE+9LysRu9AfuEhkOxbroQ=
X-Gm-Gg: AZuq6aKXd+s9zymrE9Dq6KWI9V2gstTCz2lZQo2Rq/bL4Z6QRXBZ6OR+I6pwnLWDFRx
	9nKgb8dhnCv0D5zLdvqij2enSQAtAbHoKvYzse55tDlQQhSSNZuxKtJ/50p4Ua0mUmBrOtb3vo/
	Y9ZQ4okSLIEpAakiB1HI4/3yPtRKmVrZltL8Yiy8YfgX3TRJ9TbldN3dHusr4QNPSubUswqiD5Q
	iy/0eDwxKZS99LQ3g6SN7OUUmkNdYjAeAEKuuC265IvAHVX2iFNcufM2nACoTfzm+HinHxWj1Ah
	y83rlWm6NZ0eDivJueG8fdiHd8BxpKc7ckbixAWlFGRMH0JxN5dHV/zWJirf8NmBkcugYVmcupN
	Mik+eS+lI1YT0Gkl356CYbaKUnxR4hiGy1TgvxVQYui9BhOAqFBDR4skFwl6BfibmGK61Gxiwl8
	oVjB04PwGDds7GGU2uWw==
X-Received: by 2002:a05:600c:470b:b0:477:9890:9ab8 with SMTP id 5b1f17b1804b1-482db2591f5mr86282515e9.3.1769875409921;
        Sat, 31 Jan 2026 08:03:29 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1353f8bsm29406760f8f.39.2026.01.31.08.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 08:03:29 -0800 (PST)
Message-ID: <e0047afc-2109-4062-bc51-045ccd7f868a@tuxon.dev>
Date: Sat, 31 Jan 2026 18:03:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 13/19] nvmem: microchip-otpc: Enable necessary clocks
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-7-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-7-ada@thorsis.com>
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
	TAGGED_FROM(0.00)[bounces-261449-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[thorsis.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:email,tuxon.dev:dkim,tuxon.dev:mid]
X-Rspamd-Queue-Id: 20134C2E37
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> Without enabling the main rc clock, initializing the packet list leads
> to a read timeout on the first packet, at least on sam9x60.
> 
> According to SAM9X60 datasheet (DS60001579G) section "23.4 Product
> Dependencies" the clock must be enabled for reading and writing.
> 
> Tested on sam9x60-curiosity board.
> 
> Link: https://lore.kernel.org/linux-clk/ec34efc2-2051-4b8a-b5d8-6e2fd5e08c28@microchip.com/T/#u

Why this link here?

> Signed-off-by: Alexander Dahl <ada@thorsis.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> 
> Notes:
>      v3:
>      - Rewrap lines
>      
>      v2:
>      - Rewrite to enable _all_ clocks defined in dts
> 
>   drivers/nvmem/microchip-otpc.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> index d39f2d57e5f5e..34c0d7611f3e4 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c
> @@ -8,6 +8,7 @@
>    */
>   
>   #include <linux/bitfield.h>
> +#include <linux/clk.h>
>   #include <linux/iopoll.h>
>   #include <linux/module.h>
>   #include <linux/nvmem-provider.h>
> @@ -241,6 +242,7 @@ static struct nvmem_config mchp_nvmem_config = {
>   static int mchp_otpc_probe(struct platform_device *pdev)
>   {
>   	struct nvmem_device *nvmem;
> +	struct clk_bulk_data *clks;
>   	struct mchp_otpc *otpc;
>   	u32 size;
>   	int ret;
> @@ -253,6 +255,10 @@ static int mchp_otpc_probe(struct platform_device *pdev)
>   	if (IS_ERR(otpc->base))
>   		return PTR_ERR(otpc->base);
>   
> +	ret = devm_clk_bulk_get_all_enabled(&pdev->dev, &clks);
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret, "Error getting clocks!\n");
> +
>   	otpc->dev = &pdev->dev;
>   	ret = mchp_otpc_init_packets_list(otpc, &size);
>   	if (ret)


