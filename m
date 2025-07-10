Return-Path: <devicetree+bounces-194869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3876DAFFD41
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 10:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5BFA1C87C46
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DCA291C1F;
	Thu, 10 Jul 2025 08:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="unmouviC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9EE28FFFB
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752137851; cv=none; b=KbEKp+F80iUFJ6rXjZJV1EGUO/AdgrBL1j8XvxgMVyjjRP0LiwxrwdH+ApsfRJZMzH8/bRCI9DIP5uP6SY3mix/1eCn0VVcs4ANwMwb2S9PejHhNzVoNJ+ENp110arCPNrd54m5DLeZ0Zo/IKNN5yyPFPiFXeAupheNJBzRPIPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752137851; c=relaxed/simple;
	bh=x2qnWy/jisF+XYZi200qSmXbNr7ZhNRXkIecCvKhBZ4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dKga6OxgpySDsvkpi72OndsTzGQU3ZePbvt3xpOh4f98F2T9KhypFtaBe8t7s1SA2t4QAG1GdRte1UlnPEoiFUafpEaxZLlEtZsl76NnzKo05jfQC9MCDPZ++ddZFHHe8RXLJTj1iCPTc9yguvoBXv2d4txx/cwDpJRbM5KDORA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=unmouviC; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-454ac069223so9823815e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 01:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1752137845; x=1752742645; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pEnfT6FkztCf1NEW9XiU9AdGyzA1VPDKN8Lo+OyIA2Q=;
        b=unmouviCrWPBsjVSvaRbua7ABA6tZ2NpL8OP6R+LfShRvFLMYDV/HqDpf4V8JlrZJc
         BmzhBcJz/CPbw4CXs1NH7ZQYFrhRX+8HfIxouKBewRBNcgzce6c+YTM4Gaixss8ODlPX
         SHlBr+y3tnEiFB3lH2T38DaE8f2RTt5Facb7B2ZaADpGPnVqwPqfDAi/m2s/9jy18crm
         6arRFDOGIB6YQ3dHnKnp9SMQuAI9SumyBPoMTaUJiNkiAETtuOaMoFms1tthrEA6FCsY
         uM9yNn/pQilkulDIRMtPRi0uxnIvvV+J/xe/wiETgP7Rm2FhBuyiuN182RdtzrSIO6qM
         TzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752137845; x=1752742645;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pEnfT6FkztCf1NEW9XiU9AdGyzA1VPDKN8Lo+OyIA2Q=;
        b=gdbbUtBgtVNc18/DeY2CcYY9VjU3zI/G4Vp00m29se0J3dogyntigTdxMrjz5YGySR
         TVKp/018nUyKtJYvSw8kG/ExMQhVN/Tu0dzCEBcN5gC9NvCzbkj73cz/u9VDugs0uWB0
         CoGnF9nwsX8SzUO/02w/FIZJ/xw6JN+AvGUqoXjgBj5/gAR40l2jDOwm1j4hIkFxkbrE
         P0LRfNXPspc9OBgomqBT+HNn6qZ2koyWQPFh9g21QO9C9ty7x4Sr3ALpxwMompNTTSmg
         6o+KoTv+z8A6sGd/g4uKYuh21e13SW12vKmvIeKOOIs/rqqIyV5n4JWudSqPrAaP1j4z
         Oc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+V53dE6N2YA/Y/No7bbFIbrQHXgTjgCTXuVDJ5juHHLTYWxsOmdnhLwH2ftD35uUtBu908In4tZP6@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh4ALzL2ee/F9CRkusxtN6hZrl2tHV934MDrBectLAXeE2udCQ
	2HiqMQ5SheQxlw4TUF24gKGKdRUIQw5goEQHPg0ZEb3bs5eStac5nEwnVuMrRH+AWmw=
X-Gm-Gg: ASbGncsAIcJx1FFF+1Xp8UR5+5zVJpYtS4I5js8p+P8fd5eW+Ti+o3Y0WioWAeli97a
	lIBGFzqGtMtSmA8kJ+XAANmKQ5a1C28sSCD4Zch/vpYRKS7Fv5ExCzpH8ttU7Imqgm9Sxuy9FvN
	D1gbmvT/57rvZUqbSl82XaP0QLKUs9LeBctD3wCggjtxz1p+dP7wRimsEIxDcL6k5/zg9nXALWX
	F2XLX4iUfd/88mtH+ztNZi+dmImAhvv/ciGgYWPVy/rjhFLsQVOENxDeis7wSiJHPU5UvATbEwm
	8uq2e8TVmKKBt17eWUSliAfzXSCZpzyvseoEw6eAlRVsi8DkUQgARLTsZqRAAw==
