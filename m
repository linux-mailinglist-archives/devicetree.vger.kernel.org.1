Return-Path: <devicetree+bounces-160831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F02A71449
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 10:58:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD599174C51
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 09:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932451B0F31;
	Wed, 26 Mar 2025 09:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="itxMEH9C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E222D1B041A
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742983093; cv=none; b=g5YagaJM3HiH4n86TQ9hcfYM/DvxI4TFokDOGbVmGTGTSaGl+JVl0M91Wy2M/h/4uljXwcggbYfbEkb804fyabc7w2g8C72ECXibTtGo26MdZUN0/KtW3x9grB59mMlrbgQltSKAiCD7S2YeKwHDXxUS0bAEyUh1ICWMAPOsStY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742983093; c=relaxed/simple;
	bh=G2mie2cYylZkzBkEuGSmLt098MlPBjaPdn6PWJttyKw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qxF0vtjuFhGBMv/M03KKH65bm6YwX9jsA6qB1QJKk5z7aOUfqDYXJKwrjJapHYI+9n8XDU+RzlPanFr7NGzJ6Ciy9d2gslkB31zX/UH4GY1ZXCqr2IGmKGgZgy61Us2UePqj6y/e+ZeFE+TfIaEa1kBRjLjEWMIIzKkta/VSHA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=itxMEH9C; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 28DD03FE2D
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1742983083;
	bh=YmqDnJYd3sHMeIErDl7QaGhRZ3q+ZmYDEpXuE0o+U+M=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=itxMEH9C00Fmbc6YYe39dKMSvOJ/MpFtHhfA/9kn9I200Jo43M1G3QMg/1Yy8OhNq
	 scYxuwA+09/YVLXvaH4v40WTC46dJgKZNaDSILYRFxdqs4rKQb2HFItKJ1yYAgo8rX
	 Az8dMmcakdBQ87dUsf9gPlYAi7u1JaOJP9xrl+csFx3jDAkdBEb7Dao2E3fuYRtAjU
	 x/YLpesqQtOjDFKiIhz/yzy1XS4jYcE5ApNnkLR6Jie+pP7QpWTrV3eu24von9LECR
	 SQdhHSXABcZqn/QsJIUk4IKOkstAXg1NCnSZgnsAEhTayoFqF5EXmiNzwU99Wh+oQw
	 f0hHTkH54fzSw==
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-2c72e6e51ceso1873373fac.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 02:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742983080; x=1743587880;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YmqDnJYd3sHMeIErDl7QaGhRZ3q+ZmYDEpXuE0o+U+M=;
        b=cetjqE3EfZx9HrnUmumCbuCkxcdoLGkILbysvZdyGugEssikw0X8LlF3YcaJDoukRI
         GzPqQQrTeRozfdfIkqk7A3p+pWTF0HXWkFgCKzjxAIVZAT/cFwtwIgyUp0pdwSvrFCtZ
         agyC+uN0JKrlSRAw3X3rMz0MvTidEOeRKB+tJ484vWaAqeCaqvbYsexnfJx/V48RRSaL
         4YEkOFH/m8IlvYQ9Ut75EsHgjPGZOWTWCW7LUiEbzA9f2m1RZLYtSIexGZcRH9qKXcjd
         1TjzRjjCz6QX4EfayyPPj1GcG+zRnctbgqFoCSCkCrIfh+GQuE0pPAuxUw1ssurWqJ9B
         qU7A==
X-Forwarded-Encrypted: i=1; AJvYcCW3ImszAKg5apL2xXleYLaWcGYKfr0ecSvvPHfvQV7zBsWWMNQ06Vv+10DnRsHKnoyBUYbFMedDzsdi@vger.kernel.org
X-Gm-Message-State: AOJu0YwdsILfUWqL1BwrLQK2odEHvoV0/lW6c6csgQZ1I2ol8Ec0NVv6
	xP9ba6iPoQGlP5b+ylrsVVf0I5XmWIS6ctn74xypJJEsim9WJjh6WtByNWgbTEjO1ipt6Y/yzNe
	0e2kkVHB2W92h7qaKT8fJzxguIpRsD+m02YnrUbNHhqFZkdJU9TRnf+swYcXKhsbCUD5dkZf9Cv
	AT7CXA357yoXtde/HvK5R/dbx2UPJNE25bVbIZHin5Q+70xjlTOw==
