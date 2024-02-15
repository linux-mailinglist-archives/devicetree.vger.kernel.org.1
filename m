Return-Path: <devicetree+bounces-42206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7E0856D74
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 20:15:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F58D1C21736
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 19:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8528139563;
	Thu, 15 Feb 2024 19:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mU6mpivB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62C6139578
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 19:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708024514; cv=none; b=aVBlw5cmtkc4M0kSAV+z3+fxHyKcDIJpzk6AE331O6LBHycnqfFpLvGksNpdUcAJ3Ttrj/Qm/71gNmf/kTliVrNx/l08EhRTFkxJZ+vX01h6jXCNAwBIiGZTPBt2UJl8h+2jX4MRyS1EkGPiXg88jqvlMMO+6VPHM8q8pDoAdm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708024514; c=relaxed/simple;
	bh=RWn2sDTInPL6ORCFVxTvBqxT4MyC2F+J6tkFP65XU1k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rEPyuATcP42t6+T/g7OF5RhjARS3sGKRULn1rv5ql/ItfXEyadYW0zWaJOl0zTDkZAtInPY3ORMZr6XeZFUmcIUJxItKsUdDp2qkmgATWioik1hr9rE74WAwBA3P8EcFC3IwFBWqhRgHqCApqpuZaO1oV44uw0Zv3q8+IGGhxkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mU6mpivB; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-563bb51c36eso997619a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 11:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708024511; x=1708629311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=03bx4h6W54n3ll8KPUGR6EpaQLp3pZs4yWzEKDL4cxo=;
        b=mU6mpivBWtfdgL6bfMHAGgbR+pygyy+4K3TIlWzhiXQFhpdBEBpt18KMj1K57bgmjn
         2OFzdpD1QZ7lZHcZ5g3CWtWtMJHrF6uvQKPMt07S6VghluCJPCwn6AMXCCLOrWaf5vG1
         VYtpkv/iS+FpsOIaR8AGTqeB0RNTCM6xuRyNSr3jeBXOfT2EQXQZtpUYPN425SYzakDA
         2OidvfHQkSGi/qoCyZs/Oh1dXfcCoL8x/KyGvy9aY2aHrUkJfaOq/J0VzK5vjZrf72rY
         6swqvV140EwxqL5gbo/7Bl5aF8IVi7OXnDPt6GN240UVWXr9a5olLainx+gSxfBwWYvA
         z+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708024511; x=1708629311;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=03bx4h6W54n3ll8KPUGR6EpaQLp3pZs4yWzEKDL4cxo=;
        b=Wz+wjBdb1bwGJTwwcP2qx+HpYaW9TNw/o96TgCluZuzfXdy7XHNOyZSb4QZh/ZWR6M
         XV/+Bgv58a5gDsz5jkT2CRgf6Z3k69423mpVbI9t5t7MyJfVysSgNR5uacYpaMjBHn5c
         O9cwTUP4XX2GeQQ6nCnInREv2HH57SAmlSvSfB72fgk9/8pQCw7zzvq1e5VkqxSAU8X9
         WW8UkPs95lUyNK7U5uMv+swKmw/B9PQgTja4FoCzElA3I8BtiK09+IblG02kRhe+MmNu
         4IEGOChrNvfX3XCadffq/UPhT9G/xBE6qmc4LgM1QZoi4rjHAUfo6dTyKY8u19NjubKk
         wgeA==
X-Forwarded-Encrypted: i=1; AJvYcCXDwums0xTRUWHw0551HLdttEna66YeSyosR1M4/zF/RdKIuawTs10Gw9poVv9PYO9ZAGfrV5CEPztynWHVkl2GXwsh652aiAbDdw==
X-Gm-Message-State: AOJu0Ywbt9Rtgp47/Mv5ImqGt/mfCLxCVlI8RfhAMQ2vU90QfOZUOHG+
	9u46QdZh3Rw9zoZ288v0IgnRzhV8lgm31uXQ9K6g6jgeArDTsT8H3kFix+zTTAE=
