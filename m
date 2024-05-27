Return-Path: <devicetree+bounces-69326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2436D8CF9A4
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F30F1C20D08
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0214D1755A;
	Mon, 27 May 2024 07:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PZORPspT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C27716415
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 07:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716793249; cv=none; b=JWy7PcTa5jWnGKpiLz9AK7dZLBifplIok5s+eX7Zs1MNjKyzFFgUXM35uI0foW5xkjIWBXta1DoCOSz1XqKTwxhsUSgm3v9LDLpobO9Vd7L3heRWdYwh9ooKgcq/sw3NFa/TH/ynj+IwalXyzdnbGdkSZ7CjqSgkEm8DTu1kTyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716793249; c=relaxed/simple;
	bh=ZBjRRGQfKQl5/b05tZA4zkWp+A2rO2OQzVfREOizFgI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LfIVilkQZ/HhK2jh+sy4zAuy0MV4qkUC2kE99tSTLVwYKWuN7dowDArCNARw89zGiSKvYMhmoHDnfrclUG611amDKoGFLFLysxYdINA/KtU2TUeEVZZxDkj6AvEdS6Y2Yhla6A98bTA9ecfDj8eybKoscj2YyvUbQosku0AvFOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PZORPspT; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a6269ad9a6fso320411366b.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 00:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716793247; x=1717398047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=O8uegtVJ9to2aA6iQ6J2dzPoiPz/JfrWOXr2v1sY4RA=;
        b=PZORPspT7qPRDFMOUebXTpe+pVvsAaMg6rydPSONRYfWI8EICHx1i5LL7sDpeAsic8
         rBla4TTwcs7BDD7LhgBmufOVHbTMQ8hJC0uBlWYJrfp/lasFvvEBfEVOsugBNn4m4r2V
         i6iCfyEBiXG1exZJzraNB2mrQbV2ea7eFxIFAk/NIzqdpIuN2+aWZ34OPC2ig4MnuPUQ
         y/crWqkq73LdvWphXS2jftJQbpLazCqg5oIh0EdykAJa9vT2b5JDI760Vyxq5FqQe9Gs
         OQfA+v4iWEsKkWgXUjbdYgYkEqZ/5mCvoFjx7KVX6NLVKFjmuzdONe2E+jB0iz0I0kQu
         p8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716793247; x=1717398047;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8uegtVJ9to2aA6iQ6J2dzPoiPz/JfrWOXr2v1sY4RA=;
        b=vFeEmwy+gMLKtAtGFnSg9GOmG2Fp+gDRT3Sv8urMJNwTNLSP+WszW9qUuyDa0vhadx
         vAaVSDYiy+YTobBBPhC6ZJiJqG2GF7QiFwgr2UbAImcKXkCfT+h9an9J3aTHFyNaaxZ4
         EvzWc7Gx11HEdCb228f8mHB8Ni/Yx6PTkrZLYthqPrvswe5LIJzJMkXYVpLI8IQwDHrV
         WlVBnatIjY3ZhUBLZkrGD3/Fn3XjPbh9Zsuez69noySCgIpKyU+Yk4KP4eyLs7I4jig5
         v4FgbID2PcxRrrrufRGCMllKtKLCBD5CWBrvQgzi5J9BTwHaDVC/85xnNFABz4otokBv
         4wbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlEC/MBHoWx+vY0eNux9qv6tG9XdxmYvs3f7OgyYnahIDBQTX9QQ9zZH8XGeRPAF7Nar44LR8+KKU4qanhIgx8JAylTO0nb6UCvg==
X-Gm-Message-State: AOJu0YwutfF+ID7OPyphxUuhPC69WODkHiAXmMJFMCn3W11PWOpeIPXK
	WD6yTbuMPPVbXXS4tcLw47uQu3Y4EDn2dLbQL2jC6Hq3hdt2lsHS4pWuCEPDFyw=
X-Google-Smtp-Source: AGHT+IGaeKhVHOqbW9aadAG0MXQb/uFbWeIPaa2CekoIThD5I6huDQAkltmyjKbIoa9Tfw7bxF5UQg==
X-Received: by 2002:a17:906:adcb:b0:a62:8ee2:16c1 with SMTP id a640c23a62f3a-a628ee217f7mr385665266b.54.1716793246465;
        Mon, 27 May 2024 00:00:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c817974sm457554866b.25.2024.05.27.00.00.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 00:00:45 -0700 (PDT)
Message-ID: <834e18c7-21b6-400e-aa61-a4f591027620@linaro.org>
Date: Mon, 27 May 2024 09:00:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] thermal: Add support of multi sensors to
 thermal_core
To: Alexandre Bailon <abailon@baylibre.com>, rafael@kernel.org,
 daniel.lezcano@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240524143150.610949-1-abailon@baylibre.com>
 <20240524143150.610949-3-abailon@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240524143150.610949-3-abailon@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/05/2024 16:31, Alexandre Bailon wrote:
> This adds support of multi sensors to thermal.
> Currently, this only support the get_temp operation.
> This returns an average temperature of all the sensors.
> If defined, a coefficient is applied to the value read from the sensor
> before computing the average.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> ---
>  drivers/thermal/Makefile        |   1 +
>  drivers/thermal/thermal_core.h  |  15 ++
>  drivers/thermal/thermal_multi.c | 332 ++++++++++++++++++++++++++++++++
>  include/uapi/linux/thermal.h    |   5 +
>  4 files changed, 353 insertions(+)
>  create mode 100644 drivers/thermal/thermal_multi.c

This does not really build...


../drivers/thermal/thermal_multi.c:249:38: error: initialization of ‘struct thermal_trip *’ from incompatible pointer type ‘struct thermal_trip_desc *’ [-Werror=incompatible-pointer-types]

Best regards,
Krzysztof


