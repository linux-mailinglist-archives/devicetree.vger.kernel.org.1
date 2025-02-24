Return-Path: <devicetree+bounces-150513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C40B2A427AF
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 17:20:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7071D169782
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 16:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F042638A5;
	Mon, 24 Feb 2025 16:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="haOdQ4a/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A21262D21
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 16:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740414016; cv=none; b=eoZDJIc3gZfDbiNsfmEBnJVtGRMFcLH095JMUus1qHUm2UIxSkU2yTeYJV0wDGcSR3OL0EKpQep7Ex0vrdxoKI//l/nwDXXIzuz+3aHUyJec7R6vn9SMM5GwJ2MTxhQRLDeiPdOmyCATRJapTLzF4K/Y2ePWBfd6h1hsgBiqNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740414016; c=relaxed/simple;
	bh=R5v6YkbR2bjn50laEMUSMIkldHPgeN3Nn5C5qQxsC4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NDL4Q9C17hHw+fAeJIQZDUTHg/t4AvSnK2wgxScO1GE6Pjf+AOf5Q68BfBQg8D/Wjcvn6k48w+moOMlZcBDPQEMfGmQQ9uF+tCTywdVtG9raWj9HmkUxrf48i7FJ0wzIEJK7DEOfin9eEqpkG3z8QC3rcfLyr6CjkLU3FJCYfnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=haOdQ4a/; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7272f9d216dso2591631a34.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 08:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1740414014; x=1741018814; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eOHYLBWiYUxKQTat7RFgoLjOJELf3Cnpr9Bivlggoe0=;
        b=haOdQ4a/rlL2TQdmNIW0FYKISrlpw94EqxCX3uZ/R8IM/pw/l2dyCZ2Q2pNfjNLOSy
         sl322ESNArKVHzngL76wXDklKcDv2qhU5r1554HxoHU6Y4vX6N5/HmN7B7S7a/smrkhX
         PG0DUZuYdGXYiumrgaOBrJ1ZshTsbuI+E5GkOdQ8dK96hpc7kRSNM9CEOvmYzDMUwkd/
         6GJ/0bSDVEkbyzE0cntnE6YgHtwHJFF6kRKPw95MITHd3kGTaPT+0AYVgbjqSb806ILl
         kXPrVTKow5p2DULbPIgdJitKpKpdMGgo+sgwDAmNUr9uSVenhdPiQ6ydNh7zzGGaVr9D
         eXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740414014; x=1741018814;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eOHYLBWiYUxKQTat7RFgoLjOJELf3Cnpr9Bivlggoe0=;
        b=MMB5biFUIzyUNeQEFe81BS30m/KJz+fYY8CRpVwaGHVShAAvuSQXeR0VzlE+iSgAgj
         fv5v3dvtxxFp0ggYLZYwTwcrvRIoMyfjPRAsPNAR2HCW3hYh+G4jwaSie2FZGkVPVZkC
         BorZAd0E3X55CVH/HItf3zVLlhcSDmNvYTEft0fDt3uVnm1AePrUZR1fjckjnUtLs6WP
         u4yOcfmdm6w+FF27d0UQYT7u/w10o4HlhcXdClvpM0xCUPZGB262kuMtmWHsEceHN1Wn
         FQIoOU/ALydppPv05BR0qOZzAABx2e+HP2v1EKFRoYODf3G9hoiRtGfSZVnSlCoTd6D7
         9e4w==
X-Forwarded-Encrypted: i=1; AJvYcCUSSnmjNPiSf/bWglTY4LhWY5hKsrqejnlQfZFKIwcKaEg4/kln45LLI6MLZgX8a0p9VXAvQBZym6NY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1/eDDJK43xJwIZXzHoQEr2AnP7T/CfAPz2mqO1pH0IH1Otxx+
	K10BDLRGR3haFFisGQ/YYTpg44BYfkkTAOQiITuwkOMdiluYPtLgg5xEoPAAvEs=
X-Gm-Gg: ASbGncvjvYPa5GHqcDT2R73O6yZECXCQP6T90gHySOTTRHtojk159x+Clp7p3ZWZkLD
	vOSXs0+lpghreHTjx6Hga9C9atqlNrI43yf9NjZFYCMu16JAq7HiCWsGqE8pKmqhMoVBllLcGRe
	Nx/f10SWxtLNWNQlZVl+F8yDGJx8x5VHMVZferQQA7Rnwjc3dVEFZJVlBSWrclrL2uFnc1NKr1U
	3djFcgdR3gnFCUVeXAwmzLD058f/MhSEFXA7vsthZn9BylqddmVVAnjeygf6RvpC7hOW7zYTRcX
	YIiIRd7xOsuZql6QnF63Sj9WpoKfvrodZPDCZ/AmmHkL2WJqNP2FrTvvi8XVgnXIZQ==
X-Google-Smtp-Source: AGHT+IHSwDG2ie/f4N9Ahbr7XlPERMnwlDlbUwaJ7is0FQ2FtRKqXqhYc8M1ZvWovuYYQTgGyn3vKA==
X-Received: by 2002:a05:6830:71a2:b0:71f:c1df:121e with SMTP id 46e09a7af769-7274c1a1a0dmr13046254a34.8.1740414013917;
        Mon, 24 Feb 2025 08:20:13 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm2656892a34.47.2025.02.24.08.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 08:20:13 -0800 (PST)
Message-ID: <1efee202-7b25-4d4a-b9a4-9fb5bdeaf542@riscstar.com>
Date: Mon, 24 Feb 2025 10:20:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/5] clk: bcm: kona: Add support for bus clocks
To: Artur Weber <aweber.kernel@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, Stanislav Jakubek
 <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20250216-kona-bus-clock-v1-0-e8779d77a6f2@gmail.com>
 <20250216-kona-bus-clock-v1-2-e8779d77a6f2@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250216-kona-bus-clock-v1-2-e8779d77a6f2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/16/25 10:12 AM, Artur Weber wrote:
> Introduce support for bus clocks into the Broadcom Kona common clock
> driver. Most of these functions have been adapted from their peripheral
> clock counterparts, as they are nearly identical (bus clocks are just
> much more limited in terms of allowed operations).
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>

Seems like this was easy to add.  This looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
>   drivers/clk/bcm/clk-kona-setup.c | 116 +++++++++++++++++++++++++++++++++++++++
>   drivers/clk/bcm/clk-kona.c       |  62 ++++++++++++++++++++-
>   drivers/clk/bcm/clk-kona.h       |  10 ++++
>   3 files changed, 187 insertions(+), 1 deletion(-)
> 
. . .

