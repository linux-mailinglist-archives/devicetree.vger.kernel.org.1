Return-Path: <devicetree+bounces-136510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E4BA0570E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 569CD1617BC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259721F2C50;
	Wed,  8 Jan 2025 09:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ACNpvjNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0AB18A6BD
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 09:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736329127; cv=none; b=dBYSljzg0ZkU92lgXoeob3qYk6FU5zuymw7u5EZMCqTV/D4seXMihl/ByKnbsiT+jBRRl0pC0GKzTFD27EH/SouGjup6IohuzNNZLBNXcwCSj20pogX+OF9JWZv2dZ1hTjyhMMoQeH03OWM2TbB2VvVfez8XCpJfMa60ExJms1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736329127; c=relaxed/simple;
	bh=fz1smqCQB8ex4yyzmTLxdzKTkRi8YQAovOMZKR5iB/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=By0ZiyrrGMvmB6/ObBhYfRZFY1WYoCPADC/FkIh1Axa+AeyeQ5K4BNV5S6pn6ycFF8MHq2Dykw9rsue9GOY6EN43eP1OrgaxUOGpfdErQ4t/AHjvZQrcMncrQAJHssybbh6xlWImlIntxTdT4Tye9ZxVl+OfPhDInZwnaCDXu3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ACNpvjNc; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385e3621518so7747700f8f.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 01:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736329124; x=1736933924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mDL559tBrr/c+O7uNT1qWo/LHQ82r4NDbguV4lcJTVs=;
        b=ACNpvjNcsHqJ7HFRYOM4D54vFEaw9uFUQpSH3B/Ou0XPoUO8WG6I4k+UbW9NWvOSKP
         lPtbi+HhPWUx/uZ9A4XYxMddBet3qZC9dcwV6FpWVtzTvubtJh/j/J6Ou/LUNYOQ5jtK
         SHFCg4z0HTAfjZU0inxYl8OXyrf4KnWUKvlSRLTJV0IM0AJYO5p2PNES3eXJnZIURYqc
         NO7RY6+pC/9MeDutu+Od/7Hu58MiY/f3q53KJXHyGNXTypWZrUa0aABs8n/6b/7pMcv6
         DZ5zRUq095y6LjhKDk47QHymDOBXGSpy9PEawgRn5Z+bc+bAGxpwhRhcngksPNh7AQF1
         eHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736329124; x=1736933924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDL559tBrr/c+O7uNT1qWo/LHQ82r4NDbguV4lcJTVs=;
        b=plbiUPA+OfATg+uUI2gwzdH2e99MXce+2/Yj+s9BuNi70HuKx+EKyk/bLVb+uDdqEn
         gzmJR6Hz1Efnk22q07hDr+Q4Gsezl5bP2CCmyEp2SLi9UC5A63/8YIw1iGlnuyFZppZG
         7hrvFSZPa9yMJztP7B23DgGDGtuuEVzSz1XPAAFrzyvLNiA17Abp44BeAUGVD279ox/Y
         4lQHR0WrWwFJuOStd9WO2BWm1dYKx/pKhOhhV3PpSxitNdfs9jncATVjFpiI3pFWUU1Z
         FyQHc5dYEndLa+BLa3ITrh5AMS9kdULkbFEzy0SD516cmR4obt3IBW4l8c6gN+fgmOVS
         a8uQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+jxWNkgu67uPGqmG4kMOhPIEC4QB+VJo+foCw13FlGkPesYqp274535yQprXyd2R1ozbg3wBkHOea@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3b4WAcVTEN2pda8gmdzQw7oa2nmXjEjZkYcevl9V2zyykZxMF
	8gJi8k+y89iejxkNUSYeihcNZB2mnHCAocZ/0tu4MFPy4ASNCQUDX2bLmqGmX+c=
X-Gm-Gg: ASbGnctfeqLT6MO2XWT6cqLZw+AOAfm2pNzHad/498mPEAUa1h2vxueDf5583S45I1i
	SPIlzcOAA9YMZQKUZK+M7JDB3kINxO8kVLw0ZGzRVmmS/OqE3nrHoYdTZSq4adhJIdt2QdumyVY
	eSG3KTKH8stzXxVvbZZvqVE4r26ziRLFkcDobhSNJQvZOSTIinACZWr0zd8R7qm1duS1kifrgTh
	B5VepYNGllImyPdYfGUUdWILqtByi3uEFJ/4G6vTef7LSxnP7RXkgvMafvahVJSAqJFjnkX5h9M
	i8S74FqU//+xVH3nmBcb
X-Google-Smtp-Source: AGHT+IEYud8HXrnnBRfQKSjaBRvM+YCl9Bp382tGy2B0NHlzlfFxJe7Ru+DWxpOuAvFe6cE/t2KRgA==
X-Received: by 2002:a05:6000:18a3:b0:385:f0dc:c9fd with SMTP id ffacd0b85a97d-38a8730dcf2mr1495919f8f.27.1736329123722;
        Wed, 08 Jan 2025 01:38:43 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a1c8a636asm53864908f8f.88.2025.01.08.01.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 01:38:43 -0800 (PST)
Message-ID: <71aceba7-d610-4550-a8a8-352c8dd4b44f@linaro.org>
Date: Wed, 8 Jan 2025 10:38:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: timer: Correct indentation and style in DTS
 example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Chris Brandt <chris.brandt@renesas.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
References: <20250107131024.246561-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250107131024.246561-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/01/2025 14:10, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

