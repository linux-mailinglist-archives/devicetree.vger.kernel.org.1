Return-Path: <devicetree+bounces-111182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B5299D8C8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 23:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D33521F21BCD
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 21:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4181D0796;
	Mon, 14 Oct 2024 21:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RsSFV+bc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018E94683
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 21:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728940393; cv=none; b=EHxZVFtyn68MhPEe028LZiSpJyqR9JWZ2LqZ6p0H60QsCdRdXVCy4dIPeG6EuQb52Tj4h+DEd0tdNvd13nVDL5mt2ZFmXuO9qhj6SN/Ia04E28fD+cVW+Agv+EVUdMYxGKA9x3hEaWzEmCD9TmqUb9S9eC0eRXWAq88ZXCzwrOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728940393; c=relaxed/simple;
	bh=OdET77X1i4ggszon4cmj68cg0TB8oGScO1tomRBYGQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KRks568FlI+SJ6KUYzw/qKUAnAJf80OWEA7jweHpbktxWkT8EWSojKlsZvWCoSFDbkk8DxH4IpjJzPA6Zp+ejiTR7AYfOl6JnmHcfJEsowoT04F8aW+IGyGkd9QODgCiq2O9DF1El39SaLxPN3lcrMRxtfjVi8D1FcVYj7ntU4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RsSFV+bc; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2689e7a941fso2171931fac.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728940389; x=1729545189; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Cw88bhy+WAxwwmxSvgd82uwT5sTmI6aznn+bTPeUSI=;
        b=RsSFV+bcC0u8Jtb6aEnWYQLkJ0uuDLJp2lFewFauXW07EXpa5mxTjCb4YPd5RZpKj5
         WcCwu2/rE/0ILnyuegs1HpU52OH5Rv/l4BlZIdQkIaMRZSuUXVGjYkj0VTGNo4PTYzje
         QmsMm1ogoJqPmp5MZCn88mcN/EgzkFqNj01zc+IO0e7z+AIKuv5uevvQdYFOR7cGvyYC
         dTK2sehEcj1s/IVT8N60tct8yesCJiW8OKiKs5b6UBnCvrPtFBsj8EVini3OgXswixf8
         hCGgQFggijq68ssOfyEFkztX2h/WBczmk19kJk5YKfiR42icQ/J4tvTIWqRQsPXGXN/j
         vCwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728940389; x=1729545189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Cw88bhy+WAxwwmxSvgd82uwT5sTmI6aznn+bTPeUSI=;
        b=msqRnMrSRdH63HMngXl/qz8ji86UyaFGKCtkQcTdTKG1lv1f2OhdP3dy1AZtiJHZpF
         Y7ma+FDKVOr4lfsEUstUdDPJCOY4lEUFRzj3mwhqzLuE+mq4p+Fyrp+JyEfl+YkOVJvZ
         jPekXwMpPqom9rEj4OBdbSqKFV/Muxy9Z/qDlC754K0zKadEt1uclMAEJ45fh6TbgqSy
         6qhgpdvHJjeTNAv28dBd8NxZ73Matc258lp/e+3+JvaunZf7qcefdF2tROHiSMdVjM77
         4HNRW0vLElPsWhBy5YIzVLBintXB0Y7os2IEqSYu0+BS9GitK5rloLbSDU6AH4/SDbHp
         SK3w==
X-Forwarded-Encrypted: i=1; AJvYcCUpZWs/B9VpThuXJPHhbKPfHB9H3MsNLRz+Xxv+nBMLzfHpObMTdAe3nO2qBvQBGKq1B2dxvUJA1Un+@vger.kernel.org
X-Gm-Message-State: AOJu0YwiRXOeZ0GMRw2aP4/maz628KXNGgn+RZOzBvDAZIMmFogVSDTZ
	euU1yhYKcRWfRS3NWvYQfNVVtw7vkLkTlr2lmFxnkiDkx/QXs669XHtX5CAhPCQ=
