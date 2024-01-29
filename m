Return-Path: <devicetree+bounces-36384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A3125840BE9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42C971F240AE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B33415699C;
	Mon, 29 Jan 2024 16:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F1K5H5Ua"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F5E156989
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 16:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706546374; cv=none; b=D4v1dqxHHSYIx9uBBPjdAnrmtX3L4XtSStk0VbJHNgq0ZRC9PukLKUa+7EpS41Uk4W1Xg/7XP7uK4heRhHJOufc9lK9eJf9395s2hkL8ROvyKeCzXTEm90a54ZEv2R3maAEdZz3FUqwFiK2uuztrKmvnsNE6hdXfklSoeFYHcco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706546374; c=relaxed/simple;
	bh=FHWcQrg6EPFEvmqH0eQBPKt2FvYxr1H8cD66r4DY7e8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=LY+oolAujzoxowGKC7biH2lEifutR5eLQYlaUIu0jBCmysdI2F2QE0b56+pWSUp78QrZuAXGjUOFAOWtiy2tK4ALdZmoVsFW/had6VmRpoSrf/g4zr4q3nQBbloyCJnSgNTPEul/Z7JfwHJhXqIgaImm4z48xezALxbmaVw+AGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F1K5H5Ua; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55a5e7fa471so2868300a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 08:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706546370; x=1707151170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FHWcQrg6EPFEvmqH0eQBPKt2FvYxr1H8cD66r4DY7e8=;
        b=F1K5H5UapKoSNF5GUgOX+j38iOj2vhhZz10491sXdIKaKohFfnIM5rUDr1QH/XOX0p
         m+qF5X/ZuqAahZa+cvjnP7/twJVj4jirpv0iaspI8PFszai28fFR0Tek5d5x1mBYyhEq
         uZuff2MloW6GExb/MAaR+TQR0AZUYCAC0A5LEWPpkv9O2Q+vSFVkJ/XnnmvXywlBmQco
         o+J9e2Gi9mInp7Rb8ePqYvbvmIY3DoMJ0cBxBvFN+KkxvuvHfwYnkRhjsLX9MdsIfLJo
         vGhyYl+2OoPe1AeQoxmTTWd/2Zh1t+UfQT2RPWHcKipfwAa/A97nSSL4AOoKmnYcyr/m
         dOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706546370; x=1707151170;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FHWcQrg6EPFEvmqH0eQBPKt2FvYxr1H8cD66r4DY7e8=;
        b=PUYfDvA3QGXdd0/x0DyGTJpcweLWC3UvpDcvQnT3wiFiYo8CO9GrdivQvr/cPBW2eH
         SWy7LMgY134vQb0RRbGoFRnJ5PB1JtZmOVPcIixBLXd5GFfEcZNzRymlSmQvsxZ9w0b5
         forFxxn89xW08gx7lXMWB5XrNNO8KyySjBdqOImiLkfQCYw/9kUvzWJnEH6PCmojB1Fa
         HTkR/Tkg+SBr2xfvTThY67ER50KQZgJF5rndIp06Bn5cyzVjoaFuU8uQSd/YF0inkox+
         bvFDcrDW4yTL1r7vp5efj4OlseMV/F/uRlIpNKAU41kbUE9Z3DQfZlMANyntAhNYdoCv
         l9Sw==
X-Gm-Message-State: AOJu0YzIGgTdS7FhPme6jTSZHelN8YmIB1shMgwT2obrtMHYMgilAHfz
	uIQq4gC+eRdaW/liNZkUEu9CiGK7RN8gDGAA9JXEOVtsCv1P8WmL5+V87Q9+Ygw=
X-Google-Smtp-Source: AGHT+IHveaykAe2Gia9VkRGdUa1J0oM6GKhDfkmqjb4vj/R4B7VKKzRhqxrMC0YQ1JIZV/AEwS61uw==
X-Received: by 2002:aa7:c311:0:b0:55e:d846:ab4b with SMTP id l17-20020aa7c311000000b0055ed846ab4bmr2834528edq.20.1706546370544;
        Mon, 29 Jan 2024 08:39:30 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id n17-20020aa7c791000000b0055f283314e1sm328438eds.43.2024.01.29.08.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 08:39:29 -0800 (PST)
Message-ID: <0de3af8f-8f12-4246-81ea-3a3a2982983f@linaro.org>
Date: Mon, 29 Jan 2024 16:39:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: exynos: gs101: use correct clocks for
 usi_uart
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, semen.protsenko@linaro.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20240127003607.501086-1-andre.draszik@linaro.org>
 <20240127003607.501086-5-andre.draszik@linaro.org>
 <6ccf359a-faeb-485b-8047-fa61bb1a3fc8@linaro.org>
In-Reply-To: <6ccf359a-faeb-485b-8047-fa61bb1a3fc8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/27/24 04:03, Tudor Ambarus wrote:
> We'll
> come back on this matter on Monday.

I tested (correctly this time) and the patch is good:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Tested-by: Tudor Ambarus <tudor.ambarus@linaro.org>

