Return-Path: <devicetree+bounces-121022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A09C4EEE
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 07:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BA181F24CC8
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 06:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDA120A5DF;
	Tue, 12 Nov 2024 06:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PfTv+hNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46F91A00D2
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 06:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731394073; cv=none; b=ALPQ2tkVXSMd++BeKGQ49c9re+hWGgPHVX30Y6PAxbyl0UsIjc+OjiJyDBwiwXz3Q+8fR6OeztcfexQoXvmNlH61lQnXdcIZPvHIsrTDt18rysu4w0SQIZ/lZomqdB00KgGRYQ585pYscWN4Oc5CTovadNXMO8t3d/29pD4yIlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731394073; c=relaxed/simple;
	bh=n8Fee0nsjbkzME/fbtTT9j7oZnKfX6kUwbiBJ27qOlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HYqkMy+vwP+HKXqUaCBzxft2XwvTfYRnar/RBrj51i2aPltz1bGyynFnuE6YtZJNTObb9wLZaeJukdQyqL3rza1M7kiAChz98WbOAMfxbBFh1OU/nwY+pSshUUxR/El4RaC1AlIVSo23ZrYjS/tq0wfB41pzsfy4KkdjFauAW9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PfTv+hNY; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so4017816a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 22:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731394071; x=1731998871; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=joM3NYmnrdckWAtqAAeMbz3+XvM8HAXjuHhuPldrIhQ=;
        b=PfTv+hNYjQGvg+ATnJz1SPbUqFVdxQNTsHPJa+1JGLeiN7iFkdLho2eHk6iHO7LF4+
         pnBHUdsTbLmMM+S/Fo6Bzhrerf9YQQsefgvq4VFENH1ZUslefGpr38GiuxeOkcOeoL4W
         NmGk1AHPXGpP05ScSig8M74s4ogo8A8f2WwIJfCSm5LG8Qo+IVBUkg/ahjvJmxwIsqQf
         oTqADbhkw/+Bht/NoygdCf6VqOJXCsoJ9o9OjOxgbtZgGtexOg+aTp2JO4ovgPppbb78
         rR/3aMpqkO+IvzTok0WWRXosVyMnw2BRVV0L4NVyHpZb7nqewzDCziuQQOq2M1spSCgC
         Y6BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731394071; x=1731998871;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=joM3NYmnrdckWAtqAAeMbz3+XvM8HAXjuHhuPldrIhQ=;
        b=rraeEraS7aXWRCY6chNQCtkrt5UWmpqZ+F9A/UIpiurXqA8FySl61GAceBpc6mG+++
         N67DWYkJS4oaAfIi1iDf/bkUQdQJFbmGTUOkwPNnT6WsCWr+DbCBK6FUMPYblvsZMyMk
         EKBES94Zo4tntPl1F2KnilFQVCRVoO9tFpLc/LNshTjp+/GWkIltK2gUj/bqABJF21Ak
         VdiH47Lr2yKjCZjrAYQ8aX/63xyG8HERz1zUdrNrccVZSwyTlmi+vAUj6DHsY04PVCRq
         A/7i6s6WstGoFR8GK6v8BcpKH9Xt7p+2TPiVDmc/CbTxPXo5NcezmGXiJtdeFi539vuu
         dmcA==
X-Forwarded-Encrypted: i=1; AJvYcCUqnERlnl5MPYFzUMgA9B00rDhvV8BQ/rEov3TLkMX7PfyUeXL7C3pglYgF9CSkBszhOGU3XghCIyut@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8VUzEUGigwqTXjEpJa+vcSt6847zrSSoT+JafJljJgveOLlEt
	e715s2x6yalXcgznwSfbDk/Oo/P49oc6O+a/0HvnKzo/ZBZeWheRG3qP4iNwRg==
X-Google-Smtp-Source: AGHT+IGmt6jecpj8o1YtItnfhiloe15JbFW/GZxGthEiDM/nykWYtzusHMMBkQlC4Te2n8f4030aRA==
X-Received: by 2002:a05:6a20:3d88:b0:1d4:e68c:2eb9 with SMTP id adf61e73a8af0-1dc229afb71mr23328487637.20.1731394071234;
        Mon, 11 Nov 2024 22:47:51 -0800 (PST)
