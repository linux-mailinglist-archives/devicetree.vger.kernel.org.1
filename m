Return-Path: <devicetree+bounces-46691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F84986A92C
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 08:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AB82B2111E
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 07:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45F425567;
	Wed, 28 Feb 2024 07:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zaoZ6rHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A505B250F2
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 07:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709106337; cv=none; b=IbyH8cD0LUCEhjdU1zyicxA4Q2k13De4oaTCqg6Ul63vwD6iwNbDAhngSs4Onv0PDRdysKGztY8KhlY2o1hS7XeSNKxKMJyVoXeYy6WYO9TqdA8r7eS1LOnlS4pXrCGfuTSVvjnNFbHScStFmuGJNVOZmiUkcpOrQ9vZbxO8B1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709106337; c=relaxed/simple;
	bh=cECfJjoEdwpwq330DxYzEtaZUApUNvoyqZPwHZ9EhtM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aAr9uCTvoe6D3EHPPddnWLssO+DXgDXIGaJn/QlOkldfgw00cA9MU+/g16bi9SOme/y8waqKtTq+B8V9TwonyL2UCCiPb28X0tlOVSHcs9OhRm7TRlBI13DoIUh/F5BWyBnTkVWiwI+HSONfOwM4k9vvM3EFsK2uShSqOyr1DBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zaoZ6rHK; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-565a2c4cc1aso5722654a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 23:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709106334; x=1709711134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ffcxVd3ce+OAb3e3ey+HLMYSV03mtmenUi5/yudgUWg=;
        b=zaoZ6rHKcc/DiXFkOtV3n/NZHPSpQbL/uiVKyOIJVOX1dMUfRksflUMdvLKZujI3Sl
         zvZ9A11KBFDNQ3ywECTgr0UvWbpBy/wbSEgc7ajyIdy2cLQjXDcQbO3Efy8+WblOHpmu
         t2V/PaFjHFV+sWoyQrG1Zp4ytFdcEt7hud6tAPdtwxXcZxz5h+CvcEt+AYgNfUTnxOPP
         Mlyh0opxnHfEC2F2B8SX++yvzu4Aic6pzYCPxZgobIccHt8Yv090lgN1tH4KJNWultSy
         Vl0pOaJk6shGUp8VHT+fDzYXLRJjlTSB2MJ99TehwoKGcrjHfFUjRJW+/8IXBNVz8WUz
         /Amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709106334; x=1709711134;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffcxVd3ce+OAb3e3ey+HLMYSV03mtmenUi5/yudgUWg=;
        b=TCSxzDkYFsiW7vbTL4GFeOoQ3H2paMd1R748QvkjHoiSnv5gwjy/lr7viIFNa5sgFY
         sYzwBbtBgTdrDO682VQ0WqTmUbCqshstsvxebL26IQY38DpAaWI8YSkQxjojlBp9QK0n
         Eu/wyHu8Z8VeWCujWmXyxhdW5mA6M6VOK2U1/jTnLu9vpr6vC8Sd4sDYAZiVxmZQP3dR
         p0x1ek0D3CgjI+xcM8w+XYRZ34gPh5tUorE65M5qwiistgyMp+JWxi6sBUEEIaa1zEpr
         68YsNi2x4wCF0wuH5H4B1zCUnZHEJfyAxvjNDkivElCSsdkwfIvbtYZEuQb6S4c/lI+n
         7EqA==
X-Forwarded-Encrypted: i=1; AJvYcCXQ5dX7NXnEP5o6rx9xyXYSaavw3aHAQr6ccx/6akNxM6BPyHlysIdrhViP5rHrLbr53BZQ2uf5O5H+wn4c9D8M36uUNYneZMyPlQ==
X-Gm-Message-State: AOJu0YytVXc7jC4D7hkzGlqpYprmKW1ZxxK8W+4SLsygXc9NyhA69jRv
	UnH5K03OEq1Ist1r4EhiDH6CCL4UFiipvj3vL/qJioMxQoWSp1arTRki5bVlB/g=
X-Google-Smtp-Source: AGHT+IHvMx+P3pIYgRJmELocj9vvnYyY5AlBT5P7k84UQf7mQZaebEI45FwJWM61dXxSeKU7AMK1og==
X-Received: by 2002:a05:6402:1b07:b0:565:7b61:4c86 with SMTP id by7-20020a0564021b0700b005657b614c86mr8336144edb.6.1709106334017;
        Tue, 27 Feb 2024 23:45:34 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p2-20020a50c942000000b005657eefa8e9sm1518858edh.4.2024.02.27.23.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 23:45:33 -0800 (PST)
Message-ID: <1ad77c33-71de-4bc8-a53e-1e74a5096079@linaro.org>
Date: Wed, 28 Feb 2024 08:45:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindindgs: clock: support NXP i.MX95 BLK CTL
 module
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Abel Vesa <abelvesa@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20240228-imx95-blk-ctl-v2-0-ffb7eefb6dcd@nxp.com>
 <20240228-imx95-blk-ctl-v2-1-ffb7eefb6dcd@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228-imx95-blk-ctl-v2-1-ffb7eefb6dcd@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 06:43, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX95 includes BLK CTL module in several MIXes, such as VPU_CSR in
> VPUMIX, BLK_CTRL_NETCMIX in NETCMIX, CAMERA_CSR in CAMERAMIX and etc.
> 
> The BLK CTL module is used for various settings of a specific MIX, such
> as clock, QoS and etc.
> 
> This patch is to add some BLK CTL modules that has clock features.

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

There are some typos, so you miss my filters...

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx95-blk-ctl.yaml   | 61 ++++++++++++++++++++++
>  include/dt-bindings/clock/nxp,imx95-clock.h        | 32 ++++++++++++
>  2 files changed, 93 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx95-blk-ctl.yaml b/Documentation/devicetree/bindings/clock/imx95-blk-ctl.yaml
> new file mode 100644
> index 000000000000..6d33601034ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx95-blk-ctl.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx95-blk-ctl.yaml#

Filename like compatible. We talked about this.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX95 Block Control
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - nxp,imx95-cameramix-csr
> +          - nxp,imx95-display-master-csr
> +          - nxp,imx95-dispmix-lvds-csr
> +          - nxp,imx95-dispmix-csr
> +          - nxp,imx95-netcmix-blk-ctrl
> +          - nxp,imx95-vpumix-csr
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      The clock consumer should specify the desired clock by having the clock
> +      ID in its "clocks" phandle cell. See
> +      include/dt-bindings/clock/nxp,imx95-clock.h
> +
> +  mux-controller:
> +    type: object
> +    $ref: /schemas/mux/reg-mux.yaml
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    #include <dt-bindings/clock/nxp,imx95-clock.h>
> +
> +    syscon@4c410000 {
> +      compatible = "fsl,imx95-vpumix-csr", "syscon";
> +      reg = <0x4c410000 0x10000>;
> +      #clock-cells = <1>;

Incomplete example. Add here mux controller and power domains.


Best regards,
Krzysztof


