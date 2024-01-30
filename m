Return-Path: <devicetree+bounces-36621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C3B842059
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D41E5B321A1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E48F86BB47;
	Tue, 30 Jan 2024 09:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K/KGaXWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1675B605DD
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706608504; cv=none; b=dVDp8EK33OVLHIDQx1Z05A2Rt8yJN7rlzQN2GDjo+1ED6KRc6wKO1e6YsmVAjj2sdCGciP5neNUZ0vZDH9udhQwZVxTN3FP+dEe/P1w6zfRbT2B9Vk4NAHQHzuNnWsnlVmWj+XyAO4fniQwEJ42YAGNUGo0aN/9tYRa6zrVPai4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706608504; c=relaxed/simple;
	bh=GfBdeJzGb3Dr+4DHZv3lavSCQwPmP/68TQMZyct44Rk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ofM03fiTacaf0LxOVMRPK1OQPA+ZkFxRe0x9C2TM+ei5X3NgEZQmYUlOD7pZa7KRFTuZGRqYhGipE6PLFr2gAkXFRlW0IwoLkm7+2E6ZO1w6Bhu0tTScJWwXO9dZZszwBhW0founal6s/dgWZE4lIbHNdaasCej1NpEVJKwQk+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K/KGaXWQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e76626170so41999615e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706608501; x=1707213301; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jeMbeD/uNn8B0S2W7XkIfdcJDUpQv994E+HPOf4FW6M=;
        b=K/KGaXWQcJx5zyGhPJGKxmjFVxZLxP7NADo/t2yHW10WubTJakqlfMrJvZiGRzT7kq
         4nQ1xet+uR3epVqsUj+4XdKqVz6Yil0+3Nc4z2h01Cq71Xc/gotBNveMBTB5tY7rbHeJ
         EJRl++0Bczn73RmALoVorLenShYS5yhQF8SrjM+fILtwfW8UlIiKo0Fzjf+djviCuHW4
         MlRuA7sRwkWVsduefU4nViI5/zOFX9wAdXEfKy9KFTRXXrMySZhFstPsB1NM/4VJXIjf
         1vMooIHKrFiQNWACp15G5pYzwkdh5RXNiRmvcZ5YKji9Vn9wHIi/bo+EuevEEyPye5BI
         mdXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706608501; x=1707213301;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jeMbeD/uNn8B0S2W7XkIfdcJDUpQv994E+HPOf4FW6M=;
        b=Jy7j4oSrAVTrbmeubNu9DgSQlqGIO8lNmYkEdX22+3KCEwYQK7Sxs6EifTypDd+mHQ
         n6wsA8Ob0iWOgY1AY66G5MVUqV/0kpn7FfqtLcl2HcvRbJk3fG8binUsvEcouCW7OWWI
         pZu4mqCAupJjzJl+ONtuGOuzQnARtJEe639MSFtgN66JQHnx0JKZvc9nSvqaGcigQ64y
         tbpMKuS+JS+rcTMJ6Q6nSkxKEXo184dBikicac27l5gAXJk7vTh7iCfTGOsyPgmihMR0
         cLRVtfgCZLfFiP6BOsi7ZCMTmM+MY2E10CHYEn6aPr8SMTsNlPBhU79MD27dzA1jK8z0
         VIWA==
X-Gm-Message-State: AOJu0Yz2rGfSeJ2V/L7jS/Syyn1VcvmpDUM5UnPibND/4y3JXuw9/yn4
	+9GhyzezZmhTwOI9bhpS+uEnjtsvie4LQMlVlthqpvdNywBj+Npa4C45SOLBLV8=
X-Google-Smtp-Source: AGHT+IF92jgiXA3xKHufpbtgSPJbMRgX2vYkkXiWhwHoCA53f8jLGKT698ChHJQx170BU5WnhsFzzg==
X-Received: by 2002:a05:600c:4f06:b0:40f:afbf:804b with SMTP id l6-20020a05600c4f0600b0040fafbf804bmr75754wmq.22.1706608501360;
        Tue, 30 Jan 2024 01:55:01 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id bn7-20020a056000060700b0033946c0f9e7sm10388135wrb.17.2024.01.30.01.55.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 01:55:01 -0800 (PST)
Message-ID: <beadeaae-d740-47b7-9de3-3be7d9fbc586@linaro.org>
Date: Tue, 30 Jan 2024 10:55:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: timer: exynos4210-mct: Add
 google,gs101-mct compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, tglx@linutronix.de, conor+dt@kernel.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org, andre.draszik@linaro.org,
 semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-2-peter.griffin@linaro.org>
 <e4288d81-cd0c-41cf-989f-85ce10d5904e@linaro.org>
 <bc643c81-ba84-48e9-8805-a27ca8d9acc5@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <bc643c81-ba84-48e9-8805-a27ca8d9acc5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/01/2024 08:33, Krzysztof Kozlowski wrote:
> On 22/01/2024 13:11, Daniel Lezcano wrote:
>> On 22/12/2023 17:53, Peter Griffin wrote:
>>> Add dedicated google,gs101-mct compatible to the dt-schema for
>>> representing mct timer of the Google Tensor gs101 SoC.
>>>
>>
>> Applied, thanks
> 
> Daniel,
> You a week ago that this was applied, but I still do not see the patch
> in linux-next. Can you double check?

It is applied, but I did not pushed the branch. It is done now, it 
should appear in linux-next soon.

Thanks for the head up

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