X-Google-Smtp-Source: AGHT+IEYFwN+KSyQJ/bVArBPweGcc+tcFfbKB16ZPqY76LvpKnB4+T6tOHsbn/aFS7lWk9NFwC1CYA==
X-Received: by 2002:a05:6870:e243:b0:288:b7f0:f8fc with SMTP id 586e51a60fabf-288b7f0fc20mr2865174fac.41.1728940389056;
        Mon, 14 Oct 2024 14:13:09 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-288581dcebbsm2956653fac.27.2024.10.14.14.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 14:13:07 -0700 (PDT)
Message-ID: <a27eb208-0fa1-45cc-bb0c-18a03b6cce4e@baylibre.com>
Date: Mon, 14 Oct 2024 16:13:05 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
To: Angelo Dureghello <adureghello@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-2-eeef0c1e0e56@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-2-eeef0c1e0e56@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add a new compatible and related bindigns for the fpga-based
> "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
> 
> The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
> generic AXI "DAC" IP, intended to control ad3552r and similar chips,
> mainly to reach high speed transfer rates using a QSPI DDR
> (dobule-data-rate) interface.
> 
> The ad3552r device is defined as a child of the AXI DAC, that in
> this case is acting as an SPI controller.
> 
> Note, #io-backend is present because it is possible (in theory anyway)
> to use a separate controller for the control path than that used
> for the datapath.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 56 ++++++++++++++++++++--
>  1 file changed, 53 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> index a55e9bfc66d7..2b7e16717219 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> @@ -19,11 +19,13 @@ description: |
>    memory via DMA into the DAC.
>  
>    https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
> +  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
>  
>  properties:
>    compatible:
>      enum:
>        - adi,axi-dac-9.1.b
> +      - adi,axi-ad3552r
>  
>    reg:
>      maxItems: 1
> @@ -36,7 +38,14 @@ properties:
>        - const: tx
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: s_axi_aclk
> +      - const: dac_clk
>  
>    '#io-backend-cells':
>      const: 0
> @@ -47,7 +56,16 @@ required:
>    - reg
>    - clocks
>  
> -additionalProperties: false
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: adi,axi-ad3552r
> +    then:
> +      $ref: /schemas/spi/spi-controller.yaml#
  +      properties:
  +        clocks:
  +          minItems: 2
  +        clock-names:
  +          minItems: 2
  +      required:
  +        clock-names
  +    else:
  +      properties:
  +        clocks:
  +          maxItems: 1
  +        clock-names:
  +          maxItems: 1

We could make the checking of clocks more strict to show
the intent:

adi,axi-dac-9.1.b only has 1 clock and clock-names is optional.

adi,axi-ad3552r always has 2 clocks and clock-names is required.

> +
> +unevaluatedProperties: false
>  
>  examples:
>    - |
> @@ -57,6 +75,38 @@ examples:
>          dmas = <&tx_dma 0>;
>          dma-names = "tx";
>          #io-backend-cells = <0>;
> -        clocks = <&axi_clk>;
> +        clocks = <&clkc 15>;
> +        clock-names = "s_axi_aclk";
> +    };
> +
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    axi_dac: spi@44a70000 {
> +        compatible = "adi,axi-ad3552r";
> +        reg = <0x44a70000 0x1000>;
> +        dmas = <&dac_tx_dma 0>;
> +        dma-names = "tx";
> +        #io-backend-cells = <0>;
> +        clocks = <&clkc 15>, <&ref_clk>;
> +        clock-names = "s_axi_aclk", "dac_clk";
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        dac@0 {
> +            compatible = "adi,ad3552r";
> +            reg = <0>;
> +            reset-gpios = <&gpio0 92 GPIO_ACTIVE_HIGH>;
> +            io-backends = <&axi_dac>;
> +            spi-max-frequency = <66000000>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            channel@0 {
> +                reg = <0>;
> +                adi,output-range-microvolt = <(-10000000) (10000000)>;
> +            };
> +        };
>      };
>  ...
> 