X-Google-Smtp-Source: AGHT+IGWtPkM7wNN2WAZ9ZBqWQxhQQPFiCu8f4+86eF186o2AjTuMIqbAyWP77bRc2dyw5l64yP3Qg==
X-Received: by 2002:a05:6000:2087:b0:3a4:f70e:bc25 with SMTP id ffacd0b85a97d-3b5e7f29674mr2434317f8f.27.1752137844837;
        Thu, 10 Jul 2025 01:57:24 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:9fcc:5953:3d1a:6b41])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3b5e8e14cfcsm1284032f8f.67.2025.07.10.01.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 01:57:24 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Jaroslav Kysela <perex@perex.cz>,
  Takashi Iwai <tiwai@suse.com>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,
  jiebing.chen@amlogic.com,  linux-sound@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-amlogic@lists.infradead.org,
  linux-clk@vger.kernel.org,  jian.xu@amlogic.com,  shuai.li@amlogic.com,
  zhe.wang@amlogic.com
Subject: Re: [PATCH v5 1/6] dt-bindings: clock: meson: Add audio power
 domain for s4 soc
In-Reply-To: <20250710-audio_drvier-v5-1-d4155f1e7464@amlogic.com> (jiebing
	chen via's message of "Thu, 10 Jul 2025 11:35:37 +0800")
References: <20250710-audio_drvier-v5-0-d4155f1e7464@amlogic.com>
	<20250710-audio_drvier-v5-1-d4155f1e7464@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Thu, 10 Jul 2025 10:57:23 +0200
Message-ID: <1jbjpsqv7w.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu 10 Jul 2025 at 11:35, jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org> wrote:

> From: jiebing chen <jiebing.chen@amlogic.com>
>
> The audio power domain has been detected on S4 device.

detected ?

> It must be enabled prior to audio operations.
>
> Signed-off-by: jiebing chen <jiebing.chen@amlogic.com>
> ---
>  .../bindings/clock/amlogic,axg-audio-clkc.yaml     | 55 +++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
> index fd7982dd4ceab82389167079c2258a9acff51a76..c3f0bb9b2ff050394828ba339a7be0c9c48e9a76 100644
> --- a/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
> +++ b/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
> @@ -21,6 +21,8 @@ properties:
>        - amlogic,axg-audio-clkc
>        - amlogic,g12a-audio-clkc
>        - amlogic,sm1-audio-clkc
> +      - amlogic,s4-audio-clkc
> +      - amlogic,clock-pads-clkc
>  
>    '#clock-cells':
>      const: 1
> @@ -100,13 +102,15 @@ properties:
>    resets:
>      description: internal reset line
>  
> +  power-domains:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - '#clock-cells'
>    - reg
>    - clocks
>    - clock-names
> -  - resets

Not related to the decription ... and fishy ...

>  
>  allOf:
>    - if:
> @@ -116,12 +120,37 @@ allOf:
>              enum:
>                - amlogic,g12a-audio-clkc
>                - amlogic,sm1-audio-clkc
> +              - amlogic,s4-audio-clkc
>      then:
>        required:
>          - '#reset-cells'
>      else:
>        properties:
>          '#reset-cells': false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,s4-audio-clkc
> +    then:
> +      required:
> +        - power-domains
> +    else:
> +      properties:
> +        power-domains: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,clock-pads-clkc
> +    then:
> +      properties:
> +        resets: false
> +    else:
> +      required:
> +        - resets
>  
>  additionalProperties: false
>  
> @@ -129,6 +158,7 @@ examples:
>    - |
>      #include <dt-bindings/clock/axg-clkc.h>
>      #include <dt-bindings/reset/amlogic,meson-axg-reset.h>
> +    #include <dt-bindings/power/meson-s4-power.h>
>      apb {
>          #address-cells = <2>;
>          #size-cells = <2>;
> @@ -198,4 +228,27 @@ examples:
>                            "slv_lrclk9";
>              resets = <&reset RESET_AUDIO>;
>          };
> +      clk_pad: clock-controller@330e80 {
> +        compatible = "amlogic,clock-pads-clkc";
> +        reg = <0x0 0x330e80 0x0 0x10>;
> +        #clock-cells = <1>;
> +        clocks = <&clkc_periphs CLKID_AUDIO>,
> +                 <&clkc_pll CLKID_MPLL0>,
> +                 <&clkc_pll CLKID_MPLL1>,
> +                 <&clkc_pll CLKID_MPLL2>,
> +                 <&clkc_pll CLKID_MPLL3>,
> +                 <&clkc_pll CLKID_HIFI_PLL>,
> +                 <&clkc_pll CLKID_FCLK_DIV3>,
> +                 <&clkc_pll CLKID_FCLK_DIV4>,
> +                 <&clkc_pll CLKID_FCLK_DIV5>;
> +        clock-names = "pclk",
> +                      "mst_in0",
> +                      "mst_in1",
> +                      "mst_in2",
> +                      "mst_in3",
> +                      "mst_in4",
> +                      "mst_in5",
> +                      "mst_in6",
> +                      "mst_in7";
> +      };
>      };

-- 
Jerome

