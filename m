Return-Path: <devicetree+bounces-178557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BF5ABC228
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACCE7163F3E
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABFF928540C;
	Mon, 19 May 2025 15:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BWgU1QN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E6E277003
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667964; cv=none; b=Aic+wYXAk2TyzVHbFNTWzFN+1Kp5O/N8qUGVJc22PVMJFxE+A34+t7+TZFcpYdU+Azmr2JluUqRzILDE+4zUqK2mW7itU6hD1/5H6IBn1GcXJu4E0LTZ2B5C4/4DSDp1ktIRuF4hNkhxN92d3PvJghQU/7MlvCp+cAXHtCsvGzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667964; c=relaxed/simple;
	bh=tntAhuwtyBOmp6htFNeW8IQjOI9aNH5H0vPqH8P866s=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Hmo807FVF9Z061mUQ2DIzddDuEb1HA9KTomtAPIPcHsIZnanRClof+sAHDMPQ6H6xnl/vZhUDrOqAdozdLTfDqcKgu8F1tzJQKXro+nunhItgJd92dOOiBQkNoDjOrnhKjtkoMLy9PyXTpnt2NhwTb6MmX6JfEBcFaSJh/n8AjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BWgU1QN/; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2c2ada8264aso2157266fac.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747667962; x=1748272762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5EKse5hj1NGw/nB8cxM05uzDSGMii0q2gV1Cq2JkY9E=;
        b=BWgU1QN/LKwk32fCtfgse7Wk8zO/VHTdOZ8tV35T3nzqgXuD0SG43edgjrYPoIO4iN
         G2c3dFLq6pqn5T7dGx0WxOvVKJsQNvOe2k2iVtxtjfmxWAJLCCbKtbjfO8lYmI6NbTug
         4V54e5/8YJh2ppdyNqsF0WTm3LQV6vK8drFm9PYOsM1LE3Q9XMBSwIkK/QC8xE5aBup+
         IDhI99VLZempUeRw+OH1907ZJk5mBfxZ8mC1FjMrKIBC2NYDQrBf2FV6uHUiMNKaeycs
         oS6oDQr5+KuPIoMI8fsZHZhM0RyrfUQ83AO5DC/fye+smkcXDcAlXCHSc/Lg3Y18ts3H
         twiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667962; x=1748272762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5EKse5hj1NGw/nB8cxM05uzDSGMii0q2gV1Cq2JkY9E=;
        b=AnV1AYAuk2cwmw8c3EiB7Mm8BpskRSyLuEWxuLhsOJOW0nO/Ke07JMwbSGOmoft9da
         QYy1yZaqdt0wq69KLoWenbExt8guk61W5b+EvxmcEpvrSuceCSMUHLOTWnQEk47ZrwV1
         W+iNeRDM+3/w/kwDqyyAcVMvpmVUmrQ5yeDZL9loXlfiou+E2wW6AByeQIfr1ERYluz+
         ywPOqcHoJy8tWf7wXgAv/EX9B/0+mD+YTfIqPComa3hyHaf5bnRprdc4cDvcHTtj6aD7
         DVZRMItaavfW2dM70HnhXzy807RFDPhpeSlHIexL0xtxFz6nyVNvX4H/Z0A381Nzr8dc
         txVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfrJkC9XEx3iRJsbWzSAxuZ1MGTpYgYYl2+bfZdn3W8u9a+WB1KyAfrhRHi+Mdz1qHBOyJpBn3tbMO@vger.kernel.org
X-Gm-Message-State: AOJu0YzQFBhObU2ZRoZKv9hbjieMsepQ6xzRmFnt1cqAt3k9ecWtwNTC
	jnvMo3F2nJV2AWX1cIQqNW1o5PXDHClxRKraw4GNf5k/F4Y/lwLpXlqQsR3+gqdA6l4=
X-Gm-Gg: ASbGncuNM1M1rcNuAO9eG9e8I0+RIpxG85BTS9QB5NR0BBsbuQP2z90X6PUQVHJTWl/
	hNVDjnXvVxx3BK77lfdWMC7af+ttBr65PqpBatM4h+qGhhTrmoONP7HBI9Ii9/Olpb5pbEye0Zg
	Kq8Ky0kc+LtG/Hi6hFUtyGdwRPTGjjrq/as8M3oRbGyVvf1KPOz3fqhamIHN87E4jy8uWPfCy1n
	UKexyguiGltAQxwsZ0x+uHzHDIps2BIoQRHox3VGCnvfCNtI4aEo98t1/CvVHizPtABXHcS82NZ
	nlhCJQwQHSPfQ2Sw2RqmR32fiVQ1Qtj+eQFhBaOhMcLAcy5EEIN/VRDk7kRv0LkkkhZGJEj1h3E
	j33VJlx6NRwgilS5PfAlUGPljZXSEPMiM8L5i
X-Google-Smtp-Source: AGHT+IFT19mMMartSNjrJMxCwooyqG3/r9PDhl/qqeJCFkVUnUH7X7YF87P8Zhw80dNktxGzSl+vIw==
X-Received: by 2002:a05:6870:730d:b0:2d5:cb6:f0d9 with SMTP id 586e51a60fabf-2e3c1b972d9mr7651436fac.3.1747667961663;
        Mon, 19 May 2025 08:19:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6a44efdsm1443693a34.2.2025.05.19.08.19.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:19:20 -0700 (PDT)
Message-ID: <d30f6935-45f0-4422-a989-1103e7802ca6@baylibre.com>
Date: Mon, 19 May 2025 10:19:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] dt-bindings: iio: adc: adi-axi-adc: add ad7405
 example
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
 Esteban Blanc <eblanc@baylibre.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250519140220.81489-1-pop.ioan-daniel@analog.com>
 <20250519140220.81489-6-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250519140220.81489-6-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/19/25 9:02 AM, Pop Ioan Daniel wrote:
> The ad7405 device is defined as a child of the AXI ADC.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
> changes in v4:
>  - add ad7405 device that is defined as a child of the AXI ADC
>  .../bindings/iio/adc/adi,axi-adc.yaml           | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> index cf74f84d6103..a6bc8acd101f 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> @@ -135,4 +135,21 @@ examples:
>              io-backends = <&parallel_bus_controller>;
>          };
>      };
> +  - |
> +    axi_adc@44a00000 {
> +        compatible = "adi,axi-adc-10.0.a";
> +        reg = <0x44a00000 0x10000>;
> +        dmas = <&rx_dma 0>;
> +        dma-names = "rx";
> +        clocks = <&axi_clk>;
> +        #io-backend-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad7405";
> +            clocks = <&axi_clk_gen 0>;
> +            vdd1-supply = <&vdd1>;
> +            vdd2-supply = <&vdd2>;
> +            io-backends = <&axi_adc>;
> +        };
> +    };
>  ...

I think this example would be better placed in the adi,ad7405 binding.

