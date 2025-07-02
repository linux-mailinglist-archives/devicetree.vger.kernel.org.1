Return-Path: <devicetree+bounces-192340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C34AAF64B3
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 00:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B92E7A83BA
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C82242D84;
	Wed,  2 Jul 2025 22:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y48xNPQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F3C24169D
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 22:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751493672; cv=none; b=d2PSO/PtVnONAFBU3zLq7sLnc2QgBN6dM8BuAz93rCDrRqSRqzUkaOlPahJRoC6ooXwFaijueUvlt8qEp28PnQGXqktJZg7tbjHkGqdgBdK+ct9UNLWaf03bu4TeCGE5zqwwEMzaher+wdLDDYq7hlt/KDSkXU/cRkWViVbBsVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751493672; c=relaxed/simple;
	bh=hjhHlOolfaZNDUs+RdvLckgniM7ltNQJFdfTBZFssqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=GHhnHbktsnm7Hvy0pyawvXgk/zbyvvFqQ7n1Hw7+NH+fviYIfR3wLVKA46kMu9Qc4p+m496jX11nvzzMg5WyQJrdUdVEMyd+DsVU91RqtOHlG3WXbqMRenz8xOt0Na2Q1TsAH+wXsB8trxkrDIMe7MAKI+CQOnvohLkMiBHWm8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y48xNPQ1; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-40ab5bd9088so4509865b6e.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 15:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751493669; x=1752098469; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DKgWS7/qdk7+Eg50DbHdDl8mGYC2JyCvr3ER8bCDhe0=;
        b=y48xNPQ1VGFonG90ers22n9CaIGu/U0THcQn5c8nBkrNDl4s9PaFjS+j1I6g9WKNKk
         AIt90eg9oaV1EgKUwMKqT6KK+6qZm0ycbC3hNp4m6EMABEfx09alAUON+kWaoxtIKcLc
         KpF0R66j9mNHBxgK3gVzHPFVU3zoE/wqhAbjqow81uQxg+cfY447RdnKngepHdBwkEoA
         erkhwbWUhLFkvzceqJ0cHWv3nN9vR0F3ZV9QQRRlcAkjmr2yRwkjT/VoCkPEvvC4uya0
         +4NGqWis8xoTuzKwFm7oiFKXthN/Lw8UdUwMqdkbwyOEA+arjT+4IL8OlrccbhJhMKY1
         F5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751493669; x=1752098469;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKgWS7/qdk7+Eg50DbHdDl8mGYC2JyCvr3ER8bCDhe0=;
        b=lkHiYKHvr+99eV1n6DrnLvqqHEjc9SjnmCfrdTqOlS+yWh6LzytXU3SMDY/Qru/TB0
         0Q3k6OO4ghTKqzCiTXQur3KYgVJUJWzbPK++JzRG+8RmWVYAtYKFNaRzsqufGXskpLgd
         y8SPDUWIFq1hAvr8t7ZbT/h7iL793kjEMgrcyqiKDxUuogzDfnMyDYTla7iCF47Bow0r
         Gw1OUP+8KRopVFsI1jmaQS91SYl5GIArmIgenStshxKOCt5ngRzLckMiOopVkt5Xkmrl
         4iQQsazDN71rQNSPpWbt0b/z+pS9axW4uV8BPktwSbPXfEJKNJhVhFM7Depme6U0dLrU
         R1xA==
X-Forwarded-Encrypted: i=1; AJvYcCXrPjMrPhrnvCTyZU5AGEb65ZtoB4LeAVFJlF0A3gzMNyvFwQbu5I0wyHkYiCcZmv16yOrC+gQu+K1o@vger.kernel.org
X-Gm-Message-State: AOJu0YyDS+wSNzAm6Xs0AFYhjn7Ot/DN6abxloUc8UAPdh7HVOTGOS2L
	ogYryn90q1Pb46CNvvvqZbWbP8NHQ6i0oG5jT7UDcNYdlfFUNrmX/rk+QpQa2fKbbJc=
X-Gm-Gg: ASbGncuv6NpYXZohVh2TqEf95CJZTv/eA1n6ucI3ny8KOts5qEibHqEyMzbrRi+lnm3
	S4tKhX2EpUyu7qDaKvorsVRlNILBv4kI2Y1aAslb7PU973j2RMtsKuVvbLT1KS9hkqW64CkvKBv
	mDnzDqzt8sVuN3n1a0+GfRquEpGDXaOr8ue81Sv2geAQZGzaFWPhs8YWLtgSJEPoMxud6vE0dkc
	1bZwrp/0WgW8aUsebB2FV2YSkwqTegtPIdoMT1yyaAh8C4SsViyCxg2OwdGGTDMruT2HYwQeCl6
	mW4cQhreBeyAObZLH65UMM895hV8ba6uEJBlDjH/6KA8D9Zl6Y8kEfmNcKxQVEeUb4UZQ5ooe70
	rGILZ7FFVeWG7dvHbzKCLkVKIN0LTBHDOouZVtwE=
X-Google-Smtp-Source: AGHT+IHKZNhePlF0+T6dWuoOeOIoDbpvywH95ABuicUB05Dmc1aVoalsdNueqPirXs97Btv0KkGWcg==
X-Received: by 2002:a05:6808:e8a:b0:403:3673:65f0 with SMTP id 5614622812f47-40b88b25dc6mr3169424b6e.31.1751493668851;
        Wed, 02 Jul 2025 15:01:08 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:5c00:24f0:997b:5458? ([2600:8803:e7e4:1d00:5c00:24f0:997b:5458])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b32420c83sm2747613b6e.36.2025.07.02.15.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 15:01:08 -0700 (PDT)
Message-ID: <a30cbe3a-7d1b-4072-880e-99688657a093@baylibre.com>
Date: Wed, 2 Jul 2025 17:01:07 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add support for MT7981
To: Aleksander Jan Bajkowski <olek2@wp.pl>, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, zhiyong.tao@mediatek.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20250702214830.255898-1-olek2@wp.pl>
 <20250702214830.255898-2-olek2@wp.pl>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250702214830.255898-2-olek2@wp.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/2/25 4:48 PM, Aleksander Jan Bajkowski wrote:
> The temperature sensor in the MT7981 is same as in the MT7986.
> Add compatible string for mt7981.
> 
> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml      | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
> index b489c984c1bb..ceb914dde15b 100644
> --- a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
> @@ -26,6 +26,7 @@ properties:
>            - mediatek,mt2712-auxadc
>            - mediatek,mt6765-auxadc
>            - mediatek,mt7622-auxadc
> +          - mediatek,mt7981-auxadc
>            - mediatek,mt7986-auxadc
>            - mediatek,mt8173-auxadc
>        - items:

The new compatible with fallback should look like this:

diff --git a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
index b489c984c1bb..14363389f30a 100644
--- a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
@@ -32,6 +32,10 @@ properties:
           - enum:
               - mediatek,mt7623-auxadc
           - const: mediatek,mt2701-auxadc
+      - items:
+          - enum:
+              - mediatek,mt7981-auxadc
+          - const: mediatek,mt7986-auxadc
       - items:
           - enum:
               - mediatek,mt6893-auxadc
---

Then you can validate that the next patch matches the bindings with
`make CHECK_DTBS=1`. I would expect it to fail currently since the
binding is specifying a compatible without a fallback but the .dts
uses a fallback.

