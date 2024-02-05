Return-Path: <devicetree+bounces-38572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4EE8498A1
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 12:18:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15963B2A0BA
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 11:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D181755E;
	Mon,  5 Feb 2024 11:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXZ+s4FU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB79F18635
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 11:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707131883; cv=none; b=aDa6wKhM22fskTHA/K1PEIy9GzxwOTc/oX9aQojd1bbxDTmZfAP6d6PwSVqZQxN4EcoiynkEpukLUHrNahNdjy0IK34WlQDvWLB8rWMriWD9D4ogsEJXcF5web7R8suj0Yz0ghYOV2f1nPEl7C+PWqwWZ3hyIpcV+2lozo33oMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707131883; c=relaxed/simple;
	bh=Q7fJYCpHKNTkQs8NaOPVx7xWVjloS+i5rcmJo7vLk24=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Y8Q2qK4qT9KNQZhdoEnd9CbSMWZJDtbA0iM/FIhRscf9nYkks8YqsxxC6iIYe/WT2zTge49NPwrLYdoFhSRScu96ow7XU+bs3VXLbsqMqYMd3LjBfWbdQSUc/l5hhXEhfNoxZQmxm0Ly3EbMszDM2CMfK9MzQbGnF9QJCrKdsQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dXZ+s4FU; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40fc65783aeso26283495e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 03:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707131880; x=1707736680; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wTVVkqHijzZLRV63iQKzj80emKWmcf9Z4F1mFCSni24=;
        b=dXZ+s4FUdQIILdWLpADK1TP/TDZFaGvVeQmFO6LQpKWio77wgc3jCZ2ie+PpY7RQTk
         VSC+IX7iSKbBhupUTruTZjbnr8wg6rZvYfJuz2CDmDQTPUBC0P6SlRfhdaAW5G4URrLL
         dCDXyv0CANB24gOykwPHvzqZ6qKwWFCK8z3X/sRTb+DUcbqfdokWplu/28FZU/yjxHRr
         kZOXov8Um4EfCKhIEDuSy9mNUxXDbOeID+gInLR42tAVogHt3NT5EQHha8YCWXCWtH8W
         H1uhJb92ZIq13SU1hliqYFKH+rZa/RLrp8+5jmYgAyrIf8uvZ92XzAqO7IHE9t7D6vYg
         iLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707131880; x=1707736680;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wTVVkqHijzZLRV63iQKzj80emKWmcf9Z4F1mFCSni24=;
        b=HhbI9rPgTZ3QqedDAUOAhDvP1fn2L0t7HTgCCl+2UCAXDgrrYobeNgL0mdDbR3VL0I
         mH613hPK75Kvb/snDj9RMcnsJpPuJF3z3m7a4I2IBvgMTYOipsmOmuKoSWEqKu4XZY73
         Gve19GyNhce3/VIPbuZeh2UBvdu17ipOagZQDAo//hFH05W/dEhqXvaRaKcgsb4FMKZP
         5LlefpkTQg+YF3nxQ3TBQavujZzUpptWWePlSb19q9tOxhgbAhvtxe+dio03R1HpnKhg
         HxUAy2XZXeVllrCXxtud+5HWer+uccPVNAgqWdPKMSfpdB3H6VC/y1wIQkkZYgnL1p8e
         3pbg==
X-Gm-Message-State: AOJu0YwRs05yWibXOeZ5PQnjLbEYNqIZoqPzHwjksjDCWchBwAIfe47F
	05j1gjDeeK87iqSJ9p5JpRLT1b2bPHl/bdN0LoIG298vddgZsw2HlDiPXRlTGYc=
