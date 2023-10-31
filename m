Return-Path: <devicetree+bounces-13215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFBF7DCF3A
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92FC81C20C26
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8159F1DDF5;
	Tue, 31 Oct 2023 14:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DYb5EqzF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF62199DC
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:31:13 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28BEFE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:31:10 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-53e70b0a218so9152374a12.2
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698762669; x=1699367469; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xm+VLoepgpEYkMz/3ZlsMQx033enDSAo3eSGoq/fDsw=;
        b=DYb5EqzFmQVUMN0wsCuKKH7SgLE3PU4M8Y3LhxFBw6sXWAeuk13QWstPfn7E2B3APC
         hnFKMOxcSneSUAbehPdwBoaUdN0duwwE/Jrb3CgiFCmHbJao+nleH/xqQmWMFLbhF/dS
         DWzslWEoD3Lh9i3hnao5Xl4YNlsHYvvUN6ApEHfkY8NKB/p1rITfzjxaA4TrAyvSgVGP
         IRSNgo9NqNbiSEezNIUSqbWpbT6+ye5S4jaI7b9R8Fla4NgeGxLZ2jAN1UPSNnQX4kv6
         5hkZTyTEiYknPZy03QjTpcBX8zuKogcX3+EaLU4MezU3auF0Ga99QMPI0OsyoGSeHqFT
         +9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698762669; x=1699367469;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xm+VLoepgpEYkMz/3ZlsMQx033enDSAo3eSGoq/fDsw=;
        b=ECx3vL7uDqVk4ZXNxP9tzbDYFLBUejWThxSVAhdZ6Da79vAdRj3VaEPM9ZJw3Oqno3
         re4ZZQcKk2pe7MB6iN0MaxjIv37FM/fahtA58Ppn0gexojZhy1U7jN909HEiwguYwaRF
         UWQ/qn6kbbE3K2c6Sd82BveeEr74Ytt29H7tMHy2mQX4ZEXR0d2cPm2/CNWWf9JiVGP7
         HtIlvuu0A2mOOeopYFplO8JdO8ojn6vf7aCJZx5OvELfg+2Z3ulj9rEC+0A2YZzEesd1
         e0Z3AwRTlbF4r9qKuo22+iG8pH4R1yyst8ePRogzvPOJn2m9ymQsup/UAFTmq9RsmBd2
         horQ==
X-Gm-Message-State: AOJu0YwLtneI5YkjyGCUFWMKQtn1Opx0qpJDUEiMzCICxOjbVF9qxEAs
	ZsK8y3gWbI/HAHzQF5TBpoGS4Q==
X-Google-Smtp-Source: AGHT+IEQkPSYVuPCL4yM410Y0bMFWAOzT9AuzwEo0dP79HBli0t7IMJNeWToEaMLYKUoI11woY+ziA==
X-Received: by 2002:aa7:d50b:0:b0:53e:7d60:58bb with SMTP id y11-20020aa7d50b000000b0053e7d6058bbmr10891799edq.27.1698762668915;
        Tue, 31 Oct 2023 07:31:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id v27-20020a50955b000000b0053e408aec8bsm1252059eda.6.2023.10.31.07.31.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 07:31:08 -0700 (PDT)
Message-ID: <ac403ba5-b0e7-44ff-8b12-e6b559a99cfc@linaro.org>
Date: Tue, 31 Oct 2023 15:31:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: mfd: brcm,bcm59056: Convert to YAML
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Stanislav Jakubek <stano.jakubek@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231030-bcm59054-v2-0-5fa4011aa5ba@gmail.com>
 <20231030-bcm59054-v2-1-5fa4011aa5ba@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231030-bcm59054-v2-1-5fa4011aa5ba@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2023 20:41, Artur Weber wrote:
> Convert devicetree bindings for the Broadcom BCM59056 PMU MFD from
> TXT to YAML format. This patch does not change any functionality;
> the bindings remain the same.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  .../devicetree/bindings/mfd/brcm,bcm59056.txt      | 39 ----------
>  .../devicetree/bindings/mfd/brcm,bcm59056.yaml     | 91 ++++++++++++++++++++++
>  2 files changed, 91 insertions(+), 39 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm59056.txt b/Documentation/devicetree/bindings/mfd/brcm,bcm59056.txt
> deleted file mode 100644
> index be51a15e05f9..000000000000
> --- a/Documentation/devicetree/bindings/mfd/brcm,bcm59056.txt
> +++ /dev/null
> @@ -1,39 +0,0 @@
> --------------------------------
> -BCM590xx Power Management Units
> --------------------------------
> -
> -Required properties:
> -- compatible: "brcm,bcm59056"
> -- reg: I2C slave address
> -- interrupts: interrupt for the PMU. Generic interrupt client node bindings
> -  are described in interrupt-controller/interrupts.txt
> -
> -------------------
> -Voltage Regulators
> -------------------
> -
> -Optional child nodes:
> -- regulators: container node for regulators following the generic
> -  regulator binding in regulator/regulator.txt
> -
> -  The valid regulator node names for BCM59056 are:
> -  	rfldo, camldo1, camldo2, simldo1, simldo2, sdldo, sdxldo,
> -	mmcldo1, mmcldo2, audldo, micldo, usbldo, vibldo,
> -	csr, iosr1, iosr2, msr, sdsr1, sdsr2, vsr,
> -	gpldo1, gpldo2, gpldo3, gpldo4, gpldo5, gpldo6,
> -	vbus
> -
> -Example:
> -	pmu: bcm59056@8 {
> -		compatible = "brcm,bcm59056";
> -		reg = <0x08>;
> -		interrupts = <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>;
> -		regulators {
> -			rfldo_reg: rfldo {
> -				regulator-min-microvolt = <1200000>;
> -				regulator-max-microvolt = <3300000>;
> -			};
> -
> -			...
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml
> new file mode 100644
> index 000000000000..6d6acc9fd312
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/brcm,bcm59056.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BCM590xx Power Management Unit MFD
> +
> +maintainers:
> +  - Artur Weber <aweber.kernel@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - "brcm,bcm59056"

This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof


