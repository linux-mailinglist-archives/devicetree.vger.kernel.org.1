Return-Path: <devicetree+bounces-226030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C98F3BD30BF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA9F71891CD4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1FD2737E1;
	Mon, 13 Oct 2025 12:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NPQaJiM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E32226E709
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760359693; cv=none; b=Htl/4jDSTCPKF/US3fieHy7HsEspi20oJhST0R3Vm8AzvXIR6C1x63JS98vO93ksgOm+Byb9cr3GueUg2/okMLBhfhl5S8wy3+Oa+AsUgniT1R2O5brQfVLDIERWQR+UjwuY1PX+8TQMwUTfbn8aKD/d68qIIyolVw02YrdODUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760359693; c=relaxed/simple;
	bh=998bCQ5vVclaoJfJBg10iHBupkkwTUVT6piNf84yOAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C79GVb03geKrRgxUuZ7xLpygWKNuD48df7aD1r12/p+wdSWuYW5bIGb9dnQW3VyJWFBPKhGGtXeQDWTtpTeDlz0bFfyNq2lLzReHVVjP2Not2KgEd+WLEPzjY1WzKJeBVj8nt/xftnSVN5LYRfMbKhAWdVrr93ilU7jr14iETAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NPQaJiM5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b472842981fso531329866b.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760359690; x=1760964490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ME8ir36ArdJeQ8VOuoWbknt4FySWcug96E0ZWizlwFA=;
        b=NPQaJiM5Lo6OGWnN0sekJQ4QZ8icT7kHy5wCjuym0dkVKzfis28kx64b75v9mGLDo/
         zoo5eogYxgEXgOtQGaT2oMDpoePoE/JpN58X+ZZsU+6HwCJ/U+slBXyKhb7KT7vhsAfN
         p/o5qSNQd+KP1ZpLRora/fHNjTsw6h+Fmo3vpYiQc3cD5eiNTyU0opPaOJaCpNtnFmlA
         D3sw0v+duY4b0YHJ4UvYUue6o32Ddhd3WhKUtQE01hJnX0K1c1Zcl3Zeo3KqUVymCtUR
         QBSDUGMz7u1/rw6G75VNbWBWGFPGPQiBH6gT0RG4KE6nT3gD93JYWLtXVHeS8UaesP6u
         eUCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760359690; x=1760964490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ME8ir36ArdJeQ8VOuoWbknt4FySWcug96E0ZWizlwFA=;
        b=u3o5IG4VNWRZOTSt9Slzq9jFcHK6yQQmh4XoTX7ieuyOs5r+lozPp+XhZoJ0GmgjNJ
         NodC/Mal0H0FsAVuASPN0I1Z36c9DiBsxbpDoB0qeUd6ZQ4IcfpENGeoOPG62oFi6lyX
         3C4hw/vaLjKUiO4DGsdsGXBB1cLsPGg+Ox2DjsU3SZSpdCeY5dRinVyyvQl97RhKVJD3
         GKCqQQm0k1cGvKQHlyzWW0qD0V8OgW7mJo450W7c4mO706gwb56t0PdhUzEZs6VrjuNE
         sjg+sPSx3Pczwe4jlfRH/4j0+P8CTkxiPSGZ42Y8UXLQci40Aup61qMc8mcSVhNI90kq
         Mrqw==
X-Forwarded-Encrypted: i=1; AJvYcCVTWvbn+MYKUm7nzFjTIRiU22LwAlx3cH8oEGxZLBWBOY6AK4bU9DMhOaBD56sl4rmiImFm/r7C1Aoq@vger.kernel.org
X-Gm-Message-State: AOJu0YwxkMKg4Zy0mnVm5onE5rL0FqsTdnutT2pCuQy8s+/myS4Ln1u5
	vLV6t41JB4rKfrWqBd3/Oljk0Gt+iZnNoELVXIftaUpy8JIfVTqy705T
X-Gm-Gg: ASbGncs9jFdeilKBxpOOUwogUuCLIFs4Fbxo0u3b2HkjS2TCLEEizrekLfNwhtvX4dU
	H6opN5BOZFlzBswEUXWP9OJktqx2F9+0NSllojr304NTrruedEPp9LAMMsIdvJVeN54wJ047ZYx
	8XFGH1DOt9cd2RuH5L/f6ma9MpB+opYpef9FG/ygCgpwLR+ppDJBG8QS07JM5OtfOG0ZewAIKpl
	QTO3BSLolqg4UqF6bykiGsRAO5+1NYA3NUk7ekDuKvlycm/RziTrH4DXw0T0pCqwCGCuuThLXHA
	0bd8p1MpKYRUUQotlH4CAzTVLl4jfmwuF0AHQlBNXm4CWdrZ1T+RUMzOmJmPwam1RKFHIpcST9E
	ZS2gmgcQaWvJBn0RybtjK1uAJwEt14WIfM4Cx/qMNA0lHaaHhiAufAuMNbVm6x/p6jKJE9FFJ0o
	uTuNkb
