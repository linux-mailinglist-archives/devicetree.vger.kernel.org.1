Return-Path: <devicetree+bounces-267113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yfoHKO7XmWkSXAMAu9opvQ
	(envelope-from <devicetree+bounces-267113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:06:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC5816D3A1
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2995130101E3
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ADEF2D63FC;
	Sat, 21 Feb 2026 16:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bRv6yOlb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A342D593E
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 16:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771689964; cv=none; b=hcqPIpNVtSH2s0nGbS6eXzb75rUowrZHaJ8adasg/Wrg8pIWNweHim6YqQY1WTlRatCOjxBa2vGvMfcjQHh+4aMQWn6mKar12dSQKu3JOt/lKeyOA/WgbZhIBr2HM4OiO7yA1iDl56fxic/BsIT/zklWbQkzB5TGKou8Z5iGUfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771689964; c=relaxed/simple;
	bh=gyb/9ZB5EnwrenCnbv8sUM5uff76SoJ37iBuO5Pm5+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vB0D3/lk/J5pGF8vdz1nTOBd2eQMmPML92uWgE0u4QYrQpKavufolUTIeakc2EJPKyZe6my+irkkpG7YlhH3Ev1U8GhpsAxMuoJPQ/z653dvd5B1CBVLhaS3iF2GWZeLMltMl1GUQn/CTTTcF1JyhnT5JCOqJ9bGwezDzT41EhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bRv6yOlb; arc=none smtp.client-ip=209.85.167.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f194.google.com with SMTP id 5614622812f47-46391f4c1f9so1831820b6e.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 08:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771689961; x=1772294761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9AGVcGIoD5Zg2avg7ODun32xVt8CH7Ifzx0KSdwGaSU=;
        b=bRv6yOlbFzbigUvub6HrdvOZxkvioWkzh/Uu5b9xRx6GEte2RvhXvAp/NHyZbnYAdc
         x6gYA53Xl6DdHG+eNlN34f92QN0QaKItcThyoonJzxYyF3INihR3UOKVPqkHE6hArkmM
         qWDYv9UEv4HK03xGDx9+u/Pkx8lG3bp1p7lNmu88oEY4OGLA9BfQ8cZraCViPkEY40aZ
         cmCo26mClEW35eEmPmsrv88zKicXGRCrmbIqBGKoUSlpnBjrFgQ7qc+24UyuRMHMIvcl
         m3G9wjjGUpweup4+bxgoMPfKaRkbsyCXj/04fh1f7/KMaVeHAZNoQC+3FCn6DgLHPLYH
         uZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771689961; x=1772294761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9AGVcGIoD5Zg2avg7ODun32xVt8CH7Ifzx0KSdwGaSU=;
        b=Sl3+0w1MLyp8pxQuwEm29dEqZBDJa9hpl+hVXFIIQYq4gqRewRkRt0b/MjvqHNp38l
         tUD2lhISk2XFKdYV9aZ/eiyd52gvZgQMTxTrIl9nEARc7Rv4MkXdf+pUKC05VLbc3pkr
         oCSRPmiZJdyTOz/eCs2qzk50CQgffNMhgW2wUMx2io89BZO72JrkY1l6B6d3HOLRg4Uc
         32XBTSf3xcZgZDyJAwmw49Mp5amETIvGJmgTvr9fDeEX+NnzZz2PeSLLQHqgwo0+uhH1
         Fpx1/UQK3pe58+xXMFICMqRzDeGFtVwU4206w22deyIUTrTPk4DSU8ooHgmoWhNzflx9
         HTzA==
X-Forwarded-Encrypted: i=1; AJvYcCVu6Z3wZzNbHWEzD9FZZJvhEmMSJ662bnwxVi0/XlOgAebdCgYRE9yhjD5OdMEMAmvkEXlwvCHzRqQv@vger.kernel.org
X-Gm-Message-State: AOJu0YysvBCgZr6iT19qQWGE8vomIH+Fp3K2zkEoPWGFpL+UG/5sOBPa
	Qh42U3CBwTrDS57IRvt6DWj+gO5BlW348PinraQkVTmuKxlkfHG1TDwDtYA4MBoC0p2KGsLc6dD
	y1+5x
X-Gm-Gg: AZuq6aL3N98MMV6rKHVnFjbEloxprfdbILJpjvqGS0ojedySbTu7n+J0rygWkj7w74p
	uRLwwCHL75m4aloGf9nJaXZC2lWx1Z9Q88DoAXlrUgZWYRsbeeAI/8KR8kyebQqS/cyMK8uMMbJ
	OsyQAUKiqGg5IUNZkKK0nR1cqkmlkuBAE+CoOJ/tyQwh1UEzMi1X6E6DjVChdpFFgJPfPwbEvGP
	YZMFjDeOB0IHpoXzo5lb/bxVtYmG2qw6v2wV1qGnL+yTn+WV9EverZNJlHYb4y/4s5TbwIVIYKM
	H1kIWkyE8DHbaFvJwK0cn5IKyYsjl8tiJu3rMpPuEAWVdrOtrS0Yr8LDriklRn6ngOMM6XGL1As
	pkrQq1qshetsQgsY+vlKK7nCYq6ByWF+vdFKJSjsplbRT417Ht/U0RtrmFBE67RnjxQPebDw9Ce
	6B3zFAowyV80oGBja9IDv5wNvmO0HxI4ZMsWA9F5dTjn6gk6uJ9ilHMoiMD42jNZLiBoZY/g==
X-Received: by 2002:a05:6808:c1f7:b0:45c:80b7:4e11 with SMTP id 5614622812f47-4644635c09emr1947502b6e.45.1771689960760;
        Sat, 21 Feb 2026 08:06:00 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:611:96af:f385:64bf? ([2600:8803:e7e4:500:611:96af:f385:64bf])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4157d3a91absm2777166fac.20.2026.02.21.08.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Feb 2026 08:06:00 -0800 (PST)
Message-ID: <fef41429-51d6-4084-a75e-a7b609b5f894@baylibre.com>
Date: Sat, 21 Feb 2026 10:05:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: dac: Add binding for AD5706R
To: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20260220-dev_ad5706r-v1-0-7253bbd74889@analog.com>
 <20260220-dev_ad5706r-v1-1-7253bbd74889@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260220-dev_ad5706r-v1-1-7253bbd74889@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267113-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,analog.com:url,analog.com:email]
