Return-Path: <devicetree+bounces-213619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A69E9B45F8D
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64F5C1CC6094
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 17:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B08A3090E8;
	Fri,  5 Sep 2025 17:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KVM/5kj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F91B2FB097
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 17:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757092002; cv=none; b=riBpyZYwlPQeGfCMUkDgC82fuLrTx4D7TOlC8lDSnTQv8aYR8KWIe5d8av20EC2fLtev/TYS6kukX895JAGGRTT4FGbkQnmGWic5If8DwiIicfFsMRlRPv7sBoU6L7P0J4NpLOY/4I+MNpcKTRiy5Q+LvDYl89huICCei5XljFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757092002; c=relaxed/simple;
	bh=QkflFLOyAsxpNTIsEZguoI9ZFg/E7isbqn/iXildXS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iRvKGg7R8xeaDx7wcO59ft5+AEsey6EbDxwW91mtF6IYlCL+bZVD876moNF9w1+OyPT2ZDPx6p9XA0YpAD1GKUlq+QqFEfxQHLFi+3Ev//bkE1dSrkWzgfIHPdDMxY23gwsXIW4n3WHeaez8SWL/L7l7cC7Ug672gw9T3Uosx3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KVM/5kj5; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-74526ca79beso2027618a34.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757091998; x=1757696798; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=anFqxnxyI7swraoxgwxGeFgFBlwXlIQh106TWK0o5QM=;
        b=KVM/5kj5+ItiYgoroUyJ+4HQYO/s4jPuEdhWYjiAUwJciP9vtsfgK1cpt6VoatWU4S
         KKpV7icHjs2OVfnd6sSvleSMfbO7LRJjs//iGM+cg8389x+gHCFxnLbcUjKv9YqniaVA
         Q2HpjmT38+qmJTU0g8lxtNzGCNxfQq5JPUTFzZMieeFdHV55dIfOV5bPwS2XRxp6tIwj
         8uGgwYqR7JZEQpC5g+cW+tRzc5KxiMR7+hGy+czZYo3HUjzVy6VSJlPkjIAsXsWrm5OI
         7yKWSUs8t9HGVsnT3okvBIISEhVNW9BTcE4eSQIU5bX309/19gcQ4Yoo3qXqGes3ZTZ6
         eWxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757091998; x=1757696798;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=anFqxnxyI7swraoxgwxGeFgFBlwXlIQh106TWK0o5QM=;
        b=SfAavUL96DqS4iN4lKH8ZkTBfW8cN3YEou8P9lcvwiuTvyrmN6wyTdPYAjUpiMLjzx
         qO2wUr4+HMzZL/JOimRPSUi0TzWdwdqmJO5sb+Utsj8cKdIrWFsLahaxAZZVbIMlfo3b
         z4GKnHiFa8K3ekKTS9eVdRsLbCLfv7ngYxW1sBamrEM2m3bFotSFw2DyMPSIIzlNL1rP
         Wjviu7Q0R64JfeRcVtXqfXhu7xwfUXHcOETrJAQLA4EyD/35oQ3uUmzH2eVbA13IhN0K
         n0EPV9EMnDytEfgXV8flK44xOaubV6AgYfBgppKGJ40DkvoDdpahaBbQqywBnMEleNzv
         9rMw==
X-Forwarded-Encrypted: i=1; AJvYcCWi74U42mJmvo5Y2Q/gs37hQ5sptJ8rIhK9zRqh0vzynWTVCCwp9FtKNx/SE0HZN15iAL+0uwv2smwI@vger.kernel.org
X-Gm-Message-State: AOJu0YwhSwibzudDxYeMCr2Iz/sOnXBqxTO3TWl/X70RuEZHxp83UEGB
	TTGTQkVK3mxd1wSPo1S2xRbs+i8CARZ7EpNxvgUQWWdblmYHxH8bj2WgMFOXjk1Zgnk=
X-Gm-Gg: ASbGnct4lF9Y3a4kJ8Q8+b2zLeexGzrSpd8spj5cIFSnysMAtGVH6U35rbdI/mc1qkZ
	aQ5zVXyTlr2Ok4FtEYHole+HiPiXPWljy4nUG1LYREI6eaa3UPep9u1n42vpeQLTaMEuMOMa/z+
	NrFYl2zyEBOhxtFqpqfjo0wUpbcYuXByzDC+acH+P1RKjx6S3U0g0Qu0oToKAcGmAnYfT/2BtYM
	YwUtXRcU3ahvX+zyV+6nEdgW9USLS5CqhK1oe207BolkRXs9Eph2Sv9dbZARfagzx67DcpCsNlk
	0WiWayhOj/OFmnoNgxd886l+LWbzS7SMDMDr0SnkJorS892l1Wa//uWiNyQvsOMHg3qhK1BdltG
	LQ41K/HHCmhiFXirgzyCu41NkCKAqUsUalgkFeMiIg9zVXSvPzeXwg0GqFcvvBGoUEzMItIX1dU
	1JoxxJ444=
