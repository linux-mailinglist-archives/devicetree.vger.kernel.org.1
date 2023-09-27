Return-Path: <devicetree+bounces-3649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC937AFABC
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7C65C28154A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 06:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EFB01BDD8;
	Wed, 27 Sep 2023 06:08:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4258C14A9D
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:08:24 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794F6B3;
	Tue, 26 Sep 2023 23:08:22 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4053c6f1087so95274995e9.0;
        Tue, 26 Sep 2023 23:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695794901; x=1696399701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bH2ZBDFihZ5G3MXi10qtfUOqTCbjZERCfSpFkYReq6E=;
        b=SQiJUa/9lniZJpmO4Uwy6D7+SE80BkgbOzk/4EwZbUSyvJ8882zoQAaRjaaC2C1KK4
         iiRaV+xdiJ9QlENATPIwwRQfS2J64HyOZal/4+rH4viaNqlKe4R5+/DjPJn1jPlo3une
         QyNa7aRZkLPwPLhuQ8acJanIfCFNKGFatqDvEhwvJtBq80Hb2pbjWXAM90T85k7UcDSu
         hcsewn0//bVUIOUQIkEtPgvY6YW1es4CjgvuiLhBDc2DFgnrqd2VG/kodaC+s6kILmbI
         JtDnHiLApBZXALXrA291elddnwDXDqLAjmyLBOS7FPlJ4Gh+WEgT0Zbae0xw+QC/dunj
         Nl/w==
X-Gm-Message-State: AOJu0YyAqttVwanmm9kZukN8ZII3KPQfFnayQJloAXPchlsbcGQeMQWD
	r6J5X36ETsyjiAY3p4UW9UM=
X-Google-Smtp-Source: AGHT+IEGCnSX2ywr0S6FC1D6CnGJQJEwSb0KUpp+zJof+5WezKUECmQWZoWWn5U2hNhP3cz+xHVOrA==
X-Received: by 2002:a05:600c:2149:b0:3fb:b3aa:1c8a with SMTP id v9-20020a05600c214900b003fbb3aa1c8amr1027557wml.16.1695794900576;
        Tue, 26 Sep 2023 23:08:20 -0700 (PDT)
Received: from [192.168.86.246] (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net. [82.11.51.62])
        by smtp.gmail.com with ESMTPSA id s9-20020a05600c45c900b0040550c20cbcsm12015055wmo.24.2023.09.26.23.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 23:08:20 -0700 (PDT)
Message-ID: <ab5d0544-b613-42c1-9b20-ab26c3785175@linux.com>
Date: Wed, 27 Sep 2023 07:08:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/3] arm64: dts: Add pinctrl node for Amlogic T7 SoCs
Content-Language: en-US
To: Huqiang Qin <huqiang.qin@amlogic.com>, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230922094342.637251-1-huqiang.qin@amlogic.com>
 <20230922094342.637251-4-huqiang.qin@amlogic.com>
From: Lucas Tanure <tanure@linux.com>
In-Reply-To: <20230922094342.637251-4-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22-09-2023 10:43, Huqiang Qin wrote:
> Add pinctrl device.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> 
> V1 -> V2: Unchanged.
> V2 -> V3: Unchanged.
> 
>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index dae3465bd39b..a03c7667d2b6 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -155,6 +155,22 @@ watchdog@2100 {
>   				clocks = <&xtal>;
>   			};
>   
> +			periphs_pinctrl: pinctrl@4000 {
> +				compatible = "amlogic,t7-periphs-pinctrl";
> +				#address-cells = <2>;
> +				#size-cells = <2>;
> +				ranges;
> +
> +				gpio: bank@4000 {
> +					reg = <0x0 0x4000 0x0 0x0064>,
> +					      <0x0 0x40c0 0x0 0x0220>;
> +					reg-names = "mux", "gpio";
> +					gpio-controller;
> +					#gpio-cells = <2>;
> +					gpio-ranges = <&periphs_pinctrl 0 0 157>;
> +				};
> +			};
> +
>   			uart_a: serial@78000 {
>   				compatible = "amlogic,t7-uart", "amlogic,meson-s4-uart";
>   				reg = <0x0 0x78000 0x0 0x18>;
Tested-by: Lucas Tanure <tanure@linux.com>

