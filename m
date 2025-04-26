Return-Path: <devicetree+bounces-171191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4793FA9DB31
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 15:36:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 929A91BC33D8
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 13:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8491B87D7;
	Sat, 26 Apr 2025 13:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KlQN0NUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20022098
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745674556; cv=none; b=OiVB549MLZ7MCAKmugYG9i8EbAWjMO8EsrzylwbrPAoGLlg4+ge9WN+PZL9wnWYGljH7tGAoAXAJ9cN7dRDfXp8ByB4VRRtzcVJNBzCmY/t20tbUhjfET113K8NmB4j7P89W/J1QmD+XfCNCpvxH1ER+eoTu/pxkKWsQ0fyZSxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745674556; c=relaxed/simple;
	bh=yYCXS8YQZQjB4/1VmgQsilzMSLtC1TAavLUrwufzZm0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sXLtEGl7k1VcpVse+P3lUOAfRGbtFALh1Kn5qSOuG+McA0ZVxIosSPxG4qnE+lmCnVEcLV5jXMFrCQwo818Vrwvpf+LkSu3vVNnlpTavGE49hAUw49T7dMD7afwcwtrZ8YlMBVb9gGJizfa3qJp+pTpyEWvwIC1lwMBM5GveVgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KlQN0NUe; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so5562082a12.0
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 06:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745674552; x=1746279352; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tpKqYnXH25f3lqGlUZbd0EpV+dGbWQ4Gs839plYWRIY=;
        b=KlQN0NUemRBsu832EMeh6yyEqeGgVZ4fwQLH3wQT1m5B2scWGir3G1iqQyse3TX7js
         e2R8ckaJP+M8S3eMmUIfMAhobiL/ZuVFDdIRecn5b3xCcKk49y90yY8LTUR/sZWPmnca
         M7BXUNS+t05m0KqfL5NLbrauF1kkHfqIrHGU0YHgUg7DZN8Vjy0DCIehRmntQ8hgYKTu
         MCouS45uVX7FLkB4Yf4g1m8XdB0HSFwBSJMl8km7+D+KhsfnViaHmPSsWSEZR/Q61b9I
         eaDvqSwjSWbkhhOALpXsGn2dED9zPLwLJzGRm+lbChG+kJKHmnwDreb0F9PTYI8ja1vS
         19Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745674552; x=1746279352;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tpKqYnXH25f3lqGlUZbd0EpV+dGbWQ4Gs839plYWRIY=;
        b=YrI+YsFdJILgKH2ubrPqGEkxdDwOgIinj8XnjqouAZlqxAk5LG1v/mGSEry/YKx+q4
         sPFQ6MkVUrAp6EABEJx9Qxjfm7HBWGXQFNfaSR6/+PwiEoOKsZP1Y08hIGlstVT0nlwF
         sHNWxmykjffKjRAPB7c9vKFuywDXRTO4ZdLI/LqWIgoGdSNaZ5qLaJUt0zF5JPjOusRw
         HrvLBslMFNcFE4m/pmJmZ1910GHRuUFVsHU7LrXv1d3Q8u+VbVy7viv7GZKR3Rlep7CN
         WnsutNd3GZYqRe38hVbQkpCVNcegA2wFkPHgoSu5qSSNa9te5dZJgjgdZSrbWg8uVHlO
         WTKQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/YHDTa/lnE9N4QXhZHMHeW4vbvDV7TyMM9jn2MoOlhPY+/BGwoZYOVCT1fh+qKl+IOksOJ2JE5O4o@vger.kernel.org
X-Gm-Message-State: AOJu0YyrfPAokdT13iT1ylLNbQ3n2B4D9VHPxCECnBJhfPyHiY2X0R+m
	vF7yTUNP5/85oHUYWAEpMU43q3/4AcLjTRlIWqnZM4fBpS0AoOEvBck4KMIZlx0=
X-Gm-Gg: ASbGncuCoGsgxzD8rhX40dpvNsQwX1IolAUtGBmFJkqMA2Hp6gE7xTVTPETzTttjEYq
	R2Ge9PwVxB54fb6b0KXTUHsn9gk7Z5il5sOVu5VBAEivc5OO3ONqUKuXrz4z3xq36uMlzSv/hrM
	mqdGhqXVFR6cunZaQyLouM+jzb1W9dREnz8zCKK1prCCQguGpHHC65CiEgqgzvrM2aQQh6JZ6vI
	87r9zyJwg+dP+RmNg+OAW1+e8kNJecP/hZGIRwHRI6C3NIbUYBilPGp9V/ecBonPiXjBHNz1JJg
	7O3nozCNOdfeXn5wKfPcvJQ8KrvCrw+jmOoI2S1xpNFdqHtFyDvVhcl74jXn
X-Google-Smtp-Source: AGHT+IEqy1Bjndt2pvxsKMV5+EcxiW6j9NOhnrynY2cN18NYigRKOQiOJgaMqvmfCZqpsJ/rAvLIew==
X-Received: by 2002:a05:6402:4286:b0:5f6:23d2:e6f7 with SMTP id 4fb4d7f45d1cf-5f723a1346fmr5017034a12.32.1745674552326;
        Sat, 26 Apr 2025 06:35:52 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7035464e6sm2639700a12.64.2025.04.26.06.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 06:35:51 -0700 (PDT)
Message-ID: <47b54406-42d8-41cd-a561-9073db09666e@tuxon.dev>
Date: Sat, 26 Apr 2025 16:35:50 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] clk: at91: sama7d65: Add missing clk_hw to
 parent_data
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com
Cc: sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1742916867.git.Ryan.Wanner@microchip.com>
 <d634ae4f72bca022e205b03c01415e90fda0bc01.1742916867.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <d634ae4f72bca022e205b03c01415e90fda0bc01.1742916867.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 25.03.2025 17:55, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> The main_xtal clk_hw struct is not passed into parent_data.hw causing an
> issue with main_osc parent. 

Can you please describe the issue?

> Passing the main_xtal struct into the
> parent_data struct will ensure the correct parent structure.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  drivers/clk/at91/sama7d65.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
> index a5d40df8b2f2..08306261c9c7 100644
> --- a/drivers/clk/at91/sama7d65.c
> +++ b/drivers/clk/at91/sama7d65.c
> @@ -1138,6 +1138,7 @@ static void __init sama7d65_pmc_setup(struct device_node *np)
>  
>  	parent_data.name = main_xtal_name;
>  	parent_data.fw_name = main_xtal_name;
> +	parent_data.hw = main_xtal_hw;

I think, from time to time, you can still hit some random failure as the
parent_data.index is still not initialized. I think the problem may be
solved by doing something like:

-	static struct clk_parent_data parent_data;
+	static struct clk_parent_data parent_data = {0};

Can you please check with this?

Thank you,
Claudiu


>  	main_osc_hw = at91_clk_register_main_osc(regmap, "main_osc", NULL,
>  						 &parent_data, bypass);
>  	if (IS_ERR(main_osc_hw))


