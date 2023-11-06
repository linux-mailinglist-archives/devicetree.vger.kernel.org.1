Return-Path: <devicetree+bounces-14146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1012A7E2625
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:56:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 253C41C20B00
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80BD250EA;
	Mon,  6 Nov 2023 13:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yIgCa0Td"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79117156F4
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:55:55 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0F39DB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 05:55:53 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-307d58b3efbso2615406f8f.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 05:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699278952; x=1699883752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k7K/G0f6ZEQYZQT5cSn0nDVYnEltfi7z57xwENHHtHM=;
        b=yIgCa0TdliwwR3nTmefjuk9/SE/lTLg32cZhAUOcF6Tng54SFntxkfZ/hgtom/zQ1R
         +Uc7dUu2so/zvQeQLZbSP0WCtxIsk+ylZp4Os6Dt2vuu2pKpN50mIUMra+6QBqUISUPE
         rCeSYWTqo1HmFl0amqd6yhnleUnqbU7+yt8nlYhfP8JooVG9WFW0oe+gFE5Oz/oa+PqT
         RuwdR6ohFqJmt9ZTTU7YKIMCpqTyMd4jGH4lnntcfHZugpBAkvgFxqowpNIcZzmQ9SaH
         wzUfeayW1ZaWaSLyNYsduj6tVgflEDfzqVq1LHXpHzqhaKYPl2wXSIqRVxUEKxDTDCBz
         v0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699278952; x=1699883752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k7K/G0f6ZEQYZQT5cSn0nDVYnEltfi7z57xwENHHtHM=;
        b=HKzsLZy2+KP8HHGbh/2oEoKKmQ4hosQ0WPwTfNVz0Hak1t4xYhBDZM/5BjbzMsBIlV
         U7JWf+gY8Vbsdj4sTZR/6Qohddk6TN/Uu0Ed2wOvMGOVvdHRmgjfuxEONa0aAEkbVXer
         cfrCBqajofRMMaWvpL2Opy2IQdmwDIxW8nRqW+mnZf3u8B4hYcYp9mDv9l82NUfmJ3Ne
         oGW4mrJB0wa1uo4kGRc/gW6TtouSSGjRJ9MmEdSVs6LY1I/x1mQ+2BOQVE9HM7HNEAyq
         pjCjEU0eCkhYXvPcxg1A9Kj1xPfSj8RBxzOPboclnwILvRPXWmrjc0EIobD6IPt8gKMV
         lPqw==
X-Gm-Message-State: AOJu0YyqeEMotk+nN3Kvmjvkdz1iTMN7SfoUNZCbJ3LL1aQIDgOrUFPW
	43YhLMemkVZ2enm4du7V6CCdZA==
X-Google-Smtp-Source: AGHT+IGR+a68DIJMCWA87zZmPqnk0K4fWbuHIkwr5qAkD+KetGDdjDJSkrxRV54oIblYdbBTES4HNw==
X-Received: by 2002:adf:f646:0:b0:31f:db1b:7296 with SMTP id x6-20020adff646000000b0031fdb1b7296mr18563924wrp.21.1699278952438;
        Mon, 06 Nov 2023 05:55:52 -0800 (PST)
Received: from [192.168.1.7] (host-92-25-138-185.as13285.net. [92.25.138.185])
        by smtp.gmail.com with ESMTPSA id g8-20020a5d4888000000b0032f7cc56509sm1932116wrq.98.2023.11.06.05.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 05:55:51 -0800 (PST)
Message-ID: <f6848c84-ba5a-473b-9a98-8115611c1789@linaro.org>
Date: Mon, 6 Nov 2023 13:55:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] mfd: qcom-spmi-pmic: Add support for PM8937
Content-Language: en-US
To: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
 <20231106-pm8937-v1-1-ec51d9eeec53@riseup.net>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20231106-pm8937-v1-1-ec51d9eeec53@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/11/2023 12:08, Dang Huynh wrote:
> Add the subtype and compatible strings for PM8937.
> 
> The PM8937 is found in various SoCs, including MSM8917, MSM8937,
> MSM8940 and APQ variants.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  drivers/mfd/qcom-spmi-pmic.c      | 1 +
>  include/soc/qcom/qcom-spmi-pmic.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/mfd/qcom-spmi-pmic.c b/drivers/mfd/qcom-spmi-pmic.c
> index 4549fa9f7d4b..eab5bf6cff10 100644
> --- a/drivers/mfd/qcom-spmi-pmic.c
> +++ b/drivers/mfd/qcom-spmi-pmic.c
> @@ -53,6 +53,7 @@ static const struct of_device_id pmic_spmi_id_table[] = {
>  	{ .compatible = "qcom,pm8901", .data = N_USIDS(2) },
>  	{ .compatible = "qcom,pm8909", .data = N_USIDS(2) },
>  	{ .compatible = "qcom,pm8916", .data = N_USIDS(2) },
> +	{ .compatible = "qcom,pm8937", .data = N_USIDS(2) },
>  	{ .compatible = "qcom,pm8941", .data = N_USIDS(2) },
>  	{ .compatible = "qcom,pm8950", .data = N_USIDS(2) },
>  	{ .compatible = "qcom,pm8994", .data = N_USIDS(2) },
> diff --git a/include/soc/qcom/qcom-spmi-pmic.h b/include/soc/qcom/qcom-spmi-pmic.h
> index c47cc71a999e..17a0a8c3d656 100644
> --- a/include/soc/qcom/qcom-spmi-pmic.h
> +++ b/include/soc/qcom/qcom-spmi-pmic.h
> @@ -31,6 +31,7 @@
>  #define PM8998_SUBTYPE		0x14
>  #define PMI8998_SUBTYPE		0x15
>  #define PM8005_SUBTYPE		0x18
> +#define PM8937_SUBTYPE		0x19
>  #define PM660L_SUBTYPE		0x1a
>  #define PM660_SUBTYPE		0x1b
>  #define PM8150_SUBTYPE		0x1e
> 

-- 
// Caleb (they/them)

