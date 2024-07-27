Return-Path: <devicetree+bounces-88518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1730193DF7B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 15:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B6DDB20FCA
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 13:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2576B13FD83;
	Sat, 27 Jul 2024 13:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nl1BSvKz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0CD13E8B9
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 13:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722085369; cv=none; b=IHO9YAgyEsWOED5ICq9RbvQyB4n2Zl1rwj+XTIADx5fJJQUfafOR8zxsNOflNSmbqA/Q6reRByanZvmn5kqRQ5ItWhwiLcTPslMhnKGGPOd888rM6vBQT9UWYZ5DnDTRl5WbbRQIm7GE4boj8gkbc7bkSXOse44+YvpXltrFBRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722085369; c=relaxed/simple;
	bh=J7dJ1HEM/2kfxbMQktTWpnSMS+Y2hicohD+cLOeNPAQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 Cc:Content-Type; b=nCrPsHkhlFzwbDv3BgRaH8xPw2lRbBMspjFVRYpoVn0H2zTy+gyDHPieOR+bLf1xcQs2oZPTdky6DxHgeU0dlK7Mir7H6NyZOodF7Y4Y2Qpx+rWCs2fK7aYxLkyiOzBl0Q86Ax6pcVL34XF55XdwX4/n/zpOhr5mkimUHkgjaS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nl1BSvKz; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-709465248b7so100691a34.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 06:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722085366; x=1722690166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQdnaqHqNdySkKT22L5CuAzyHGa1f8MTJfg3ZhjYfhA=;
        b=nl1BSvKzO51JYV7FRuwQijqNJY7ojLgegaixPZf5AyK2QUPMTsQl9NySdwP7PCgAOW
         5ZrcWOMIdYX6v0Q+4DQPXjWTqsj1koz6TzMGn0p1xFpPA7ohMQpl02RHLP/gYLKPwQ2i
         cIcfqWozgNk4sAS9JeY9PHld0uPRG1J3F5HYsvoEP81qzAIXcZPs7U+v8ODy/3c6osUn
         d7lMM2BE84Hb2ju/iTnyZZnNxehFMCjr9mEFY5oXE60Py/INuIFlwodA6JMPnJsDvRjz
         bWaUBDSuRjN3noc9kG4cHHQUibw/wDuNNACbPKjBtARGAWL9NJqmSBQMu/iFSWq/oGy3
         p6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722085366; x=1722690166;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQdnaqHqNdySkKT22L5CuAzyHGa1f8MTJfg3ZhjYfhA=;
        b=jnV0cDTKjIIzO8Qqmhpjf19BVg3+aakbn0Jr4KlsjCyNv8s4yY1fERIcAwA/xkPjvu
         HE3VkBBOJDtL6CD7P2g2nI15NPRIA8NnqY/+Quv+F/jrGIleClXgOyhMQgYuS9A9x6/d
         bVhsdC+y9tYhEhQjIqPt76wuUOcd0tou8MTkFpX++u+VO3CKLDM13Hrydlo6vCMxjeIl
         Fwp+o7eTNxzUijF+FgG0zRDBedQdjdRi6hq7xkmPArYo+LucsRfJKqoyPBeqztaduReu
         8TaeT28JoFNh8mWVssbMVgT3nfLzn/hbmbKA+JYHAXHUCb5XOYCDtsQ33RL2waGAIDp+
         8E3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVcQeO6wYSMo47/NhHIrzcDIHiYz/0rf0nEEIicME5BC4p6Ajh3L7Qr9NRotwgoi2DUzeJ1TjHk0S8COWnNiQu7+Vzi+OloDOzUGg==
X-Gm-Message-State: AOJu0Yzj6StW8o/5Enj+WfycrhiinomHMtTPn8w2fUiiGGyRjdR6ThSQ
	U/GzFD4lzp8gaqViUvvkbYFirbfk5moVx8KBA69fsBh+7GIiD78sw343IkAXZ9C+miDb1VlrBzG
	ImBq41SDs1V6wfrEPcJigqm7Nsa8=
X-Received: by 2002:a05:6870:3327:b0:261:1460:9e7c with SMTP id
 586e51a60fabf-267d4d40357mt3141321fac.11.1722085366519; Sat, 27 Jul 2024
 06:02:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240727130008.408772-1-animeshagarwal28@gmail.com>
