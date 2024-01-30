Return-Path: <devicetree+bounces-36531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDE7841BC3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 07:11:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47E4428A3BA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 06:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5EF381CC;
	Tue, 30 Jan 2024 06:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NYN75jZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB29381C7
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 06:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706595072; cv=none; b=HRiaRM6vtcid3OixGCo22OD7xYDf/U6s8Dfhv/N0MRBiMTYHLhGYSuE2KPwK0BUL4yK+tSBeeE3qwjdU9nUfIPUjcm/dxFjUtgETg/LhCI7Y3MHhOgL1gm8RMUcXaKQ5iAw6qu7zMnow57afP+qXVLrQiYj+2UzDU62YT225O/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706595072; c=relaxed/simple;
	bh=ijV34YZ0YCG5AOhUcoH9MBiyQi0Vb5QDkuuLffY1KNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D6Tizzw1NZqvfhXVcL7Kfdm6gQzG+6h/5QBMzhNQ92HiEs3Ero3NTsl1CYCu76Cf4RKzUVfhVUXHC+RFXBrDNyjv6yjCxv6R8XTmcTouG8kGR2omjxIeRtliMY4SeDOjvFf9W+ZwMN5UYwIHYDpXP2IT7aB7rBaE1Cf1X/hC4DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NYN75jZ5; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a28fb463a28so411897766b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 22:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706595068; x=1707199868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/w6ymI1BUhSUx1fiQjO+jJS2ASJQtR4AEE+cTThI3IY=;
        b=NYN75jZ5f7t//2dftsLcUIOzM0s0JqgcYuX6iipeSl05zwByMLH6BgOdBAZ9yNcmnx
         3oFZv7GBFtdYCdWb0/Fo+O3ebZ31nZLEJvjkMbznsTSNM+4eefVe25iQShvwjk+PmG6w
         PeMhb87YeM6BaJtdXSimoU6AVItiJSJZsjDZPJg8NgkNR61dZYZjt0f2IpymDOgLSyLM
         IdbVcIBp5ZSfzdmJfkq3+y+KLAhBpQ+H3/NR8soYrY6v8gnOnVGiw1KHehlG7QH/lL/p
         EIwSUxMlfCmVSZY/DzqNDX+4aK3xKAPxWlA3MSzlRG7hcPTgTzjh0sATxNKYPuwtzAc9
         cXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706595068; x=1707199868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/w6ymI1BUhSUx1fiQjO+jJS2ASJQtR4AEE+cTThI3IY=;
        b=h/iuRk6HBii5e4J5gKnbPLdsliodm1ItejjKToMEVwPbDNXIxNrzfkLXMoF7swG5/+
         y0rARfdcSSmym0uMwiWWBjZYqCWrHGQe0JjNMCVYrX5OhIzzyM4PO1H+wIIFxvnuWFEu
         h69x7vLotQgt9Xd87RsvzAgxT3ENlJ1xB5PcsjadF4OljQav0RSNuaRob+4b73icMBYp
         Vfoz0npp46bPp+hty/OiMspaST0Pb1Af/tzBkd05Joj9h74q7hu+LdW7Rw0agd9MZ6A/
         ziaToXV04hKEcNMAafOydL4f/g9HagvtdRNxt4zWo94IH91gmGrLWptQwQsTDMNZyxaP
         rTqg==
X-Gm-Message-State: AOJu0YzQnLTX3fG9SUSUvXSaTro3OTv1hlnBIqHEUThWlGtLMZe0J97E
	3XHCrFkSj23dojjdegM9EZofavydVFvXkWEaSRou3EM1UK5xIe1DJ2zkrVrEt7Y=
X-Google-Smtp-Source: AGHT+IFAA4vYU+oyhwGm+3xKksqN48uHtV+PRbhmg4xKKhjtQYVKwHHeRoQSq9kdWGBj5GgSXzGL9w==
X-Received: by 2002:a17:906:3009:b0:a36:b64:e0c0 with SMTP id 9-20020a170906300900b00a360b64e0c0mr768901ejz.67.1706595067750;
        Mon, 29 Jan 2024 22:11:07 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id ck5-20020a170906c44500b00a31930ffa7esm4698415ejb.153.2024.01.29.22.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 22:11:07 -0800 (PST)
Message-ID: <c9b01ae6-cc3f-4447-9b5a-261d234bc92a@linaro.org>
Date: Tue, 30 Jan 2024 06:11:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: exynos: Add SPI nodes for Exynos850
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
 <20240125013858.3986-4-semen.protsenko@linaro.org>
 <1b27fa0d-5dc8-497f-ab17-76d82c2aaf40@linaro.org>
 <CAPLW+4ntySsQVA5u4TNWuc0KCbhQY61XcsBqC=O8GRoXmS_NYA@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4ntySsQVA5u4TNWuc0KCbhQY61XcsBqC=O8GRoXmS_NYA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/29/24 19:39, Sam Protsenko wrote:
>>> +                             samsung,spi-src-clk = <0>;
>> this optional property
>>
> The reason this property is provided here despite being optional, is
> to avoid corresponding dev_warn() message from spi-s3c64xx.c driver:
> 
>         if (of_property_read_u32(dev->of_node, "samsung,spi-src-clk", &temp)) {
>             dev_warn(dev, "spi bus clock parent not specified, using
> clock at index 0 as parent\n");
> 
> The same usage (samsung,spi-src-clk = <0>) can be encountered in
> multiple other Exynos dts in arch/arm/ and arch/arm64/, and it's also
> used in bindings example. Probably for the same reason explained
> above. Even if dev_warn() is removed in the driver, I guess the older
> kernels will still print it if spi-src-clk is omitted. So I'd like to
> keep it here.

Yeah, I know. I proposed a patch switching to dev_dbg. If it's so
annoying and implies adding superfluous properties to DT, maybe it is
worth to add a fixes tag to the dev_dbg patch and backport it to stable
kernels?

Your patch looks fine. I guess the vendor specific properties shall be
last if you keep them, see:
https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node

If you remove the vendor properties or reorder them, one can add:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

