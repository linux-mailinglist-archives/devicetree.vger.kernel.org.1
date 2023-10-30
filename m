Return-Path: <devicetree+bounces-12733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1587DB468
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F68F1C2087E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F6286AA6;
	Mon, 30 Oct 2023 07:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CV75ipwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9250363C1
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:35:18 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3DAAC2
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:35:16 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso31695135e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698651315; x=1699256115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f97Y/pF6GfJC32Gc9bd7nAUI+uBePdpFVeCObiA5WWk=;
        b=CV75ipwQQo2kJ11W8Y1fATE+Q3cymViHmAUTYfh1yX3gNk6VEJn0v68egnoi3zbzjs
         3hwqVaHTpq59o0a66nK3QM/D9tiJz8woyR2Qy5qfaDXfXgu0L/50lUBP9i5Yh/WUOpS4
         LySHvy9nH+sUIROAykP1XGIkdoDYaWZam4vlhcYGtwOf08FE65gK7EE6j4Rcrn/e3V9/
         r9TQ0IVRZftYW5MLq9iTQWgGuWWi11Tz6BQai5NLECEdxtizTEdNVZgIzh+teKuiGP83
         HIEhrtro1/DsvUw1txfTOXNo2NxONAeo4CfW486iDWjPAggYT4aCM0ljF82XMbu1Xo8I
         TUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698651315; x=1699256115;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f97Y/pF6GfJC32Gc9bd7nAUI+uBePdpFVeCObiA5WWk=;
        b=Is6/pgUnkoTJmHf1/jMlRi15FkaQfGOdkYfusDzAakxQmvHmqsN2rem3fTie7Ab/EF
         D8edSzvhVN9CTPaAdmokK0FmjtvEY+ZY7pfc5rmpM6ML+Hol67zqC2Fperp+TbYh1Tpu
         YRKdkCgtdmHsPTPlkxT2qmABgwCZXMc12Pi/pFI7Ass45I7wA4C0IAR8xsIOqLOXxswf
         gscOOLIQuUIXxWV4bduOz2zCx4fHpjEsnfzr2nxELd609vXL8Wa/74qyRG21tuGWNQuy
         AhtK19nfrMl0KnMpZ7zUK1EUZn1HrWFMuSKXkQLpTKVSKRWwAMm188e4FHskN6O8lGNX
         vJxg==
X-Gm-Message-State: AOJu0YxVRHcmCvEYb/EWZGDz3WhwKvYjNOibmRzVx6UblmaOvpDzu2gb
	atOTckZg1alnxl+EkjbuUsbP4A==
X-Google-Smtp-Source: AGHT+IF789qdL+Zbc2tA+RA+WyMvXNHyagw19RM5XdsgJaqN/f9Yvwt0258CiFbBwrJgoGa2vGu48A==
X-Received: by 2002:a05:600c:4445:b0:3fe:1af6:6542 with SMTP id v5-20020a05600c444500b003fe1af66542mr7432336wmn.33.1698651315072;
        Mon, 30 Oct 2023 00:35:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id ay32-20020a05600c1e2000b004065daba6casm11907165wmb.46.2023.10.30.00.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 00:35:14 -0700 (PDT)
Message-ID: <0843027c-88ed-4c7e-a054-15277e2a0cb5@linaro.org>
Date: Mon, 30 Oct 2023 08:35:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4][1/4] mmc: solve DMA boundary limitation of CQHCI
 driver
Content-Language: en-US
To: Jyan Chou <jyanchou@realtek.com>, ulf.hansson@linaro.org,
 adrian.hunter@intel.com, jh80.chung@samsung.com, riteshh@codeaurora.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 asutoshd@codeaurora.org, p.zabel@pengutronix.de
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de, briannorris@chromium.org,
 doug@schmorgal.com, tonyhuang.sunplus@gmail.com, abel.vesa@linaro.org,
 william.qiu@starfivetech.com
References: <20231030062749.2840-1-jyanchou@realtek.com>
 <20231030062749.2840-2-jyanchou@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231030062749.2840-2-jyanchou@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2023 07:27, Jyan Chou wrote:
> Due to synopsys data book's description, it had a limitation
> while using DMA that buffer size and start address must not
> exceed 128 MB.
> 
> We add an option setup_tran_desc to make tran_desc setting flexible.
> 
> Signed-off-by: Jyan Chou <jyanchou@realtek.com>
> 
> ---
> v2 -> v3:
> - Fix auto test compile warning.
> 
> v1 -> v2:
> - Export cqhci_set_tran_desc for setting the descriptor's callback function.
> 
> v0 -> v1:
> - Separate different patch supports into single patch.
> ---
> ---
>  drivers/mmc/host/cqhci-core.c | 8 +++++++-
>  drivers/mmc/host/cqhci.h      | 5 +++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/cqhci-core.c b/drivers/mmc/host/cqhci-core.c
> index b3d7d6d8d654..5560329d2a7d 100644
> --- a/drivers/mmc/host/cqhci-core.c
> +++ b/drivers/mmc/host/cqhci-core.c
> @@ -474,7 +474,7 @@ static int cqhci_dma_map(struct mmc_host *host, struct mmc_request *mrq)
>  	return sg_count;
>  }
>  
> -static void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
> +void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
>  				bool dma64)
>  {
>  	__le32 *attr = (__le32 __force *)desc;
> @@ -495,6 +495,7 @@ static void cqhci_set_tran_desc(u8 *desc, dma_addr_t addr, int len, bool end,
>  		dataddr[0] = cpu_to_le32(addr);
>  	}
>  }
> +EXPORT_SYMBOL(cqhci_set_tran_desc);

EXPORT_SYMBOL_GPL


Best regards,
Krzysztof


