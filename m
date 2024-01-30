Return-Path: <devicetree+bounces-36589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7A1841E8C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43B28283182
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C4058231;
	Tue, 30 Jan 2024 09:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TiXxLxYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD6E5813B
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706605220; cv=none; b=Ig3Cxjz4xOCaKpz/tS8m4joUYwgfQnMyqDjtE25bgLx62PDg7nmqxHaLnI027em/GE6sPmDqy+u7Zp7Y0tv9iakXS0hQjPiboIz0zJBrvQ7IChkNRx7Pb6HGpUT7urVwjf/iY0khsy6sPZFokIsrsMrlNNCo1PRPTMoYw6kPNw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706605220; c=relaxed/simple;
	bh=TchTJhuSnN3V+faXCv1nvr5qgtMhSTqDaiAafcwJDhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=du9eM5KwZCexJSrH1QqPoxeo8/sPmyEM0GFpAxQWRMs3rJ1p8epwnxvoz74h0ihWgNfqMJUplLAtpidqNEgHW4Kgz6nLsa1sCaOPc3yJ6DCdUqNJ49ELA4bk+vnoGEa+yg5sSTy3Niv4ksgJ65pduleZoOirSyF6rZrVgEk0Muw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TiXxLxYk; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so4245770a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706605217; x=1707210017; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KhL/RwrrrFuTkcUoehGkisCUcv3sHGalEb7hpgS14ag=;
        b=TiXxLxYkv+wJ56ZJwGfudT2zlmAAyZPArI8inwVFZsVyhC2/8LN4bYJRh7bG8FhdBV
         8JA2s+nLvyfqiPkA4D7j0TebZ0/3dTftX8MKeZEG6L2LIyVU67qq5gTlCup3NHQg53Sd
         eEmvLGtsYajymGbkzgqBuZwLBW3P2BVjHxn1fIpey2F84Izixuj50AvufN8AlqmYt9n2
         LUhII0VrVObXeRlWSR92/kh0DA0s1+0evWiMoOQMkNtxt723Xc7k8KJ87nD9DWUVS/47
         xNuQ7pYU9hJRYCdPS+To/IRyf/4pMywpeiLYbbVWsd2Q85TWn9Q7PBMI/1udtY819J65
         4lbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706605217; x=1707210017;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KhL/RwrrrFuTkcUoehGkisCUcv3sHGalEb7hpgS14ag=;
        b=g+Qt/laz7M9H5ftrZFFzUFO3iMediTRCOudnGN/3C26ZJhXlkWxjPzd83Vb4XDUDQu
         7nmWlapWIeVv2SCXuU47V9ACEAxX0nYdae0s+XBJMeuXmH4Is5N7FkLt079rFFsxySph
         7w/Xh4Zr7IZ6mAqEooN7nZYbv4MzMRJ9H2qWX0KRLhmQu5QngWg1sCDATgDcZjYw75nb
         XfYLqaHMlY2ITfoACRImfQmo5ppxwBFdlGi9nHtGeB8iWnCOddlEjung1tC0Tmu/5FpV
         9wbNEQaepcnZ3JvmJj5D8/GaI7oag6FCECM17sm00xDRtqdx5N2cDVkcEktwWbgcweq4
         TWNA==
X-Gm-Message-State: AOJu0Yw1MQpEOkFmNGF9sGugx3IIa5MJ2R1sMzodkWD+mQQJv0wYcee6
	5Z5OVrq94HA03cEFzXbEwwfHc4r3cJUTA48SujPgcLBTNnHkxxNq7Z05HgbFGyU=
X-Google-Smtp-Source: AGHT+IH8GLcfn7u5cLqn55BcZiPw3cv5ghUJUsIBz378REWJfPZ7UgY70S+5auyNl4/KqBplWNJkBA==
X-Received: by 2002:a05:6402:3594:b0:55d:2ecf:eb1b with SMTP id y20-20020a056402359400b0055d2ecfeb1bmr6230846edc.1.1706605217393;
        Tue, 30 Jan 2024 01:00:17 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402195300b0055e96290001sm3700180edz.27.2024.01.30.01.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 01:00:16 -0800 (PST)
Message-ID: <e434e7da-24ac-4f24-82f4-2ca52b2b5111@linaro.org>
Date: Tue, 30 Jan 2024 09:00:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] dt-bindings: samsung: exynos-sysreg: gs101-peric1
 requires a clock
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, semen.protsenko@linaro.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240129174703.1175426-1-andre.draszik@linaro.org>
 <20240129174703.1175426-5-andre.draszik@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240129174703.1175426-5-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/29/24 17:46, André Draszik wrote:
> Otherwise it won't be accessible.
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> 
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> v2: collect Reviewed-by: tags
> ---
>  .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> index 33d837ae4f45..c0c6ce8fc786 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> @@ -73,6 +73,7 @@ allOf:
>            contains:
>              enum:
>                - google,gs101-peric0-sysreg
> +              - google,gs101-peric1-sysreg
>                - samsung,exynos850-cmgp-sysreg
>                - samsung,exynos850-peri-sysreg
>                - samsung,exynos850-sysreg

