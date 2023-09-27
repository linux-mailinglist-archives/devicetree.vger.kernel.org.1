Return-Path: <devicetree+bounces-3796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF447B024E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:01:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 6851BB20AFF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B163EEC2;
	Wed, 27 Sep 2023 11:01:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1333FF5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:01:09 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D6CA192
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:01:08 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so109820375e9.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 04:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695812467; x=1696417267; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nPXcOJ1NNfynFMdPPMa7O3rR4NvIIDDgZXJyYh4uLu4=;
        b=iFfMgWEF4LBea99TKwiTyV80r/VTGfYD85d/QnmeuqdKUyTtRw5MLOuc0ECIL+3aNt
         xO/PvaUdno3Tw4KUhypJJZNtcMT+bW+pNDXc6PvgrrTakT+SuuIFoWotbZSpJ2v4Ko6D
         b4EYjxEnKpl5CYRjDKx3osQ1xCdKwaos+0DdPWUtaqEH9K1eKsSRzgn0GW91SXCXM4h7
         5L2NZRrACmxoKPfGIU99OAjjUQSOBb7XWlvMGmNO09w4RIktROePmQT+dI69XW9tmugN
         9ID6yc3ibO/pGUC9NzbyxDlZf3t9PxmQwkmffdbH/X+oXcQtBuHfvVgptoSP+YHmKuav
         c7+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695812467; x=1696417267;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nPXcOJ1NNfynFMdPPMa7O3rR4NvIIDDgZXJyYh4uLu4=;
        b=B9GLMh71xf+oBGwj4ZgruX//+xwPapQl18X0TVhTzy+ehsS6dhkmF0AYns+uq1vDrf
         Jh9jLkm4TEnz9fbWnY67z+iIq95sKksYtoqcMviFf/DR7hVZIa1lR7jbbxYR8+ipnf8X
         kSV1wZ9akgSR+HnpenJ4N57FVWaeyytkHDVg8R16H3ZLW9TOkie8hgWm6OhN7VmRsg+t
         bItGjMi5kxD17ZfOdMYDCcGwcJzpMbE5wH47OPVdfCyHIPW9h+cUhUJhKKyyaP0JTV/t
         WilDioeBwcCQJn7vB9LAzGM1KHDASikUjjd0TDZ4BfER6V6cTaHX/GZGbbXtCu1tjqB1
         QPFA==
X-Gm-Message-State: AOJu0Yzk798vICazVX/u8bk31WMrnuF2Ps5Yuz4dEtFTbMMzhShzWU+w
	YPam7JEnY2DA0hGtXcrdLfdbWA==
X-Google-Smtp-Source: AGHT+IH/DZlOfmrbdqaypY2t8t+A1qF22x4H5/t02B+tTvUk9hcTKrTZ4u5D/O33X2AKZpabYcmFyg==
X-Received: by 2002:a05:6000:180d:b0:313:f783:262b with SMTP id m13-20020a056000180d00b00313f783262bmr1422844wrh.26.1695812465719;
        Wed, 27 Sep 2023 04:01:05 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c1d9300b0040531f5c51asm17650473wms.5.2023.09.27.04.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 04:01:05 -0700 (PDT)
Message-ID: <8bbdf132-a007-4cb7-b842-a81de7c1629a@linaro.org>
Date: Wed, 27 Sep 2023 12:01:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm6375-pdx225: Add USBPHY
 regulators
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
 <20230927-topic-6375_stuff-v1-4-12243e36b45c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230927-topic-6375_stuff-v1-4-12243e36b45c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27/09/2023 10:21, Konrad Dybcio wrote:
> To make dtbs_check happy and the software more aware of what's going
> on, describe the HSUSB PHY's regulators and tighten up VDDA_PLL to match.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
> index bbec7aee60be..0ce4fa8de8b0 100644
> --- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
> @@ -243,8 +243,8 @@ pm6125_l6: l6 {
>   		};
>   
>   		pm6125_l7: l7 {
> -			regulator-min-microvolt = <720000>;
> -			regulator-max-microvolt = <1050000>;
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <880000>;

Where did the old values come from and why are the new values better ?

Consider enumerating that in the commit log.

>   		};
>   
>   		pm6125_l8: l8 {
> @@ -430,6 +430,9 @@ &usb_1_dwc3 {
>   };
>   
>   &usb_1_hsphy {
> +	vdda-pll-supply = <&pm6125_l7>;
> +	vdda18-supply = <&pm6125_l10>;
> +	vdda33-supply = <&pmr735a_l7>;
>   	status = "okay";
>   };

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

