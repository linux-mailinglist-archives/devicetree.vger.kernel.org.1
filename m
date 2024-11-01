Return-Path: <devicetree+bounces-118123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE829B911F
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 13:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28AB21C20DE2
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 12:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A075E19D08F;
	Fri,  1 Nov 2024 12:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xdH0TcYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D108C13C
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 12:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730464170; cv=none; b=YVAYQi1JQXU/kGvB7Lc3hFiS25yay8eMRQOcO7ihqGVb9jboANbjy3X09R+FIgn2UqDyJodKh12uPbXwDFMak63A8jkxep5wj5mjqPR05B88K/Ypo4wyhuFvAQPE5xXw+2duNv/I1G1dIZgwmKJZX9GS7gaSwZsiMMfOlkscszw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730464170; c=relaxed/simple;
	bh=LfkUxi30J7XZTgC+jEuHIwl8b+Zfd3uc3w+dbK/9Uss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JBLY9poLsUTy0bCNFCK3dmNdL+FNHoe0OO804RqiOZqdllqBtcpk6riBLcrGj3f2JCISwCNEoUOrYVgNuXVs+1mkfPb4zXT1XiOMWtVgrL3Gs+b3wrWg2nwQCq79oOUpobT3AoS8iNMS05NFdPMw+hViKI6J0sdtdIWQLpvdiXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xdH0TcYZ; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-37d5689eea8so1143615f8f.1
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 05:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730464167; x=1731068967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6PYW2VODU+6ARkfOsKMX9HiT8wjTVrQXTg+TMoq0+tk=;
        b=xdH0TcYZXLSOgycmYCeVtfz7T2HP+D5xDSUlUqkgvahpqIser0DzGGkeaaCG29mDRj
         8kTGP0umKMlh5DRXmBmRxG7+a9nFozGjVt9+UxYevzjqgXL4wAoPFT1/+lYb4bxioFDr
         qdU64qSES4EVgBLgI1u41W4E0y1RllrOozl94MaMDxEBVa6h4djreY+IsIn/n9w0PEBj
         DjEvy43H8hDH7kiHIhVvg62RSw8G0decDybb0fVqsg9ZRgZlSwvwZFZAZ6v5oN8igjcB
         p+vaISDIN3JFle2cryIjxt/GuYEyhPwwrg6+d7ZUVExaC842TdJuGBwAQVSajswpnknU
         kq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730464167; x=1731068967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6PYW2VODU+6ARkfOsKMX9HiT8wjTVrQXTg+TMoq0+tk=;
        b=RHv11tZ5s35X3EhUd/qHziRyvoRnwlPEipA14BO0SG3bGRD5Mkdy10619yUBRtNlzQ
         NFbEhP1Opjne3Fj+l7w843mJzD4SUldsNI6kOAQrI6GSIRh+50dL1BXl6fTXh7m9CCE0
         u9xX3Vu/rCj7tqCQY9SGPKSdx6oZUmbN/CJD55hONgJHFlDjjJLFPnj4ZBjXWba4OgT+
         qByPI0zsgEuN4CafKCEdouw1D+cR8SHaSHtaw1TwRKmeLg4kOD+nodDE1wrhPYVWBmrz
         NbSUU3Tb6xWosSXmaWYPNnNBu13RdkDbi0WbsFflktXlFA3tdtiGuGgScxJwy4z1QZRa
         PKiA==
X-Forwarded-Encrypted: i=1; AJvYcCWTmiv23X1UPx6RAt1be/safKFL+sQMLVm1pwUFDIi3rtlL2GRSlYhG0IGLhH/bLu+OuT3mcxQwZZLy@vger.kernel.org
X-Gm-Message-State: AOJu0YxiO7rkNmQs4YYZ1IcUQQscHEmKyvLArM/3dfy2/UN1npIPUeCQ
	YPd0CJqpfUg8x9gEp6DnXrQwLsODRL12Gpw5oNy6L+DKkx5IlXYIGOv0wDbVEjg=
X-Google-Smtp-Source: AGHT+IEexgLpdNZzNx7qKEixOWvz0WoBXAOf4WpMS8azuyv76BwBUIhQnnmrQYq6kNbYJFzHI4wWCA==
X-Received: by 2002:a5d:4fc4:0:b0:37d:52e3:e3f0 with SMTP id ffacd0b85a97d-38061200becmr16575623f8f.44.1730464166764;
        Fri, 01 Nov 2024 05:29:26 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10e734csm4981745f8f.60.2024.11.01.05.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 05:29:26 -0700 (PDT)
Message-ID: <7be231c6-a5b6-41ec-b43d-cbba07e7c448@linaro.org>
Date: Fri, 1 Nov 2024 12:29:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] clk: qcom: camcc-qcs615: Add QCS615 camera clock
 controller driver
To: Taniya Das <quic_tdas@quicinc.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Abhishek Sahu <absahu@codeaurora.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241101-qcs615-mm-clockcontroller-v2-0-d1a4870a4aed@quicinc.com>
 <20241101-qcs615-mm-clockcontroller-v2-4-d1a4870a4aed@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241101-qcs615-mm-clockcontroller-v2-4-d1a4870a4aed@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2024 10:38, Taniya Das wrote:
> +	.vco_val = 0x2 << 20,

vco_val = BIT(21)

> +	.vco_mask = 0x3 << 20,

Instead of bit shifting couldn't we just use GENMASK ?

Aside from anything else shifting a hex value by a decimal value isn't 
the clearest code in the world.

vco_mask = GENMASK(21, 20)

Much cleaner.

drivers/clk/qcom/gcc-sm6115.c

Same comment for all of the bit-shifts in the series, I appreciate the 
shifts are what the downstream code does but BIT/GENMASK does this job 
better.

Once fixed you can add my

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

to this file

---
bod

