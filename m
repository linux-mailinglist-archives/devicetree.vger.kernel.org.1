Return-Path: <devicetree+bounces-49025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C62E874B01
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F29F1C20C65
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D5283CDB;
	Thu,  7 Mar 2024 09:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h551t8T5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F62283CBB
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 09:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709804205; cv=none; b=sEF2BiwGglBjFIcLiNQd0cIGUzZXcDCFn/tZy9u/rzjmyvcnS0RNnsI2ORXuC9MoYxuplCCrrCqTob/XO3K0zS2jN6Tat+KwBYqR/qsyJzNi2EY4uGCXUD8/v3mAb8wzH4kaf+IE3EDMz7aGgzHsFHwp1CFWGuy6eBYBozJ4kPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709804205; c=relaxed/simple;
	bh=YGXQZyA43MxFpMSkBG9HcAKzDDQ/XEwm+g2G+GfvRko=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UjTE5Zd/GLB1jRVlLaotJ0FTogvcdBDNI+f3J2VP1gvRz/q1TX87cb+elcYcO76Ytj2SUWPcrAv2Su5cwo9KN9Dm3XCCM9tcqSmodjcqFR6uFJicCQ/ZBJmM1rz56l076gP91udkWgV953DQhE5hoWrbr38xRxqndp/O1OLL4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h551t8T5; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41311383a11so2265595e9.0
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 01:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709804202; x=1710409002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=blXg0re3pMK1y8kknPqEyLHNcG5hpzcC6xBwN7/JFrI=;
        b=h551t8T5Z1idT1pd+Lgnb9Wh/V+kloiBt4wToeOw8T2SzZE2GPlWohXOUiULFphzP8
         Bzlwj67drKqNDKmxelctQZ7NcIkD4o8txo54bGBKacm/FZlXWmyfg8B3PmVws39/2brO
         OD+227GGyc4FTef7Py54aJuEJMDTsDiiZUdVowS3aBWJieEwJgU/aXjNXqi1xNTSgzR0
         zFAcvNEJELxNq9MBFnXr/BxEa3nYNVLWelFdRPTAab3CZUdBeeqdHi+ruYvn5OII/1AX
         psYzFXr4x4yUmPdhpm6sJPWRDu33EWndzpL1THVZM0OMfjcyT/oP2bLdGpdkcwo7fjC6
         yW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709804202; x=1710409002;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=blXg0re3pMK1y8kknPqEyLHNcG5hpzcC6xBwN7/JFrI=;
        b=NywxQgbpGWWUMRt3h/hFb57K1v8B1Ol3eQzAiVWtHXaWQju/fbKO38MKN2q3fRLWcJ
         JLkUT/OVA9Nzc99/T6t0NUOnxdLSNjZtrDlOwm6lNXdbcxOQ5kk3VU5PiFWg8FntjyHW
         pbrNwvmHLud8AZ0PWTGXbb4IHVF1bu9DXv8W/o/q/G0KhAAMdJqqGC3uxi+KYeoqu/y/
         Y+hUH2Ak0qjGpMDiES6azih/IYemIq/Ou7jvb/4n3ytXR0TIcziJHR/FbEUaHj8XFhco
         Plj8ViTR7O2hiFpFRyv3VSYcz9PiPk83PvE7o2pNXAbxE06TPTVqMMprh8hoKab4/7rd
         MFCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0J3kl/XFT72emwJpPlPDfqsM1k8buonrXUjmO9dRniGENWI10tHq1X0t2090IJ7f4ghAKlukR8e0z5lz/D7MwZxdA12nHCyQ9kQ==
X-Gm-Message-State: AOJu0YzDoMaDpwbTFSDrtYhI+vTQrhjXtChoL8kMudkrAPTynNwNlxND
	PRWEWpPpJ07XwbwJ+lQyJPCzezwSCCqasuoCH9w+NBe1l+By4wy2T83cSgQ+krI=
X-Google-Smtp-Source: AGHT+IGJmUMGpzUunWLnUHl5R/CJ6c5Zf2CifilxJkYujlGC4l1Mt2ucbrRAbMbOWZupIS2ODMQklw==
X-Received: by 2002:a5d:550f:0:b0:33d:f883:4fae with SMTP id b15-20020a5d550f000000b0033df8834faemr12135601wrv.64.1709804201831;
        Thu, 07 Mar 2024 01:36:41 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id bj1-20020a0560001e0100b0033e48db23bdsm7107211wrb.100.2024.03.07.01.36.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 01:36:41 -0800 (PST)
Message-ID: <1accaae2-b034-4afe-bb80-98209b42c348@linaro.org>
Date: Thu, 7 Mar 2024 10:36:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Assume polling-delay(-passive) = 0 when absent
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240125-topic-thermal-v1-0-3c9d4dced138@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240125-topic-thermal-v1-0-3c9d4dced138@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/01/2024 13:11, Konrad Dybcio wrote:
> As it stands, setting 0 explicitly feels like spam inside the DTs.
> This series simplifies it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


