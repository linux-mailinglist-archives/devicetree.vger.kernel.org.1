Return-Path: <devicetree+bounces-11470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BF97D5DE5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 00:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A3AD1C20B70
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21122D625;
	Tue, 24 Oct 2023 22:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x+6+PTTX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407222D61C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 22:04:31 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0D9810CF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:04:28 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-32db188e254so3514446f8f.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698185067; x=1698789867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xm6naDr1rTNZvNUTEVOYouG/IOYziSzzh6iZJbKf1vM=;
        b=x+6+PTTXDvq793+M5PgagJIXjObvQWrTYWBpMjFxgMzN+tOidKsiIEe2mHqbQUXZfL
         5BOuwWcC6Qnrw9F1OjE/kLJ+L1S5XaL7qkx8XMh5+wWdGq25A12XMu/dVzJQz2ZCUlfr
         fV4zAZtnbjfxVMihNsZ4CjC83RFfL5Pt1UiUFA6fSBu829aV5h+XggyuNKjEMxbj2NLv
         UzE0PSPoGKwymIqPv72erk9SPFY0jsDrDC5i/ZhEm5R2FumDYgxw32wsqurS29NJ5H9+
         H6lgoefDBUhaPiM2LmNUzCSVtVJ7h+ez2OMdpm9KpYCf+xVV7BAro+0hwuP06aMpTa8n
         AzBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698185067; x=1698789867;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xm6naDr1rTNZvNUTEVOYouG/IOYziSzzh6iZJbKf1vM=;
        b=cNlwdpiCusXiothr3KXG3Wq2YgmcUvlKdCDgZzjLSP4XhtRuWPFzNKPhCnS31HUKZy
         XlviBVqCwpaXXs8vRJxx4q94jfBuwQyjZdXf9ex7tJgV4+mUepYaubOx9jhHKdbIG+F/
         6/tubR4lwNj4UPTGTe2GNwoGKFeHaAiOkX4RJFaIas2y2zXjKIYHzRrfH7Qm6SGLt4l9
         8zBr7JrRZrG+qAUZUNjj45EDHzxlKfdy+ojOdKOFtSyB+p2fys656XdDEUJz9IJ7353o
         XQfG4LnR0y9X5AjXYXQdihMoEpE1d+VkRGOeckwJLI/qi5X9ZJXuq6SPdV/omVfI9p6e
         e3KQ==
X-Gm-Message-State: AOJu0YxX83jHyHb7GVQQO7eXJG8IzktTdCuMNnD4h5GZT9kma1RFdLxU
	quTsJyExIG6Ha8nD8dKF1eOmj02+UhZ4ZDRS7ov73g==
X-Google-Smtp-Source: AGHT+IEFQ/ryrgfd5i9n6ECMD/61fOINkDoTuy3AgqM6/AtNJBVqlG41OswiRgTgxPX/3fb0X/5fug==
X-Received: by 2002:a5d:664a:0:b0:32d:b06c:b382 with SMTP id f10-20020a5d664a000000b0032db06cb382mr9649627wrw.39.1698185067399;
        Tue, 24 Oct 2023 15:04:27 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id k12-20020a5d518c000000b0031f82743e25sm10685503wrv.67.2023.10.24.15.04.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 15:04:27 -0700 (PDT)
Message-ID: <f2378b1a-55a8-40bd-9284-16e1dcd06ff6@linaro.org>
Date: Tue, 24 Oct 2023 23:04:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: starqltechn: remove wifi
Content-Language: en-US
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-4-dsankouski@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231024154338.407191-4-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2023 16:43, Dzmitry Sankouski wrote:
> Starqltechn has broadcom chip for wifi, so sdm845 wifi part
> can be disabled.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-msm@vger.kernel.org
> 
> ---
> 
> Changes in v2:
> - none
> 
>   arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 8 --------
>   1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index d37a433130b9..6fc30fd1262b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -418,14 +418,6 @@ &usb_1_qmpphy {
>   	status = "okay";
>   };
>   
> -&wifi {
> -	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> -	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> -	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> -	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> -	status = "okay";
> -};
> -
>   &tlmm {
>   	gpio-reserved-ranges = <0 4>, <27 4>, <81 4>, <85 4>;
>   

A good candidate for a Fixes tag.

Fixes: d711b22eee55 ("arm64: dts: qcom: starqltechn: add initial device 
tree for starqltechn")

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