X-Google-Smtp-Source: AGHT+IG7ghMIe2cxnj+pk3rXW2GvzmcdmR1NSgHSvJ5AtFFp4f+XYMewwsOhZYccj4QGq4HyHz8QTg==
X-Received: by 2002:a05:6808:152a:b0:438:3ae6:d5ab with SMTP id 5614622812f47-4383ae6d6f3mr3823162b6e.41.1757091998124;
        Fri, 05 Sep 2025 10:06:38 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:52e:cda3:16cc:72bb? ([2600:8803:e7e4:1d00:52e:cda3:16cc:72bb])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437ffed9f15sm3544740b6e.10.2025.09.05.10.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 10:06:37 -0700 (PDT)
Message-ID: <5d387011-7560-48ac-8f92-bfe0fda7e71e@baylibre.com>
Date: Fri, 5 Sep 2025 12:06:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: adc: ad7768-1: add new supported
 parts
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
References: <cover.1757001160.git.Jonathan.Santos@analog.com>
 <46842d4cf2c1149bd64188f94c60ce5e4f3b2beb.1757001160.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <46842d4cf2c1149bd64188f94c60ce5e4f3b2beb.1757001160.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/5/25 4:49 AM, Jonathan Santos wrote:
> Add compatibles for supported parts in the ad7768-1 family:
> 	ADAQ7767-1, ADAQ7768-1 and ADAQ7769-1
> 
> Add property and checks for AFF gain, supported by ADAQ7767-1
> and ADAQ7769-1 parts:
> 	adi,aaf-gain-bp
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v3 Changes:
> * Renamed adi,gain-milli to adi,aaf-gain-bp. Now it represents basis points
>   (one hundredth of a percent) as suggested by Krzysztof. Description was
>   adjusted.
>   Note: permille (1/1000) was also suggested as unit for this property.
> 
> v2 Changes:
> * adi,aaf-gain property renamed to adi,gain-milli. Description was 
>   simplified.
> * default value add to adi,gain-milli.
> ---
>  .../bindings/iio/adc/adi,ad7768-1.yaml        | 44 +++++++++++++++++--
>  1 file changed, 40 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> index c06d0fc791d3..c2ad8e585586 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> @@ -4,18 +4,26 @@
>  $id: http://devicetree.org/schemas/iio/adc/adi,ad7768-1.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Analog Devices AD7768-1 ADC device driver
> +title: Analog Devices AD7768-1 ADC family
>  
>  maintainers:
>    - Michael Hennerich <michael.hennerich@analog.com>
>  
>  description: |
> -  Datasheet at:
> -    https://www.analog.com/media/en/technical-documentation/data-sheets/ad7768-1.pdf
> +  Analog Devices AD7768-1 24-Bit Single Channel Low Power sigma-delta ADC family
> +
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7768-1.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/adaq7767-1.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/adaq7768-1.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/adaq7769-1.pdf

Only adding one property seems a bit incomplete give that the ADAQs have
significantly more pins that the regular ADC.

E.g different/more power supplies; gain-gpios, fda-gpios (or don't allow
gpio-controller if we can assume GAINx and FAx are always wired to back to the
ADC and not coming from somewhere else).

>  
>  properties:
>    compatible:
> -    const: adi,ad7768-1
> +    enum:
> +      - adi,ad7768-1
> +      - adi,adaq7767-1
> +      - adi,adaq7768-1
> +      - adi,adaq7769-1
>  
>    reg:
>      maxItems: 1
> @@ -58,6 +66,19 @@ properties:
>      description:
>        ADC reference voltage supply
>  
> +  adi,aaf-gain-bp:
> +    description: |
> +       Specifies the gain applied by the Analog Anti-Aliasing Filter (AAF)
> +       to the ADC input in basis points (one hundredth of a percent).
> +       The hardware gain is determined by which input pin(s) the signal goes
> +       through into the AAF. The possible connections are:
> +       * For the ADAQ7767-1: Input connected to IN1±, IN2± or IN3±.
> +       * For the ADAQ7769-1: OUT_PGA pin connected to IN1_AAF+, IN2_AAF+,
> +         or IN3_AAF+.
> +    $ref: /schemas/types.yaml#/definitions/uint16
> +    enum: [1430, 3640, 10000]
> +    default: 10000
> +

