Return-Path: <devicetree+bounces-58233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 509728A0E38
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80E7A1C21EAE
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150C2146009;
	Thu, 11 Apr 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="icWPLi0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C03145B3E
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712830342; cv=none; b=ObEClafF5A0H3QE9QSRCzOpLeZbt3r2M3lyWa1NOvYUzKK1UljAzFYXVq1nx4+Xm/y8hWQSk4sK03Ryx4p/FgtzRrx35Cxo6xy8CeB1rYRh/pZmOD91UI3W9oFxCvmeEBFBJ8DHN6z+yr58xm6L9t9FzP8lLe+YIRgdMPe83qnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712830342; c=relaxed/simple;
	bh=axPGx9W4RQVvecruSMvBnk7g2dnu51oA04lLwTJN4Eo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jirsfdq0Abtie0ZBR0esOxiMoVDZ3EdQi5bbzk8UVkSPw0LM3/gXZkDh58lQ62zdXk2XA8+Bg5LYJsgoFbXLUuXuVwIRrv23hS6wnwC+iyasHa5pjwHSNRYg0osVQaVJYIhPXh2+0XasSzf1U4lty8W3yS5K6SXthGFkUI1kQQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=icWPLi0E; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4166d6dab3dso30462705e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 03:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712830337; x=1713435137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TEkRK6cAiGk/tlZYtFQfeX1RuILGYwLRjqaZWC5oIso=;
        b=icWPLi0EBF7VITBP4/kc9VZLfRmPgWnjwMK3owha6w6Lt6m/pyfNiJqIHY1reG7QOC
         ZuSP/EyGkD49hQa9mQErRosyGRuaWLZMgaHDb+KuqxY7jkv0Y/M5Qne15pT+PmJodb81
         pRoeupIhHG4vxJaLi26XO68hXuyrtXGA84XPVgdiV5G+REuPuK8wx8y5TUUfdJp9YFXH
         Lz2p25lDxRybmajZtVbre0i31ZPLyMBehq0L3JZKn/X4odNpWxetpv9CWj0XrRZTBlf+
         g/xVA5gYxl764xgKiXQ6DgJgW4fuVJTzbH8VlMEioZBO3LlofOUSbdkZ+eNGL5p/dcve
         xfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712830337; x=1713435137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TEkRK6cAiGk/tlZYtFQfeX1RuILGYwLRjqaZWC5oIso=;
        b=pd6EEmsJ+65Ag7JmGO+d3qaTio7vENqL31NQmFzHxcoQxiTwlv8WBehhaiT9OkMy34
         BwNzlOOjB394uMlWa8qmvvpWBBKKvJO3PS5mzc5rrRVzebg5+ZjtUP4YkwZ494j+Ez3k
         x2YBlSGQE9QpuVvMOAc3Q7S/td0P3AX1MQacZ3WP3/7szx3pVAe58DA+iHWPKwAlHL72
         1P/wP1qreaPSvrAmeu+aLaOfqCgLbgRH0K6HtpbRJ/5+3LA7tD0KfzPVAUQ4DaM/w1kP
         VIbK11XNU7SSMfZeAa0uCXZRh8NuEgHfrRC2gXFHtuORJJrYGbcoqS+nfqPG817oOh6x
         iVDg==
X-Forwarded-Encrypted: i=1; AJvYcCUn7HF9auWOwwQo7WS1wKvpQ8UBiquVTpGouBWB1UFtzSyLcPnXK+M9+SkfeeqenY5rLJtbC0NYPgX+JArQE+ZICff5o21TbkaZkg==
X-Gm-Message-State: AOJu0YzkDS72hhaxJBZdD40F/fCvyULNfVkSV5zIgQRBMR+FcTaUBxdI
	7zmI7V7r18rXaZecfywjKZ2vXqt9EUYaSqfx1AEmpaDehlUgTUfafrpXjC9xSwY=
X-Google-Smtp-Source: AGHT+IG46MWREjWIXdISMQD+WpuJcvIPU600o5w8wA/xpe8lUSg7aK4HAxyR5c/p+hMQ/3GGOojJfA==
X-Received: by 2002:adf:fd0a:0:b0:345:fa50:ba8e with SMTP id e10-20020adffd0a000000b00345fa50ba8emr3683875wrr.37.1712830337276;
        Thu, 11 Apr 2024 03:12:17 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id u10-20020a5d6aca000000b0033e9d9f891csm1405613wrw.58.2024.04.11.03.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 03:12:16 -0700 (PDT)
Message-ID: <1b4f745b-67d3-4044-9b89-de6c2c496af5@linaro.org>
Date: Thu, 11 Apr 2024 11:12:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "Revert "dt-bindings: i2c: qcom-cci: Document
 sc8280xp compatible""
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Wolfram Sang <wsa@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240411085218.450237-1-vladimir.zapolskiy@linaro.org>
 <94779d2c-d159-4429-b0b2-6baa83461bbd@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <94779d2c-d159-4429-b0b2-6baa83461bbd@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2024 10:36, Krzysztof Kozlowski wrote:
> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>
>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document sc8280xp compatible")
>> was correct apparently, it is required to describe the sc8280xp-cci
>> controller properly, as well it eliminates dtbs_check warnings.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> I am lost. Not on your patch, because it looks reasonable, but on entire
> history.
> 
> Can anyone explain me why original commit was reverted?
> 
> https://lore.kernel.org/all/767bc246-a0a0-4dad-badc-81ed50573832@linaro.org/
> 
> Best regards,
> Krzysztof
> 

https://patchwork.ozlabs.org/project/devicetree-bindings/cover/20231006120159.3413789-1-bryan.odonoghue@linaro.org/#3195094

We can you sm8250-cci instead, so dropped the additional compat.

---
bod

