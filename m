Return-Path: <devicetree+bounces-12940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BBC7DBF80
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 19:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE9322812D9
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 18:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6002715EB0;
	Mon, 30 Oct 2023 18:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DzzF1Cmj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDCC28EF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 18:02:54 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C40FAB
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 11:02:53 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507b9408c61so6656140e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 11:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698688971; x=1699293771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tPCY4tkVUipxIg/AwJ77gYYa3fQWKVHm4osJfnDD/Xg=;
        b=DzzF1CmjA16IB/jqJfb9C7RROoccet6vUhqzYhyNcfWqdhDZctFkWHnkCcSQfWoOdE
         5fkCXpXFqgR3Q7sWQsmtCC6nkUiUGNf6jSVz/KaGYsGCIkIDXxihYyUae/wmqzhf80Ey
         1i3MEqnX9hxKgfxor4uedtnyalIMSucPKQcvC9W+ZrU+yq4cBAsiMFlw3jbneOQJeDzz
         qAqJlugU62XaBDUfy/mbKjbr1mRqT2kikcwSchJQ8Sdsqrtv6QLOYApD1H6XKBgsN4ud
         Fp2LxH++MRSaGS77VoKWbaiWZ3yCbOsst4UuUg67lM1kmt7KYOdE4EgGok5G7swRSknS
         xSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698688971; x=1699293771;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tPCY4tkVUipxIg/AwJ77gYYa3fQWKVHm4osJfnDD/Xg=;
        b=E3/UljWwnS0Xp/6RJoas6MQ1nAW4J30DMyCV1+LJsgTIVeTS5h9wfT20YDy78NsZhp
         QbUIwzV5BBbAnfhEc55E7YwxRURSrfWNoMbxm/jyNgaU8YWTjYtlN36C44L0kit4PbBd
         U+Izu70GLTrUeikR3b31NayB3RXGvsi0m9TbX4g0ocuIaO8SH04GPalfxH2iUnaGIGUR
         JPcmvRzH4g4piqNTb1kxvu0TMZNCPiWU5NUnioBhu2pLze27DyW3xkUZAP/BaFKyfK5k
         rb5R2fNDL6lx1MMguM/0EoUlBaEiYuq5foCOKiD0ubd0Z2Fvyy7hWx7KXKwFqNlDXFLt
         U0SA==
X-Gm-Message-State: AOJu0YzHCHCgYZYh/N8sWop6vG+zPAJC0fioKsippkHxjf6MRyPRPFzF
	pgDhTuT4Epg6sLNFc6EDuVng4Q==
X-Google-Smtp-Source: AGHT+IG3t8BqCAQ+n7XlQyeLnbyg8Z/qnUsgz1WS8a1VkGO55anFdF0zo6EBQi44q3ILt8BAlfHN1g==
X-Received: by 2002:a05:6512:ea8:b0:507:ac56:66a0 with SMTP id bi40-20020a0565120ea800b00507ac5666a0mr6775379lfb.56.1698688971347;
        Mon, 30 Oct 2023 11:02:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id gw18-20020a05600c851200b00405442edc69sm13128164wmb.14.2023.10.30.11.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 11:02:50 -0700 (PDT)
Message-ID: <0148c072-feaa-4553-8a25-a0fced1bfad0@linaro.org>
Date: Mon, 30 Oct 2023 19:02:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 07/11] firmware: imx: add driver for NXP EdgeLock
 Enclave
Content-Language: en-US
To: Pankaj Gupta <pankaj.gupta@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, clin@suse.com,
 conor+dt@kernel.org, pierre.gondois@arm.com, festevam@gmail.com,
 linux-imx@nxp.com, davem@davemloft.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 gaurav.jain@nxp.com, alexander.stein@ew.tq-group.com, V.Sethi@nxp.com
References: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
 <20231030095849.3456820-8-pankaj.gupta@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231030095849.3456820-8-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2023 10:58, Pankaj Gupta wrote:
> The Edgelock Enclave , is the secure enclave embedded in the SoC
> to support the features like HSM, SHE & V2X, using message based
> communication channel.
> 
> ELE FW communicates on a dedicated MU with application core where
> kernel is running. It exists on specific i.MX processors. e.g.
> i.MX8ULP, i.MX93.
> 
> User-space library using this driver:
> - i.MX Secure Enclave library:
>   -- URL: https://github.com/nxp-imx/imx-secure-enclave.git,
> - i.MX Secure Middle-Ware:
>   -- URL: https://github.com/nxp-imx/imx-smw.git

OK, I got your patch #7. Thanks for documenting the user-space.

> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>

...

> diff --git a/drivers/firmware/imx/ele_common.c b/drivers/firmware/imx/ele_common.c
> new file mode 100644
> index 000000000000..4410245a19ec
> --- /dev/null
> +++ b/drivers/firmware/imx/ele_common.c
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2023 NXP
> + */
> +
> +#include "ele_common.h"
> +#include "se_fw.h"
> +
> +int imx_se_alloc_tx_rx_buf(struct ele_mu_priv *priv)
> +{
> +	int ret = 0;
> +
> +	priv->tx_msg = devm_kzalloc(priv->dev,
> +				    sizeof(*priv->tx_msg),
> +				    GFP_KERNEL);
> +	if (!priv->tx_msg) {
> +		ret = -ENOMEM;
> +		dev_err(priv->dev, "Fail allocate mem for tx_msg.\n");

No improvements. I assume rest of feedback could still be ignored. I am
not going to check. It's your duty to implement the comments, not mine
to check every line whether you did it or not. Trust does not work like
that.

Best regards,
Krzysztof


