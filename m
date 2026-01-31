Return-Path: <devicetree+bounces-261476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OO4CCfpffmmPXwIAu9opvQ
	(envelope-from <devicetree+bounces-261476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:03:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A71C3C91
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 09F013003D08
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7825236F43E;
	Sat, 31 Jan 2026 20:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QpNA5llk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACE3369961
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 20:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769889781; cv=none; b=aRGp1AgUIQSakMBAH3Cva/4pxWyYBpYWc1Dgk4yQ3HA4Sk8alasImcPA3ILNFsHJlgSs3I1GthCYGBMIg5S57wlfG1Oj2HWZTa8DJ+QAJ5bfwrs0wUhypYvtf2ezPooL+VpHubPIBWTWNaopLGxx4aGzomXUbHF65uVmY67A4sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769889781; c=relaxed/simple;
	bh=u1yuFWr3eI3cUhJQh3ws4Rrs2CjchEuu5iwWD3RXNzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WJwkaXxHjzKrXyjyD0oJuHYHDtOVXA7sLHaCjuoogS+MEFJ1nusM4zGNHWHwKi+5xuMel/40fY1/O1THPu8fcJZio/yO9oSl5dCDKP95Lvej9KcuW+oceCt8/4k1L1xGiGGMGNV+OB5LWBhoL+rVHPTRtcBWmpLGXXgT5bL4d8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QpNA5llk; arc=none smtp.client-ip=209.85.210.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f65.google.com with SMTP id 46e09a7af769-7d148dd3421so1240036a34.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 12:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769889778; x=1770494578; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dZjM9shHX4YFsvwKhFAe/sG0x6/ZZidUkV5AzO3KYmk=;
        b=QpNA5llkqAKdONL1eN3bd44/voICoGhTF7xLpjtkeaVlNru5AnslVcS8/AwXpiytTf
         I2UeNTRtpPlIq/+3FgpsFnQrRXvHBdE3Rx2CnjopYmqWSOoLOki6RFJAyf1hZ8bd8c/T
         Olsi+9QlG3fd+jZDGDJ19qV4pkVb2L4YirnGEmS52FpZnBDuzG285N4XheaCK2LqQriv
         y6D3/q7DKt+3I1clNCZZAAwZAsuhikMDruktXp0KPq/NkBgDWl3Kr1hZVS4uHeC+P5ry
         rFTpLReo9FvJ1SHJTpWsZxUsbfs6FcFvpZRQfVsIqIcZbCL0laSA8nzuAKjgFW517Qzy
         dBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769889778; x=1770494578;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dZjM9shHX4YFsvwKhFAe/sG0x6/ZZidUkV5AzO3KYmk=;
        b=lUuMvI2kgJYz6TYXRleStBeFleLrDHOKZQiCCqjyXCe0nq6bcDToamj03evbe1GAEL
         +3OMwZrw5qzKK6XNhSv7YS4M7uE83hXkya/wiXrRsODeBb0tprtdluG40Fdt1ntgZ5yb
         iS4Ed+eWTARtPNeS7J7D+J36f/DXtTNWMcxZC1XLA5Y9ObzKn32BuyC4KpC5c6dMrwO9
         xNkU8AspWiPWC8kGuvlI/ifg5HtD+e04ICNob53xEJhhudBx1v/xOdXb/Aq2Y6jAAXQK
         YK7ZTWN42p3GavAnTbWX4jx5+/yftyvOYZ/5xTwhiczjy82sLxoPWh3BMdf0nV/HoIkR
         4snA==
X-Forwarded-Encrypted: i=1; AJvYcCUbYlX1hfnXyltNas2L0moUKjvzytLHXQFE6MbaQNNM8YeH+qS6nWzEik1Tb/9BwglcT/5/aDwwZDNa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1TokpKPX5pEnBlTv0XC/Q54tV2lwWA+GG7TkM2j7j5Thrv/Vo
	bXqJnidwt0ZcXBXvdtOcMPGTFHGrmVwCOk6G4ru6lrQTgr062ScIBUXBIF2l/tMHhBc=
X-Gm-Gg: AZuq6aLYyIMawoZPGt/cimlmn/5U7IATud+Zp9UTSu2zdgIE0MS0d5gb8YwRG2OPgDp
	F3Ra1gxGlzRrJQhg5hgGp29mNtqhcDUA7iSLCJ+qbgEa1M4oBLkUyx8EiB9DTgovlc+23DlN1Mg
	lvCPGp96vd7TZNTLB1vv3OcNPtv6FT4zjBirnEw3rZdLlmPoqhpXLcwlQnYtOKUWMrEuLK4QlNY
	BhL5t2eQ7/J4GeOf38fSrnJB7xspcEUYwykr0aR9YqkMXkiBrz/SsBUQEqyj5pEXwXQ+sRUodrJ
	Lu27FOF5s4zO3WaFd/eY2/4cUlsgCinOR0zJZBm1kAqI+z5+ctEsuCDH7eKKsT5xCU/BKidsKG3
	/xAIzb42fGz2AS2JUWvkAYIyR9mHnJhS49ofNrtjF9yib2uDWt0RzdaDc15GaOlz3Qr59jzfoMx
	3Mhp6AinCMO9IFinIZg+5E6+e18/M60ugDOx28Bt3VsHU3Ewjpnjul00mQkx3QZiJ+TTQnXjc=
X-Received: by 2002:a05:6830:2b09:b0:7cf:d14f:a4aa with SMTP id 46e09a7af769-7d1a531026bmr4075358a34.20.1769889778127;
        Sat, 31 Jan 2026 12:02:58 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d18c67065esm7795242a34.6.2026.01.31.12.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 12:02:57 -0800 (PST)
Message-ID: <8bd89524-dfc3-43b0-b0f2-cdb1cd51e1ac@baylibre.com>
Date: Sat, 31 Jan 2026 14:02:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 07/10] dt-bindings: input: cpcap-pwrbutton: convert to
 schema
