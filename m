Return-Path: <devicetree+bounces-12888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D2F7DBAD4
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9A72281464
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53ED6171A6;
	Mon, 30 Oct 2023 13:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ru8TpXzC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE09E168CA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:32:58 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C130C6
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 06:32:56 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-408382da7f0so32751785e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 06:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698672775; x=1699277575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FSsZlGJ0JWpeCuk/dM7vPXRJ7s2Y68pam9jGh9VCh8Q=;
        b=Ru8TpXzCZRKbDIAp4O1JM0ceZeoxtPLaVOy9cN0iHxkrAeAJDHDQweHnPQf3oQDyXn
         qlLooBAHM6PS1NC+mOrBqvhmTchn6is0Gqzm6L7YOOVUg/H7dzHvxQIOA7NjHPWFMnnI
         8zUjoJLyYaY6VYpHxQsAP+lzi+15tSdfwKEs+0EmXEUc5FV/zvj/VI3pygg8G78IJSKP
         +fKjTs6+6bD1s+VU0xddGZgRfpV++il3LeoX//DqmpnGOpGhKPcWLut3JOztUk+fAGGh
         PC744j5z7pa3SrRvwenWLU923s5NmoXxBzhOAEGI8dTuVuRv5dPrcy9tc1BxE9rCVHD0
         RNyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698672775; x=1699277575;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FSsZlGJ0JWpeCuk/dM7vPXRJ7s2Y68pam9jGh9VCh8Q=;
        b=u2G23EPQHKXZhoQE6h9lIp1YmzyAoe+HTwAqCc+Qz3dzgfJvtkfgSdLfyTR67zrAro
         qdLxzPhCNqfSPxVEyrHQTJ1OuSBPiPB0MdtdZH+t0DW8lB6Q5ikKAi5nM8/L0SiWi1Em
         pQ6P3Gc1oDRpEsBo541lMxf+fBuS1AbD1xGxcfJtIuOWMqMrQ2FLZujfCs5HyCRT9EQ3
         5Ex02SJVmh9jUtur9KTcHjNBl9f5KDSnm6TWqFgB8Snj4L0YtMNeEZuln12I0SCL3IkC
         JDgDht3Pvnx1ftuURSFGUMm4ifsvXCa3NdKUu1PBCIkBjw6T24bt/baCu2wQkASI2ZTg
         BBlA==
X-Gm-Message-State: AOJu0YyRi6NHlODcER9L04ifDL2QHmZAOXOz+sUzgYk/o5ujbKsXdyYI
	ASr59R8G3f0RMPEnZsc3vDrZRQ==
X-Google-Smtp-Source: AGHT+IG8SNw66Pwt0HEMTLsi+OhjycW90eUy0mgkJ3vFWtzeIbfCWCd0CJwNlFOMwopsLbdxiiHBng==
X-Received: by 2002:a05:600c:1988:b0:402:ea96:c09a with SMTP id t8-20020a05600c198800b00402ea96c09amr8193491wmq.16.1698672774739;
        Mon, 30 Oct 2023 06:32:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id ew11-20020a05600c808b00b004063c9f68f2sm9048498wmb.26.2023.10.30.06.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 06:32:54 -0700 (PDT)
Message-ID: <fa69e90e-04d0-443f-adb1-f6b622eaa5f9@linaro.org>
Date: Mon, 30 Oct 2023 14:32:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: cn913x: add device trees for COM
 Express boards
Content-Language: en-US
To: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch,
 gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 pali@kernel.org, mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: cyuval@marvell.com
References: <20231029174814.559583-1-enachman@marvell.com>
 <20231029174814.559583-4-enachman@marvell.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231029174814.559583-4-enachman@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/10/2023 18:48, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add support for CN9130 and CN9131 COM Express Type 7 CPU
> module boards by Marvell.
> Define these COM Express CPU modules as dtsi and
> provide a dtsi file for a carrier board (Marvell AC5X RD
> COM Express type 7 carrier board).
> This Carrier board only utilizes the PCIe link, hence no
> special device / driver support is provided by this dtsi file.
> Finally, provide a dts file for the com express carrier and
> CPU module combination.
> 
> These COM Express boards differ from the existing CN913x DB
> boards by the type of ethernet connection (RGMII),
> the type of voltage regulators (not i2c expander based)
> and the USB phy (not UTMI based).
> Note - PHY + RGMII connector is OOB on CPU module.
> CN9131 COM Express board is basically CN9130 COM Express board
> with an additional CP115 I/O co-processor, which in this case
> provides an additional USB host controller on the board.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  arch/arm64/boot/dts/marvell/Makefile          |   1 +
>  .../marvell/ac5x-rd-carrier-with-cn9131.dts   |  20 ++++
>  .../boot/dts/marvell/ac5x-rd-carrier.dtsi     |  15 +++
>  .../dts/marvell/cn9130-db-comexpress.dtsi     | 101 ++++++++++++++++
>  .../dts/marvell/cn9131-db-comexpress.dtsi     | 113 ++++++++++++++++++
>  5 files changed, 250 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/marvell/ac5x-rd-carrier-with-cn9131.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/ac5x-rd-carrier.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
> 
> diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
> index 79ac09b58a89..88c0f357a778 100644
> --- a/arch/arm64/boot/dts/marvell/Makefile
> +++ b/arch/arm64/boot/dts/marvell/Makefile
> @@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db-B.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-A.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-B.dtb
> +dtb-$(CONFIG_ARCH_MVEBU) += ac5x-rd-carrier-with-cn9131.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += ac5-98dx35xx-rd.dtb
> diff --git a/arch/arm64/boot/dts/marvell/ac5x-rd-carrier-with-cn9131.dts b/arch/arm64/boot/dts/marvell/ac5x-rd-carrier-with-cn9131.dts
> new file mode 100644
> index 000000000000..9ca2725184e2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/ac5x-rd-carrier-with-cn9131.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marvell International Ltd.
> + *
> + * Device tree for the AC5X RD Type 7 Com Express carrier board,
> + * Utilizing the CN913x COM Express CPU module board.
> + * This specific board only maintains a PCIe link with the CPU CPU module
> + * module, which does not require any special DTS definitions.
> + */
> +
> +#include "cn9131-db-comexpress.dtsi"
> +#include "ac5x-rd-carrier.dtsi"
> +
> +/ {
> +	model = "Marvell Armada AC5X RD COM EXPRESS type 7 carrier board with CN9131 CPU module";
> +	compatible = "marvell,rd-ac5x-carrier-with-cn9131", "marvell,rd-ac5x-carrier",
> +		     "marvell,cn9131", "marvell,cn9130",
> +		     "marvell,armada-ap807-quad", "marvell,armada-ap807";

So you clearly did not test what you wrote.

This is v4, so at this point testing should be obvious. You must test
your bindings and you must test your DTS against bindings.

Successful test means: ZERO warnings.

Standard disclaimer:

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.



Best regards,
Krzysztof