In-Reply-To: <20240727130008.408772-1-animeshagarwal28@gmail.com>
From: Animesh Agarwal <animeshagarwal28@gmail.com>
Date: Sat, 27 Jul 2024 18:32:35 +0530
Message-ID: <CAE3Oz81ACrS1T_b9ORBzPEXd+ZL_Y2M4_A6u01hP6XHAQkju5g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: nxp,lpc3220-gpio: Convert to dtschema
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is v2 of the same patch, sorry for missing to mention it in the commit=
.


On Sat, Jul 27, 2024 at 6:30=E2=80=AFPM Animesh Agarwal
<animeshagarwal28@gmail.com> wrote:
>
> Convert the NXP LPC3220 SoC GPIO controller bindings to DT schema format.
>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Animesh Agarwal <animeshagarwal28@gmail.com>
>
> --
> Changes in v2:
>   - Changed the file name to match the compatible string.
>   - Removed optional from the description of '#gpio-cells' as it was wron=
gly
>     present.
> ---
>  .../devicetree/bindings/gpio/gpio_lpc32xx.txt | 43 ---------------
>  .../bindings/gpio/nxp,lpc3220-gpio.yaml       | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio_lpc32xx.t=
xt
>  create mode 100644 Documentation/devicetree/bindings/gpio/nxp,lpc3220-gp=
io.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio_lpc32xx.txt b/Do=
cumentation/devicetree/bindings/gpio/gpio_lpc32xx.txt
> deleted file mode 100644
> index 49819367a011..000000000000
> --- a/Documentation/devicetree/bindings/gpio/gpio_lpc32xx.txt
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -NXP LPC32xx SoC GPIO controller
> -
> -Required properties:
> -- compatible: must be "nxp,lpc3220-gpio"
> -- reg: Physical base address and length of the controller's registers.
> -- gpio-controller: Marks the device node as a GPIO controller.
> -- #gpio-cells: Should be 3:
> -   1) bank:
> -      0: GPIO P0
> -      1: GPIO P1
> -      2: GPIO P2
> -      3: GPIO P3
> -      4: GPI P3
> -      5: GPO P3
> -   2) pin number
> -   3) optional parameters:
> -      - bit 0 specifies polarity (0 for normal, 1 for inverted)
> -- reg: Index of the GPIO group
> -
> -Example:
> -
> -       gpio: gpio@40028000 {
> -               compatible =3D "nxp,lpc3220-gpio";
> -               reg =3D <0x40028000 0x1000>;
> -               gpio-controller;
> -               #gpio-cells =3D <3>; /* bank, pin, flags */
> -       };
> -
> -       leds {
> -               compatible =3D "gpio-leds";
> -
> -               led0 {
> -                       gpios =3D <&gpio 5 1 1>; /* GPO_P3 1, active low =
*/
> -                       linux,default-trigger =3D "heartbeat";
> -                       default-state =3D "off";
> -               };
> -
> -               led1 {
> -                       gpios =3D <&gpio 5 14 1>; /* GPO_P3 14, active lo=
w */
> -                       linux,default-trigger =3D "timer";
> -                       default-state =3D "off";
> -               };
> -       };
> diff --git a/Documentation/devicetree/bindings/gpio/nxp,lpc3220-gpio.yaml=
 b/Documentation/devicetree/bindings/gpio/nxp,lpc3220-gpio.yaml
> new file mode 100644
> index 000000000000..cea2f2bb2393
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/nxp,lpc3220-gpio.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/nxp,lpc3220-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP LPC3220 SoC GPIO controller
> +
> +maintainers:
> +  - Animesh Agarwal <animeshagarwal28@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: nxp,lpc3220-gpio
> +
> +  reg:
> +    maxItems: 1
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 3
> +    description: |
> +      1) bank:
> +        0: GPIO P0
> +        1: GPIO P1
> +        2: GPIO P2
> +        3: GPIO P3
> +        4: GPI P3
> +        5: GPO P3
> +      2) pin number
> +      3) flags:
> +        - bit 0 specifies polarity (0 for normal, 1 for inverted)
> +
> +required:
> +  - compatible
> +  - reg
> +  - gpio-controller
> +  - '#gpio-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    gpio@40028000 {
> +        compatible =3D "nxp,lpc3220-gpio";
> +        reg =3D <0x40028000 0x1000>;
> +        gpio-controller;
> +        #gpio-cells =3D <3>; /* bank, pin, flags */
> +    };
> --
> 2.45.2
>

