Return-Path: <devicetree+bounces-237025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 084FFC4C186
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51CB44F7242
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30832E8E06;
	Tue, 11 Nov 2025 07:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JS4l+i7O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DEA1F2B88
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845510; cv=none; b=hl6ep/z++X3idhBGO1ff0nVWd8Zb51CLn/GlDdfcTQBVMdKvn2tkeGEBHrdZTKHau+5aBDLMTSAshBeqvrNwWSBoEw2VaL1bqlsVy5dp3wk4XUCcNhHwUO/35rUMFi+OxMbV3u6q89YhgA6nfwje4vEqKpUFo34uv1WVjcKTxZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845510; c=relaxed/simple;
	bh=QjeAK/V1hSOIidYt60eVOijnzpDc5EzkM8SbDMhoEUI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MrzIIwNXNR77+W0A+4nqByuyrgLwZiabBq8MfbsJ4+2aUGzuji3w9Jd6jLMVdYm3Lglys5X2laD0EUpiJmlCRSm4vDyzMLel1wHoC8arXCIsj44J73xQu7IVlM1M+LOZ3Wqa9h3CmMa8mC8vXNiFE93UOR5KCam29npr0UXkEXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JS4l+i7O; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c28bf230feso602054a34.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 23:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762845508; x=1763450308; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4DNECm8WO7Z3HdUuOFhmBYrNsRLb25kfzzIgggmDWEs=;
        b=JS4l+i7ObUbzkg89Yy1J16HnfJmHKWc/oCzaL8bNbup1eDcCo0K5n5Q7jyct/uFEkR
         E0evnHR7N5eryey1pQ89ErzPcuKEb1HYxJhQDENSve9JiNw8cjyDft/fqDafkRD3e9M2
         gBfIXzrA3aB3AWep1q93PNn0aH8ns2VToI0Cc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762845508; x=1763450308;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4DNECm8WO7Z3HdUuOFhmBYrNsRLb25kfzzIgggmDWEs=;
        b=CEYyo89G1/6QMMvjdJcPduHkUtS2eAtGL17yZdby4kQgH3kYijHh7ztSUqbmIDnNsO
         jgm2cwvXvIHMVE9naADNz2eIfJGkJA+VGoF/fgQiTO3SPrieF1SEZ1IO6JSg99pghEzA
         5oEtYfPrld9JxBE5+/EbfH0vAOMDO/1cwjP8KeqA8dtCbqVM8jXIqxAtDwoGo1EfiLdK
         SXu8aAiJBC8bNuxJAfux/LXxBP7YksMMN+mSDQ3VJBxviQcGpq6PO8/udjsJkl/c8kOP
         PI76XuoPeKVq4qhBPB4OD2gC0nm6QffjuFQSUf+zRO3goDtcgpEQRpPP/9Vvmkp5fqnn
         a3Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWTX2CiwXGeaQ648BUzeUS20W5d8lU9cxsS0ymJNKKHIEd5HuEf/NN6nmJkhmttV6BfddPa0WjyiBF0@vger.kernel.org
X-Gm-Message-State: AOJu0YyD0mcUdGmGVOTyEYMxRVqXrLKNIHDB4ZGlFnPjuxgEXCU55b92
	jcdejt4ErlffJjK+BsPO8CcpaHqdeL22tsALR2cIQKCYWn8CDyBteE/+8ct+Ggqh16/SkfSTTKF
	LTB3eASuPYaQKh2DO1fLmp+FC6ktOpAvPxYImfAdb
X-Gm-Gg: ASbGncvmMbt3fbc9hdPlEB1F2Y6AQll30856NyeloRTW+Jpoo/AocUbXFUDbiO/kAlm
	vq5CyjPeVmu8i8Cr9CtNipWKG3vHIlDKq9XR8VNsJyptPiyf/2yB5WWKjf2UD0bxjLBW/15MvpC
	MSKl0y8BDI6I3zP4qaEj/0fCM+kOgCqTPd5DanosVBo0tBA26C5mpECmEDjV6IYfduY1cDZxa8F
	UYdsdLoP8ovAKkz/X3jOnyS5QS5f6OwSuLEQ320aHYcegzXEMwhyePhGHY0B9hLOvb54qb4UDN8
	HDwSTSvvRGoizXZrQXT2cj+jeYmZgja3naLq
