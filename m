Return-Path: <devicetree+bounces-147282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B28A37E0D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D4173A8A0F
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD84A1A264A;
	Mon, 17 Feb 2025 09:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nNA8vOHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C43D383
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783417; cv=none; b=QCUJaTFW9PoriCOAtGHFX0vF8ePu0rFMeXCQuK5bZhJs+656yznYuKkgtxg3huiSciWJ92S5d0/fiAhFyvoQ2Pw8w6IdMOJaoLX1qKJmSxCAZMcUDyYackBPWh340CxNsszzazCLBzgB6l7OtoV16aLQQbItgHGJ240Y2rBFTdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783417; c=relaxed/simple;
	bh=SbBlBZzIGQ4oFr/wQCCGvRGycBvG1+Zszb0mRW0nZhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O+CY/00Gt6OxPnH+Kqp5TUblsSPxsp6c6gtFMET98Hnq9bsokhfyWnjt4ULEP0N/V0+NN2Yka9TbSI349uhwaSjnyafWxEnVtpxLj6BGg6nyd6gaBArCK6FoYOF80wUezsvLdnIygv7AHm+YGPxHAunzS4bOBoQMcy8a706eiVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nNA8vOHC; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e04f2b1685so1411174a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783413; x=1740388213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8wgJxscDmc93zijAMt2W3LnwyWz16Wm3n10sGDTSupA=;
        b=nNA8vOHC3lqWYW1v9n9LRmW/IQp/ySSWpUyBNhNpQ77MlK13Cy/OQMQ3Ui0IP3jdOL
         e6ULup3EyyomvjotU4hAW/uQt9I5I6JM6lTtu5gaixyGJaJpOFRV9KbHW4oVikGiVL+F
         7zXWCRYOvmuH74oFAZLo/nAWpub7wZjC8KEKo8faYpEWBRq/D8ueTWzeW1bc38UcLxmW
         X3gOpnJJH0jr5Dm2AxdpLTSFiqkSvReZg2YjXhjVZm1LnPNYfnbzkdLPCeAcOFOzp0/4
         Zjh2Ti+ZkuvGAMVHF4s/sVFfI8BlKld2Luk76Q9zX1mnFiFAUTyEVcBa8TX9/sl7K9n1
         DdJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783413; x=1740388213;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8wgJxscDmc93zijAMt2W3LnwyWz16Wm3n10sGDTSupA=;
        b=ECru8yscCq+AKr2xfL6f3f7D1PjLTE+7f0soaU0ggNSvSkPmiV2MhlhOQ7Oygoq/9Z
         ZydXXdYsEJ1q0duUmNsMEehEk99qa7alX7N2Za2dRkkVoj5TfxB1lALs9+Qvdqg1kRMp
         uJVN9UbKhKY3b+6XWEa+N5Kqv2BD8SBL0y+1sm+Qn+xtVA/WVf52IcyEd8xhmhqkVL0Z
         kd8tB/EOgAS/zJ8mn0I0vnkuE4tgDsGlPaqMbaQndXD2hzLMaPo5s/X9DZPZAF35dQ8Y
         hCC13DTzm3OYtva3U5ny5XBWXF2YuHfxJzqwYWewl9jdmMjh2XXi94NXGetOuK9vfkn/
         tfiQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3x1OwsvwpKO0k5hkwU6KevdYHHlhpYylnjX0rxBaLZZryNmhp7YLog6ceNYSPIQUaEtclNJQlSfKp@vger.kernel.org
X-Gm-Message-State: AOJu0YybpE3A7hKTGOvs2pDXyy5Ol779vzD0eL+i9F3d1Fe3s+9qS3lQ
	doBhy0PkbXuNEI2YKMipL/+dDo7c6VngclwlLBBbLShOeaJnrYL1S+YmgUlU7DBmwfKa9BcXfU6
	j
