Return-Path: <devicetree+bounces-11471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E81487D5DEF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 00:09:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EE11B20EC6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB4C224E7;
	Tue, 24 Oct 2023 22:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y397B1xB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7572D622
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 22:09:48 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E479010C9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:09:46 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4083f61322fso39309615e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698185385; x=1698790185; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eW4/b7pttVdrOHJ1oWcsCaKgbQur0E4wQP+v/cgTaDg=;
        b=Y397B1xB5GlLazO5+O0yi0MMCZDDdnIWCgUCKhENODt9bYSu/H1Rv9jr4pm6pYDRnQ
         RlePr58GoJupKikZ5pISiM4KnQ0tFt/H4A1gsGbM/DpS73WcZuqBqob2P7DrXvKORJ6m
         vu8MKRSPqvbOU21zdMhG95NBXPGUiNhPH2v5ik3hJPemSHzu94OiUPXBgb+y/xQCf5xz
         Y61nTOYFb1GffwRuFJqHnSJP7en0wQGs97imKIOu92+Tp1uMvIVxUsOocxGbV3+j5NgA
         utqQ58wSxYGrI9+wW371EaxrdB6hFKZYNoDgrfhE10ETrUhXnQqQGY3/JnjhsPJpgDKK
         upxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698185385; x=1698790185;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eW4/b7pttVdrOHJ1oWcsCaKgbQur0E4wQP+v/cgTaDg=;
        b=q1FcKiaJx4E8iuMQoU8zI1W7r/RGgYMcKoLp1sT09CrjDs8ANxuCzXEQdAebNCznqB
         ly+DOZ6IlZ9oV5vvJv98q4FlKQxWjGrs0llVBhNG+fht5ytrwJngk6lQzIT46ywYH+17
         zU07iPEfc/4hI4jdQNj8PetSXGVGYeiHFRrCbzsmXxImT1CCCCJkYTT/GpLL1mntFc+m
         3+K0M/vcGjY725PhvNISgyWECe0gmNDHsqhdA2bvORfdOR7lYc3Hhw9Z42tSJMV90gfG
         DecJ9aUaB4pAOFGymrn/Ops4yHi64mK/TIBDEdiuXmFJuqC+JamgIv/Zgq0jmUIfgmg6
         UXng==
X-Gm-Message-State: AOJu0YxKx1LnF6BXW2mUFxrFDPA13sjmO5gjnaIXLwNvceKRpzO48+xr
	se2Q8QvAPCIWQGgwaeBbF24J/ZVROHSuljm15ffhqA==
X-Google-Smtp-Source: AGHT+IGaoaxXCtiNpKvBP2hDYd/SGzvJRL76ZfuEMP5bouvglaPXvLiIJvHzvg7G9VhJCPmwMwoYhQ==
X-Received: by 2002:adf:f50d:0:b0:31f:afeb:4e7e with SMTP id q13-20020adff50d000000b0031fafeb4e7emr8729753wro.37.1698185385357;
        Tue, 24 Oct 2023 15:09:45 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d6987000000b003232380ffd7sm10738098wru.102.2023.10.24.15.09.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 15:09:44 -0700 (PDT)
Message-ID: <07f48f49-4264-46f6-b9ad-f6188bd074b8@linaro.org>
Date: Tue, 24 Oct 2023 23:09:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: starqltechn: disable crypto
Content-Language: en-US
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-6-dsankouski@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231024154338.407191-6-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2023 16:43, Dzmitry Sankouski wrote:
> Disable the crypto block due to it causing an SError in qce_start() on
> the starqltechn, which happens upon every boot when cryptomanager tests are
> enabled.
> 
> Same problem is on Lenovo C630, see
> commit 382e3e0eb6a8 ("arm64: dts: qcom: c630: disable crypto due to serror")
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> Link: https://lore.kernel.org/r/20211105035235.2392-1-steev@kali.org
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
>   arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index f2bc3c412a2f..0e2c7df2baa7 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -504,6 +504,11 @@ touchscreen@48 {
>   	};
>   };
>   
> +&crypto {
> +	/* FIXME: qce_start triggers an SError */
> +	status = "disable";
> +};
> +
>   /* Modem/wifi*/
>   &mss_pil {
>   	status = "okay";

Probably another patch that should have Fixes.

BTW when you do "git send-email" please include a 
"--to=someone@adomain.xyz" your emails appear with a weird red box that 
declares "(no To-header on input)<>" in Thunderbird - I guess because 
you didn't do "git send-email --to="

For preference I do "--to=" for everybody who appears as a 
maintainer/supporter and "--cc=" to the named mailing lists with myself 
last.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