X-Gm-Gg: ASbGnctEItNc9dtJHm9UY7OPnYbNB/S6CuqIJr5EWG604sdgcWzdN7KzO2wE6KX1gKf
	iRb5NwwpHa5OpeQU4dBE1JxghsEy0mt15aMNBo7r808Ex5aJnMLtMz5wqpR5P2e3xsoy95bUHW4
	Jof8xVTWzfDFvje9jOeP0ilfI=
X-Received: by 2002:a05:6870:c0d0:b0:2c2:4d76:f1ad with SMTP id 586e51a60fabf-2c7802fc7f4mr11950000fac.16.1742983079708;
        Wed, 26 Mar 2025 02:57:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGusUKpLdTuUy3QkZj5OSCHZAzUQifzrm4ATjVXeFFaB5uxz8Mol5J1QaqA22HHkXCckElEM60R81g5exSGuLQ=
X-Received: by 2002:a05:6870:c0d0:b0:2c2:4d76:f1ad with SMTP id
 586e51a60fabf-2c7802fc7f4mr11949984fac.16.1742983079188; Wed, 26 Mar 2025
 02:57:59 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Mar 2025 02:57:57 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Mar 2025 02:57:57 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250326-owl-of-algebraic-wealth-61aeda@krzk-bin>
References: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
 <20250325141311.758787-2-emil.renner.berthing@canonical.com> <20250326-owl-of-algebraic-wealth-61aeda@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 26 Mar 2025 02:57:57 -0700
X-Gm-Features: AQ5f1JoPkONs1cP6b2bcNZ0PAFZ-pHAaJXVnYD4E0Nk0jWsjQfMiZsd9uQXxdiM
Message-ID: <CAJM55Z9+dpbqt-c=55WXUXsw=Dhk6m6Q1_Js3s-T+8W7dtrURQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/4] dt-bindings: pinctrl: Add eswin,eic7700-pinctrl binding
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>, 
	Pritesh Patel <pritesh.patel@einfochips.com>, Min Lin <linmin@eswincomputing.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Krzysztof Kozlowski wrote:
