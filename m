Return-Path: <devicetree+bounces-260935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKNGLdaIe2mlFQIAu9opvQ
	(envelope-from <devicetree+bounces-260935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:20:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 791B7B2129
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7B9230099AE
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736B733F8B7;
	Thu, 29 Jan 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L1mMlLB8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8390033EB07
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 16:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769703633; cv=none; b=GTYHoQeB9fN0pSVkecNscLKLWLUGlNzapNHU7rpfORZZpK+pJAdIyDo7s30ZVJMlEDFYERCAewsTVn/HjzrmQwjD/aRMjOW4HXfPOMCmrwkpYuRSATfDpLQdUku8PzH88i/EcJHTZuZJAjNqMbYPFAceV9vJpyzESi4NsWc3cvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769703633; c=relaxed/simple;
	bh=EGsRY7aG0zzAYU857y9QMnROLwSVALHkPRes/8MaDSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=oLe8I9yDREcnCmoZcvm0btOAMVMbJJgLMhYOg+aZ8mAzT9SLbNwyyo1FY1H3EnaZF1crnp2quG43H1dxyCzlo/E89Gcpw9B83g2G6LL4+p9CPFcOZmn3760qJcXJbXf28AgsRRxEn/svNBw687timHdL2Q3r9GY03RoxgfzvrSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L1mMlLB8; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-124899ee9d3so788715c88.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769703630; x=1770308430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MOn+Bs0qoUGUzxsaUu2YGKwHvxmscu6j9iNcuCgMsM4=;
        b=L1mMlLB8xCwzeZpeKHkkBH6smX7+6helVTuSQ7qmRxi8GtnAprEhlUW0ci8HNWVFNd
         z7z83MPNMvDjeaCb1+cO1H0f1MXRZ6vu5Kx3EdPgQ7l39u+90vqOqWR0u8Yy9uNiKdhx
         QfDhO+GyfpplyoVD9ldqr5WKVAPDChBBko6UhEuk2ZSlo2e9idjOKo4VrNaeOcUaNzCM
         jyNY+S1Y8qgXjgcaqyuPwDDcApgV9LSazkz26Beg1Jx7l6La5dVzV94v9+dK+JsT/Gc6
         9zkP2+6GKx0B6GmzoQp0uor2QNZYq5aZJc0Ifk50S13NL8yM5xFErP3Y8HMLs2z+lU0o
         Bxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769703630; x=1770308430;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MOn+Bs0qoUGUzxsaUu2YGKwHvxmscu6j9iNcuCgMsM4=;
        b=oFuJIRoUb39+GFa9cPNd0GN131yRxdeMMeyLj098TXyKjBdk529qFRzYsEl1sRlz8i
         MO1yGvk5IbbuzLnaNiBPKkMtXJWHPvNhqYs6Dy8mAGWNaVenGPxkddVJJCA18Lg3G4MA
         1dcsgiOZvUxdzulrpXrHXBG8Xs0RzsMJsjwnAC5XymzLglCkCgwE0BS6SAcVSoXPSfdp
         QwjNcUlsMdR4tZk2t8+Ww7epVG/22v1Mr0siH42eSrVEgeMMhrzBh6rpwor/GZpRKt/0
         KyBQXsMc/1gz0iAsh0cl+2MhxqwgSs1h1/irVYFOXShCW8s4f1d3N50McEjfjaJRV1Jx
         hx7w==
X-Forwarded-Encrypted: i=1; AJvYcCUvbK6CC6BPaIquO4T1zqHmYCSfpGBWtz2Dh7CnVMfrf75LYPBgKGCBLzSfND0WdZEgYyQ44Sv0hWLI@vger.kernel.org
X-Gm-Message-State: AOJu0YwqJRjEIeWlOlpqCrD458619HVrp01FWLKWQFBQrr99hY4RzcnO
	FTYPPgB4ez0eGByWn2pRyTlIzVJXf8+Ishco607IJapketwARaJmTxUsDrqKlPxTS5MUHQlWS1Y
	9kiSf
X-Gm-Gg: AZuq6aK17S3EwOlXeEAZ9GuKZCItTxKzllQI5iJCwzoxJJgHiUj1yU8tn1XD2Yhgw+a
	h803sGXXOYYv8Z9TLEur59xb2+rJL42JYE2T0hrOSaZJJZ2jV72iClihwwsn+DVhODBT0Qfrt5o
	avmNzl+coy4iJi5Nkcgp7NbJwEtpvKoG8X3eAKJmzrThHnRxriiZmX38wkDmt8604pZwUXds3eC
	qdXATPR3FbmPyJOwGo3Vk+Pq3nhp9Nl20e0SxmmpWSqMwjl6uy6Vn2JgFVd5nnsMblBVReypBB3
	6iraOizR5s9Ah9dnJWkttE3wIpSGsTdAq1vJQhcrgyihjsWiQ2DN/eTXMkxkCdGVzf0+EpQN3A/
	A0ILjjso4eItQxM+xImvNtZUCXjpwty97vguYpqTdWsJul//vU0oKVdQu3cJRhMN7pQLWSnpaSg
	KFcqs6zWSDS6pG2YgOEL3NrHfgClPdUFzRbGy/Ff0tK6d5+8We4X7e7Y5gfTvE
X-Received: by 2002:a05:7022:220d:b0:123:331f:978f with SMTP id a92af1059eb24-124b101ee64mr1698024c88.7.1769703629586;
        Thu, 29 Jan 2026 08:20:29 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:eca6:912e:45a4:4837? ([2600:8803:e7e4:500:eca6:912e:45a4:4837])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a9d6b663sm6740743c88.1.2026.01.29.08.20.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 08:20:29 -0800 (PST)
Message-ID: <5d2e85cd-caa2-43a6-a451-3b822bd0ef01@baylibre.com>
Date: Thu, 29 Jan 2026 10:20:27 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: ad4080: add AD4880 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260129152731.154368-1-antoniu.miclaus@analog.com>
 <20260129152731.154368-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260129152731.154368-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-260935-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:url,analog.com:email,0.0.0.0:email,baylibre.com:mid]
