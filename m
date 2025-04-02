Return-Path: <devicetree+bounces-162627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8239EA7915B
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A132D3A4DAE
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F1723A990;
	Wed,  2 Apr 2025 14:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fCoMjRgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7178820E70F
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604789; cv=none; b=HlN4XQHRoaMocy2ggq3KKELe/xztLCtD4SwhB9b/nomP2X+JdXINxd2Kd3NLSFnfTvsBIcYup/0Oar36DLR9dZB1/3rtIzh6MTyb7OYeWUvEcup1WxWh5kteNTFoA/UXdOGKLH8xBOqlnALDh447fpbBJ+6RiKcW1da4N7uS5yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604789; c=relaxed/simple;
	bh=an2KdMGCipmCOgRCCaG66zbXLj51zno2bj0u66QMdPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gAb+ngMSCtvilLRlnIceo8gzpvKSgXIkEx0fRaQc9N0RPNHl8sFg2rA9GnLexapQBW3DdORrLAbbw5v+81LKpj/H2sj8IAaHrP7GQ1WYz1xbFjPMZIQ+2sJkoULHIJBrCUXZF0hPxRBbyl5YvIGDMJyQoC7B3dASUTF6T4sMX2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fCoMjRgY; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2c818343646so4282634fac.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743604786; x=1744209586; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8EoS+69ci33BaJ93JVqHmaX+qxJHmm+lVs7qiZGT250=;
        b=fCoMjRgYk2uNA9KHFLyPTi6OSp4vYKm4dvcMSE7TXSLtuGlLQ2KMRo7FJqeWUd0n7S
         9uMjb1YtaHDnZTOX3c8r0jkpedkuqMuWSF/68XaHLXZpKiUyQqFIEx7elBVGbs10O/Dj
         Lkbs2BDXte9EXQOsxrCh9K75Sl55/Y9KQpLKYJi4lq6Xl/OElebsVtKgICzz/17TICQl
         sKAiQtHcnY8P7nEQG1FbwJxGuIv5J0B0t+2fIeH0KWiG7AsuEqbW+QxTmT/gYRnHDFsy
         xrTEcOwI0SlsGHLMy1gl5m9A1Tx6NSr179JIdZSnSVaPKPO1DApryVnvdiJwsmReKgtx
         X5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743604786; x=1744209586;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8EoS+69ci33BaJ93JVqHmaX+qxJHmm+lVs7qiZGT250=;
        b=U2EP1kAyV47yS5zcWXRnYiKCnMpPXD7BIsd1wmBdxymVcNYQNJb6qnMdwLMkgQrdvy
         scc9Ho6uHLPv5TaPzoJ/6/NBIABanusTUezyC6hmY+VbBuWUBLYs/SVT98feJOzIfzAc
         Qor4QXUVe4lBQRPTYyqWyrRQPE3zCuNrnxNAsX3doOx7x8KHFijJD3nPvUzIBaJykaIO
         +eYJMpt/9mQ17g50brdxPIW2jYNQUI1yEzc6A+yhxfD1QxZVGR926Ev/+EK3DfjGz4PY
         Zg87ad2yUTCPaQZV0wheNbvOWcgUQnWas6Hgen4+Mv69xeBUmBeq0Vr8i3Q+ydO7xGu4
         7T9g==
X-Forwarded-Encrypted: i=1; AJvYcCW1lgzEZj1NogwPmMR9vCkp0EkRM0k+JxPwR8RMh79OT1FPUbnwQfkpFY9vdbjMq+N0Q4MhR9gZnr/4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm01tAKx/N1waPi3KvUl9yRA2qTxIVWhH+HHkCllHu59vyvvj1
	cNDWOJotsOGvp8+Tu91BmD7hwmdutnl5achIqefafZWKyqVJ32m9tcxf+NTijX0=
X-Gm-Gg: ASbGnctRu5jsS894mBHuwbqw0OzH0aj46wIwKoqsc5QhSPdAoPrTelhFVsFvR9aRc5R
	BZKjiTg5lnku5w+Ye8jECSqewUoH79n7c/bS23GtSVBihI+uYD616usrzXrYQf011b0bmtOUmsw
	16hTdWy4wuaVbIqqV7jo03/AZNGoWTqAJgEHIfZ8uaVAXdVfSup4TbkWRNyywuemcHIhRZO0cHg
	8MAdQ4SZXvNcQbMbgA3JvETHhLPXed6oikPuxrbs6CXHm/D6uIZp8F02tyFqxdVRq1mnIq8q60s
	THkkdYABNFimgPIGVDiCTwt6nVUBKI0+sFMpDlwT3+28/56clKAC4GxJdc4HMlHu5nnSpC6I7U8
	gw/zFgQ==
X-Google-Smtp-Source: AGHT+IE+TQS+xNEhqvoy35C1XBepZThD9x3tvi2hTYmUV7BCj5f7Twy+Lui8PnuV3OkYvF71xpDaDg==
X-Received: by 2002:a05:6871:8786:b0:29e:2d18:2718 with SMTP id 586e51a60fabf-2cbcf738fa0mr10881898fac.28.1743604786400;
        Wed, 02 Apr 2025 07:39:46 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a91391esm2771044fac.46.2025.04.02.07.39.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 07:39:44 -0700 (PDT)
Message-ID: <847307bf-c612-475e-84bd-31efcbd7239f@baylibre.com>
Date: Wed, 2 Apr 2025 09:39:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: iio: adc: ad7380: add AD7389-4
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Corbet <corbet@lwn.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20250401-iio-ad7380-add-ad7389-4-v1-0-23d2568aa24f@baylibre.com>
 <20250401-iio-ad7380-add-ad7389-4-v1-1-23d2568aa24f@baylibre.com>
 <20250402-winged-ambitious-sparrow-c988c6@krzk-bin>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250402-winged-ambitious-sparrow-c988c6@krzk-bin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/2/25 3:25 AM, Krzysztof Kozlowski wrote:
> On Tue, Apr 01, 2025 at 05:50:08PM -0500, David Lechner wrote:
>> Add compatible and quirks for AD7389-4. This is essentially the same as
>> AD7380-4 but instead of having no internal reference, it has no external
>> reference voltage supply.
> 
> So neither refio nor refin, but your schema says:
> 
>> +    then:
>> +      properties:
>> +        refio-supply: false
> 
> So what about refin, which is also external reference?

This is already handled by the existing if statement:

  - if:
      properties:
        compatible:
          enum:
            - adi,ad7380-4
            - adi,adaq4370-4
            - adi,adaq4380-4
            - adi,adaq4381-4
    then:
      properties:
        refio-supply: false
      required:
        - refin-supply
    else:
      properties:
        refin-supply: false


