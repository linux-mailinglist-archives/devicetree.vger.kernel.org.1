Return-Path: <devicetree+bounces-67748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BA38C991E
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 09:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0886281877
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 07:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D1B17BA0;
	Mon, 20 May 2024 07:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fpS9T45R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2B517991
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 07:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716188950; cv=none; b=n3mPCnujpax21FGiaMK9XbEwaHXvVX9S1pVrfycOAeoZgTmYzda6/lt+hhSBxsSUVlfkdw855AOqgU6HURgq4zf+3w6ypjYE/iBCqrdlpoVJNil3BSSCYEqA8O8LLpmcQY1lYUvcij+P/E7OQoPoF5XFV+oc6m1BLSVDXng3r28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716188950; c=relaxed/simple;
	bh=0xb9rGqPLMCZSoyt+zr1CoKXYGv7ul1gL18MO6t3qVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qIactd/ftADIwo4yIyI7qJHzlmlnIaYmkGRqymzY1Ru9BvIXdLIST6X9ldu8a8I7iX1COQqjwoe1pLJBSSUfYvLiZ8hO1Fp+cwFfIyxngG1nZpFGGMGyNF+MRRvp/dBfOFPcFocz0u3l0j1YG8UBT+DSH+lbqLYMWhws89fP6vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fpS9T45R; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51ffff16400so6287143e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 00:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716188947; x=1716793747; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kiyrjpf20boahfYODaVgUoaaasy74zM8DfkCEcceeFU=;
        b=fpS9T45RsGkFNwxXH6m8FARFrPAAULZ8H6gxTeU4E6/JzC3S6ljS07WextxEWJ5PNK
         3dU523IDEhbDGV9mIhHE2tCy/HCWND2R2DdMmozKXsChac60DiEkSsDPWncejD6sUfms
         UJ9+KVktVUdPjDyNuWJAj4NwCCSiXkzdK7pNFdS0riowdlvxATlHzNjGMI44y9ZdudCg
         HY8hrTVD8yeQiS611q5cdP//pFCZruR4wEbaiaxXUrv7SnqyGSBVNzge0fT22iQUfbQC
         UmlRMI5y7g3A6rudpOT7ib9d+fcrg5H4u6CeVN6/Q+Iqom9ZKNRQPQNtkV2XOMceTlsP
         dlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716188947; x=1716793747;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kiyrjpf20boahfYODaVgUoaaasy74zM8DfkCEcceeFU=;
        b=p6OTW4/3WIHx1Jm9PT9m4xVB/Qa9G6/ZV9Mm+WD+IwF49c09dY18agfd+lxkqB92Mn
         3+UKOeUUCIW1wr7Xym8D79XE3jaI4bhlrDOjH09CtSyWManmZQEO8RnSmg30EGp31bF5
         iqXH4Q0gzQfv8ykjy+7EJK1d/A9MZxl++bp1vISK5SL8ZTV4dZ5pitkP7Er4zBAUl6MD
         ddszCGoEc7kwrqznqyBiOrWXDyhG4l4UeHG0SBC23XgubBA7ft4hhsdg0nTHsjnSFQAn
         stAZYMrVzWLbE63RP9IVuiYlTpCDK0CNuT9k+LbnbZ8ZYnhIrHAyA5wSK/A6OiGcS9I+
         Y/qg==
X-Forwarded-Encrypted: i=1; AJvYcCWQs06tIMaA2LCTNBpbgxIXnkdTC2BpnVEtWerJyf5sam0V5G5caAZ+9ED/z2dHcB/yxSZlJ6VmSMsEVECk36/Pu1gQ+AnOo1whtQ==
X-Gm-Message-State: AOJu0YxXJyHaoV1J4COAtLZZA36mMTVlLCfdUJgqWXHMU/96Ale+KaFt
	11BhFffHWa+PDcHtpChtm1HoXQSZIhRRwDfdTMp9jT+49WsFyZowFfvb4/aaccs=
X-Google-Smtp-Source: AGHT+IG9x+WQxBXG1YbU6a8p0uWmG6wF2P3iHkbOXX4aiVI1y2Kcd8p8Av8hc4p+8nJRchqXusKteg==
X-Received: by 2002:a05:6512:4003:b0:522:221:d19d with SMTP id 2adb3069b0e04-5220fd7bfccmr26640844e87.15.1716188946600;
        Mon, 20 May 2024 00:09:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm1419329466b.31.2024.05.20.00.09.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 00:09:06 -0700 (PDT)
Message-ID: <c05f91f5-a878-4f36-b325-0ac8e038a7e5@linaro.org>
Date: Mon, 20 May 2024 09:09:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: mt6358: Convert to dtschema
To: Kartik Agarwala <agarwala.kartik@gmail.com>, lgirdwood@gmail.com,
 broonie@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20240518081621.63386-1-agarwala.kartik@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240518081621.63386-1-agarwala.kartik@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/05/2024 10:16, Kartik Agarwala wrote:
> Convert Mediatek MT6358 Audio Codec bindings from text to dtschema.
> 
> Signed-off-by: Kartik Agarwala <agarwala.kartik@gmail.com>
> ---
>  .../bindings/sound/mediatek,mt6358.yaml       | 47 +++++++++++++++++++
>  .../devicetree/bindings/sound/mt6358.txt      | 26 ----------
>  2 files changed, 47 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt6358.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/mt6358.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt6358.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt6358.yaml
> new file mode 100644
> index 000000000..f57ef2aa5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt6358.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mediatek,mt6358.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek MT6358 Audio Codec
> +
> +maintainers:
> +  - Kartik Agarwala <agarwala.kartik@gmail.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The communication between MT6358 and SoC is through Mediatek PMIC wrapper.
> +  For more detail, please visit Mediatek PMIC wrapper documentation.
> +  Must be a child node of PMIC wrapper.

Did you update the PMIC wrapper binding with ref to this?

> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt6358-sound
> +      - mediatek,mt6366-sound

You did not test the DTS.

I think I raised the issue already: please make necessary fixes to the
binding (with explanation) or to the DTS, when converting the binding.

> +
> +  Avdd-supply:
> +    description: power source of AVDD
> +
> +  mediatek,dmic-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Indicates how many data pins are used to transmit two channels of PDM
> +      signal. 0 means two wires, 1 means one wire. Default value is 0.
> +    enum:
> +      - 0 # one wire
> +      - 1 # two wires
> +
> +required:
> +  - compatible
> +  - Avdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mt6358_snd {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Definitely no underscores. Probably this is "codec" or "audio-codec".

Best regards,
Krzysztof


