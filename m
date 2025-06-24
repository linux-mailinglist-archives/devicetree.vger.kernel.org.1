Return-Path: <devicetree+bounces-189029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A050AE667F
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CF9F3A988A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6640429A311;
	Tue, 24 Jun 2025 13:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uA/M4pTs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A7628ECEF
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771892; cv=none; b=lehscdjpFQx2A4bEHRRG1hrbJudaLcB4tiGJwGdedTL9aWkiLHMVMAMuax56IbFC40TrA9hQWBRFBp4hHr+4upLWzzqVpwf7l98t4QMD8miF9bo/C2OrzW/7kyIMSuNe6XbD9h8+yIOpbfkQp5opACsL/XbiyPL6ELcZRMHxaeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771892; c=relaxed/simple;
	bh=SNPpj7vjjty2f4GcEPbvBgmWRu/gVwdJZznlDEc11KA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CG7wdgDaTlAYo9TQdvg4zpqIfHrJdfabbHEIdgv8KpGaPNFYbAebnHGJHL4oy3dNzH8zwcxVx6aKFpDQS1BLFx2V9w2bkVFjK5lUyVelVOOPpTyWi2b563BnXeYjSS7TsU1lYfPz42DZGIboLOaXWZZPKoJ430zhCC2BBgIdpDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uA/M4pTs; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-553e5df4511so305943e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750771889; x=1751376689; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1ixsChjPXVo6tgSzutDLAX1rFKh+YpL/is6uOUSR1ZI=;
        b=uA/M4pTsWXNxuf26ML3cTsvaYGniT0CiXnLKgZxOAcimj1IMmRoCKQ+t7mdCN7+G7s
         R1pxZKRaCQImOqnK5QZatW35asTsAVsxGrmyvoNx2nOD+XdESCpDVEYoN8eIB8yUVvwW
         ItXi3nkXiBiWprcC+5qzZ3qQeuOYk0+e4MI84xFHEcygVIo2XT+b44WBB/pXJjFLadQ6
         SM+JRHNrWmE1wzowI4NNRRrIYppGag2JiaYQ4bGKQF0YvclWMd7WSR15yKOpvupevg9C
         UeGvcXqTKcu9Uln5ywIafagCFY9wql3hoIGj978PwXsc3GoNe5mXhbJMPsFpbxDp60wO
         s5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771889; x=1751376689;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ixsChjPXVo6tgSzutDLAX1rFKh+YpL/is6uOUSR1ZI=;
        b=pWRz5iZ82ESVxt1rnyHtrKjqf2I6X15twrtlab5zRI7wls7Nv9gHEybU/s7iHc57oN
         XZUxl/9J6Kz+A/B6xEm24XitFUftbCnWaK3rRuiogJCgR0NFRXUfRpbcoxiNAp7A0h1U
         DVeGHiGETWP6rHaHIExLxAQeFNuRHuZPth5bKUp74ajjqCNcWqljmqMr78aaXnUpw8qK
         Z4CvYTKKBsVrBiN9MUdPQM6DC1HKT4PWLVkj8aoQRTmeR9zz+3dyE9k2sAGtaXz+YFq3
         xRk0TcbzZEbI9mdi8s6/F+waecrcg0n/p8p7ZDwqKVxwE/csmVz/vEWesZnJGRcStwRk
         +o1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVw0LkeMH+MdJfEbVvn7GePGsotZXuH7y9I/eR6Odr1mI+RWGo3Er1+Tx14UreHu0Jq7NCm252Ro7GJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYlmKkb9lz6jniu9e+WZgSih5TELmD69btTkWoZyTigbZEIGPF
	nyVtgRTApvMUH4d3GEXd40R/M7I4GmTYRtHa0WnHW0dd/ANGiNHt1sujgFCKhWYTTYw=
X-Gm-Gg: ASbGncsz8pecr6iC7/E8RkPRiO1ETVQfJvSHsQj3RQvXIZ+t2tHvAKDcFWkr9xxvrJZ
	lvTH5Luj9uVR2aS7K+6D4Tiwe4ngONOWDlUr0PXcAOzyHzeRsAV9qU3wWljVTZ+0r7RD2fHx5Fp
	0tBjQl6LEbs3iaSVCfCzi6LlWTrYilE1TKbKsF1xcvIKxy3Opf5Y9o3aS26D6LYsIhiHNdP7l/r
	HpO7uwpFJ5Wnh2BlwI9+pubNdvGT9/b6fkRzo0v6RYpzLmPev4VuXhcknHHagFiwxUiIOoxmzne
	iYKn86MQ0E6Pls7pm8SZ5CbOfQIzTyOb8uRPaU8y+HCjEI48d1+PXMgYkCiRbXe/X/G6+2knM0S
	c63Z6ktRTnOC37IWKyvagCQu2QIn62Pnc38Xv9pAH
X-Google-Smtp-Source: AGHT+IGwGCymU8RONA+nhcXdhqLM3PrHi9ooRcM+SCxJHnCXXQhmrBOwn+PHm3whE+vhvRviZRDUzA==
X-Received: by 2002:a05:6512:3086:b0:553:2874:8efb with SMTP id 2adb3069b0e04-553e3c079b7mr1854622e87.11.1750771888708;
        Tue, 24 Jun 2025 06:31:28 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bbba4sm1837510e87.109.2025.06.24.06.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:31:28 -0700 (PDT)
Message-ID: <9fc448d5-5c16-446f-ba89-ce4681b5c76d@linaro.org>
Date: Tue, 24 Jun 2025 16:31:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: x1e80100: Add CAMSS block
 definition
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-5-edcb2cfc3122@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-5-edcb2cfc3122@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/14/25 15:14, Bryan O'Donoghue wrote:
> Add dtsi to describe the xe180100 CAMSS block
> 
> 4 x CSIPHY
> 2 x CSID
> 2 x CSID Lite
> 2 x IFE
> 2 x IFE Lite
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 185 +++++++++++++++++++++++++++++++++
>   1 file changed, 185 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 4ae0f67a634a982143df7aa933ec4de697f357a5..ee78c630e2a1c38643c9222a6d6fff4cc1216a47 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5195,6 +5195,191 @@ cci1_i2c1: i2c-bus@1 {
>   			};
>   		};
>   
> +		camss: isp@acb6000 {
> +			compatible = "qcom,x1e80100-camss";
> +
> +			reg = <0 0x0acb7000 0 0x2000>,

There is an inconsistency between the unit address and the first
value of the 'reg' property, it shall be fixed.

-- 
Best wishes,
Vladimir

