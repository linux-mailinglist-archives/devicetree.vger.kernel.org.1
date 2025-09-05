Return-Path: <devicetree+bounces-213286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 038F8B45046
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3578E3ABDE8
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8B62E92D2;
	Fri,  5 Sep 2025 07:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ySngPM/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45812E9755
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 07:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757058707; cv=none; b=GMuWFy53pXGwlEvIQgjsB9XYB+GqeGLybDsdraVtY/y+iCt60LA3g3LFyZU8GTQKeCcsMuu7OpAcg3LyE1zV6zTxGJjPT9CByLSBlwECJmq27p41G6NZSdliEIElDx+BA7kiTQ9SwJH6RBFc5wRamlZE03+pUBcD7qhmoQtiOBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757058707; c=relaxed/simple;
	bh=HHQKWlCq6Dv4lsBAVhaaR9oi96TGkmsPJCtNcK04Ges=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FC/VS9D3X7ThXk3RSG4+GfpFI10qOBPo+HJe0vIWxe8mzUtAesOZptJrCW7HDvF97LhloEdRUU/PJ3nfXerkCFWri0COvuTRsXziCZ3jNZyhBYJnlgMZ0C4jOdHBU7orjfoJ7sx6H7eiRCoox6Vy839oWZHl2MgJV97x6FHK4D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ySngPM/a; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b049bd81ce5so65604366b.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757058702; x=1757663502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OTkMukFvFRGpUIaR3bcrLvyQUvlizTeZ6D8ftQ6ewB8=;
        b=ySngPM/aFaCg6JUoSlKF516b9KaU2rUZFNv/UL7owjuvmF0b19u0VA97Y0MQUoehSn
         hIu5HzJ1IXcZQowOrJLT+/vpvC0fKRtPyhmWi/eXWClGIH4q4z+jjRgJVS8QCNb2mWbb
         S5UFkQlkb2tLYP0pxlD/ZJBCAvdx97GxRWeYAtB5+rIRrKV46n73nAaPMDodGDfQ1Qen
         LHXLTR/W30FJSSGPP2/2yhEqLCuHWApOQdBu0t4D3yU8kD/dE+lL8gjgwRb2r61DxaCy
         kKeR8HjeDdMKRBQSdsjb3XDQfJdzRfio8ucguAKcwKEK7341uHIX0WEabBznJgKmQbRb
         /WDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757058702; x=1757663502;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OTkMukFvFRGpUIaR3bcrLvyQUvlizTeZ6D8ftQ6ewB8=;
        b=F/+xLXaZXCm4qSGONk+4KTU+RyCImbgMcIMGdDPgjjZ3mvbXVzkptfOZ0XkmupQbCp
         PaSP1m0QT+/4tMOeDeEWU/i+otq/XGQX3QBrVVMfO5gas9IzvkhGa9Yv9m6kcXKbp5GF
         yjmq5AOJjbUFHBwLTYdUXC+0i0BWs8BVunUDBdX8qzhOYxdJU3In0ltxvWCcnrNpIH67
         n/EI6MUuGEb0jTrd2aTzQF9zJ2NEblSLsb6cRtay+l1nWGGxkQ1k6QBCqaKMEBLmYbV+
         mpxF74fXj9eYpIgjBdcT7AF8jQ4Jewvxd7GsXIHXBb5iFi3rNYTTD0JWByWfTeE2he5v
         kXdw==
X-Forwarded-Encrypted: i=1; AJvYcCWHopAcBlX22C5Oql3o5gu3LIep8pKB7lDhSiDk66U13bdOFAmy2xfh8N6555vMOLdtIPCFN+ET9vS/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7vbP1na8UiXs6hz5TFhzIe9qMxGSd9wkqW6j9aevJBKnk6KHa
	vStfNOCDRWctMaWrb6FkcA5cwXVkBePoslzU83pgsG1L/2vXfRTSccBLqa2Tt9HarEhlourGfFZ
	euoSdo90=
