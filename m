Return-Path: <devicetree+bounces-261470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LOg9IR1cfmmsXgIAu9opvQ
	(envelope-from <devicetree+bounces-261470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:46:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C7CC3B08
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EF32130039A6
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 19:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4E436AB5F;
	Sat, 31 Jan 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sAcfGwyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com [209.85.161.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD08366DD7
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 19:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769888794; cv=none; b=PENUDSHzgPAp/GFOltlLxdfgwIyzBG9tup0GcIdWkMsyUdFHgTyuptpujhU3810XG69Z1kw1vxcH4bXZcHsLb5uH+G1M8XJGcqGf/CdGLctCSAzW8OvJSC6W8aT/SYLLhVTXyHMfX2gyuszVJjdbJgn977vfJtgofVH5OG6am/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769888794; c=relaxed/simple;
	bh=K8YQX8LaOueyeKPe9xY7pRAyIGpZfWO0T3uKpztWwW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f6lsKUP+XD/DbZknU0Yi1fvh4RBsqVSZOsEuYLXBDYMzmVoe7F/wxNakRIlAL87+SwCzW1tn0A2RCdJ+Azs4xlb6snspXHvxlj6WOCfbCDmRQOyeP5JcvpPKh/IWTlkWfuSAPf1m1VgR40kcxR748/6kZy2EIMjmu1dEmbvVMbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sAcfGwyH; arc=none smtp.client-ip=209.85.161.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f66.google.com with SMTP id 006d021491bc7-662f30d3f1fso2244457eaf.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 11:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769888790; x=1770493590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USE7814nD7qzzRAMgxZuZkB6FtznoRYP0SohwFcy9+I=;
        b=sAcfGwyH1OaXM2tfj6vThUweIkIeXGNDFBb1OUzUrMtHzF7y9szC/6DLBEcu+wG9a7
         llDsdNxciCcUv54eHZWzQOWwjuD1aHzfJuGrNqU6TzlkY1QuPKAW7B03VCSGKVGaZ4WP
         QCw2fHOM0e2eFx4mmVmS4T84h7NImteSmA+teYFRg/DaCrQspUDe4iL8B0MT7ES4gxB3
         XsVhyKe8syqNUxQ8LSyBL9JV8ZDoGPIyJhsfBpIcLelMOoEUAoeHbi2XjMgE+7X74tyy
         SOxgQ/HxpsXgeyM+w2vHYizIttm3bq3dAkfsO5DHimJDdlYCrXp1M/Sv4wgos6OqEMn/
         WEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769888790; x=1770493590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USE7814nD7qzzRAMgxZuZkB6FtznoRYP0SohwFcy9+I=;
        b=N+2M/e+Mdf5fdjbI3kknuC2ACmd4baxF0GNDtHP3bCJBr5CQCw48VUlwGenjjkp3qS
         USiVhoYM9PdZhjLaLWQryaYx0j+J7HoHdGAZi9EDDzQMbYC1mjYZIgdsQFOc5OR4Lo2V
         tNL09YQuJk5uslh5VG4K0bTpI/nywfAy7yXDFLc2QoNDyG6DTQJHG5GkHd9/vqSQfVgF
         R6p5X75Omb+2qcvBs2+oXBC7XczysHXJQBd7ka5dArKgEmZwrtRAZMRCb97Rc4MQCPgq
         ZyqGOPOa8vSAJOX5kxSaCSklBHNr5uwEUSHK1SDvY5g1lOEsQyqGyPdBCuh/xnUbUp+w
         lkXg==
X-Forwarded-Encrypted: i=1; AJvYcCX1+LkpMRBgISpU3Lfqqei2mKDSQ6vmH+bTGBPbaQVYmTr26HmSuDY8KjWFQuMYcBghMiJCWaBaIyFm@vger.kernel.org
X-Gm-Message-State: AOJu0YygPqctJixar82+fOu3u7jUETcx8pcw0zh7sZc/tbMFK4+UDmWW
	HzHEkxwmJGGRU7zULgbMoYVwHnBVTFdmlwMNY38+hfJcz035a/gWfUVm41+dfGB5rxI=
X-Gm-Gg: AZuq6aKuUMyHZEabJHMhSt9GIlCHft+GLnijGataZpVKStwiLDS6HpT1oYkE6MOkkrW
	iynIXVxsdmtF+qh8rFC0X9OTrgwGmnA4Vihf4vNiHF5FOm6SkwYNtya8VaGZBIR/TwShuhSITS3
	BLZTJPbPD/KP0LP3Iyvoc2ecvrhv4tkGx5WYuoEWFV06SkIEEy94TjT1FthcvrMgs46qL5jETV+
	9D4oFO2uCxHkA8E7ErvcqlkZIAwFvEf3EtJi78XfNyTzT6zmWBZ0hjAhfad9V2jgdEhYuyEzV+L
	RWqZzYlBa5SmPMV8pVlmsBX3blMHE2NQvW8haDFFOdDu6p1m0QXMMKdHkP3Uw9HVlagMhrShpXo
	HhjXA5/ru5rGyG6k/dM/qnGSrVIqdF2ZwL09gqDn5zjwsmJ94Ehmi94nD3MigKlxL3S2aQS7Vx5
	tDXxDNwL/b6sCqCIlbALS1fv10AZptYFMU6nKMg6/NbfOoKDMsETwhkT5whOAY
X-Received: by 2002:a05:6820:4810:b0:661:1bee:284a with SMTP id 006d021491bc7-663103a4b9amr2983263eaf.28.1769888790423;
        Sat, 31 Jan 2026 11:46:30 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f9a18776sm6975873eaf.12.2026.01.31.11.46.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 11:46:29 -0800 (PST)
Message-ID: <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com>
Date: Sat, 31 Jan 2026 13:46:28 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 01/10] dt-bindings: regulator: cpcap-regulator: convert
 to schema
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
 <20260125134302.45958-2-clamor95@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260125134302.45958-2-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261470-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,bootlin.com,atomide.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 15C7CC3B08
X-Rspamd-Action: no action

On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
> from TXT to YAML format. Main functionality preserved and added compatible
> for CPCAP regulator set found in the Mot board.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/regulator/cpcap-regulator.txt    | 35 -------------
>  .../regulator/motorola,cpcap-regulator.yaml   | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt b/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
> deleted file mode 100644
> index 36f5e2f5cc0f..000000000000
> --- a/Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -Motorola CPCAP PMIC voltage regulators
> -------------------------------------
> -
> -Requires node properties:
> -- "compatible" value one of:
> -    "motorola,cpcap-regulator"
> -    "motorola,mapphone-cpcap-regulator"
> -    "motorola,xoom-cpcap-regulator"
> -
> -Required regulator properties:
> -- "regulator-name"
> -- "regulator-enable-ramp-delay"
> -- "regulator-min-microvolt"
> -- "regulator-max-microvolt"
> -
> -Optional regulator properties:
> -- "regulator-boot-on"
> -
> -See Documentation/devicetree/bindings/regulator/regulator.txt
> -for more details about the regulator properties.
> -
> -Example:
> -
> -cpcap_regulator: regulator {
> -	compatible = "motorola,cpcap-regulator";
> -
> -	cpcap_regulators: regulators {
> -		sw5: SW5 {

Old example is missing the required regulator-names property.

> -			regulator-min-microvolt = <5050000>;
> -			regulator-max-microvolt = <5050000>;
> -			regulator-enable-ramp-delay = <50000>;
> -			regulator-boot-on;
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
> new file mode 100644
> index 000000000000..b73d32a86904
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/motorola,cpcap-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Motorola CPCAP PMIC regulators
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +description:
> +  This module is part of the Motorola CPCAP MFD device. For more details
> +  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
> +  regulator controller is represented as a sub-node of the PMIC node
> +  on the device tree.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - motorola,cpcap-regulator
> +      - motorola,mapphone-cpcap-regulator
> +      - motorola,mot-cpcap-regulator
> +      - motorola,xoom-cpcap-regulator
> +
> +  regulators:
> +    type: object
> +
> +    patternProperties:
> +      "$[A-Z0-9]+^":

Why not put the valid names here? Or does the node name not actually matter?
(in which case lower case could be allowed too.)

         "^(SW1|SW2|...)$":

And $,^ are swapped.

> +        $ref: /schemas/regulator/regulator.yaml#
> +        type: object
> +        description:
> +          Valid regulator names are SW1, SW2, SW3, SW4, SW5, VCAM, VCSI,
> +          VDAC, VDIG, VFUSE, VHVIO, VSDIO, VPLL, VRF1, VRF2, VRFREF, VWLAN1,
> +          VWLAN2, VSIM, VSIMCARD, VVIB, VUSB, VAUDIO
> +

If these apply to the regulator-name property, it can be written instead as:

  properties:
    regulator-name:
      enum:
        - SW1
        - SW2
        ...


Not sure if it is strictly needed, but this would document the optional
property:

    regulator-boot-on: true

> +        required:
> +          - regulator-name
> +          - regulator-enable-ramp-delay
> +          - regulator-min-microvolt
> +          - regulator-max-microvolt
> +
> +        unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +

Example should go here.

> +...


