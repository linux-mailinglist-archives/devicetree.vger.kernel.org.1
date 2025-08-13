Return-Path: <devicetree+bounces-204395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24927B25501
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 23:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7D413A863F
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 21:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C112E7BD4;
	Wed, 13 Aug 2025 21:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d6OTku5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB42329BD97
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 21:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755119524; cv=none; b=h1TEVEfRzgz4ZFLrej4dm+ZDh8ys1ocNlyyzVF1y1jvU1bOcldCafdA8AA1FzKzEmzA8gvnaqgT6IMiwOFIw0ERrl99+VDREZbJslSMT1ejrzY7a1Oz/SEDtnxC7wTCpFeNV13kcD52KjJT/7ZrMI/MpyBIMg3ZYlnqbKj4sVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755119524; c=relaxed/simple;
	bh=27dZsSSc1FtLXlHOWPlo1du2AL2+YgSkzTVnQqxIWgI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FNn1hYCAFQoycSQepuc+hp1dinpslZJ9Bb92fGD8IWy47AzfgnHFwjRVt04bdrmbsvfWAb33cdzM+WJz6qP5EICzmeBhHcI2GUFA/xVrCBX3wsy55yxJck6EAMmAaGzv4gKAAEZasQVqiJg2e/NVmzd0cb1uT3RUMgOnNWhjG+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d6OTku5E; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-74381fdb5faso148183a34.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755119521; x=1755724321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xf3//GLvnzT9i6WfKITOLt4ui/tLiyvxxLpHItWn5zc=;
        b=d6OTku5EfpvZOZvCDJTaH0fK6IFEjDOXJfxOdWGVJ1S6f5B1yAFp53KrV1d4WxIQqD
         D9aR4j5PZgeMZyI1MMryu+iHlZZAv0UZSMbSse32lRDZpfo3tXc232UbuMpjy+5Mio5B
         DxjVPlsjnOzdRjtYt9K0TQ0WfmNmWNqiROFpS3eKLTncTgB4Owg45lXVNgZFlJoPIexu
         DfiOiaRy9qG+7OfPkDpE6RlMcmrAFWIDDJQPI22qmiRdz44aTSpOsgeTfp40bNhK0Jtk
         1BHoIYQQzTCF4q2yWc15p31RDZlu/WrkdR8ij4dhzSmSostqMQXtDFbvNhO+rrRJbj17
         tOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755119521; x=1755724321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xf3//GLvnzT9i6WfKITOLt4ui/tLiyvxxLpHItWn5zc=;
        b=Zd+SMBNPS/efSZe+R+xdFBQtEHVCHfpM76OWpwouBEjUJvDf99DJWYUoAShoDsgGAM
         AgrXb1SnQiEu27od+gJ33uBma/r2mPpC/B1gLeFKcSYXAC0/FgJtoajODYxMGUWjICQC
         CiD2CaZfIVU6SQwfjCQQfiUSIQ8+w9fUYzEh8Kp92ukTscHVJPpXuRBi/XrHp2lFn/YJ
         fh7Ttu3Yx0Cw0xQ7a3BhsgWIVGgJwK1Q6mAeQcSgU31zyhDXXMXga7PLlG8wEIgnu5FF
         hv8otxjgkHTLxUgMjDyZrxcCFw+ieU20a9TtLixj3FuhpMJUyoEj+JkI97oUg19jqDuA
         HG/w==
X-Forwarded-Encrypted: i=1; AJvYcCVKC+SZ8nS7WvA0IDmlBahg4PaRpVOITs8juxiBZXNrILalwcx9IJk4hOFuuCeygBunMRmvCV4O5szh@vger.kernel.org
X-Gm-Message-State: AOJu0YwoFMrX1vkZb0DCkX0uuQOxjqhJoGI/5geIYyWcq9wZe107Zg0L
	SGlDXPPmnAledy+oTh9VYoG7yKZBpVLC83JXBYXIdPEVM+NsRkLj83/VeyjJJ8BjdNs=
X-Gm-Gg: ASbGncsKWXnVFGd/4ZTIzVtyDIruMByXdZBvDUYDz7q25YzYOyysMhzHevze+0ry7ON
	ga4bEEiwa0UUaRqdowDFq5uIQaNOvXh/WvuY5gK1TDEBOlI+vc1CjC9F6pB7Vf4PEAj2mvUen2e
	sneHgDBsff9aQ9R6+iadHr3F30KkbNr8jVLTWsylr1+tS9gJLvdXE7BrCuCD5CARR3WZ7JMrSIU
	H3osvddld0rOKH6cYU5N3lDILBYGVmfRk6i2bgPDNzc3kg+TB6HmOIFB71Jq9Tfw39oQa+JO4p6
	cz8EwFp0D2ATZ0aLSHBOTM+eKsUBWhBunYLZV9dvS8sN6ZPFWtNg3SjCbW+4rKxrItQDIaAYMLx
	aqFqqh5NuFWbcRsXwOdQFdmwprRGvH+dQDt4r+P8LGiBw7lO4ylVwHOPby6eBjKQR63YQqxk46U
	zeKxOwVY8=
X-Google-Smtp-Source: AGHT+IF9n+F8e1mm/IyBfw7ePpfBTnEUME8yX6HA27qwsIWM/khGHlIzwyYXURZx3W+3vhm1Xj1CzQ==
X-Received: by 2002:a05:6830:60db:20b0:742:f93c:194c with SMTP id 46e09a7af769-74382c06774mr157158a34.27.1755119520991;
        Wed, 13 Aug 2025 14:12:00 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:ae46:dfe2:81c8:dde? ([2600:8803:e7e4:1d00:ae46:dfe2:81c8:dde])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30ccfdf5075sm180592fac.1.2025.08.13.14.11.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 14:12:00 -0700 (PDT)
Message-ID: <623c0ef4-98c0-410c-abf3-fa9563f52688@baylibre.com>
Date: Wed, 13 Aug 2025 16:11:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: iio: mcp9600: Add compatible for
 microchip,mcp9601
To: Ben Collins <bcollins@watter.com>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250813151614.12098-1-bcollins@watter.com>
 <20250813151614.12098-2-bcollins@watter.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250813151614.12098-2-bcollins@watter.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/13/25 10:15 AM, Ben Collins wrote:
> MCP9601 is a superset of MCP9600 and is supported by the driver.
> 
> Signed-off-by: Ben Collins <bcollins@watter.com>
> ---


Please include a cover letter with a changelog in v3.


>  .../bindings/iio/temperature/microchip,mcp9600.yaml         | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> index d2cafa38a5442..d8af0912ce886 100644
> --- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9600.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Microchip MCP9600 thermocouple EMF converter
> +title: Microchip MCP9600 and similar thermocouple EMF converters
>  
>  maintainers:
>    - Andrew Hepp <andrew.hepp@ahepp.dev>
> @@ -14,7 +14,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: microchip,mcp9600
> +    enum:
> +      - microchip,mcp9600
> +      - microchip,mcp9601
>  

It sounds like it would be useful to have a fallback in this case:

properties:
  compatible:
    oneOf:
      - const: microchip,mcp9600
      - items:
          - - microchip,mcp9600
          - microchip,mcp9600

>    reg:
>      maxItems: 1

Usage would then be:

	compatible = "microchip,mcp9601", "microchip,mcp9600";


