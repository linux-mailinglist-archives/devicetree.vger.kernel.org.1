Return-Path: <devicetree+bounces-39024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0867584B2D2
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 833F51F23B0A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996787CF18;
	Tue,  6 Feb 2024 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W80WdUdI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABF4487A1
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707216843; cv=none; b=tgDuhe+5CdDBVHG7aoNP99hViJMlwxaQAv27Rvc7SqJ4h0YYnqDOrjceCCMJ4Qd1wUT4OlliTLM/yKGtk3nxxizhNpKXcu+3Paz+rRF9aHhkX3hX9rqnqWxjq7BRFynpOMjVQfzwGpdhTVOTQDR1OnGU3OIs00/POc/apQcDQZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707216843; c=relaxed/simple;
	bh=/EvSTSK581ZKQNjrB1u6WhexRo5/Lv8903v5YCw9ZZM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=rLgCRqiwrq8tIdTGoi6ZMrO+7IKe1BKnE01H73ZkAEE8uXX9ATadqEerOxiU97x0wkC7M8fmU16a/h9NhWMzskK7AQk4209rOHy2kev+zjzmKC8MF6MxuWzRMP76W5+H1SUGZtHS7nrGcK+a5ITNFP4TiTKx5A/j0LCV/gpUAmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W80WdUdI; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33934567777so515532f8f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 02:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707216840; x=1707821640; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=peh04Mc8jWTNyW0UQcY6hZJV+oroF5j2npCj0wR1Ht4=;
        b=W80WdUdIoEpcsb11wKMax/qfeyYJdn5BRBZ8dlYC8L4kNJlmy2BO0NGhSbVOiS60A6
         TzLrUbS0P5Ozb7j64tNz+3s+/KDHK0Hn/DNgovUfu8/Tj6JfikXcRVkObynphODTXuIk
         ko+8FwJrptpMBJ/4zFUkGuK5zUeobFl2+8gmLXSKZEX/eCS+aiyhc++EjQKMaqItDext
         IyLAjNHuPFr7KNJYBs+eYEwLM+b0V7CTghLJo2lsHCuO6MazxFP9937BZ1tZNHPGwbkY
         yYEeNFTuvzLQ8HDOKYw0qji+ZSaiVGHB+shC+UWtZX5qGND+Pn8Ydpd7wumTeKrdifiu
         Dc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707216840; x=1707821640;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=peh04Mc8jWTNyW0UQcY6hZJV+oroF5j2npCj0wR1Ht4=;
        b=kEWuUr3hNhZ2VdLcZeSSj5uA67OnIxO47UHoWyI23MWdofx6jBoRf8E10wx+VHSkq1
         O+rJSOJ0HHfUzDB1RQoxVbCUbNblee6yi1Qdy6+5uuR9z7+jjWNHnuMi54yEGQUJ5/FZ
         4JFe+HMvxpmmI2DtZqiKZee/5ivt7wRWXnMAbQr0RU46RUmQhLIl0r9ch7VXZeNl8EGa
         WFSlm5OJinPJ/srOAC6nBYd8lVDZVxKPZm/yOM/ZqqLwjzVahEnJujknP7hImnqqvYlN
         qQ9Gh7v24bS2RLsaNaOE1MHYA3UH42H1t1wDcu8afmuamX3vvAU0TeYIQPV+FVv/fQ43
         K4hQ==
X-Gm-Message-State: AOJu0YxUbmVl+i8kBMjaT2K9R07XzNe0yAjk6GHe1wQJ+eAbTvAJ5HPN
	xoWuBW9F6IB+OW3M5PpY2/H+xuh3W0EoWCJL2u6HzNzhcyK+KReLLHVsUEV1voo=
X-Google-Smtp-Source: AGHT+IH5KmQHormD38g/lCwrifWHoDohJ1EJAdKb1AvzhL0nMahHzdcj8nHtFgojh0wXa+4VvQuAug==
X-Received: by 2002:adf:f182:0:b0:33b:247c:d61a with SMTP id h2-20020adff182000000b0033b247cd61amr1123604wro.31.1707216839885;
        Tue, 06 Feb 2024 02:53:59 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWfbgpNyaL1DLbG+4I/HCaNz79UPN5C40/T7D29TiocQzEiatjTb1kyP4qYoKXtD2pY2XSx9jTHXCVCWQZnqu8ulJYfRIUMTR8xkmNAWFdJIVXexSbtQ6Rq2Ex8Y4p2IzaJX9+h1aNtqo+Tby4IPmiiqDuiZtH/AAfk5eZFRt4KAGkq0rzbA2RYrbpzea2j0WVtq0btPEX20B0d1J5kOfWtP6OBj1xHfvIWssFVZOxl1HsLMhas686ushwctlHX0WlcjX/a4XE5XsONcrqlgJU/WkDIvDFuYdVhmQv+cQ5G6YNUfFgXd1Ftfze2D0AaxJWxGnkL/Tc6Seq9iQIbMtXpNklcFc92wRxxHSx1TGS/CCNUv3weIhfFBvOaO6UDwwckxUM1XJFsJm6bwnol/TjUGwaMCrkT23XGcj44lglfFBV70nYdhO2I1+0e9xBD0/2d3N5Yx3v7T8aJ9a+QcQUgAahiv10H9jgZqEtVBSkbb5ioUChgHawexZMobmNsnpyWmW5hj7DXxxoYk7ItuXzJjEYcJAZpoagLLG2SNlGIBywUj1ZhTpjUUhk7mlmIz2ykO76+ZzJxVJi7PrcBzOZh0+7VWyrgih8uBMrC8nWIDyFkS8CMDK8W8LkAF7y4H1QmT2P2C5HkJpPDd+LEOkvyWVDg1SlEfwOZ
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id f3-20020a5d5683000000b0033946c0f9e7sm1782365wrv.17.2024.02.06.02.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 02:53:59 -0800 (PST)
Message-ID: <31d2c56a-5108-4265-a267-6733e1ba328e@linaro.org>
Date: Tue, 6 Feb 2024 11:53:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mediatek,mt7988-xfi-tphy: add
 new bindings
To: Daniel Golle <daniel@makrotopia.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Qingfang Deng <dqfext@gmail.com>, SkyLake Huang
 <SkyLake.Huang@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <3251ac3db1a739e0c18ded0a824edae981c1e2df.1707153425.git.daniel@makrotopia.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3251ac3db1a739e0c18ded0a824edae981c1e2df.1707153425.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/02/2024 18:28, Daniel Golle wrote:
> Add bindings for the MediaTek XFI Ethernet SerDes T-PHY found in the
> MediaTek MT7988 SoC which can operate at various interfaces modes:
> 
> via USXGMII PCS:
>  * USXGMII
>  * 10GBase-R
>  * 5GBase-R
> 
> via LynxI SGMII PCS:
>  * 2500Base-X
>  * 1000Base-X
>  * Cisco SGMII (MAC side)
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v2: unify filename and compatible as requested

Several comments, from me and Rob, were ignored. Please respond to them.

Best regards,
Krzysztof


