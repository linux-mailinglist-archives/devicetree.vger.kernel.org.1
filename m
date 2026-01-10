Return-Path: <devicetree+bounces-253489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C46CD0D7AE
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 659C63012DCB
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 14:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3872B343D9B;
	Sat, 10 Jan 2026 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EecNqfHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D819223322
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 14:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768056544; cv=none; b=UD0B7iD3nmpCKS3/B7LHvLWyY4FwUv5yuE1OAZf+GX63zddTKx2L9w4SS5Us0gHNTOr+0zdR6atRsO0+oDn3/p0Qd9glZ+Fa6uUlZ/0XhNPGMFVuvFkM/o8mz8yj443TCzjK0Ans0yPF64/LZYUgRWUcSA6vI4D8SWYgZXmjEuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768056544; c=relaxed/simple;
	bh=8cZF88ZHHeswEWIoZ1XSpuokeFUHz2t/rDtmfT1Fb54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b0vIoduMBxi2HHSaNClPC6XJwrp7DtPSHmQBXX6rj6hSmW79Iz/j3EmEuOWM7ozJsYlRl2Enqjgs2QYOKFsVwPUHOhHLJM6AHKUJj0XS1gUppCVGWUTmQPMWnzhUgbqh/wtqjvAsYNQjE7oFlSLo5YjOws00cjoq3VxpJhdTmPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EecNqfHS; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb2314f52so2657563f8f.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 06:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768056540; x=1768661340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHk6EgoNk8lP2vqJMYUzvRzyl3K2JzNhjFEm/rJg//s=;
        b=EecNqfHSZs06v18jqARlP9k1rRdjxC5rUdz/jxGgFVrZljBbTmYS9L0TQobkdqccxN
         TTe2xjZtAdjKQ57catv9RuhOA2LeI5qXpQYtyGFLy1B8mUnqC+1Wfrc4bF+zjsQjK4en
         V9sGY/5D9wzFWxSLIrSHmL6MnugPw62J02oboA4OVLBToaF0g1oEbYvWvK9PBC0QAqxm
         X7DfQ1R3AeNHbmI6nAlJTc569VGTwaIOA4MTx25J+sVjBzQW9DAOpbZyVU3yMYPSVaOR
         vn/4Gg+tvob/2yq4G0xQEIgD6SjeC4Fn4rnONlaSH7sfgZxhEnI/kLpOQMR0nl82B0Wt
         AJHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768056540; x=1768661340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IHk6EgoNk8lP2vqJMYUzvRzyl3K2JzNhjFEm/rJg//s=;
        b=KR/PwvnFJ2QOeEIGHpYJJYgMzK7IQH/uE9csVdc1qHr2LEmQlKM/pwLZ71j/0CGjYp
         4UIY4r21b9O53N+wmmQegJTR8o6GzIGM7emaEvR/2QDyXFQWrysf4aiZ3PoyY9iXhYZo
         DxBlwOirk0V+b8rE9pUG4R/Y707fSKu3IsLyizquMg23vjf+QTmtA2ukJjgdVeQrn9L/
         3G6zJmnmPQq6YxChr7Y0gHOEXFutymZ93hNwQKnaVdRwuq2kYjIl3SDZNxxjVu+yeBdj
         Ohe6kfqE67KDnLbqmPj49YwI5vHRhSqfqJu0Zjz1ZsvHJrc3n7cPTv5wd29lWB9QAUlR
         l8tA==
X-Forwarded-Encrypted: i=1; AJvYcCX6TUBAYw04qHgeHzNFi5WAusvPBz3J/m//QRMRwzRuayy2dlh/XE8TAH+CPDTSpjMyMbrCpVRg4ZoL@vger.kernel.org
X-Gm-Message-State: AOJu0YzV3EPmrGd+eXU2S5YQghI6C4DiB3JMuOj7cLq9lP30mu8AFlLF
	w6KvixpjtszGDi/JPaNOGCz9Jmj2F9e22yzSdRcIk5VfZHSmzDKmBzwmXZastMQh5l8=
X-Gm-Gg: AY/fxX6xWBwx6pbNDHuTsatWkdEQJl8RD7lmfWBTIsWnygufub+E23tFV1LwX4yHAIa
	qVnr9w/cSqiXE+0n1Zop42fdEA+m69vtFlCiA7pB4wyizoiYheQczMYwUn1Uzf1cPT2CpU72kny
	2dXgzsRxT+laixMukG+IpdEbowRnAdpqZ13ukDNH8j/cY4nz6gpeQvWrQEh5sRp3CaodqtEiD9T
	1DNJRzGw9SqhaDemwcgcHmFjn5CJcowhJlt4wj/8xKZp2Yno6aU+xkeWqhA3bcF8MZL7ZxPfH4q
	RllJJEYEM7ilo/gm41P05bAvFJwPBHrLvQvktV4FzUfUq53wSXdWLzXSw3l6pcp6cIIhMSD2zQ0
	RgOD2bJyzdqTPjiXypwOxZNVrtGMTaUcRlMPltQApFc/45egkdCZ6uPutKMIWtpe0AEjAUOliaC
	9hO19WiRqVvnIp6IxsgCVzx9DPyey/
X-Google-Smtp-Source: AGHT+IExDiyl6+cMqnLU0OScR46v/DhXxaFlI7KfbIz5c0gjBYd8wiO/Eo5iH1Cn00OMlkpwekH3Hg==
X-Received: by 2002:adf:f54f:0:b0:432:e00b:866f with SMTP id ffacd0b85a97d-432e00b8b14mr2891143f8f.60.1768056540373;
        Sat, 10 Jan 2026 06:49:00 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dacd1sm27764794f8f.4.2026.01.10.06.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 06:48:59 -0800 (PST)
Message-ID: <b0dec3fb-51df-4bcd-ba13-c2049695266e@tuxon.dev>
Date: Sat, 10 Jan 2026 16:48:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] ARM: at91: Simplify with scoped for each OF child
 loop
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Miguel Ojeda <ojeda@kernel.org>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@google.com>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Nipun Gupta <nipun.gupta@amd.com>, Nikhil Agarwal <nikhil.agarwal@amd.com>,
 Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-clk@vger.kernel.org, imx@lists.linux.dev, dmaengine@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org
References: <20260105-of-for-each-compatible-scoped-v1-0-24e99c177164@oss.qualcomm.com>
 <20260105-of-for-each-compatible-scoped-v1-2-24e99c177164@oss.qualcomm.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260105-of-for-each-compatible-scoped-v1-2-24e99c177164@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/5/26 15:33, Krzysztof Kozlowski wrote:
> Use scoped for-each loop when iterating over device nodes to make code a
> bit simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

