Return-Path: <devicetree+bounces-65135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 459968BCC4F
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 12:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42C87B23687
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 10:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12DB81422C5;
	Mon,  6 May 2024 10:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kNp2yy9c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7925C43AD2
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 10:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714992461; cv=none; b=o9ewMNxsRoWBzCXFtEl7XZ9bPlDpwck/iWo946awyUJdLIHqSosE8EawJ1Rzve9tDMAK8xu0Yhs/g5P3O88txGjUwwCqfX4GJnyuyeQ5BOQtkeuPc1kEsiAuWSHfIDR4mzm+qxK1wjlPBPgVLB2PS9wURm4rd5k+QGryR0dz3jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714992461; c=relaxed/simple;
	bh=miKDTiDqUonSxCr3BlIjLrQ8pqt+ajmD4CBVnCaH/VY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B289xo1k3EsX99LZ1YjP0Jczq7mKjvXSYKY9LHVdAi58CImguFs0affMRXhlcGgcq6NDPfhtJ8GUMxgeGrHpTgVRg1QjHxZ51ZL1+YQw7q5xvpgqOgek90NUFefm2nr1eog32Mng8UEJBZgytSeF32Z/EwjFS7vi9uAV/57warw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kNp2yy9c; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a599eedc8eeso366316266b.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 03:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714992457; x=1715597257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=F4JMX3o86635aG32+mG9mxPC6jfYm0RO+Yn/FflTLFs=;
        b=kNp2yy9cBcgJgsa6RNNI6R26DsRpGBiRvKpSvu4BXC8RhfdGV16CAxdoZ49RqwKBfj
         t+WKu9qlrEl/0Oc5LC0dQXXR2qcTw/Px/NXz+FPOWPQFikevCf4UojKNSAwzLuBrwoDg
         o/uf8jB3P5eLLrHqyYxCCp/puhcw4++GPjlhJgEF9AXGL7ZGlkvCb8wdH9Xn9g08BRQM
         5sEAMUDw/9yTZHhtG0yCg+PrTv7mzc9ijeGMvdmKD/ezSJ3JT5qfkg6rf9r9JBzx1bKv
         F/6EH5xaVAtQnezat7HNkyenv1qTI+TFLqwpaFoN9TeACbl4HW27Encg2d9Z8pNFq0FA
         Lo7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714992457; x=1715597257;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F4JMX3o86635aG32+mG9mxPC6jfYm0RO+Yn/FflTLFs=;
        b=gyFMKmNNaZnzWI6VQHP4RcM1dRv+L/Ij2mvn57crT0nmwVLYezEy3kUXYen4eASkQC
         qPwXtmPcNT8LCRSKbIku1CT1SILzWC2tcWu3Yb26apbvt7DKxMeBTZN/mB3Kl0pf0gRC
         xcadcKhc4OpOUUUNjBhkhH6L7L6AEn7DpHD+cR63OzpXgq/XHCX9+ZA77sWMjmSTOM7p
         4brEwHq+3qU74fnDnS0yS2IERhL3W+s1rrFX8RaUlSHyJkQ/HIRcW3hGT/GOY0K6kRGa
         owPNghxtmDrfAbprwZt/lI/GnMyHwM6HeZzhIA6Lfol0RFqSp8SAvkpc4drTlpercmar
         mZiQ==
X-Gm-Message-State: AOJu0YwSKez1EnVd0GjP62kNLaqk/9/uvdYQazH6d6/vndQqWScZs1D0
	EmpmKMnwEVjhFrii6VoYeOrsKhKnsuxsknSldJoRjf5rao2wrn9V69cuVdJ1kwE=
X-Google-Smtp-Source: AGHT+IF6sSTww0riTzGefAdnhzvOckrnucY0ZN20UWJZ7vG/biTudz5LWPdPZY6cyiq/1WeV4Yccow==
X-Received: by 2002:a50:c355:0:b0:572:2f0d:f4cb with SMTP id q21-20020a50c355000000b005722f0df4cbmr6378923edb.1.1714992456811;
        Mon, 06 May 2024 03:47:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id n10-20020a056402434a00b00572df643637sm3211499edc.62.2024.05.06.03.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 03:47:36 -0700 (PDT)
Message-ID: <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
Date: Mon, 6 May 2024 12:47:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240505134120.2828885-3-jonas@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/05/2024 15:41, Jonas Karlman wrote:
> Similar to RK817 the RK809 also integrates a complete audio system.
> 
> Add audio codec properties to binding to reflect this.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Except sending untested patches...

> ---
>  .../bindings/mfd/rockchip,rk809.yaml          | 34 ++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index c951056b8b4d..b78e1b090105 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -12,7 +12,7 @@ maintainers:
>  
>  description: |
>    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> -  that includes regulators, an RTC, and power button.
> +  that includes regulators, an RTC, a power button and an audio codec.
>  
>  properties:
>    compatible:
> @@ -93,6 +93,34 @@ properties:
>          unevaluatedProperties: false
>      unevaluatedProperties: false
>  
> +  clocks:
> +    description:
> +      The input clock for the audio codec.

No, this allows anything. You must be here specific, see example-schema.
maxItems: 1

Drop description, redundant.

> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.

Drop description, redundant.

> +    items:
> +      - const: mclk
> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.

Drop description, redundant. Do you see it anywhere for such properties?

> +    const: 0


Missing ref to dai-common in your allOf (again: take a look how other
bindings are doing it).


> +
> +  codec:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.

That's useless description. Describe hardware, not syntax. This must say
what this node represents.

Anyway drop it. You do not have any resources there, so put properties
in top level.


> +    type: object
> +    additionalProperties: false
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.

Your description copies property name. Do not describe the syntax
"Description describes", but say what is it.

> +
>  allOf:
>    - if:
>        properties:
> @@ -284,5 +312,9 @@ examples:
>                      };
>                  };
>              };
> +
> +            rk809_codec: codec {
> +                rockchip,mic-in-differential;

Missing all other properties. Make your example complete.

Best regards,
Krzysztof


