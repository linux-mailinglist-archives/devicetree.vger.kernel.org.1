Return-Path: <devicetree+bounces-55534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F8C89580B
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 17:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77EED1C20DE9
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 15:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A5112E1D1;
	Tue,  2 Apr 2024 15:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rPKCyS9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A81292D1
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 15:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712071294; cv=none; b=HqTEGzV7RNXx/7riTwDoqViBTyFE+UVFuY8m81Sk4MLmK2NquLaaxyABZRQomJsxganduRWsUrpUPBM5iOLh1wyGVmjRYgZS3BUKJexfXQUxqX2FCVpChbmH9elYROtJLGbK0E1T1eKL1KZi5EEB7IPOVNvWBE7mQlfMPTmmJXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712071294; c=relaxed/simple;
	bh=t4Rytc9yyhGJnDzIG0fj0CFOC5rwPpFe3xdrheCzLGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y/Zi5yT1OqLrq93ejI0Dk0MqQnmiA8WIKWXa9VI+Tfyqt2wmh8otfh/x9IPpmD8IfwqIit37ud+FyIKurwABXbZZLiP4bwrnP2hIqMiBOhfCUIgJ1QmviVW7PxUXd4XXrQFtqxfFdwzkEMmiJdxX8+GVV3L2t+ASaTY/Yj/LmP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rPKCyS9K; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-516b6e75dc3so748852e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 08:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712071290; x=1712676090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fdpXSEOMW5sDeABud6LY4+ygs1jkKgACgBrXVzT1mys=;
        b=rPKCyS9KQkN442b0wwY7oRwtXNEATnFsCZYYro8OqWsRQtCWD+eN/f8IFnuJ7HSS0i
         +5ryjGqgMK/oQo/eTksKh2xupcQBfa0mJ2OHrd6OVNXiOjnW6efLgFd98hsbmHNE/E2Z
         jyupo1J7k5jhpE23h2uVi9oQWS6KMZDe47o+HPRP93OFQLZgAZ2m8Uiu7FE1+iTwRVKK
         ny3vyG7M+H4Z1ieJwx3JOR4T3QArVfVuQTbqVJMuQba47+YQxNWG0zgx6l+8E50RrtCj
         U6Vn3TbrFoVWzm3Ofgbz+nubaKwlDXZUdJsHc3yzpEmYUixXr0gVy2PQ+Y2OUwpf9wwT
         yrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712071290; x=1712676090;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fdpXSEOMW5sDeABud6LY4+ygs1jkKgACgBrXVzT1mys=;
        b=TpOC6MohDIlsF5og9TwgWiL40+a/rsSDvm4SQcs1OEpNY6AFE1Dku+9XKXqyU4GND8
         uraD+rlAWJpSPNX6Do0NGg+ocm0ElElFv35olABtrDzAoRrWRXFdA8xdZHjAL7/YyFEm
         Qf/FnhT8iM6PHVyprs1hbV7yfcyA5TiFWW1V9fq5JNbBBv3sudXIlDqVYk97iQH3Ryz6
         VOhkrpD8D0bMNF7RAilOEwwgAwAfct/k/EIl6iqd8HnI7ZgaYfFJQW1yuWKJSLgI3a4H
         lL8j9i6wrlD3aLhm+0m21qn5htG24zam1AfVhCfaZs08vTe6UoFALrexXEw0XoCjvLOG
         NucQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbK5glyDTObsQznkGO8aZyXStW5FXfoS/3fwkM0G+ZV6SLO8F8d9KBs1WKKI8BFOHQI5ILuMgbGNyiw7RoR3a0sERvQgSB/+r7hA==
X-Gm-Message-State: AOJu0YzaXZCQy+Q6kT2QkKRCk7SrcWW67p+aAgIth7PLYy9Vn1FzvPDr
	TnscKf+dh/R7W+1gXtE8+xnUa39bqjX48T6AJF7DpMnhfqrRW1HV7iuex5MJq1M=
X-Google-Smtp-Source: AGHT+IEnaASTdH9ozN9AmQUMgJ/N4NNp4A/EEmC9SNJjFf89H/Yz72c629rX/rGyrX0ey4KoqRteug==
X-Received: by 2002:a05:6512:4010:b0:515:acdc:fcd5 with SMTP id br16-20020a056512401000b00515acdcfcd5mr10041553lfb.69.1712071290361;
        Tue, 02 Apr 2024 08:21:30 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id 22-20020a170906311600b00a4e8acaccb1sm880171ejx.132.2024.04.02.08.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 08:21:29 -0700 (PDT)
Message-ID: <21641459-d7c0-412d-8244-6f2f2c458551@linaro.org>
Date: Tue, 2 Apr 2024 17:21:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/3] input: pm8xxx-vibrator: refactor to support new
 SPMI vibrator
To: quic_fenglinw@quicinc.com, kernel@quicinc.com,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240401-pm8xxx-vibrator-new-design-v8-0-6f2b8b03b4c7@quicinc.com>
 <20240401-pm8xxx-vibrator-new-design-v8-1-6f2b8b03b4c7@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240401-pm8xxx-vibrator-new-design-v8-1-6f2b8b03b4c7@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1.04.2024 10:38 AM, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> 
> Currently, vibrator control register addresses are hard coded,
> including the base address and offsets, it's not flexible to
> support new SPMI vibrator module which is usually included in
> different PMICs with different base address. Refactor it by using
> the base address defined in devicetree.
> 
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---

[...]

>  	if (regs->enable_mask)
> -		rc = regmap_update_bits(vib->regmap, regs->enable_addr,
> +		rc = regmap_update_bits(vib->regmap, vib->enable_addr,
>  					regs->enable_mask, on ? ~0 : 0);

The idiomatic way across the kernel seems to be writing the mask value
instead of ~0 (which also saves like 2 cpu instructions)


Not sure about how ssbi addressing works, but except for that lgtm

Konrad

