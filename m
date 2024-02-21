Return-Path: <devicetree+bounces-44369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1FE85DD95
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 902EC285266
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7711F7F469;
	Wed, 21 Feb 2024 14:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HZficcdC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971777EEF9
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708524366; cv=none; b=KjLU0E0vx63zzZWSNVoOcqQV0deLaw5onyoDArvrPT2OkbmT1uvcnkDTnJZi6jNvTNtCdH9GdQlJ2CbsLyTZIiNu2a6SYQO9rzvGjHl940f/HZhnlSurjKOKd4Xp9MYyfmO67MLQt+Giy+k9VWeDYcfGziSVyyJx/DYSiA457xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708524366; c=relaxed/simple;
	bh=efIt4GZE7Y0DFlRIraGxw8oWbBJZf8tCwSO/5ZThiuU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X43z3M4erI6+QBAEvTujTQ9IJMLQHJp89HczQWeZaP0Tw30OINn2sdc8wDeg3cKUAOGwtdVxRmy09EeKi1NxFEdrqSCXCIeQDgtn5U1Ewnx+31LBsN1NCFkJr2ONzPC0hKdYdOC0oH0ZnfPnK4XbGOtCjR+pItS7Zz00jp45QOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HZficcdC; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-60853ad17f9so29113317b3.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708524363; x=1709129163; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bBNt5mBouMup7TvH0VKGOarNbwSfPK+5cPhFazcNHCw=;
        b=HZficcdCZPpeTsFxk8S7LDZkcCYv7daUKhkJWcAIOX9mn6M1ZThSawn459n0ioi3ID
         EGaeNyQuDJAghGAC6IgAx4u81hewy8XmfxMp6CixBqdquXtfnP55JvwH6HrEHYaV7DFe
         enolhjIt0FEHjtSLW4fMFmXD3bNdIMeptCgYehU3wqUHaIdCA5nXRBe94TRH0KVkdlaH
         FIvMKKwUdA8/wZlTvxJX7zOiNNRbOA5V2HJy3QvkpJX1kI0EYfIuewwppDRtWqzY/mOI
         kpa7N6H9F6yDsGZbtpAcgGLrqQcoCmpCkFh2wy8+FhlTOz+aOsOPPMTeoJrPWu42I3Oh
         jYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708524363; x=1709129163;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBNt5mBouMup7TvH0VKGOarNbwSfPK+5cPhFazcNHCw=;
        b=lKSzlxBlPYGumzBa1pmCZ8u56pqVkKIZyqUEy7v5+hZq0464J4ZvoQsSMIc0Lq4f62
         xlr6+KGVqjnjdtNype6P5rq7NQBb9gTA3YGlUkGkeXQb7uSSaCrqs9JY2Hgevo7KyN1g
         X3SoBbN1B/9BTZMIwgCNHSVvHBO7uGVqr9UiQGPjB6RNuODOrnulODTpPMVoLnXkxNfa
         KIHl71dhCZiPu6QXT9bRXSVeSyAWXgr+2Z1tH9YXplsgQTGvN97Ny5kt6SIyK+t+62Uj
         fcOB6jM0tiwR9TqVpr/vMlmtBk2ePP0tlMDkRjA5oh8H6luUos6dGDQzvqhrmLYENuG+
         0vWw==
X-Forwarded-Encrypted: i=1; AJvYcCUqTLSWLAmCbDuAkUvTLhzrFb+yBKVWvg/4HdWhWS5C16/rARz8t0yusSS8Nj1ll1P1/8V41J7YhiwRfNCtA+2lK0R8n2LYjuvxYw==
X-Gm-Message-State: AOJu0Yzw3IgdxNPi2AD45704OQ4MoVTURSm5dU7Ed8UIaSEk+uN8o05V
	kS85OF1xbNr76s2SgmqyB+KgzTD6PDBR/oer3jXIPGkMNGX3PVOo1rVNgRsPfQ90ex7guQy7vE0
	CRM2F6yIPPIy6YravpXwpgT4H/QOMLFHPacxgUQ==
