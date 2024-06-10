Return-Path: <devicetree+bounces-74121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AA49020A4
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5CB41C21A1D
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56657E761;
	Mon, 10 Jun 2024 11:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xjNQzTA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC5D7E576
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718020032; cv=none; b=CO4cINYxxq+v2uWwzUjzaLIYtq/UD5UPl7FpQLZ7QXA8D8xOff1caknZ5qya5uTcOlCe873ikSwOlbwCEECHpUddE8++Hjf/Bvoew6Tc0gD8gvFLAU/Oq4Ta2u77YXMgmrYxfGzWK0AgQCb5vMFLrUmIm3BzaeKocZ57/WQ52VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718020032; c=relaxed/simple;
	bh=tOvzwj5vokdXnrKvZHntZn8CKFCMZxBZ2+KO2btHdC0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TSRy7GERhcElTwvBSHZe7Zj3xOXpKSYwqkuH+zuGwLzmyFg90gOlGz3Zzyu0il5yPl9+wbrQBzh0OXfuEZg3VXlzn6aDLfaiOx2DF+SR1Eu5yhA6px5P7c28ymHZnCmpjmbt+pLt5jmBNL7u5odPEygMlg/E50pl8Eg3Z2k1XvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xjNQzTA0; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-35f22d3abf1so914392f8f.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718020028; x=1718624828; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rb8Pgp2xqT7cIYki1CL83VCOh424IkKn+0tsBgMjwTI=;
        b=xjNQzTA0mihmhrpbuYY0JfiCN+AFdFwcjdRTzmpMg7z4UDu37JzXgLnNyRpMCd0pN/
         9BpetK/fJw56rdeP46i8kQhNCKVtX9yQMalKC9U5wozmmLjAQtR5VIqoIai6YSca/xmn
         a5GwQXehViYhMShwEENU98FYHbn4irU9RQVorIVhLTrgNXyAbPyodHSLzV8GBhtUTSNe
         AZu82932erNaEu6BH7EkkQonFubl51OK9VRxLXz2wpH56ut6cj2LjeLFV3419PrNYSeU
         J8fIIu39YtviJsv4eo6NR9xkluR2/mLK5FfKlqmWjil5S9FZrFtmZXyuiOoV07vOi5eJ
         9oHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718020028; x=1718624828;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rb8Pgp2xqT7cIYki1CL83VCOh424IkKn+0tsBgMjwTI=;
        b=M3Heqnl5b+yCCQs+zr2jCNqwo4h50hQbd3+GxOJfsT3wcdgvev53AcJQQvl10rj9A4
         5U+zpMvlFq6NkNsEtwnZumi7aIgakQrGlhkd952iEf91oHiJL/QtCYwpKwVXlhXlELGp
         7vkE5dNu6l+VKhn2w9FLCdw/ZPwGzUToNXaGYMYQg5FcsKq+ErbLH4Y+gRfU6dnS1Mjx
         YzEEucc2DC+t3Dd4HkvV0Rc/oZVSmtuDgrPXXA43b1KcB6N31/3kpmZ3pdSH1543nNPj
         pmFCL1XRUIEC/CL+PW1jQ3S37jkSe2PisTI6g3VzLH3JTcxeswsZuB8mbo+QHShW3nFg
         nB8w==
X-Forwarded-Encrypted: i=1; AJvYcCVigwZbrbjQpPFmigoJ+cYUUUZKPk6jg46e3dCRVsJXqqvjd5gtGfUv/qGQK/eTEYOD5XVG3r8jX21IT3IeKMUadsrR6f9SdjVwjw==
X-Gm-Message-State: AOJu0Yyuj2OJYloOGQ5eb3aS7Bn+g6jc9YkYDAYBXc3y9QOhMMJ2+one
	XvjhaWo8VqkNUnAyG7iSpInHna5/2uZCRpfnYOD7a59S8y1QjIyjshQnoEYP+QQ=
X-Google-Smtp-Source: AGHT+IHALXrUP/ilTuRks1bDqpKHDSOZ0fxOLIroYwbtLGrwC2bQGMJQpHI/3NMnoy0xSxmxFpGrmw==
X-Received: by 2002:a05:6000:1886:b0:35f:17c8:fe2d with SMTP id ffacd0b85a97d-35f17c8ff54mr5235072f8f.37.1718020027718;
        Mon, 10 Jun 2024 04:47:07 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:afd3:66ee:5486:4249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f209c4a4asm3601821f8f.43.2024.06.10.04.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 04:47:07 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: <neil.armstrong@linaro.org>,  <mturquette@baylibre.com>,
  <sboyd@kernel.org>,  <robh+dt@kernel.org>,
  <krzysztof.kozlowski+dt@linaro.org>,  <khilman@baylibre.com>,
  <martin.blumenstingl@googlemail.com>,  <jian.hu@amlogic.com>,
  <kernel@sberdevices.ru>,  <rockosov@gmail.com>,
  <linux-amlogic@lists.infradead.org>,  <linux-clk@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-arm-kernel@lists.infradead.org>,  Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 6/7] dt-bindings: clock: meson: add A1 CPU clock
 controller bindings