X-Gm-Gg: ASbGncuGOXwxmjXmvcShqNWFfd7BdYE7Bl6agq8EABuubjuRCDTvzYvzxDAKzIeH8m2
	e0PPC98ZsfX6ojWm1DTj0s/pB5BUDBqKt5Xk4AljW3kFhlkdIXs5DUgkXYPtOk9iwHzorid5I6Q
	xdGX+SzmWxQgc1QiC6zqIItXqVMbVjSut75jhsoHx3+KQeXPOp29W8Ss+PLlAYIMuW4u2hjLI6w
	MKbELlW12+InX+G8dzWccntORbzWZPPBUcghd82g5Arb87F8wSx5VIN6fmc6rImR6Lqe/LERddn
	ObBLFEA1/wAGxtfFCm7HyDqol78UJNwqu67ZuunCgEXOqm1UfdFVyJl8Jx7SavYoiheL0lvWym2
	WA0J1jFuefVyuQbCLH63M1fCT2/eT0ZOSGJgxpNPF80bK1ZiOY5D9Iwo=
X-Google-Smtp-Source: AGHT+IE9ONGaCVuMDUsDk5AMP12J/m85KDluThMZ0nObk2fo54w+Ym2od7+l60KIMrqn55YK25utpQ==
X-Received: by 2002:a17:906:eec3:b0:b04:3cd2:265b with SMTP id a640c23a62f3a-b0493084d84mr250335766b.5.1757058701824;
        Fri, 05 Sep 2025 00:51:41 -0700 (PDT)
Received: from [192.168.7.190] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b01af44a01fsm1479647366b.23.2025.09.05.00.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 00:51:41 -0700 (PDT)
Message-ID: <25d043fa-a600-46df-b1e4-f24f715d9887@linaro.org>
Date: Fri, 5 Sep 2025 09:51:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/4] dt-bindings: display: bridge: renesas,dsi-csi2-tx:
 Allow panel@ subnode
To: Marek Vasut <marek.vasut+renesas@mailbox.org>,
 dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250904210147.186728-1-marek.vasut+renesas@mailbox.org>
 <20250904210147.186728-4-marek.vasut+renesas@mailbox.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250904210147.186728-4-marek.vasut+renesas@mailbox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 23:01, Marek Vasut wrote:
> This controller can have both bridges and panels connected to it. In
> order to describe panels properly in DT, pull in dsi-controller.yaml
> and disallow only unevaluatedProperties, because the panel node is
> optional. Include example binding with panel.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> V2: Drop the dsi0: and dsi1: controller labels
> ---
>   .../display/bridge/renesas,dsi-csi2-tx.yaml   | 53 ++++++++++++++++++-
>   1 file changed, 51 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> index c167795c63f64..51d685ed82891 100644
> --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> @@ -14,6 +14,9 @@ description: |
>     R-Car Gen4 SoCs. The encoder can operate in either DSI or CSI-2 mode, with up
>     to four data lanes.
>   
> +allOf:
> +  - $ref: /schemas/display/dsi-controller.yaml#
> +
>   properties:
>     compatible:
>       enum:
> @@ -80,14 +83,14 @@ required:
>     - resets
>     - ports
>   
> -additionalProperties: false
> +unevaluatedProperties: false
>   
>   examples:
>     - |
>       #include <dt-bindings/clock/r8a779a0-cpg-mssr.h>
>       #include <dt-bindings/power/r8a779a0-sysc.h>
>   
> -    dsi0: dsi-encoder@fed80000 {
> +    dsi@fed80000 {
>           compatible = "renesas,r8a779a0-dsi-csi2-tx";
>           reg = <0xfed80000 0x10000>;
>           power-domains = <&sysc R8A779A0_PD_ALWAYS_ON>;
> @@ -117,4 +120,50 @@ examples:
>               };
>           };
>       };
> +
> +  - |
> +    #include <dt-bindings/clock/r8a779g0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a779g0-sysc.h>
> +
> +    dsi@fed80000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "renesas,r8a779g0-dsi-csi2-tx";
> +        reg = <0xfed80000 0x10000>;
> +        clocks = <&cpg CPG_MOD 415>,
> +                 <&cpg CPG_CORE R8A779G0_CLK_DSIEXT>,
> +                 <&cpg CPG_CORE R8A779G0_CLK_DSIREF>;
> +        clock-names = "fck", "dsi", "pll";
> +        power-domains = <&sysc R8A779G0_PD_ALWAYS_ON>;
> +        resets = <&cpg 415>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                dsi0port1_out: endpoint {
> +                    remote-endpoint = <&panel_in>;
> +                    data-lanes = <1 2>;
> +                };
> +            };
> +        };
> +
> +        panel@0 {
> +            reg = <0>;
> +            compatible = "raspberrypi,dsi-7inch";
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint = <&dsi0port1_out>;
> +                };
> +            };
> +        };
> +    };
>   ...

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

