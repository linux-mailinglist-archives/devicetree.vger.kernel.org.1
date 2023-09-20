Return-Path: <devicetree+bounces-1726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CA87A7A6D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97B101C209B2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 196EB1864B;
	Wed, 20 Sep 2023 11:28:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9CC15AE8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:28:09 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B32A9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:28:07 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9a65f9147ccso882121466b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695209286; x=1695814086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GACDrnV+AI9jqnTx+ewaqjW9iyUrnWty7M6DlDib3xY=;
        b=Jew4i+KKCPTjDYUfasNhsDJvQr4GJMsiFnnv2QecUb3uC0Cp0zfQ/tvVHIDsdny0BK
         gy0ZEXKzpR1GvUPv4QERl6X2RooP/fRn5AWFNDIAPB+PE8R5AuqEk6+Q0YXyUnuDQ2Ph
         l6Wku95Y247xoJIRpNbWd60ce3VPgniUGRWsLDSOvP0SGiA4RBzIS7HeHCLhNVEX9ddP
         MLHckis0z51GOF5yuBrrroXqRQ6xrt9VIubqhQF9FhpStD9HAf34uQe+uGbZzycLkEuB
         Hx/UVR0GFi1w5it4RnXV6kExvEDduILP759XPiZyn84MzzzR+RCJrNjm7dQbyLqti97c
         dD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695209286; x=1695814086;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GACDrnV+AI9jqnTx+ewaqjW9iyUrnWty7M6DlDib3xY=;
        b=e7miBvTJsAf2e8at1BnNE/Bd86LGXmx1rC4b4WLbd13aiDY+uh+EVRhpQY9g9tFJlb
         +97RvbfjExruOSyavU1LjqzDhJ4MA7gGiFI7UjdeZUnjV6s34FhQsYBoGGmYvqIM5PeB
         BJBPYQxPSqLzqn4L4+c/vXI9VeGaZk+a6S+aMagohIGZS8EQGbP1BhwwyLHfx4BeV2zx
         BAa0nJ7mNwM8Q/cLv3HaGhpxF/mCo3KcfTFZ1ylC2EuEBvdImXDRppTjs8KP55PdYPRk
         YnDQLQ6tvMaP5udjnB5MwuoUqdT2Z5NDwIopANnEBNhtLNGRXKfa9ZOJ3fLB9cCHQD4K
         PQuw==
X-Gm-Message-State: AOJu0YyIIdgR8X7DkQa1L2pueotk5ZwXVwRZWRsPq7wsbVEMP+qKQzG4
	a/F8nA9F+tT9TGvdMEco1FaseA==
X-Google-Smtp-Source: AGHT+IGPfIQWQ+EueBRU+uoEQXPLQOfh1V2CdlSsyL7H9gVvMK0VwLBKxAMb/iW36KEiRSVWP/qlAA==
X-Received: by 2002:a17:906:311b:b0:9a2:143e:a062 with SMTP id 27-20020a170906311b00b009a2143ea062mr1843177ejx.49.1695209286403;
        Wed, 20 Sep 2023 04:28:06 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id wy2-20020a170906fe0200b009adcb6c0f0esm7835502ejb.193.2023.09.20.04.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 04:28:05 -0700 (PDT)
Message-ID: <9d612171-8ae4-de65-31b0-fbb5f1f8331e@linaro.org>
Date: Wed, 20 Sep 2023 13:28:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ASoC: dt-bindings: tfa9879: Convert to dtschema
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>,
 lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230919090739.2448-1-bragathemanick0908@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230919090739.2448-1-bragathemanick0908@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 11:07, Bragatheswaran Manickavel wrote:
> Convert the tfa9879 audio CODEC bindings to DT schema
> 

> +required:
> +  - compatible
> +  - reg
> +  - '#sound-dai-cells'
> +
> +additionalProperties: false

Instead:
unevaluatedProperties: false

> +
> +examples:
> +  - |
> +    i2c1 {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       amp: amp@6c {

amplifier@6c

> +          compatible: "nxp,tfa9879";
> +          reg: <0x6c>;
> +          "#sound-dai-cells": <0>;
> +          pinctrl-names: "default";
> +          pinctrl-0: <&pinctrl_i2c1>;

That's not a DT syntax.

Best regards,
Krzysztof