X-Google-Smtp-Source: AGHT+IEJ7DK/FPBdmOR3PEhbFxksznsSYht8YW3TLpX0t+JbHP1akj0nyARCL6mHmiNqyScCJy/Fug==
X-Received: by 2002:a17:906:c13:b0:a3d:45ca:679e with SMTP id s19-20020a1709060c1300b00a3d45ca679emr1899556ejf.58.1708024511060;
        Thu, 15 Feb 2024 11:15:11 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id op27-20020a170906bcfb00b00a3d11908bbcsm825959ejb.203.2024.02.15.11.15.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 11:15:10 -0800 (PST)
Message-ID: <682f2d6e-31fb-418c-9622-d3e5ebd4ee7f@linaro.org>
Date: Thu, 15 Feb 2024 20:15:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] mmc: dw_mmc: add support for hi3798mv200
Content-Language: en-US
To: forbidden405@outlook.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Igor Opaniuk <igor.opaniuk@linaro.org>,
 tianshuliang <tianshuliang@hisilicon.com>, David Yang <mmyangfl@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240216-b4-mmc-hi3798mv200-v1-0-7d46db845ae6@outlook.com>
 <20240216-b4-mmc-hi3798mv200-v1-1-7d46db845ae6@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240216-b4-mmc-hi3798mv200-v1-1-7d46db845ae6@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/02/2024 18:46, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Add support for Hi3798MV200 specific extension.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>


> +
> +static int dw_mci_hi3798mv200_init(struct dw_mci *host)
> +{
> +	struct dw_mci_hi3798mv200_priv *priv;
> +	struct device_node *np = host->dev->of_node;
> +
> +	priv = devm_kzalloc(host->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	mmc_of_parse_clk_phase(host->dev, &priv->phase_map);
> +
> +	priv->sample_clk = devm_clk_get_enabled(host->dev, "ciu-sample");
> +	if (IS_ERR(priv->sample_clk)) {
> +		dev_err(host->dev, "failed to get enabled ciu-sample clock\n");

syntax is: return dev_err_probe()

> +		return PTR_ERR(priv->sample_clk);
> +	}
> +
> +	priv->drive_clk = devm_clk_get_enabled(host->dev, "ciu-drive");
> +	if (IS_ERR(priv->drive_clk)) {
> +		dev_err(host->dev, "failed to get enabled ciu-drive clock\n");

syntax is: return dev_err_probe()

> +		return PTR_ERR(priv->drive_clk);
> +	}
> +
> +	priv->sap_dll_reg = syscon_regmap_lookup_by_phandle(np, "hisilicon,sap-dll-reg");
> +	if (IS_ERR(priv->sap_dll_reg)) {
> +		dev_err(host->dev, "failed to get sap-dll-reg\n");

syntax is: return dev_err_probe()

> +		return PTR_ERR(priv->sap_dll_reg);
> +	}
> +
> +	host->priv = priv;
> +	return 0;
> +}
> +

....

> +
> +MODULE_DEVICE_TABLE(of, dw_mci_hi3798mv200_match);
> +static struct platform_driver dw_mci_hi3798mv200_driver = {
> +	.probe = dw_mci_hi3798mv200_probe,
> +	.remove_new = dw_mci_hi3798mv200_remove,
> +	.driver = {
> +		.name = "dwmmc_hi3798mv200",
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> +		.of_match_table = dw_mci_hi3798mv200_match,
> +	},
> +};
> +module_platform_driver(dw_mci_hi3798mv200_driver);
> +
> +MODULE_DESCRIPTION("HiSilicon Hi3798MV200 Specific DW-MSHC Driver Extension");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:dwmmc_hi3798mv200");

You should not need MODULE_ALIAS() in normal cases. If you need it,
usually it means your device ID table is wrong (e.g. misses either
entries or MODULE_DEVICE_TABLE()). MODULE_ALIAS() is not a substitute
for incomplete ID table.

> 

Best regards,
Krzysztof