Received: from thinkpad ([117.213.103.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724078cd28asm10382819b3a.85.2024.11.11.22.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 22:47:50 -0800 (PST)
Date: Tue, 12 Nov 2024 12:17:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: clock: actions,owl-cmu: convert to YAML
Message-ID: <20241112064743.7qriuo2f26yq4jev@thinkpad>
References: <20241107143431.728669-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241107143431.728669-1-ivo.ivanov.ivanov1@gmail.com>

On Thu, Nov 07, 2024 at 04:34:31PM +0200, Ivaylo Ivanov wrote:
> Convert the Actions Semi Owl CMU bindings to DT schema.
> 
> Changes during conversion:
>  - Since all Actions Semi Owl SoCs utilize the internal low frequency
>    oscillator as a parent for some clocks, require it.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks!

- Mani

> ---
> v3: list the headers in the description
> v3: match properties: order with required:
> v3: add clocks as a required property
> v3: drop unused example node label
> v3: use the preferred four-space indentation for dts example
> 
> v2: drop address and size cells from example
> ---
>  .../bindings/clock/actions,owl-cmu.txt        | 52 ----------------
>  .../bindings/clock/actions,owl-cmu.yaml       | 60 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 61 insertions(+), 53 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/actions,owl-cmu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/actions,owl-cmu.txt b/Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
> deleted file mode 100644
> index d19885b7c..000000000
> --- a/Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -* Actions Semi Owl Clock Management Unit (CMU)
> -
> -The Actions Semi Owl Clock Management Unit generates and supplies clock
> -to various controllers within the SoC. The clock binding described here is
> -applicable to S900, S700 and S500 SoC's.
> -
> -Required Properties:
> -
> -- compatible: should be one of the following,
> -	"actions,s900-cmu"
> -	"actions,s700-cmu"
> -	"actions,s500-cmu"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- clocks: Reference to the parent clocks ("hosc", "losc")
> -- #clock-cells: should be 1.
> -- #reset-cells: should be 1.
> -
> -Each clock is assigned an identifier, and client nodes can use this identifier
> -to specify the clock which they consume.
> -
> -All available clocks are defined as preprocessor macros in corresponding
> -dt-bindings/clock/actions,s900-cmu.h or actions,s700-cmu.h or
> -actions,s500-cmu.h header and can be used in device tree sources.
> -
> -External clocks:
> -
> -The hosc clock used as input for the plls is generated outside the SoC. It is
> -expected that it is defined using standard clock bindings as "hosc".
> -
> -Actions Semi S900 CMU also requires one more clock:
> - - "losc" - internal low frequency oscillator
> -
> -Example: Clock Management Unit node:
> -
> -        cmu: clock-controller@e0160000 {
> -                compatible = "actions,s900-cmu";
> -                reg = <0x0 0xe0160000 0x0 0x1000>;
> -                clocks = <&hosc>, <&losc>;
> -                #clock-cells = <1>;
> -                #reset-cells = <1>;
> -        };
> -
> -Example: UART controller node that consumes clock generated by the clock
> -management unit:
> -
> -        uart: serial@e012a000 {
> -                compatible = "actions,s900-uart", "actions,owl-uart";
> -                reg = <0x0 0xe012a000 0x0 0x2000>;
> -                interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> -                clocks = <&cmu CLK_UART5>;
> -        };
> diff --git a/Documentation/devicetree/bindings/clock/actions,owl-cmu.yaml b/Documentation/devicetree/bindings/clock/actions,owl-cmu.yaml
> new file mode 100644
> index 000000000..1717099b7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/actions,owl-cmu.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/actions,owl-cmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Actions Semi Owl Clock Management Unit (CMU)
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description: |
> +  The Actions Semi Owl Clock Management Unit generates and supplies clock
> +  to various controllers within the SoC.
> +
> +  See also::
> +    include/dt-bindings/clock/actions,s500-cmu.h
> +    include/dt-bindings/clock/actions,s700-cmu.h
> +    include/dt-bindings/clock/actions,s900-cmu.h
> +
> +properties:
> +  compatible:
> +    enum:
> +      - actions,s500-cmu
> +      - actions,s700-cmu
> +      - actions,s900-cmu
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Host oscillator source
> +      - description: Internal low frequency oscillator source
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-controller@e0160000 {
> +        compatible = "actions,s900-cmu";
> +        reg = <0xe0160000 0x1000>;
> +        clocks = <&hosc>, <&losc>;
> +        #clock-cells = <1>;
> +        #reset-cells = <1>;
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 420d06d37..652c9822a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2016,7 +2016,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	linux-actions@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/arm/actions.yaml
> -F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
> +F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.yaml
>  F:	Documentation/devicetree/bindings/dma/owl-dma.yaml
>  F:	Documentation/devicetree/bindings/i2c/i2c-owl.yaml
>  F:	Documentation/devicetree/bindings/interrupt-controller/actions,owl-sirq.yaml
> -- 
> 2.43.0
> 

-- 
மணிவண்ணன் சதாசிவம்

