Return-Path: <devicetree+bounces-45989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 893DB867973
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 16:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D38C1F2BD2E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10B5131743;
	Mon, 26 Feb 2024 14:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oqqs7shT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C189012BE9F
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 14:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708958686; cv=none; b=EruFUvx+NBBAtZtUwdrVDuW1OBPRIjD7uniKM7oMvxPbN0Cewyj6oP9xHrmLdoaWr6mI0KFj4809FB2m4tzYmAwvq8VEUBaoXREROZbe6TBaXGsWju+pYQlc5hhDnJJ9jPUnqRkRtFCGWCeaqUKU3DwgxHZpsNG+TdskWYFbadA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708958686; c=relaxed/simple;
	bh=+7EGPxI8njojWIFtKK0niBxOgiA/ror8Zq84fmjVI+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IK3yrN0A9yHlivO4f19q8fNQMHah87gXpQSncqW+bobmcB/8gqWEjul2BFoWq+1IVKbpSvmVsb//KbX7M1G7AYz8IvmcKWIN4KHqHy9OCtX2U3/EsbJ730V7zOxsNMAGL5NEV8lBWHJo1RcQABD/KGOeIbgmH6jQhdysYeiW9cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oqqs7shT; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-412a882bd4eso3565595e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 06:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708958683; x=1709563483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xebCF9Rlp7+lnTRinKmQM1qUIifmCWo6oOreD/07nk0=;
        b=oqqs7shTGESEKQNn6q9EY0l+JAG9rPGh9KneyUKyY1Gb/QVjOzpdbXgc9gc7TdXgKW
         yzIWcNlbH0QNXTfH55/oeUkSA1Tx2roq1KL9bb/smfdYRgPWuJF8PZ6MDMP/uuKJAMHA
         lL9g43jLJKeyD0Ktc9YGjAfYUKYb5iq0jcA4DMRU3JtaiU9D1IcP6OwsMqApQtRx+y6Y
         CMZpIne3ANYaKB5apSijLkgSG5F/hbVOAHoqcC01KkFhcdM4jp9S18Ezj4fYVac1DTB5
         HAmUafG5tWnWHduUJf9Yfa2J3nnR2v+bOez0FE4dCY2m0t5bLf3dAegtdkwsVSsAy6Li
         0vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708958683; x=1709563483;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xebCF9Rlp7+lnTRinKmQM1qUIifmCWo6oOreD/07nk0=;
        b=hW63VDvPhzmrdCDSgjjvYQID1UvaHnQDPZUTkVUuWXDtEitOMKvoFXwsCv57NnkMLI
         W9o85rhkSqb7kSsQiqGdEipvCv41qFjHDCKxRWSgzWNWnQ/U9H93gd7TrQxAaaX5cByZ
         G9YfLGFN6Ohq8NZnCp0L2GsDNkChWxtHD9CTMFECWG3EiTsHA4lSxm9NKcqG2kwz07+n
         SPb2i2vA/j81YlrqSD8E/K4rbfP74p6bMHSL0GpefjUWo2jPBhbVBLi4+qojSzHi9jYb
         2vfck1El55hJP7f+rGiUIYwpB3XM9esqrXqA9poSo0dCsBl6QYVLG32UOczGZQA1nfcg
         Y5fQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnfo2gUQXsdRPS8ypqe9FAJXmfTKyiT8W/QNPs44Rv3aZ18zBO7Zlnl3312uudBkoKhiu/0jI22AZeKh+9XWmAG1OS+LGnjC1ZQg==
X-Gm-Message-State: AOJu0YyDt3Po9axs9p1SPuZGcVc5CWWTiCPGdPWI+8/MpNZDUx1Pg2b4
	2091UH0zT9BM5NT4E1L741Z+lfV8V1n8UskXpgQA4j3V+Y7arToQVE11BFqRRs8=
X-Google-Smtp-Source: AGHT+IG9SpqrImlSczgJxnpgDOf0lff+zMPddH3C9S1iodwRZL/rSMYdzPAPbQ3AXMmt1pT+Z1JJIw==
X-Received: by 2002:a05:600c:35d1:b0:412:a927:a646 with SMTP id r17-20020a05600c35d100b00412a927a646mr582114wmq.24.1708958683167;
        Mon, 26 Feb 2024 06:44:43 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id n1-20020a05600c4f8100b004127ead18aasm8586036wmq.22.2024.02.26.06.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 06:44:42 -0800 (PST)
Message-ID: <46630fa5-381a-4006-ade4-2c18e76331ff@linaro.org>
Date: Mon, 26 Feb 2024 15:44:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: timer: Add support for cadence TTC PWM
Content-Language: en-US
To: Mubin Sayyed <mubin.sayyed@amd.com>, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: tglx@linutronix.de, michal.simek@amd.com, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240226093333.2581092-1-mubin.sayyed@amd.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240226093333.2581092-1-mubin.sayyed@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/02/2024 10:33, Mubin Sayyed wrote:
> Cadence TTC can act as PWM device, it will be supported through
> separate PWM framework based driver. Decision to configure
> specific TTC device as PWM or clocksource/clockevent would
> be done based on presence of "#pwm-cells" property.
> 
> Also, interrupt property is not required for TTC PWM driver.
> Update bindings to support TTC PWM configuration.
> 
> Signed-off-by: Mubin Sayyed <mubin.sayyed@amd.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes for v3:
>    Add Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>    tag
>    Remove bindings from subject
>    1/3 and 3/3 are dropped as of now (WIP).
> 
> Changes for v2:
>    Update subject
>    Modify #pwm-cells to constant 3
>    Update example to use generic name
> 
> link for v2:
>    https://lore.kernel.org/linux-arm-kernel/20231114124748.581850-2-mubin.sayyed@amd.com/T/
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


