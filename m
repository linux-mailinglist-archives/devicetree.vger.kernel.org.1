Return-Path: <devicetree+bounces-14444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F147E4AB6
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 897FEB20A72
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E67FA21;
	Tue,  7 Nov 2023 21:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fqNvVEDf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B542E2A1D0
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:29:55 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC7A8D7A
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:29:54 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c5210a1515so84898541fa.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699392593; x=1699997393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Ne2c9ju+9bn3Zice6izrVWXVkuEMpaweGZBq2tsOcY=;
        b=fqNvVEDfXZxqcyPv87zXIznJXrF3mxveQmvZprIvMJbT2M7248aj8QyLTcBZ/elw/g
         IXYb0OaVEqlvfM0/2ZKdfeaLOiP1IYnhExl1m4G+VwETExp75tIghsgtTIhUMYZ4rzIK
         KmJFxaEOJRtIVWwwke2nLGDncp8MBmO+/hXmgPCuj0oSDhnG9rKAsFHTSsi4VXO+Dn0b
         j/qVh8tpwxBN0ZWpFD8A7bA7GXPPPaD4SEEZDB4qh2bad1q6TuqpmVlb7y1yCqWtgnh8
         WWu/WxRgfhoUQfQ1dY+u1S4VQFuprUTGsj7WdCEsOn/HE4EapfvhXBkkrhEwBkKAbjZu
         +ENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699392593; x=1699997393;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Ne2c9ju+9bn3Zice6izrVWXVkuEMpaweGZBq2tsOcY=;
        b=sD74UTvnq6ACJfkpkNVNcYsOnhFT8UKsxIDE/HF7os9PrlHtPuoGtznkOUZM8ovjEg
         dfLLa6KYez8bZ8/10+T1qxHGCGoYt8OmuK8TcWKoT1qeIE6cvKU0Qf8R5e9R9MxeINwM
         MUJeMwcLWWLAyTEyHXsbNXZ2PBNLt/o1wMUCpbMgr6gCfb4lQMOrhm1sVnNOB1L20uZd
         5bq7mQ3jMQhyDqdsA1WA1ItsZhhRvsDRSSED3WcI/m+fL0GjFo8BWcvzrjWBdb5xmu84
         gTUV+I5+98lNQhDRRAZ8U7WGofELSvEPTM2mm3ex0B0MM+suqFBHyU4L3nkKulggnycU
         eXzg==
X-Gm-Message-State: AOJu0YylD4Y1Oa4DEjYk2O46yM17seD+BtBbd4FOPyJauuOS8xPPly53
	bwXwvnaaQRitKLXhbwOrBj6Tow==
X-Google-Smtp-Source: AGHT+IFItNos92G2Fef/m/cJIcLTaZPhUJCAiAccAcfKSmQhgxJraEQl0R/ly17xOKTTQlxmPAi/8Q==
X-Received: by 2002:a2e:3c05:0:b0:2c5:b3c4:7b17 with SMTP id j5-20020a2e3c05000000b002c5b3c47b17mr182193lja.38.1699392592906;
        Tue, 07 Nov 2023 13:29:52 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t4-20020a05651c148400b002b6daa3fa2csm1607587lje.69.2023.11.07.13.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:29:52 -0800 (PST)
Message-ID: <9c3dad0b-b5c9-4d73-8fea-1b3a44d89c62@linaro.org>
Date: Tue, 7 Nov 2023 22:29:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: Add PM8937 PMIC
Content-Language: en-US
To: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
 <20231106-pm8937-v1-7-ec51d9eeec53@riseup.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231106-pm8937-v1-7-ec51d9eeec53@riseup.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/6/23 13:08, Dang Huynh wrote:
> The PM8937 features integrated peripherals like ADC, GPIO controller,
> MPPs, PON keys and others.
> 
> Add the device tree so that any boards with this PMIC can use it.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
>   arch/arm64/boot/dts/qcom/pm8937.dtsi | 202 +++++++++++++++++++++++++++++++++++
>   1 file changed, 202 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8937.dtsi b/arch/arm64/boot/dts/qcom/pm8937.dtsi
> new file mode 100644
> index 000000000000..6091d6938885
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm8937.dtsi
> @@ -0,0 +1,202 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023, Dang Huynh <danct12@riseup.net>
> + */
> +
> +#include <dt-bindings/iio/qcom,spmi-vadc.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-mpp.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +/ {
> +	thermal-zones {
> +		pm8937-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pm8937_temp>;
> +
> +			trips {
> +				pm8937_trip0: pm8937-trip0 {
> +					temperature = <105000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
Add a newline between the subnodes, please

[...]

> +			pm8937_resin: resin {
> +				compatible = "qcom,pm8941-resin";
> +				interrupts = <0 0x8 1 IRQ_TYPE_EDGE_BOTH>;
> +				debounce = <15625>;
> +				bias-pull-up;
> +				linux,code = <KEY_VOLUMEDOWN>;
This keycode varies per-device, please move it out


> +			};
> +		};
> +
> +		pm8937_gpios: gpio@c000 {
> +			compatible = "qcom,pm8937-gpio", "qcom,spmi-gpio";
> +			reg = <0xc000>;
> +			gpio-controller;
> +			gpio-ranges = <&pm8937_gpios 0 0 8>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		pm8937_mpps: mpps@a000 {
> +			compatible = "qcom,pm8937-mpp", "qcom,spmi-mpp";
> +			reg = <0xa000>;

[...]

> +
> +		rtc@6000 {
> +			compatible = "qcom,pm8941-rtc";
> +			reg = <0x6000>, <0x6100>;
> +			reg-names = "rtc", "alarm";
> +			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
This is probably IRQ_TYPE_EDGE_RISING

Konrad

