Return-Path: <devicetree+bounces-39194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC51C84BB6A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 17:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82143285E31
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 16:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CDB3FEF;
	Tue,  6 Feb 2024 16:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xJzr7keY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD9B4C85
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 16:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707238314; cv=none; b=uaelCjuOjItqA6C/9NZtqKR7kHIF+wwaI0oEqH2Ivi77mRPMqxxjka9czY3aQo1bRzUlscQn+H0jYMHHH7FpqQb9bbDOx8KQj2EhjzzKsHDVzyxMlJw0S7tMM5sSmjfJM+YxBIMtDfMxWmVZbjIIg4gCLsSGWpSUy+AMz+Im/PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707238314; c=relaxed/simple;
	bh=oA4hUIfB5VLeorDw00e/rj03x91n/VxJ5YcmF84E7/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hRDVGPwHU8eX3ektJ5NVK8HqbHcJlYUrYHRpASx//ADoufMixpTLyRWKFgOl8bBykjLUuq0kYOXvepc7GLTh4GWLi/NLMRK0S6Y5HCiVDt7n02WXeIuUMZmYD3gQGgCyGVJiA+vvJJIan5/KtiMfkddLwtWpkRVHoorNmdKGrwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xJzr7keY; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55ee686b5d5so7689155a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 08:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707238311; x=1707843111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ztm4r938bOcX2PtI3NhMMB/5dzxQrvwpQxsFLYDOzY=;
        b=xJzr7keYMQzXO6HLHEZ9Fj01xyLFQns8pexbhJjpX/K9N3FQ5rKfBhP+9USYmGzSfZ
         3JEEVuGFFc5ABO9j+PQsU5Z4nMSy4tsCKAGZ5FtLxh7GhmWGKAo1wyTcgA9idXPQMtcX
         KtG09sxIiVx/itQVt67Br3qHzPK1jtWkBU4GEfeYkntVP6bFPgSyNiMswg0Q61cRyeMq
         H/e1hNcLOCiLp2WDAMjYdAUlClqxYUDDPMy8LJI6KPxZ+vG7rpmmm407oWtvhz/Rr5DH
         UQSkx/ldKfF3GyiByAhgehMmPXxKauUARPPacneQ6HGr7USX1KD5MosUm5zifXJ7hYPM
         4Mpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707238311; x=1707843111;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ztm4r938bOcX2PtI3NhMMB/5dzxQrvwpQxsFLYDOzY=;
        b=UhBHOwLEy5848atfgVL+XkHjHmpQxusjGYnRSIQtHQUSunGX9lQWG5ycqheIJZ29Lb
         4C1FA4ju+p5Q6trOuzediXuy3n4ILuNHLIIHMsfzIyAPplz48x3nOY3dh2Nyjqf9ZcaE
         UQkBO8Lwu2I4JsY4c9RGH/9wh16uNQtWTIGcO5QIsq0I0vZani4463DFb20Dxle7xutX
         uM/TV83hYan+mg/BGvStfK2aGX/NcNgeyWxXYjyCqWaw4oZHmzaBrjSZ0KBs6Vn1XESv
         kI7AuVwZoe5Z8OLFOuiXHB3eU+yqVQgBPa1Bfp/5rD54Z1jFWedb5Uzs2YkTtnUZ9Fxm
         CvVg==
X-Gm-Message-State: AOJu0Yw2DGrc6O93FhlAyjFNPyGFrM5Rrq8PeE1CekV0U5WApxs7mO0G
	3ldsLMFvcZLJz5P3vFvD02ua+7k+ubdkDh9e7hmj7GeaBp/meh5RepzZd0P6zBM=
X-Google-Smtp-Source: AGHT+IGDbcfKI35ouOZAaIBuWvbgi+7PR+YmxSR1oepDAZI7D55gaxK1MoF4UGKjQvorjfLkVLcvfA==
X-Received: by 2002:a17:906:53cf:b0:a38:2ac4:35f5 with SMTP id p15-20020a17090653cf00b00a382ac435f5mr1324782ejo.34.1707238305868;
        Tue, 06 Feb 2024 08:51:45 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXItkDq9g/XRreHc6g//Kp01pxkUZojuTjCvMpiVM8JZvu39he75aMk1dOl+AlD9Cj/b4k9m+EqhOZpACmevV068y9xafwQzqK/cAs+xcPy+73vH8VgA9jO3+MArgY1TbO93oeUyZGHtxK0R42XuliDNjEGEn0pHzC/vq7JsIR3piSyUJ7dhlj9mSBoAaHYRDoZEGVlVutBXXtR+jBGNdkfk9q6PUCF26q8IP1ujmQM/EmX2cGareu5cpfShf8jTyZCWq98Xxc=
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id sn24-20020a170906629800b00a38382c34c9sm693500ejc.120.2024.02.06.08.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 08:51:44 -0800 (PST)
Message-ID: <ea0820be-391d-4b40-be89-df91524780dd@linaro.org>
Date: Tue, 6 Feb 2024 17:51:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: describe all PCI MSI
 interrupts
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240205163123.81842-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240205163123.81842-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5.02.2024 17:31, Krzysztof Kozlowski wrote:
> Each group of MSI interrupts is mapped to the separate host interrupt.
> Describe each of interrupts in the device tree for PCIe hosts.  This
> also corrects PCIe1 and PCIe2 first MSI interrupt.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Not tested on HW.

Booted sc8180x-primus, NVMe is still accessible

Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