X-Rspamd-Queue-Id: 791B7B2129
X-Rspamd-Action: no action

On 1/29/26 9:27 AM, Antoniu Miclaus wrote:
> Add AD4880 dual-channel ADC to the AD4080 bindings. The AD4880 is a
> dual-channel variant with two independent ADC channels, each with its
> own SPI configuration interface.
> 
> For AD4880, the binding requires:
> - adi,aux-spi-cs property for secondary channel chip select
> - Two io-backends entries for each channel's data interface
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad4080.yaml          | 49 ++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> index ccd6a0ac1539..3909e3095507 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> @@ -18,6 +18,9 @@ description: |
>    service a wide variety of precision, wide bandwidth data acquisition
>    applications.
>  
> +  The AD4880 is a dual-channel variant with two independent ADC channels,
> +  each with its own SPI configuration interface.
> +
>    https://www.analog.com/media/en/technical-documentation/data-sheets/ad4080.pdf

Can we get a datasheet link?

>  
>  $ref: /schemas/spi/spi-peripheral-props.yaml#
> @@ -31,10 +34,18 @@ properties:
>        - adi,ad4084
>        - adi,ad4086
>        - adi,ad4087
> +      - adi,ad4880
>  
>    reg:
>      maxItems: 1
>  
> +  adi,aux-spi-cs:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Chip select for the auxiliary SPI interface used by multi-channel
> +      devices like AD4880. Each additional channel beyond the first requires
> +      its own SPI configuration interface on a separate chip select.
> +
>    spi-max-frequency:
>      description: Configuration of the SPI bus.
>      maximum: 50000000
> @@ -57,7 +68,8 @@ properties:
>    vrefin-supply: true
>  
>    io-backends:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    adi,lvds-cnv-enable:
>      description: Enable the LVDS signal type on the CNV pin. Default is CMOS.
> @@ -78,6 +90,23 @@ required:
>    - vdd33-supply
>    - vrefin-supply
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: adi,ad4880
> +    then:
> +      properties:
> +        io-backends:
> +          minItems: 2
> +      required:
> +        - adi,aux-spi-cs
> +    else:
> +      properties:
> +        io-backends:
> +          maxItems: 1
> +
>  additionalProperties: false
>  
>  examples:
> @@ -98,4 +127,22 @@ examples:
>            io-backends = <&iio_backend>;
>          };
>      };
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +          compatible = "adi,ad4880";
> +          reg = <0>;
> +          adi,aux-spi-cs = <1>;

We can already have multiple reg for a multiple CS device.

             reg = <0>, <1>;

So we shouldn't need a new adi,aux-spi-cs property for that.

> +          spi-max-frequency = <10000000>;
> +          vdd33-supply = <&vdd33>;
> +          vddldo-supply = <&vddldo>;
> +          vrefin-supply = <&vrefin>;
> +          clocks = <&cnv>;
> +          clock-names = "cnv";
> +          io-backends = <&iio_backend_cha>, <&iio_backend_chb>;
> +        };
> +    };
>  ...