In-Reply-To: <20240610111826.im3mz64hjfkxrxhr@CAB-WSD-L081021> (Dmitry
	Rokosov's message of "Mon, 10 Jun 2024 14:18:26 +0300")
References: <20240515185103.20256-1-ddrokosov@salutedevices.com>
	<20240515185103.20256-7-ddrokosov@salutedevices.com>
	<1jtti1p10m.fsf@starbuckisacylon.baylibre.com>
	<20240610111826.im3mz64hjfkxrxhr@CAB-WSD-L081021>
Date: Mon, 10 Jun 2024 13:47:06 +0200
Message-ID: <1j7cexow91.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon 10 Jun 2024 at 14:18, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> Hello Jerome,
>
> Thank you for the review!
>
> On Mon, Jun 10, 2024 at 12:04:09PM +0200, Jerome Brunet wrote:
>> On Wed 15 May 2024 at 21:47, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:
>> 
>> > Add the documentation and dt bindings for Amlogic A1 CPU clock
>> > controller.
>> >
>> > This controller consists of the general 'cpu_clk' and two main parents:
>> > 'cpu fixed clock' and 'syspll'. The 'cpu fixed clock' is an internal
>> > fixed clock, while the 'syspll' serves as an external input from the A1
>> > PLL clock controller.
>> >
>> > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>> > Reviewed-by: Rob Herring <robh@kernel.org>
>> > ---
>> >  .../bindings/clock/amlogic,a1-cpu-clkc.yaml   | 64 +++++++++++++++++++
>> >  .../dt-bindings/clock/amlogic,a1-cpu-clkc.h   | 19 ++++++
>> >  2 files changed, 83 insertions(+)
>> >  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
>> >  create mode 100644 include/dt-bindings/clock/amlogic,a1-cpu-clkc.h
>> >
>> > diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
>> > new file mode 100644
>> > index 000000000000..f4958b315ed4
>> > --- /dev/null
>> > +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
>> > @@ -0,0 +1,64 @@
>> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> > +%YAML 1.2
>> > +---
>> > +$id: http://devicetree.org/schemas/clock/amlogic,a1-cpu-clkc.yaml#
>> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> > +
>> > +title: Amlogic A1 CPU Clock Control Unit
>> > +
>> > +maintainers:
>> > +  - Neil Armstrong <neil.armstrong@linaro.org>
>> > +  - Jerome Brunet <jbrunet@baylibre.com>
>> > +  - Dmitry Rokosov <ddrokosov@salutedevices.com>
>> > +
>> > +properties:
>> > +  compatible:
>> > +    const: amlogic,a1-cpu-clkc
>> > +
>> > +  '#clock-cells':
>> > +    const: 1
>> > +
>> > +  reg:
>> > +    maxItems: 1
>> > +
>> > +  clocks:
>> > +    items:
>> > +      - description: input fixed pll div2
>> > +      - description: input fixed pll div3
>> > +      - description: input sys pll
>> > +      - description: input oscillator (usually at 24MHz)
>> 
>> According to the documentation, fdiv5 is also an input of the CPU clock
>> tree.
>> 
>> That is typically the kind of things we'd prefer to get right from the
>> beginning to avoid modifying the bindings later.
>> 
>
> Could you please share which documentation you are referencing? I have
> the A113L documentation, and there is no mention of the CPU clock IP.

You should get in touch with Amlogic.

> I retrieved below register map from the vendor's custom driver:
>
> ===
> CPUCTRL_CLK_CTRL0
>
> bits 1:0 - cpu_fsource_sel0
>     0 - xtal
>     1 - fclk_div2
>     2 - fclk_div3
>
> bit 2 - cpu_fsel0
>     0 - cpu_fsource_sel0
>     1 - cpu_fsource_div0
>
> bit 3 - UNKNONWN
>
> bits 9:4 - cpu_fsource_div0
>     Divider value
>
> bit 10 - cpu_fclk
>     0 - cpu_fsel0
>     1 - cpu_fsel1
>
> bit 11 - cpu_clk
>     0 - cpu_fclk
>     1 - sys_pll
>
> bits 15:12 - UNKNONWN
>
> bits 17:16 - cpu_fsource_sel1
>     0 - xtal
>     1 - fclk_div2
>     2 - fclk_div3
>
> bit 18 - cpu_fsel1
>     0 - cpu_fsource_sel1
>     1 - cpu_fsource_div1
>
> bit 19 - UNKNONWN
>
> bits 25:20 - cpu_fsource_div1
>     Divider value
>
> bits 31:26 - UNKNONWN
> ===
>
> As you can see it doesn't have any other inputs except fclk_div2,
> fclk_div3, sys_pll and xtal.

You might not know what to do with it yet, still it is part of the
documentation and should be part of the bindings too

>
>> > +
>> > +  clock-names:
>> > +    items:
>> > +      - const: fclk_div2
>> > +      - const: fclk_div3
>> > +      - const: sys_pll
>> > +      - const: xtal
>> > +
>> > +required:
>> > +  - compatible
>> > +  - '#clock-cells'
>> > +  - reg
>> > +  - clocks
>> > +  - clock-names
>> > +
>> > +additionalProperties: false
>> > +
>> > +examples:
>> > +  - |
>> > +    #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
>> > +    apb {
>> > +        #address-cells = <2>;
>> > +        #size-cells = <2>;
>> > +
>> > +        clock-controller@fd000000 {
>> > +            compatible = "amlogic,a1-cpu-clkc";
>> > +            reg = <0 0xfd000080 0 0x8>;
>> 
>> If reg is <0 0xfd000080 0 0x8> then node name should be clock-controller@fd000080
>> 
>
> Okay, I will fix that example in the next version.
>
> [...]

-- 
Jerome

