Return-Path: <devicetree+bounces-201249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2E6B17E2E
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 10:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99E6A1C26AA8
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 08:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335E320DD72;
	Fri,  1 Aug 2025 08:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ua4wBJEo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A50A20E03F
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 08:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754036594; cv=none; b=WLgBPUuTd+ZbUHlfzubStDojRAyH/aE+C14FPfv3PI6E3hx0DT7gBP3/vBeHAKilk5GSbGhUCuKrbIZKMTP+GOSE5N6JRSg7AFMIwGXVL47v/y0l+6O44Lv0YidGwME1gnX3f3ryuAIEQ20z+JZVSF8EAad4/HExE0kTyIb6xOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754036594; c=relaxed/simple;
	bh=Y7WQ7L71H57fDKal4CKiDxZgn5pcjDXeUkmROUcHIOk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TGTU/AsOmdfaBd5/5kB7UYu/5azOFdtu+ZCp2OnUlcU5fRHI//1U6hRBqoGOMFPp7LzELbNSXVigvbL9BgcKLLebrw2szidNi5tTIiVQNNklCNqza8L+pa1Nd1jf5XfI9ogLKcWCiPKLqR8MCq8svJZk6r/BaMsJPrJKZR0YjMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ua4wBJEo; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45618ddd62fso7207775e9.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 01:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754036590; x=1754641390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zOC4uGHuBV8wACSUSYr4zqb/AWSw2lkHtrho7jKDnI4=;
        b=Ua4wBJEohd8ZhcTECWMpTxd05reQOCG9FT1Cczz9NXmf7/00m5BmTPNnVQDt1Dkz7z
         dLG9wVYQJbUkn+pAIAYkJUQc6vVpeBFlqHx99ri9jPANC6OBM87+qeNswl7trbSOiFGm
         zI0xVbwJmCCWQhy1eUfVViSGOzwPQlWplKAEycL/lfLnp8DUsLotCvnZGUlY1WQ04N2L
         B+RsfB2QhC8IaXS9FZCUx68w0CSJG/DbOfFGXVHlE3HavwS21qyPzt3xwZkwEyA0e+sK
         TUCj3Zk1053cKpPY8YYpjMuKk2MzR78B0Jxtuivd58yRn3JbiW+cmdjR6vjkoYkEA/6Y
         DEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754036590; x=1754641390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zOC4uGHuBV8wACSUSYr4zqb/AWSw2lkHtrho7jKDnI4=;
        b=cV5Q44mGsLIonlgvYGTv2cezOORIyjfOg5vk710AMQdmQ+vWV6KijP7US2b31RENFU
         XLimuOzYP9XI2Wcpmnmzf1hI6QGTBjXm+gSqlKkyh781TSeVOAfG0hjqWGDVjByQCokz
         4aTcICle4rer9n5S6UMpFL0lHaVutmFoj8MCXEvjubWBM3GTdywsgVaUtfWaxmgBGXcy
         SDN9BvdOnkvC0SvXNRMV8DG+oAbK5JhnyhkDBILT22FoV0XMlENobjII/sO1Ey/IeIS5
         3E0xUYk80Gp6Z1VZm2WsdVO4fbEV6gSCbd/jD2ChRQHp0XwjIgP+XayfLNYCZL+JE+Dl
         vWhg==
X-Forwarded-Encrypted: i=1; AJvYcCUVKiX5odCA/qeMTEcuK9CM95BX90Mg8nptkGuIw8hb8UagyKo1Tk2xOYIQossfohHNpgA/OHox7FWn@vger.kernel.org
X-Gm-Message-State: AOJu0YwSiXtPJT6/sag7LsrYwin+WEzhlgeZ6hfsMFjKXLKr/6qqmMZr
	jdQRH5vU53et228yBXxpxxS6zIxIYldwpMThA/R0pcsHNAY0pf8O26o5O+bONipqYwg=
X-Gm-Gg: ASbGncvnSmSTRLFt6s1/vzE6lOOUUmsbupdeYXe4FOPTnSTFX1z69R0xn+Osxg80Ncb
	A2QnP/bIZO2MTYki1usiMWpNwm0LBABisg4SsWTlzJIWNtnuqaTpdKdHWGQI563pSKd2lh+4G+l
	+Inb3YZm62+B8CTecKoCK5yA6YmY9WiRyrCNSSa6mC6ieS00K02T6Pi2/y9Pr3eJlIX1glvoIqI
	oS4n+3byinvxbdAB6WgPbZetTmWek8JjsRbK5rmeuWSYDzUfSONb6pR8GXqh8sIq6B1J1WfHcn3
	sFFvJ4S/1UQzqwCx5VjSheIurl3nK5jqQ/UrYLt8LwNClqm0uTp5d8rvJ7LnOtgNPjbCAHdqOpb
	MJy7ZkMEvu7g/TjFwlyNR1irFhJapDOtIzM8eo7HYs33vgK+Mts7Ak+mD3pCo/A==
X-Google-Smtp-Source: AGHT+IHFaN3+egakRXZOjinaJFG+r4LMkGjP5kelar/Ki6ZV3odXQ8ubCXOx4u3mK+PBxlSADMEjhQ==
X-Received: by 2002:a05:600c:630f:b0:456:18ca:68fd with SMTP id 5b1f17b1804b1-45898a828a3mr106806585e9.10.1754036590465;
        Fri, 01 Aug 2025 01:23:10 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4589edf5683sm56534915e9.7.2025.08.01.01.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 01:23:09 -0700 (PDT)
Message-ID: <4b2bd0ab-cc4b-4afd-a46e-60ccc8d6f239@linaro.org>
Date: Fri, 1 Aug 2025 10:23:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: s32g274-rd2: Enable the STM timers
To: Frank Li <Frank.li@nxp.com>
Cc: mbrugger@suse.com, chester62515@gmail.com,
 ghennadi.procopciuc@oss.nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, s32@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Thomas Fossati <thomas.fossati@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
 <20250730195022.449894-3-daniel.lezcano@linaro.org>
 <aIp+4mWS1k73Vf/A@lizhi-Precision-Tower-5810>
 <87d40626-8789-4e71-8ac3-fa8fff0a7435@linaro.org>
 <aIv5hYGq+fNStRBw@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aIv5hYGq+fNStRBw@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/08/2025 01:17, Frank Li wrote:
> On Wed, Jul 30, 2025 at 11:15:54PM +0200, Daniel Lezcano wrote:
>> On 30/07/2025 22:21, Frank Li wrote:
>>> On Wed, Jul 30, 2025 at 09:50:15PM +0200, Daniel Lezcano wrote:
>>>> Enable the timers STM0 -> STM3 on the s32g274-rd2
>>>>
>>>> The platform has 4 CPUs and the Linux STM timer driver is per
>>>> CPU. Enable 4 timers which will be used, other timers are useless for
>>>> the Linux kernel and there is no benefit to enable them.
>>>
>>> S32 have not ARM local timer? It is quite strange!
>>
>> I'm not saying there is no architected timers but there are the STM. May be
>> I can reword the sentence to prevent this ambiguity.
> 
> if there are local timer, why need STM for each core here?

Yes, I had initially the same question when upstreaming the STM timer. 
Ghennadi explained the automotive designs can partition the system by 
running a firmware and several instances of Linux. By using the STM, it 
is then possible to have the firmware to read the STM counters or to 
stop the timers when the board switches to debug mode.

Ghennadi can elaborate more on this if you need more context.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

