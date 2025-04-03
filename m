Return-Path: <devicetree+bounces-162961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E38A7A673
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 17:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4284B179611
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 15:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8497250BF5;
	Thu,  3 Apr 2025 15:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AhroqBEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDAD24C080
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 15:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743693681; cv=none; b=VhhJT8alVbWqJ/yDYWYmzkgoWmdJnSm5oT56wrves8KvzFyjkJKWtYhmeRkWb9rBHAKQGde3AODuXCUvnnBYtAWy4vjoaYzpwL9V9eWyK94PkZ9ZEa4kcYdAZfPmLtEcWsg3v4jWnG4+Cy8mi4Y0bYpJav8xvTEIFmWXR0b3Uwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743693681; c=relaxed/simple;
	bh=7BYAU7FWqgp7VAH8vNjlWZeSog6QTqHnJvWr0crzcfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l8vwm3Hbtxa7N7MOgEi3VAwxFd6OC7m9+CokXHdJphiAkPyBPt65VNdv4aJOK+vreIYF1KGGe21jOny8GPqClXbLo1jV1NGQ1IEzjMzoCLOBwHzj8AQIrsXL0rq72Fr4OP9pYwBhX8mNeIZz3ZPzUry1FWa7iRlmmNPWORA/XFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AhroqBEX; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39ac9aea656so924356f8f.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 08:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743693678; x=1744298478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LLzRxbLbGYqFEY7hyGVV9DDJqGfYqDcrqrelLGxLjeg=;
        b=AhroqBEXbCFTlHKBfAgoMN0g5OWIMnoaPsVMASuHluxkFNWXLBthuR1n8IGtRLzwmQ
         IYZl6Aex2c1DIvMtdWdYNMyegFPg0r6llYdXu2TuUba5pstb5B5lIdWcPWI51ydVG3qm
         YwrcMNWiX0wKD3UqfpbZwm7tXG573ZrEpQWOzgu6b8qIHdOGfynIjgC0G5cD0QwfVrsg
         yifvAude2NCcnH3FYyq+TeI1ipIfSZk2plZr8qyPg6rZFTWGYRbjK5HEmPqBu9pzwUhx
         HvDDl/Ah6KgmQlkDpEag+86mZKjisQ1CG5OD5ClW58q80y2sA4+x8HEOzwjEo3ZJoAt3
         PIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743693678; x=1744298478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LLzRxbLbGYqFEY7hyGVV9DDJqGfYqDcrqrelLGxLjeg=;
        b=N3doyhRwv6huBdYts9E1fVyrRm2Vltc9dMH59s7odE8L5ZTY1mrvEzGb3SZGsidc7r
         xYRWHKwlaimhkMjUwEOIx+/iTeNphn8iz4rbelZUdRT0v197x9Eu9dCtIL5X7ky0IK16
         CxNJ31SamGdhKtEUdpdCINp5MNAYVJFT7UzBVBIvPsfpm4St/PsxEBQU/LsMLvb7cjBM
         Z8O1CUijb3IPUol0qvQv/AAcJyBqgMLnQcY8+iworSX03i+pC1+xuItJLNDDBD63vyt0
         cy69RDOVyArKzws6PBOSpVUPt1ocuKJB3RZxQsrxUXU0CPhc1uJENgjYVR6J5MNY6TcL
         GyKA==
X-Forwarded-Encrypted: i=1; AJvYcCUhhd3aYQVFLvcj/BD3YmdEnycQav0SBHdjR5tWOk6933ID3Cq22M35gp+ZSgtDGdHNjZ4CeLJ+0PwN@vger.kernel.org
X-Gm-Message-State: AOJu0YysbbnniSJUcGPPIVrhqBJQg4iWWH3FrrKzW031Sp2fVcVU3alc
	HYoYxFDjsSAMRQqWzqIPbplEC8z2EZb0I4c3WN/kFxmS5PZDu6eT1gfY4zJIrws=
X-Gm-Gg: ASbGncs+ISGkqouB14UefW6ZJw4X1qq4MHRaMZJavPcv0Pjl56NU60OSqWVHzRlpjJb
	k9vJlw5AhnJMVQ5GFKEDoSyFJc9hZ534Th0MgwyaKv51CEzfruOZZ0yLN5Sea2bIJmPopJAUwGJ
	k1wyFPifarjAJPxjgArN5FAdkc2cOR9ZgTfVEXfS8zEijROTB+DLer0muqWYJTe0gy7fZ7EH/iy
	SEm/Erp1jWoyIYfEcpoojY3eFah/SajOW1gWmLXlzDFUpMvKpNglWye0s31slT/URhyxd14gG6q
	4IpbKcn5cdrteI8fobttgNM0Z1YUT9o0/FhNSQL6BAjUjZixYRHP8Tnnohy97VGw3PuSJK+4RO7
	172MexNer
X-Google-Smtp-Source: AGHT+IGw5ghzd9cHyGdFKWQ5WVPa7dVeNteHj1/e+hjpE89/v7AeOKF8SPeYMkbL/YLt+h17xVXsbA==
X-Received: by 2002:a5d:5c84:0:b0:39c:1efd:ed8f with SMTP id ffacd0b85a97d-39c1efdedbemr11060254f8f.50.1743693678287;
        Thu, 03 Apr 2025 08:21:18 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43ec34bbd9csm21302405e9.20.2025.04.03.08.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 08:21:17 -0700 (PDT)
Message-ID: <67daf656-0e08-471d-afce-22ba8f2fa1f2@linaro.org>
Date: Thu, 3 Apr 2025 17:21:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: Add NXP System Timer Module
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org, thomas.fossati@linaro.org,
 Larisa.Grigore@nxp.com, ghennadi.procopciuc@nxp.com,
 krzysztof.kozlowski@linaro.org, S32@nxp.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250402090714.3548055-1-daniel.lezcano@linaro.org>
 <20250402090714.3548055-2-daniel.lezcano@linaro.org>
 <2503deb2-b993-7fd1-adf3-cafa1e7bd2f4@oss.nxp.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <2503deb2-b993-7fd1-adf3-cafa1e7bd2f4@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/04/2025 08:33, Ghennadi Procopciuc wrote:
> On 4/2/2025 12:07 PM, Daniel Lezcano wrote:
> [ ... ]
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    timer@4011c000 {
>> +        compatible = "nxp,s32g2-stm";
>> +        reg = <0x4011c000 0x3000>;
>> +        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>> +        clocks = <&clks 0x3b>;
>> +    };
> 
> The S32G reference manual specifies two clocks for the STM module: one
> for the registers and another for the counter itself. Shouldn't both
> clocks be represented in the bindings?

AFAICS, there are two clocks as described in the documentation for the 
s32g2 page 843, section 23.7.3 Timer modules.

The module and the register clock are fed by the XBAR_DIV3_CLK which is 
an system clock always-on.

page 1994, 40.5.4 Clocking, the documentation says: "This module has no 
clocking considerations."

 From my understanding, we should not describe the XBAR_DIV3_CLK as it 
is a system clock.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