X-Gm-Gg: ASbGnctpbKY4RqNdIhOKOLasHQGAtczDU337vIgxCnU/pWecbwqK0EpTZoeSze4bfQo
	fcUSzm5ADzpmJZ5jT/Hy6lSPBoUE7eJz6rbznOz57jIGbzoBYhxAXwAr15xg6iAMd8a5K7rSrSj
	9avFoXnR6nfayqetrLjR3e2ywm6eylKw8DlE/VGjJrc9mHLgCbxzjRInXIyqfKwSa7RXHt2n/hC
	8hE49psOIUF9FnR4KUHIBnZuXzg3KWV0Aapnqiy+gADusjIfmveaeklg+jVRJeFskHwWA10QP55
	lr/tGSHB+6XXKKxxCac1xOQ=
X-Google-Smtp-Source: AGHT+IGp/mriA1nqumOa8lLHSDzS7hm8UUj2lVCgT+kV+ET8dZlcSDmAKyr3/mzJIchHtsHlvM93eg==
X-Received: by 2002:a05:6402:518e:b0:5df:25e8:26d2 with SMTP id 4fb4d7f45d1cf-5e035ffa1a2mr21900403a12.5.1739783413260;
        Mon, 17 Feb 2025 01:10:13 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1d374fsm7279007a12.41.2025.02.17.01.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:10:12 -0800 (PST)
Message-ID: <f62d04f6-53fc-4d6e-8365-b919af1b5f26@tuxon.dev>
Date: Mon, 17 Feb 2025 11:10:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/16] nvmem: microchip-otpc: Enable necessary clocks
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250210164506.495747-1-ada@thorsis.com>
 <20250211065304.5019-1-ada@thorsis.com>
 <20250211065304.5019-3-ada@thorsis.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250211065304.5019-3-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Alexander,

On 11.02.2025 08:53, Alexander Dahl wrote:
> Without enabling the main rc clock, initializing the packet list leads
> to a read timeout on the first packet, at least on sam9x60.
> 
> According to SAM9X60 datasheet (DS60001579G) section "23.4 Product
> Dependencies" the clock must be enabled for reading and writing.
> 
> Tested on sam9x60-curiosity board.
> 
> Link: https://lore.kernel.org/linux-clk/ec34efc2-2051-4b8a-b5d8-6e2fd5e08c28@microchip.com/T/#u
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>     v2:
>     - Rewrite to enable _all_ clocks defined in dts
> 
>  drivers/nvmem/microchip-otpc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> index d39f2d57e5f5e..2c524c163b7e2 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c
> @@ -8,6 +8,7 @@
>   */
>  
>  #include <linux/bitfield.h>
> +#include <linux/clk.h>
>  #include <linux/iopoll.h>
>  #include <linux/module.h>
>  #include <linux/nvmem-provider.h>
> @@ -241,6 +242,7 @@ static struct nvmem_config mchp_nvmem_config = {
>  static int mchp_otpc_probe(struct platform_device *pdev)
>  {
>  	struct nvmem_device *nvmem;
> +	struct clk_bulk_data *clks;
>  	struct mchp_otpc *otpc;
>  	u32 size;
>  	int ret;
> @@ -253,6 +255,11 @@ static int mchp_otpc_probe(struct platform_device *pdev)
>  	if (IS_ERR(otpc->base))
>  		return PTR_ERR(otpc->base);
>  
> +	ret = devm_clk_bulk_get_all_enabled(&pdev->dev, &clks);
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "Error getting clocks!\n");

This fits on a single line.

> +
>  	otpc->dev = &pdev->dev;
>  	ret = mchp_otpc_init_packets_list(otpc, &size);
>  	if (ret)

General remark: please organize your patches as follows:
- dt-bindings patches
- driver patches
- device tree binding patches

Applying this to your series, will result the following order:
- dt bindings for clocks
- driver changes for clocks
- dt-bindings for nvmeme
- driver changes for nvmem
- device tree for clocks
- device tree for nvmem
Thank you,
Claudiu