> On Tue, Mar 25, 2025 at 03:13:03PM +0100, Emil Renner Berthing wrote:
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - eswin,eic7700-pinctrl
>
> Blank line
>
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
>
> required: goes after patternProperties.
>
> > +  - compatible
> > +  - reg
> > +
> > +patternProperties:
> > +  '-[0-9]+$':
>
> Recommended is to have more meaningful prefix or suffix, e.g.
> -grp/-group. I also don't get why it has to end with number.
>
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    patternProperties:
> > +      '-pins$':
> > +        type: object
> > +        allOf:
> > +          - $ref: /schemas/pinctrl/pincfg-node.yaml#
> > +          - $ref: /schemas/pinctrl/pinmux-node.yaml#
> > +
> > +        additionalProperties: false
> > +
> > +        description:
> > +          A pinctrl node should contain at least one subnode describing one
> > +          or more pads and their associated pinmux and pinconf settings.
> > +
> > +        properties:
> > +          pins:
> > +            items:
> > +              enum: [ CHIP_MODE, MODE_SET0, MODE_SET1, MODE_SET2, MODE_SET3,
> > +                      XIN, RTC_XIN, RST_OUT_N, KEY_RESET_N, GPIO0, POR_SEL,
> > +                      JTAG0_TCK, JTAG0_TMS, JTAG0_TDI, JTAG0_TDO, GPIO5, SPI2_CS0_N,
> > +                      JTAG1_TCK, JTAG1_TMS, JTAG1_TDI, JTAG1_TDO, GPIO11, SPI2_CS1_N,
> > +                      PCIE_CLKREQ_N, PCIE_WAKE_N, PCIE_PERST_N, HDMI_SCL, HDMI_SDA,
> > +                      HDMI_CEC, JTAG2_TRST, RGMII0_CLK_125, RGMII0_TXEN,
> > +                      RGMII0_TXCLK, RGMII0_TXD0, RGMII0_TXD1, RGMII0_TXD2,
> > +                      RGMII0_TXD3, I2S0_BCLK, I2S0_WCLK, I2S0_SDI, I2S0_SDO,
> > +                      I2S_MCLK, RGMII0_RXCLK, RGMII0_RXDV, RGMII0_RXD0, RGMII0_RXD1,
> > +                      RGMII0_RXD2, RGMII0_RXD3, I2S2_BCLK, I2S2_WCLK, I2S2_SDI,
> > +                      I2S2_SDO, GPIO27, GPIO28, GPIO29, RGMII0_MDC, RGMII0_MDIO,
> > +                      RGMII0_INTB, RGMII1_CLK_125, RGMII1_TXEN, RGMII1_TXCLK,
> > +                      RGMII1_TXD0, RGMII1_TXD1, RGMII1_TXD2, RGMII1_TXD3, I2S1_BCLK,
> > +                      I2S1_WCLK, I2S1_SDI, I2S1_SDO, GPIO34, RGMII1_RXCLK,
> > +                      RGMII2_RXDV, RGMII2_RXD0, RGMII2_RXD1, RGMII2_RXD2,
> > +                      RGMII2_RXD3, SPI1_CS0_N, SPI1_CLK, SPI1_D0, SPI1_D1, SPI1_D2,
> > +                      SPI1_D3, SPI1_CS1_N, RGMII1_MDC, RGMII1_MDIO, RGMII1_INTB,
> > +                      USB0_PWREN, USB1_PWREN, I2C0_SCL, I2C0_SDA, I2C1_SCL, I2C1_SDA,
> > +                      I2C2_SCL, I2C2_SDA, I2C3_SCL, I2C3_SDA, I2C4_SCL, I2C4_SDA,
> > +                      I2C5_SCL, I2C5_SDA, UART0_TX, UART0_RX, UART1_TX, UART1_RX,
> > +                      UART1_CTS, UART1_RTS, UART2_TX, UART2_RX, JTAG2_TCK, JTAG2_TMS,
> > +                      JTAG2_TDI, JTAG2_TDO, FAN_PWM, FAN_TACH, MIPI_CSI0_XVS,
> > +                      MIPI_CSI0_XHS, MIPI_CSI0_MCLK, MIPI_CSI1_XVS, MIPI_CSI1_XHS,
> > +                      MIPI_CSI1_MCLK, MIPI_CSI2_XVS, MIPI_CSI2_XHS, MIPI_CSI2_MCLK,
> > +                      MIPI_CSI3_XVS, MIPI_CSI3_XHS, MIPI_CSI3_MCLK, MIPI_CSI4_XVS,
> > +                      MIPI_CSI4_XHS, MIPI_CSI4_MCLK, MIPI_CSI5_XVS, MIPI_CSI5_XHS,
> > +                      MIPI_CSI5_MCLK, SPI3_CS_N, SPI3_CLK, SPI3_DI, SPI3_DO, GPIO92,
> > +                      GPIO93, S_MODE, GPIO95, SPI0_CS_N, SPI0_CLK, SPI0_D0, SPI0_D1,
> > +                      SPI0_D2, SPI0_D3, I2C10_SCL, I2C10_SDA, I2C11_SCL, I2C11_SDA,
> > +                      GPIO106, BOOT_SEL0, BOOT_SEL1, BOOT_SEL2, BOOT_SEL3, GPIO111,
> > +                      LPDDR_REF_CLK ]
>
> All these should be lowercase.

Plenty of pinctrl drivers use uppercase names for the pins, intel, amd,
mediatek to name a few, and this is also what the EIC7700 documentation uses.
Do you still wan't Linux to call the pins something else?

>
> > +            description: List of pads that properties in the node apply to.
> > +
> > +          function:
> > +            enum: [ csi, debug, ddr, fan, gpio, hdmi, i2c, i2s, jtag, mipi,
> > +                    mode, oscillator, pci, pwm, rgmii, reset, sata, spi, sdio,
> > +                    uart, usb ]
> > +            description: The mux function to select for the given pins.
> > +
> > +          bias-disable: true
> > +
> > +          bias-pull-up:
> > +            oneOf:
> > +              - type: boolean
> > +              - const: 25000
> > +            description: Enable internal 25kOhm pull-up
>
> Why bool and fixed value? Do they have different meaning? Description
> says they are the same.
>
> Anyway, don't repeat constraints in free form text.
>
> > +
> > +          bias-pull-down:
> > +            oneOf:
> > +              - type: boolean
> > +              - const: 22000
> > +            description: Enable internal 22kOhm pull-down
>
> Same questions
>
> > +
> > +          drive-strength-microamp:
> > +            enum: [ 3100, 6700, 9600, 12900, 18000, 20900, 23200, 25900 ]
> > +
> > +          input-enable: true
> > +
> > +          input-disable: true
> > +
> > +          input-schmitt-enable: true
> > +
> > +          input-schmitt-disable: true
> > +
> > +        required:
> > +          - pins
>
> Best regards,
> Krzysztof
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