X-Google-Smtp-Source: AGHT+IHuXw4PJBIXZfuHh5gCNjMNTK/lLlsjTtlp+aEYUcD1kRLLumSXWcRF6pZKzf0+upCxVbz0lh9xD4Nk6MROwQg=
X-Received: by 2002:a81:9a50:0:b0:607:d9f7:e4fc with SMTP id
 r77-20020a819a50000000b00607d9f7e4fcmr13053315ywg.5.1708524363650; Wed, 21
 Feb 2024 06:06:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-spmi-multi-master-support-v5-0-3255ca413a0b@linaro.org> <20240221-spmi-multi-master-support-v5-1-3255ca413a0b@linaro.org>
In-Reply-To: <20240221-spmi-multi-master-support-v5-1-3255ca413a0b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 16:05:51 +0200
Message-ID: <CAA8EJposY0uf2S98VoOr5pOhJq9_i15mVSiEFP_r4jk+rPB0Ow@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: spmi: Add PMIC ARB v7 schema
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Johan Hovold <johan@kernel.org>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 14:52, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add dedicated schema for PMIC ARB v7 as it allows multiple
> buses by declaring them as child nodes. These child nodes
> will follow the generic spmi bus bindings.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../bindings/spmi/qcom,spmi-pmic-arb-v7.yaml       | 119 +++++++++++++++++++++
>  1 file changed, 119 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-v7.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-v7.yaml
> new file mode 100644
> index 000000000000..8a93d2145aa5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-v7.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spmi/qcom,spmi-pmic-arb-v7.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SPMI Controller v7 (PMIC Arbiter)
> +
> +maintainers:
> +  - Stephen Boyd <sboyd@kernel.org>
> +
> +description: |
> +  The SPMI PMIC Arbiter v7 is found on Snapdragon chipsets. It is an SPMI
> +  controller with wrapping arbitration logic to allow for multiple on-chip
> +  devices to control up to 2 SPMI separate buses.
> +
> +  The PMIC Arbiter can also act as an interrupt controller, providing interrupts
> +  to slave devices.
> +
> +properties:
> +  compatible:
> +    const: qcom,spmi-pmic-arb-v7
> +
> +  reg:
> +    items:
> +      - description: core registers
> +      - description: tx-channel per virtual slave regosters
> +      - description: rx-channel (called observer) per virtual slave registers
> +
> +  reg-names:
> +    items:
> +      - const: core
> +      - const: chnls
> +      - const: obsrvr
> +
> +  ranges: true
> +
> +  '#address-cells':
> +    const: 2
> +
> +  '#size-cells':
> +    const: 2
> +
> +  qcom,ee:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 5
> +    description: >
> +      indicates the active Execution Environment identifier
> +
> +  qcom,channel:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 5
> +    description: >
> +      which of the PMIC Arb provided channels to use for accesses
> +
> +patternProperties:
> +  "spmi@[0-1]$":
> +    type: object
> +    $ref: /schemas/spmi/spmi.yaml
> +
> +required:
> +  - compatible
> +  - reg-names
> +  - qcom,ee
> +  - qcom,channel
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    spmi: arbiter@c400000 {
> +      compatible = "qcom,spmi-pmic-arb-v7";
> +      reg = <0x0c400000 0x3000>,
> +            <0x0c500000 0x4000000>,
> +            <0x0c440000 0x80000>;
> +      reg-names = "core", "chnls", "obsrvr";
> +
> +      qcom,ee = <0>;
> +      qcom,channel = <0>;
> +
> +      #address-cells = <2>;
> +      #size-cells = <2>;

Shouldn't there be an empty 'ranges;' property?

> +
> +      spmi_bus0: spmi@0 {
> +        reg = <0 0x0c42d000 0 0x4000>,
> +              <0 0x0c4c0000 0 0x10000>;

Shouldn't the node address  (@0, @1) match the first address from reg property?

> +        reg-names = "cnfg", "intr";
> +
> +        interrupt-names = "periph_irq";
> +        interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <4>;
> +
> +        qcom,bus-id = <0>;

I thought the goal was to drop qcom,bus-id ?

> +
> +        #address-cells = <2>;
> +        #size-cells = <0>;
> +      };
> +
> +      spmi_bus1: spmi@1 {
> +        reg = <0 0x0c432000 0 0x4000>,
> +              <0 0x0c4d0000 0 0x10000>;
> +        reg-names = "cnfg", "intr";
> +
> +        interrupt-names = "periph_irq";
> +        interrupts-extended = <&pdc 3 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <4>;
> +
> +        qcom,bus-id = <1>;
> +
> +        #address-cells = <2>;
> +        #size-cells = <0>;
> +      };
> +    };
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