X-Google-Smtp-Source: AGHT+IGhsH9Jko1f8FqT4pidOms6fn00pFogStN/Ol9Z3CUMb20PsGcKDB/1u9de4k8QmAJ4VfkJ0A==
X-Received: by 2002:a17:906:4a85:b0:b55:c35e:e533 with SMTP id a640c23a62f3a-b55c35ee5d6mr1063241366b.12.1760359689360;
        Mon, 13 Oct 2025 05:48:09 -0700 (PDT)
Received: from [192.168.4.55] ([92.120.5.12])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cacba7sm916644566b.5.2025.10.13.05.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 05:48:08 -0700 (PDT)
Message-ID: <1ad36baf-83af-4ab7-9f47-dd7f74d4749f@gmail.com>
Date: Mon, 13 Oct 2025 15:48:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] dt-bindings: clock: document 8ULP's SIM LPAV
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk@vger.kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20250804155407.285353-1-laurentiumihalcea111@gmail.com>
 <20250804155407.285353-4-laurentiumihalcea111@gmail.com>
 <20250805-stereotyped-precise-vicugna-1c78ff@kuoka>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <20250805-stereotyped-precise-vicugna-1c78ff@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 8/5/2025 10:03 AM, Krzysztof Kozlowski wrote:
> On Mon, Aug 04, 2025 at 11:54:03AM -0400, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Add documentation for i.MX8ULP's SIM LPAV module.
>>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  .../bindings/clock/fsl,imx8ulp-sim-lpav.yaml  | 69 +++++++++++++++++++
>>  1 file changed, 69 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml b/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
>> new file mode 100644
>> index 000000000000..ef44f50921f8
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
>> @@ -0,0 +1,69 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/clock/fsl,imx8ulp-sim-lpav.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: NXP i.MX8ULP LPAV System Integration Module (SIM)
>> +
>> +maintainers:
>> +  - Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> +
>> +description:
>> +  The i.MX8ULP LPAV subsystem contains a block control module known as
>> +  SIM LPAV, which offers functionalities such as clock gating or reset
>> +  line assertion/de-assertion.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - fsl,imx8ulp-sim-lpav
>> +      - const: syscon
> Why is this syscon?


because of the MUX child's progamming model (i.e. "mmio-mux") which needs a syscon parent.

will get rid of this by using "reg-mux" instead. There shouldn't be a need for syscon anyways.


>
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 3
>> +
>> +  clock-names:
>> +    items:
>> +      - const: lpav_bus
>> +      - const: hifi_core
>> +      - const: hifi_plat
>> +
>> +  '#clock-cells':
>> +    const: 1
>> +    description: clock ID
> Drop description, redundant. Look how other bindings write this.


ACK. Very sorry for the easily avoidable mistakes.


>
>> +
>> +  '#reset-cells':
>> +    const: 1
>> +    description: reset ID
> Ditto
>
>> +
>> +  mux-controller:
>> +    $ref: /schemas/mux/reg-mux.yaml#
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - '#clock-cells'
> reset cells and mux controller.


I'd say the mux-controller child can stay optional since the driver allows it?


As for "#reset-cells": unless CONFIG_RESET_CONTROLLER is enabled, the driver allows

this property to not be specified. The whole idea was to try and make the driver more

flexible in case, for whatever reason, people wouldn't want/need the reset controller bit.

In hindsight, I think this decision makes writing the binding a bit more awkward (since the

optionality of this property depends on the value of CONFIG_RESET_CONTROLLER) so maybe

we'd just be better off with having this property mandatory and modifying the driver to remove

the aforementioned flexibility?


>
>
>
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/imx8ulp-clock.h>
>> +
>> +    clock-controller@2da50000 {
>> +        compatible = "fsl,imx8ulp-sim-lpav", "syscon";
>> +        reg = <0x2da50000 0x10000>;
>> +        clocks = <&cgc2 IMX8ULP_CLK_LPAV_BUS_DIV>,
>> +                 <&cgc2 IMX8ULP_CLK_HIFI_DIVCORE>,
>> +                 <&cgc2 IMX8ULP_CLK_HIFI_DIVPLAT>;
>> +        clock-names = "lpav_bus", "hifi_core", "hifi_plat";
>> +        #clock-cells = <1>;
>> +        #reset-cells = <1>;
> Incomplete node - missing properties/child. Post complete binding and
> complete example.
>
> Best regards,
> Krzysztof
>