To: Svyatoslav Ryhel <clamor95@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
References: <20260125134302.45958-1-clamor95@gmail.com>
 <20260125134302.45958-8-clamor95@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260125134302.45958-8-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261476-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,bootlin.com,atomide.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3A71C3C91
X-Rspamd-Action: no action

On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> Convert power button devicetree bindings for the Motorola CPCAP MFD from
> TXT to YAML format. This patch does not change any functionality; the
> bindings remain the same.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
>  .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
>  2 files changed, 32 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
>  create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt b/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> deleted file mode 100644
> index 0dd0076daf71..000000000000
> --- a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Motorola CPCAP on key
> -
> -This module is part of the CPCAP. For more details about the whole
> -chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
> -
> -This module provides a simple power button event via an Interrupt.
> -
> -Required properties:
> -- compatible: should be one of the following
> -   - "motorola,cpcap-pwrbutton"
> -- interrupts: irq specifier for CPCAP's ON IRQ
> -
> -Example:
> -
> -&cpcap {
> -	cpcap_pwrbutton: pwrbutton {
> -		compatible = "motorola,cpcap-pwrbutton";
> -		interrupts = <23 IRQ_TYPE_NONE>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
> new file mode 100644
> index 000000000000..643f6b2b1f13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/motorola,cpcap-pwrbutton.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Motorola CPCAP PMIC power key
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +description:
> +  This module is part of the Motorola CPCAP MFD device. For more details
> +  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
> +  power key is represented as a sub-node of the PMIC node on the device
> +  tree.
> +
> +properties:
> +  compatible:
> +    const: motorola,cpcap-pwrbutton
> +
> +  interrupts:
> +    minItems: 1

Should this be maxItems: 1?

> +    description: CPCAP's ON interrupt

Or I suppose:

  items:
    - description: ...


> +
> +required:
> +  - compatible
> +  - interrupts
> +
> +additionalProperties: false
> +

example: ...

> +...