X-Google-Smtp-Source: AGHT+IH1JgJpcUN5DX+ix9JHVVkbb9CbvqrJRhZyoVN4Q4DDxCJA/ojGLv44Q+eRYF25hXNO4EQH4A==
X-Received: by 2002:a05:600c:1e17:b0:40f:bad2:6f04 with SMTP id ay23-20020a05600c1e1700b0040fbad26f04mr4150206wmb.1.1707131879816;
        Mon, 05 Feb 2024 03:17:59 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVupIkaG76QgOgeYgogxcHY6Wv4J6+wWDn3RPgQvIt/ApdU0P86oOlyPGgmIl1sFQPPc25v0Hya2ok6ao0tPqIqp+yJfCy8N2z3z8myB0XpG222QtWD4yKQgJRu5mn4N+xMGR/tW07xxdRrpy0EbioNnzAfYOyvxmk9/D8YxkHm/HydSrYto1qllddTchqda9SdQ2VAUiQMXm4r4Vu8vS4FXaM6w13hoOxmuWB1JiTJ6CJK2tO1HQ91hVyDan3Cn6/zlvV5fgSE9NUnEf92zE9w++4TREusqKVIrTOvs7tZTFQHDeps/BG9WkdIJVW0vpIaCpx0PiQA3cyF820Hv/EMZ6BAwbxUmDzcScYt8NK+Cl7NK1JaZJk+o95UjKWlR/9MYL0jnZgnwHQM/d/X4atexfLuP2BNK4BkTMlBEUUujw3Ey51Tos7oIjCQbrz5LewYJmrJICa6EZ80qVvO0urUvq0koMzYVgJKM98TWdyAoL6LHJBXzC3P4Aw/mq6K+SjqlUQ4qQ06cMWt1BoaptrXqziObqvNb3iaSvKz6ICM0pQdEwkk3T+++RSjeX03L1ZH2upSBOPbXxRGvLeKXUqXXgxRdGjyH+qyk9RjGZmIelfNrHxjrPEGhmFyi93hPbE/EsZrCrOLGGu+Z7PiMD6snmr+fyuBl/He6FRD/jdazQygMZTfpmMdurjbYrn2UDkYFH+TKdJmqv3V1q2Vel5W99gRhJOPKRjpj8deoCFxB6KjTliUFkDdpFN2A+xdgPZ2oqcx5b4wkoMB1yiJeY6oXk8ptfy/7NM8o9AuSqs4b7XsSTu4XFAvh4Uu0ejJ6quSgASp7mJ0ebARqMAHiLOfX71M54CuQcNjb2XQHVPfIljWZQ1X29F7ZpZ5HVFGwA9NnlqPSyEGukt7dW8AmlFVlUGA7pg1hbstovLf+H7mOb+uicKrFS55BqTHfaggzZxaTl
 /R6UHb48mXbFNNsdP1BZZUML2Vnqu4POnH5UWvRhjpsOUfRfYeghlDJxf026VeDPFUAaW4oix+gpaDV/AnctZtM6KuVyOmmbwwowGhJ95h4nFmoeqNkNHCgy30FDk+fAyY4ZF827uMRa+fzbvdoyncpCq1em39ogTVhxb6JE8cCgvsSkUHPmaJzBDC/C5IxXMuwckHPy8MEpE9Ha/i3w==
Received: from ?IPV6:2a01:e0a:982:cbb0:bbd9:ac3e:db1d:9662? ([2a01:e0a:982:cbb0:bbd9:ac3e:db1d:9662])
        by smtp.gmail.com with ESMTPSA id iv15-20020a05600c548f00b0040efd192a95sm8371318wmb.1.2024.02.05.03.17.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 03:17:59 -0800 (PST)
Message-ID: <fabde8a2-1fab-45bd-8250-898254e0ba8d@linaro.org>
Date: Mon, 5 Feb 2024 12:17:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH V8 09/12] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Content-Language: en-US, fr
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de, alexander.stein@ew.tq-group.com,
 frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-10-aford173@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20240203165307.7806-10-aford173@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2024 17:52, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> ---
> V3:  Change name and location to better idenfity as a bridge and
>       HDMI 2.0a transmitter
> 
>       Fix typos and feedback from Rob and added ports.
> ---
>   .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 102 ++++++++++++++++++
>   1 file changed, 102 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> new file mode 100644
> index 000000000000..3791c9f4ebab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/fsl,imx8mp-hdmi-tx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DWC HDMI TX Encoder
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description:
> +  The i.MX8MP HDMI transmitter is a Synopsys DesignWare
> +  HDMI 2.0a TX controller IP.
> +
> +allOf:
> +  - $ref: /schemas/display/bridge/synopsys,dw-hdmi.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-tx
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: iahb
> +      - const: isfr
> +      - const: cec
> +      - const: pix
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Parallel RGB input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: HDMI output port
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +  - ports
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    hdmi@32fd8000 {
> +        compatible = "fsl,imx8mp-hdmi-tx";
> +        reg = <0x32fd8000 0x7eff>;
> +        interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +                 <&clk IMX8MP_CLK_32K>,
> +                 <&hdmi_tx_phy>;
> +        clock-names = "iahb", "isfr", "cec", "pix";
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +        reg-io-width = <1>;
> +        ports {
> +           #address-cells = <1>;
> +           #size-cells = <0>;
> +           port@0 {
> +             reg = <0>;
> +
> +             hdmi_tx_from_pvi: endpoint {
> +               remote-endpoint = <&pvi_to_hdmi_tx>;
> +             };
> +          };
> +
> +          port@1 {
> +            reg = <1>;
> +              hdmi_tx_out: endpoint {
> +                remote-endpoint = <&hdmi0_con>;
> +              };
> +          };
> +        };
> +    };

I'll apply patches 9 & 10 once this one is properly reviewed

Thanks,
Neil