X-Google-Smtp-Source: AGHT+IGFmBeQ1KeQGhBdXMMah9cAVTlZPF7zYgIoM3d6h6tPzR4X9P4PbQV8tIudZI29zZhOnq3tZM6yeAns4b6eY+k=
X-Received: by 2002:a9d:7f84:0:b0:785:6792:4b3 with SMTP id
 46e09a7af769-7c720bfa5b2mr875905a34.10.1762845508048; Mon, 10 Nov 2025
 23:18:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111093426.1.I76ee34ac45e1469dbeb11de0d1e47d794af7dc88@changeid>
In-Reply-To: <20251111093426.1.I76ee34ac45e1469dbeb11de0d1e47d794af7dc88@changeid>
From: Pin-yen Lin <treapking@chromium.org>
Date: Tue, 11 Nov 2025 15:18:16 +0800
X-Gm-Features: AWmQ_bkDI05jvVfre0pjIY8zr4xu_0hzg8oICEOEmixXEUt8EEYFfI9I8Iu9sd8
Message-ID: <CAEXTbpc9=Gt7QrFrtV60+EvKdmBGsVpJxg7yYaa6HfuGGB3OqQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: HID: i2c-hid: elan: Introduce FocalTech FT8112
To: daniel_peng@pegatron.corp-partner.google.com
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-input@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On Tue, Nov 11, 2025 at 9:34=E2=80=AFAM
<daniel_peng@pegatron.corp-partner.google.com> wrote:
>
> From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
>
> The FocalTech FT8112 touch screen chip same as Ilitek ili2901 controller
> has a reset gpio. The difference is that they have different
> post_gpio_reset_on_delay_ms.
> FocalTech FT8112 also uses 3.3V power supply.
>
> Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
> ---
>
>  .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8=
112.yaml
>
> diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yam=
l b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
> new file mode 100644
> index 000000000000..391825b24fcb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/focaltech,ft8112.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: FocalTech FT8112 touchscreen controller
> +
> +maintainers:
> +  - Dmitry Torokhov <dmitry.torokhov@gmail.com>

List yourself as the maintainer of this binding file instead of the
subsystem maintainer.
> +
> +description:
> +  Supports the FocalTech FT8112 touchscreen controller.
> +  This touchscreen controller uses the i2c-hid protocol with a reset GPI=
O.
> +
> +allOf:
> +  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - focaltech,ft8112
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  panel: true
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  vcc33-supply: true
> +
> +  vccio-supply: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - vcc33-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      touchscreen@38 {
> +        compatible =3D "focaltech,ft8112";
> +        reg =3D <0x38>;
> +
> +        interrupt-parent =3D <&pio>;
> +        interrupts =3D <15 IRQ_TYPE_LEVEL_LOW>>;

You have an extra '>' here. This should be caught by `make
dt_binding_check`. Please check [1] and [2], and make sure the patches
are tested before you send them out.

[1]: https://www.kernel.org/doc/Documentation/devicetree/writing-schema.md
[2]: https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-=
sources-with-the-devicetree-schema/
> +
> +        reset-gpios =3D <&pio 126 GPIO_ACTIVE_LOW>;
> +        vcc33-supply =3D <&pp3300_tchscr_x>;
> +      };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ddecf1ef3bed..69f54515fe98 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12326,6 +12326,7 @@ T:      git git://git.kernel.org/pub/scm/linux/ke=
rnel/git/dtor/input.git
>  F:     Documentation/devicetree/bindings/input/
>  F:     Documentation/devicetree/bindings/serio/
>  F:     Documentation/input/
> +F:     drivers/hid/

Why did you add this?

>  F:     drivers/input/
>  F:     include/dt-bindings/input/
>  F:     include/linux/gameport.h

Regards,
Pin-yen