X-Rspamd-Queue-Id: 2EC5816D3A1
X-Rspamd-Action: no action

On 2/20/26 2:02 AM, Alexis Czezar Torreno wrote:
> Add device tree binding documentation for the Analog Devices
> AD5706R 4-channel 16-bit current output digital-to-analog converter.
> 
> Signed-off-by: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
> ---
>  .../devicetree/bindings/iio/dac/adi,ad5706r.yaml   | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5706r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5706r.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..dabaf2195a07d2c66d44f69ca60e32e6bc37cf55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5706r.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/dac/adi,ad5706r.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD5706R 4-Channel Current Output DAC
> +
> +maintainers:
> +  - Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
> +
> +description: |
> +  The AD5706R is a 16-bit, 4-channel current output digital-to-analog
> +  converter with SPI interface.
> +
> +  The driver supports dynamic SPI clock rate management via an external
> +  clock generator (e.g., AXI CLKGEN) referenced by the 'clocks' property.
> +  This allows separate read and write SPI speeds to be configured at
> +  runtime.

Devicetree is for describing how it is wired up, not how the driver uses
it, so leave this part out.

> +
> +  Datasheet:
> +    https://www.analog.com/en/products/ad5706r.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad5706r
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 100000000
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      Reference clock for SPI clock rate management.

Based on the driver, it sounds like this clock is not connected
to this chip at all, but rather the SPI controller clock. So it
does not belong here.

> +
> +  clock-names:
> +    items:
> +      - const: spi_clk
> +
> +  pwms:
> +    maxItems: 1
> +
> +  pwm-names:
> +    items:
> +      - const: ad5706r_ldacb

Instead of giving it a name, we can just write it as:

pwms:
  items:
    - description: PWM connected to the LDAC/TGP/DCK pin.

The items: also limits it to exactly one item, so we don't need
maxItems:.

> +
> +  dac-resetb-gpios:
> +    maxItems: 1
> +    description: GPIO connected to the active-low reset pin.

The datasheet just has a /RESET pin. Not sure where the "b" comes
from.

> +
> +  dac-shdn-gpios:
> +    maxItems: 1
> +    description: GPIO connected to the active-high shutdown pin.

I didn't see a "shutdown" pin in the datasheet. Do you mean the
OUT_EN pin?

> +

We could also add an io-channel for reading back the MUX_OUT pin
from the ADC it is connected to.

> +required:
> +  - compatible
> +  - reg
> +  - spi-max-frequency

Voltage supplies should be required.


> +  - clocks
> +  - clock-names
> +  - pwms
> +  - pwm-names
> +  - dac-resetb-gpios
> +  - dac-shdn-gpios

I would not expect any of these to be required. Reset could be hardwired if
there aren't enough GPIOs. And something other than a PWM could be connected
to the LDAC/TGP/DCK pin. 

The point of the bindings is to describe how the chip is wired up, and that
includes any way it could possibly be wired up, not just what is implemented
in the driver.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        dac@0 {
> +            compatible = "adi,ad5706r";
> +            reg = <0>;
> +            spi-max-frequency = <100000000>;
> +
> +            clocks = <&spi_clk>;
> +            clock-names = "spi_clk";
> +
> +            dac-resetb-gpios = <&gpio0 86 GPIO_ACTIVE_LOW>;
> +            dac-shdn-gpios = <&gpio0 87 GPIO_ACTIVE_HIGH>;
> +
> +            pwms = <&axi_pwm_gen 0 0>;
> +            pwm-names = "ad5706r_ldacb";
> +        };
> +    };
> +...
> 


