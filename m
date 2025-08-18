Return-Path: <devicetree+bounces-205831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D79B2A816
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 500871B6331E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 13:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9C3321F3C;
	Mon, 18 Aug 2025 13:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BVuujlT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2098F2C2340
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755524736; cv=none; b=K8cyGyhko8kTT59gxcH65z9TmCQBzkE2hJ9AEaLp03bVMjXpH3lUe+4ogGcve06NzJjZ9+sy02ic6v6RNFe94M0gg1tQcKCz7CXfWKv3ZxwcmbYgdqj6FfJLPcRvP+AnQ/J2PHq91RY9XeTP3bPkS32+Umz97fapqUlBuYKEXqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755524736; c=relaxed/simple;
	bh=STUgQqWAjMIDSo5i9CNXFPPNs8IXyZkPpT1rTamUjss=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BlxNOhOahTD1iNqV+/S6Czkq7to4jf+jQWg7rokGj6DKZzgt/iHhggG1QK8SeL5Ty6anGGzZUKiCd+6N2nhp9mp3LpSVk3NX7BDRFo/+LqdsIxS3COy7tywdavG2VlUUvPp19abV5gdDWV3osR2vD4NSTOmgTcwmpthUOPiCcrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BVuujlT3; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-30cce892b7dso1809020fac.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755524733; x=1756129533; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=10gZZQnBGMVk+f8qeUN3o4WqLNCEED7akiLQmYC5IOc=;
        b=BVuujlT3Q63n/8JHdVtF2SjZ2L+RzHDNF6eZkZFWpqET/PmOeG/IzZX8QsL6loycTJ
         71sXQ5lvHqx2sxYv2jg+Ge3lDRW13u1XEAEdEjSrln4t+ZKyXayShFeUW944Ke6l0KEZ
         VfnplEN62blktyihRxTgGOBl2Yj6B0CBIrSZOo2cW1APcqrVoZ2J2sCONp1OfOhlNjBc
         5IKLsvKe3KRIxW28GgpYGXo2DNQrKsvHnOmGW0NFgHcWQeYpSsBb2yCqXsSghU/kssyh
         5oqC+SBhBaYxBRwEHon5kznX665yTcx1HhAkCAtfsXcEHS745J02o+q9rHJMYd+IK6RU
         wsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755524733; x=1756129533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10gZZQnBGMVk+f8qeUN3o4WqLNCEED7akiLQmYC5IOc=;
        b=ePhbIE2zVyWSdEx1yZzE8ltaDUUZoKcruexWJsfvQp37AukJmudNX+Cwj8ujTcE1A4
         VcOzAnVHEmoI6kcaWvgVydBIxlx+FJidtq3rLcLe/GIml5YsTyDrF+mZsH3Rs8n++GbV
         phSnybs0xkCh+qnR2CX55hbABiYyzxQ377lmonRtTQBZRcPR8Ke1rjKVk3Fqfrmm+Q/O
         o3NUT4IQt8m7tjlInkP2qTtiadv2x1Fj6SOLKgaKTf5f81ZOE5ugOfWBgFORsEDAfR54
         7aHFt3E7jxV/qS56OEHGLub7Af0yiH9XgRuHeK8zJgGCDQEtyxMENR+0YHgRToUCQNOz
         iIKg==
X-Forwarded-Encrypted: i=1; AJvYcCWQ+rtjwfOVQ2zQM6EATkjSOENZHMykHHLQ8Yrm8Bd6uCBmnZoYoELdvnofj8Ju2jWPPO1yyzqsuGt1@vger.kernel.org
X-Gm-Message-State: AOJu0YxUTDANrUL081lzfDLTcdOKmn6wxB7fTYIK7C21zv/N0ePcZN3l
	WSx9sxodi+ANCau/OoE0FzYVGI1SypYucV8go1Fh3SDFTltfF+lNFFtgvFQn+v3LLCE=
X-Gm-Gg: ASbGnctWrY0DJGrbxxpmBPHtDMTjbO+zdgfA0uYE++lTO4VNNPT2ZQidf4QALF2pTDN
	K3R5ujwIOruUB/BlBNqMQ+inFba/R49ARQQKBY2WsvowRiqoUgVe9x/xTeFVqaZypZMmnal+F8Q
	C9JGdulFnC2CHreaiY2rhwg65RnBTn100s2qA+OBbFXH6CtsHPeZDGp0eDjK7HVUfiTv/tv6JqC
	49GdUnzbOZlaJZyn0vXVJM29wiT5Uk/RMqdTTPvDG2VKzaPmd6fjjqzisYko82vSA84bZeSuw94
	HRSeVs5e4dfGxyVEIQN9/mKKwKsbwZe3TtM0dO45Dm3x5UGfdz+5zYk1fi45N1iLtYSOx2a750J
	V/fQSVEAYjSdeFQZBMy6Z0YdtBDjPv8VyO07dseifTqBHc03O3O3voegT/ibX6E2ZoBr0EkZqXk
	w=
X-Google-Smtp-Source: AGHT+IHkEIqXEKYW0YNfPwdn51TV3aOxjzPemzFAD5aoQACwyHFGGzbO2hendQDxiUtyNr97EYzhxA==
X-Received: by 2002:a05:6871:7283:b0:30b:af6d:f92 with SMTP id 586e51a60fabf-310aaf6f1ecmr7757906fac.34.1755524733102;
        Mon, 18 Aug 2025 06:45:33 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:ee1a:f057:94fa:9a73? ([2600:8803:e7e4:1d00:ee1a:f057:94fa:9a73])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7439204e5easm1851721a34.38.2025.08.18.06.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 06:45:32 -0700 (PDT)
Message-ID: <6c323896-10b9-455a-ae8a-bbe1e2a80e5d@baylibre.com>
Date: Mon, 18 Aug 2025 08:45:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: iio: adc: add IIO backend support
To: Ioana Risteiu <Ioana.Risteiu@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Ramona Nechita <ramona.nechita@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250818131253.8854-1-Ioana.Risteiu@analog.com>
 <20250818131253.8854-3-Ioana.Risteiu@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250818131253.8854-3-Ioana.Risteiu@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/18/25 8:12 AM, Ioana Risteiu wrote:
> Add the generic io-backends property to the AD7779 binding to enable
> support for the IIO backend framework.
> 
> Also add the adi,num-lanes property to set the number of lanes used by
> AD7779.
> 
> Signed-off-by: Ioana Risteiu <Ioana.Risteiu@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad7779.yaml          | 35 ++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7779.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7779.yaml
> index 044f92f39cfa..4a212c8bc9d3 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7779.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7779.yaml
> @@ -80,11 +80,27 @@ properties:
>    reset-gpios:
>      maxItems: 1
>  
> +  io-backends:
> +    maxItems: 1
> +
> +  adi,num-lanes:
> +    description:
> +      Number of lanes on which the data is sent on the output when the data
> +      output interface is used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 4]
> +    default: 4

Isn't 0 lanes wired up an option? I.e. it is possible to use the
chip in SPI-only mode. So it seems like 0 should be the default.



