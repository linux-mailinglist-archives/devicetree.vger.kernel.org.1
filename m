Return-Path: <devicetree+bounces-40575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D71850E16
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD3551F20FCE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 07:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04A73C15;
	Mon, 12 Feb 2024 07:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KNJB2oCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B640EACD
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707723204; cv=none; b=iOZPPnUNREx/CQgwV/k2/JQCdv0AvuriphijT9QUPPIu0uqo+jfCfSGP57CxyKGTBA+Kv2QP285BIYfW+SKsd0XEyN+lHxuUKZFVT8iv1DcMhSt4sAJIujfb1motgFGRaMWly4esQ26Q9IJ5cK4wH8PYD8/EfbqUpKIslYJSwhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707723204; c=relaxed/simple;
	bh=ygG22VQHhvbC9ayaAxrFlAWyNS8EkAaHItkK7+npiLo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wq/pZWequewQTG1t3njBfnzQj5b/mkzNxQ2dggzF/Ew8wphF9SmPekT2aacsd/P3H57XPywWhaAY5N45kfddNizcaY70FoMFdYr1BLQN5qvFsiykhYC6OBiRFU0WklXZA5gsYK140rr47N5NaqVQ7pseUgA28N5wOIwyuw1ihDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KNJB2oCp; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5114c05806eso4504947e87.1
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 23:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707723201; x=1708328001; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ygG22VQHhvbC9ayaAxrFlAWyNS8EkAaHItkK7+npiLo=;
        b=KNJB2oCpa5SYh5Ki+WMM9YbRmF6rod5/L7vcPgvHBZOKsOICHjcjHuhho3t6MNRyO6
         ut+NZI3yarh7lY69vltpsKaBwwm3DmZAuF54JkkRWICI00LxM4xnhTck5HW9Xf1cs5zf
         nfUaNcQhZ8nC5cHnZdeSR3yrv9QsfmRdAM8hDgaWgMZyOoU9/dCQ8DdnxLiy79B//gRU
         Wq0oTQHY7vF8RzFQ0/qKSw4n2p0mHNId3AqeBfoQXnaPGV+4U9pSEkXk0PZcKY1Dk+Bi
         fgZ1+nyEXYBaoKYqKoi/Am0ObYnjswZQ1GvnNQl7/GzAE4BjYrg57ZOcx6L3HqQd8cVg
         GSJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707723201; x=1708328001;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ygG22VQHhvbC9ayaAxrFlAWyNS8EkAaHItkK7+npiLo=;
        b=Q9+akIS0FA+6kkp0ACy0CO6i3nmvkm80eFUIi73IBMHC1DIKiwhf/cmC4dy42Kv1HV
         tImM3Nd3Tn+Om17zrO9tfsgxyeakfAto3PslTHLQwRe3UhwMhDixY6gni0m5HZ9Y7w+x
         Y0dy0QYGgnG1F++Pbd4FNpU709xa0EQk3ldHEbce56cnsUWu5l5vS/ps9vvp2afOCWvt
         ApBkSkDN1pbo7k6zkW4I0NCaLrIsI5pX8gvMc6OXKjB8ZN93LgimfNFKNDXgmoFc7jUE
         qZ/Bt8lJWezRhTlAgQ+FZ8DPB+xphpBrBucAquLnf8KsCO2K/A2zKanYg2Z81ZcP09oN
         i7zw==
X-Gm-Message-State: AOJu0YxQGDxbVUDq89GddiHq0O9qonvsuTOl+RMKjG0e6HyiI1QgQ0CF
	tsiq7ufNLaU7w831Ls+eJEDKcDcewAN02u53JUiiBUDgrjwoZfxj53MtEcA+qT4=
X-Google-Smtp-Source: AGHT+IHLSkZWKaNmWlNL9pYdze9pA3B1kD4UUGtcaeK/OXGhpQlYvF4EUq9rFTQe6hfTmggDhxpoWg==
X-Received: by 2002:a05:6512:239c:b0:511:82c3:bc58 with SMTP id c28-20020a056512239c00b0051182c3bc58mr4503826lfv.3.1707723200840;
        Sun, 11 Feb 2024 23:33:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV+03A+6CuPWbhcWQo3yDl/JT6bn5xDsH4xCPF8WJ20IdI+TGzg9VGbRnL7q0D3IMs4ERizmJx9J/fXDJ0PAG/M4T0TKC4YTONmZTlF2alqsHyNwLi4sWatj+uU9DeIZyapKNRDOF2YQsYOPqFLy6s7dQPjyFWoPPPDQoXaoqGrmzqisN4ZJyav8y+f7DKVrxuoh5n5zXuk9icDRXeHGjglvC3keVXdstdwN1TnSvahK0xzNqVgCOiCIPOH6NZ41v7FbwwIr+2Hh0MAw1UaIi82rOgqr1QbIL79DjxBpZ1L3C+Cfqo0tsTJBR4esc7lnmxSjmZFvnEIKg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id d16-20020a05600c34d000b0040fdb244485sm7801137wmq.40.2024.02.11.23.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 23:33:20 -0800 (PST)
Message-ID: <f6cd0157-dc8a-46eb-8688-6e0ed56d6a69@linaro.org>
Date: Mon, 12 Feb 2024 08:33:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ARM: tegra: set correct naming for Tegra Note 7
Content-Language: en-US
To: Svyatoslav Ryhel <clamor95@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Shubhi Garg <shgarg@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240212071843.6679-1-clamor95@gmail.com>
 <20240212071843.6679-2-clamor95@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212071843.6679-2-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 08:18, Svyatoslav Ryhel wrote:
> Correct codename of Tegra Note 7 is "tegratab", while model

Which has nothing to do with compatible...

> name should be "NVIDIA Tegra Note 7". Fix this inconsistency.

That part is fine.



Best regards,
Krzysztof


