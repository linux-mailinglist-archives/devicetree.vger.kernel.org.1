Return-Path: <devicetree+bounces-261474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GH2lFT1ffmliXwIAu9opvQ
	(envelope-from <devicetree+bounces-261474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:59:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD1C3C49
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00B7A302D13E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 19:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3431F36CDF4;
	Sat, 31 Jan 2026 19:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yOaOumtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f65.google.com (mail-oa1-f65.google.com [209.85.160.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401C236C5AA
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 19:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769889580; cv=none; b=a94X7qCExdZAW2Q+JNQnU0H8kmi4qnq9TFUz35d8q2IsUKnRvIS43u1/V+A70BD2DIHwMuGnOSCxjGkFsWZajRHJ05NCLU+npIdLCpF+waNEir9XkB/5uVbXXqmjj2xsWJGmUZp//fuhXXN9LMKc89QCvnpe8Q/aVFnNBCf9R/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769889580; c=relaxed/simple;
	bh=y501ybWHBgGRKwznvyi4r3Ot4gsoNEcrqXIf0H2+IFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GiFnxp6C0tg3Gu+dbopdCg4KzRYStwG3/UpjvfcpnGSWHW0iP1yKxYIHEKlhQKXcmUSQ+8Vco9d8pL5+DhIBwMOOu4H71m269tM4J0MszWjfMFDEBGzqqRw8ekBpsxi24wOUN8rV4zne7MFPQck4scjtqM8lJM22dRzpNvwb0yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yOaOumtW; arc=none smtp.client-ip=209.85.160.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f65.google.com with SMTP id 586e51a60fabf-4094fbd1808so1323701fac.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 11:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769889576; x=1770494376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElQ4mZrKFvJjO3Pi3PK+S2VsoWxu8vErX54kiEsiHyM=;
        b=yOaOumtW2KbV4JjPlFFWE8iPUmm0x1fmK1VHg/d1znD2UzoVlBV2D8o67cGSBS6WkV
         T9azRTRRCU4OUe88g98GcBjFZtUxeHfeax9jOEbAYsS0cz2MMVJf6BmhS3NNUR7eMFbp
         hqqdzSgzqi4bF6hpw1Jnc0h9t2ga5U8QEzxgOFOauAjLWR1LDDFOLcSA7gsLe/mOgtAz
         SBdnqtaMDpjMQY2Vg+wkDrBCxhFx3dG1T36scs+wRTI8q2ePNv+eQnjOpHfDtN4vIsty
         R+GwQpSnDFsjHOe1gwoUceJ1phB4P53OxRWzhN6uwd6F+ndgqw09kWw8o3x2sZJcfa3c
         Azyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769889576; x=1770494376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ElQ4mZrKFvJjO3Pi3PK+S2VsoWxu8vErX54kiEsiHyM=;
        b=s0uL+T99YsL1CgX67bHo80WVT0HfQfWfW+D33MVttHP2zPXc5H2nwdtP04rbvWVlfu
         U3ctVBNBwzUpaqiJxQ+gxJxPs756ySfUUXPWcKlWV9QEGlZApyX1gMTsa4Sk7OGxLKah
         6K/GTU0CKSyQuCInEAbXUONGU7plMYYKVjQai7E3yx4Z9br78Fb/gZdQhCk1y4iiOcKc
         FDA4oWljgBnbUgiTYu6+oqv06ThuMheeYBKlDkZyOCv0RFhTeHsizeAzD/AgrQ9xKFIz
         myPBTfc4dpvCxLB/GxpMcc0ZBFbhlnq5yA82LXoYN3/ybC7u+xf25QZVRkCnyyciji5i
         /zqw==
X-Forwarded-Encrypted: i=1; AJvYcCU9LrXY2V698k/AoX/PsAUAyI+LftfCLgiC+T7RCIVqXBpOQ339RBCec3bVNi2ARJjU2dVB9TUpj39R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw22zlai46qJBvMvff0vL++ByR+8d+vqdwnoW7CCttyr0D1uNUA
	mtcM8GD7cGCXt6HvEdJ92c2iXeGeTfAzzHHLKZkfn9TgdVORSM/+NJcvETz89c+yTnU=
X-Gm-Gg: AZuq6aKK9VUAz5rDBNMq/bR7dMq5gnb6J3LxeroJ21pJWpaM+J/LK1ENtusA6N3vYRA
	2ifZwFQjc8iELYRp240tw3szMJ8dPQAYUcLUxfadpGXtuj2u9c7KuNIgoSm2eczYDxSYRtC8MoZ
	q8LLSKA5zNgIiZMY4PjPcJiGP0TQbgacXs2dqSm5Cg9RW5bvnxA8S6sMhNHvAMEpyOWuAQCJdbE
	l7HlLqc7lW7LPpFvmI3rYgDrRaefKSY38V/e5EQeADpWPb3WrFHJbfhi4zVvgs0RVvtRsnNP8gf
	d5jkC2C09W5TnWjjhOicTLjNDikZkp8RFeBikR8JxDBwod9DbciT0usuV8h+fVCHsLNFDDAH9xd
	uycaGwSf+sENBxepbeSgvygNhdML+sp0LrgoAXI6WqHrq7gaarnzkj2a83JT9JyyNgQQJ+1Sa+f
	sQC6ojerdOr8bJci5MLPK/ie4mkRHiQ00I8lptMPdUTLIdP/5v+Py5QIbvn2x1
X-Received: by 2002:a05:6871:c968:b0:3f1:664f:e8db with SMTP id 586e51a60fabf-409a6ba324emr4043538fac.23.1769889576024;
        Sat, 31 Jan 2026 11:59:36 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409570f1413sm8612306fac.2.2026.01.31.11.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 11:59:25 -0800 (PST)
Message-ID: <51d07338-6ddd-4893-986f-7fab96ff6802@baylibre.com>
Date: Sat, 31 Jan 2026 13:59:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 05/10] dt-bindings: leds: leds-cpcap: convert to schema
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
 <20260125134302.45958-6-clamor95@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260125134302.45958-6-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261474-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,bootlin.com,atomide.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: E9DD1C3C49
X-Rspamd-Action: no action

On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> Convert leds devicetree bindings for the Motorola CPCAP MFD from TXT to
> YAML format. This patch does not change any functionality; the bindings
> remain the same.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../devicetree/bindings/leds/leds-cpcap.txt   | 29 -------------
>  .../bindings/leds/motorola,cpcap-leds.yaml    | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/leds/leds-cpcap.txt
>  create mode 100644 Documentation/devicetree/bindings/leds/motorola,cpcap-leds.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/leds-cpcap.txt b/Documentation/devicetree/bindings/leds/leds-cpcap.txt
> deleted file mode 100644
> index ebf7cdc7f70c..000000000000
> --- a/Documentation/devicetree/bindings/leds/leds-cpcap.txt
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -Motorola CPCAP PMIC LEDs
> -------------------------
> -
> -This module is part of the CPCAP. For more details about the whole
> -chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
> -
> -Requires node properties:
> -- compatible: should be one of
> -   * "motorola,cpcap-led-mdl"		(Main Display Lighting)
> -   * "motorola,cpcap-led-kl"		(Keyboard Lighting)
> -   * "motorola,cpcap-led-adl"		(Aux Display Lighting)
> -   * "motorola,cpcap-led-red"		(Red Triode)
> -   * "motorola,cpcap-led-green"		(Green Triode)
> -   * "motorola,cpcap-led-blue"		(Blue Triode)
> -   * "motorola,cpcap-led-cf"		(Camera Flash)
> -   * "motorola,cpcap-led-bt"		(Bluetooth)
> -   * "motorola,cpcap-led-cp"		(Camera Privacy LED)
> -- label: see Documentation/devicetree/bindings/leds/common.txt
> -- vdd-supply: A phandle to the regulator powering the LED
> -
> -Example:
> -
> -&cpcap {
> -	cpcap_led_red: red-led {
> -		compatible = "motorola,cpcap-led-red";
> -		label = "cpcap:red";
> -		vdd-supply = <&sw5>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/leds/motorola,cpcap-leds.yaml b/Documentation/devicetree/bindings/leds/motorola,cpcap-leds.yaml
> new file mode 100644
> index 000000000000..8dfc98a1ef99
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/motorola,cpcap-leds.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/motorola,cpcap-leds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Motorola CPCAP PMIC leds
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +description:
> +  This module is part of the Motorola CPCAP MFD device. For more details
> +  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. Leds are

s/Leds/LEDs/

> +  represented as sub-nodes of the PMIC node on the device tree.
> +
> +allOf:
> +  - $ref: /schemas/leds/common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - motorola,cpcap-led-adl # Display Lighting
> +      - motorola,cpcap-led-blue # Blue Triode
> +      - motorola,cpcap-led-bt # Bluetooth
> +      - motorola,cpcap-led-cf # Camera Flash
> +      - motorola,cpcap-led-cp # Camera Privacy LED
> +      - motorola,cpcap-led-green # Green Triode
> +      - motorola,cpcap-led-kl # Keyboard Lighting
> +      - motorola,cpcap-led-mdl # Main Display Lighting
> +      - motorola,cpcap-led-red # Red Triode
> +
> +  vdd-supply: true
> +
> +required:
> +  - compatible
> +  - label
> +  - vdd-supply
> +
> +unevaluatedProperties: false
> +

Should keep the example here.

> +...


