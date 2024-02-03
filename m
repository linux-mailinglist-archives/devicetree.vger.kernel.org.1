Return-Path: <devicetree+bounces-38329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FF8848887
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 20:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69D781F23798
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 19:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB7605EE7A;
	Sat,  3 Feb 2024 19:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eh1jFnam"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC195FDD1
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 19:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706988344; cv=none; b=NFYRSmq3V+7oTafIK4RFeFX/o/p0AOVsm9ae6gOAgHvFcEO89kkA2lBzIY6MqskeOgUR+JhGGtg35KGbDe612E9CiEx8Y0Maqyv15SvaCJTK6e0+0tuVgD6yMpZbKHvzFIm8FDWcg9/1LZ19HXps4fENQbcPUl8O1G5cDfDm/UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706988344; c=relaxed/simple;
	bh=f2yVOyO8MAOrDrPptIdNdqvg8gR2oOozbO9g28azkhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PTrGPkZSRf4TVuYDeLCQRRI4qwPYOiBVsRXb/Lfkf49tdgHc/hPM29UPmbLKDD1Q8SVC2wBi9vqXzyGlct3xElaj46JkriMNjgWUN8As0hx61+bI/7+FsZOk0urVgfcK0dYCovnBMmIwlyxG4mYi5fgrZ3K2UhOYZKk6PEMSfxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eh1jFnam; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a2d7e2e7fe0so350333366b.1
        for <devicetree@vger.kernel.org>; Sat, 03 Feb 2024 11:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706988340; x=1707593140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jTXrJtI49rC2k31AwGVihmN0//6sExJ9vgKJpCD8pao=;
        b=eh1jFnamHKIhyZ0YLj5ZYsNTHOYL3DRF5yZLlGinf9CamaK9O//sPVF+TpHI3axcjJ
         L6chmFVObcam1mpf43Ie4q11xdwqwljPQeaHUYE94x89Fox/YGnRKd+qO3ciPTaePx5N
         EpJn/H88DJWXA0evd6NpSl2V0RBWtBYKKqDzdk+wvpF18k/ZDXHBVMcve84qhUIOA74h
         CrlwvdqapBNe+hPBtSRazmh4fp46q64SEjLKCJm3jhKQ/cRxv8CAQfkueMXHqMFYUMab
         RSo3GmE4HYnnZgCKnunjlaUpVn4zOTWFYXYdV23vLqW4GVj++dozQpJL1pJw31ieSDTt
         mh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706988340; x=1707593140;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jTXrJtI49rC2k31AwGVihmN0//6sExJ9vgKJpCD8pao=;
        b=WBzDB6aZHj6UUx+SeumgVonbveTcjllgD5f2/UyNXyST/83SYw2r5K2NjgUQvcE0Gz
         cnLlj4b71hhO8HjT1t/rPuinBLykvJWz2/1ccz5+OD1TvKC3WRj/wp0Ty35lA7+NBteu
         p+5z9qIF7I3fXY4eHCnJx3CrR3No60TyhQczPWgqcoOzcRiHakqyArRFtfg7Rw0+fJTc
         DS1JUOuFDbLI1jrYD3W3R0J60sIPgjnNN0uJ7oLYyEQQ/73cSLQZUol/K63wNn5Nawxc
         /94Uj6CZJvnV8VOwy17x+wEFdxxCfBQ4JJHmkvb7WpVkmD8bVgWfQwhEIDwEyOi/OjUk
         RnyQ==
X-Gm-Message-State: AOJu0YwwJSaJDdRcSl11q6lDhMDAt2zQOyM/h4zf+UnOwDIT+axypF2h
	GgXw76j0lc0eL/dIK3+G+YLg7oOkpucRetf1Pj04LvRgGn6/33qJ0A0ipcxPrGjGNJmve1BeJc/
	f
X-Google-Smtp-Source: AGHT+IHzSEsQP9BTez7bKYJq649gbas1ALCzqxGH7xP6d+jwhMZG3N6wQVovxrKil5StZE4yToCsUw==
X-Received: by 2002:a17:907:86a1:b0:a37:6d0a:acba with SMTP id qa33-20020a17090786a100b00a376d0aacbamr1177922ejc.1.1706988340722;
        Sat, 03 Feb 2024 11:25:40 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVjgimOVp1ktIwwy1ECHgtQTBSvTFUnyXGCFMwZKhuOZQWB4SbO/7trhot1MZe4j8xNAar6hZt0w6hLyj6FmY96aUUI3X5k61p1k9a0+Fbg0/54M0aG3h+ap3jiv0xN3N4cJ3RExyzdIesyrrlJnbRBmDs5wmF3FHPcKRsVwuXjPsvL3ABUsAeAZhiSOhPsze7zaRxQiIry8e2GnFDhPqEQlw2iuIekfBNP56x/z+DXQNtHr4hiu78jpcTHRbYLShmUWICOFZeBIkYV
Received: from [192.168.159.104] ([37.8.245.233])
        by smtp.gmail.com with ESMTPSA id gx2-20020a1709068a4200b00a35ed4fd4cesm2296206ejc.115.2024.02.03.11.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Feb 2024 11:25:40 -0800 (PST)
Message-ID: <824fcc24-4344-47a8-9932-bf07a3472737@linaro.org>
Date: Sat, 3 Feb 2024 20:25:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sc8180x-lenovo-flex-5g: enable
 touchscreen
Content-Language: en-US
To: Anton Bambura <jenneron@postmarketos.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240203191200.99185-1-jenneron@postmarketos.org>
 <20240203191200.99185-5-jenneron@postmarketos.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240203191200.99185-5-jenneron@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3.02.2024 20:11, Anton Bambura wrote:
> Set regulators, reset gpio and delays according to ACPI tables.
> 
> Signed-off-by: Anton Bambura <jenneron@postmarketos.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

