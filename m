Return-Path: <devicetree+bounces-219389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE4B8A920
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6426C1CC30CE
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A552262FFC;
	Fri, 19 Sep 2025 16:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vq/n2zKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165F1D5170
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758299526; cv=none; b=DjaqsXBes5mQSxq3f+fGqQN6dpdNNCN9hX2Nif/DYVhUCpH4Cdj969IzVCgU5ZCloGbR5hIcd+Vo5X9VqHyxs5vhCfo8Qv5l3vJ8M5wHdvQxHIYxriBOzFH/J/z7WVEJ2eS8FA39KaNeohcD+nx8zoUWyOWXrXLwce3PoNEuz9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758299526; c=relaxed/simple;
	bh=ULcb+FE9bT1bV8ajTFOQ1Xgw3/tTX2YNU2J6QFlnqKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z74wqcytn9N75aS53ZQKrzZt7nkVwqwPU+GIdc9ozd1M+4Yhr0yvxYC9LTCulXXBj1fPIaax3rwSqSZIH3lC9we/X+R/7vVaA6BgGAkM+MishM5NWiDvMLzvWDIWbIclZJ4BpBLd2niOs7JcZeIajkOeVLyRMPRMKfsUjOCx4z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vq/n2zKT; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ee64bc6b85so1013517f8f.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758299522; x=1758904322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W3uHcZporxbBE1WPZdYvszS55+oRtlQmqDOxaEQ2fa8=;
        b=Vq/n2zKTQFX+wluJP/w3zmFLOaexzmXG1I0dyhCh07YWeTn3ZZTbpYlZHw7dzNrcuz
         PCzlHtda1cMAzsV32OcWA1tw0RHLqq6jYgEL+1QwjPgeNs5aDtV9RXWYdhuMZD1d6Xxv
         mEP1OQA1hTm2Wan/qWR1T1mRM0SEgWR0+s40Mzpvu3awIXlMJaNm9V/y323S7ma3BJgN
         p7JeDJeI6NIJ80MO3dB9+0y5LGlXWzUTRdQ8ibcsq4yq7zDBehhh5f2jheILa9ae93g1
         ND7QhPs6tqvhjs3+/xlbCH/azsOtsVF+GtSheexSIePiin9+nWN8CRctk5RVHK/W4H9N
         epmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758299522; x=1758904322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W3uHcZporxbBE1WPZdYvszS55+oRtlQmqDOxaEQ2fa8=;
        b=BoReyuxlCjjnDpJK1GBOue+K/e2WSs4Leut88HX+EBUXt45me6eEuK7lbkG4AiB0Lw
         pQgK72w4foy8tO6hwykMNYEJ9ure1swRoBHIvcqA9y14W5aWCWbT29pmLKBU/L23HJS/
         CPc8Bb9WLU2Ust1yGD9e3u6exeKAYoP/hlHxcrqmiOkKsbw7bvilBDWZgPOGMZF0gXH5
         FUX/1WTPyJO5uYR1IBLiquVPgUlfe2WEVxawFlFUl9hIrEp9AX6L/gviVkERFCMvx4PX
         3SyrbzFo7mzsFft3M52LJwp1aCLA7RUey0tUCI6Ck9Dk+DUSbe8Zqrj04XefRfWhMZra
         EfCw==
X-Forwarded-Encrypted: i=1; AJvYcCWz4nAIW9xIT8wmBkJe9WSlNRTP54GSTUgnXJ3iG4ja2PWpjXv2YXrOOXeGIryXGDYyztBfEJBXEfAO@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ8Be3kuNvMGpIjdAxcXJl13VjTgRmYXzImuxyZ6X2UzcIwCos
	Q4stc5L2U7T1+BolHFTudu35fS0gl8hsyrdMDB9pXbjJYvpm/nGtBbrqhqtU37GFYaM=
X-Gm-Gg: ASbGnct+NcVLkZEtAvNjiqGh/Tlrs2elvvCDYl4gd38nLnJVrHWX+Lvq6wJzpEp8Bmc
	JeB86z4JDXdHX0I1rJEDpJC3d4x64ybyuj7RBwy0F4O912v67Tr3vHC5d+Pq4bxN2R6cabmptrS
	bn9rS9Ua73FF0/qk1uEng9k8X/eN603+CdXCeR+VCFLkicckq23qfFavtbuEhk3AnFVMe2W/MQK
	A2bNVux8HnxezOHwOl9Zxkucw8dWAb3TOEcTBpkVucSGHbTlMuEeUOV/8hbwMhtZZsmncb60FBd
	rCCYFapmrsIz2g6BEQmZWckSDqu5Dy4+fRrXMcd7n63WhOCFUPR8wHmcs/f/wA9OJFDTQdQJe4L
	m8KqiUj2+YTFizIucXbVkkm4PeJYXg6C6PtAW48RogJ8PKR4g+eh0bK1JZ5RHRtM8+AEqLMwUqe
	sdKQ==
X-Google-Smtp-Source: AGHT+IFhk+LOiZNH/rRpRXbN6bz0btV5zhKbIxziWw9SsXhSe8tWkBYWko3E7XSIWr2izSKCXzAcxQ==
X-Received: by 2002:a05:6000:1ac9:b0:3e7:1f63:6e7d with SMTP id ffacd0b85a97d-3ee87ac9b1emr4152734f8f.45.1758299522399;
        Fri, 19 Sep 2025 09:32:02 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:8ffd:205a:6719:49c1? ([2a05:6e02:1041:c10:8ffd:205a:6719:49c1])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee0fbfedd6sm8619569f8f.60.2025.09.19.09.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 09:32:01 -0700 (PDT)
Message-ID: <5eb98f0c-ba81-4e7d-9484-d88ba9ec5f86@linaro.org>
Date: Fri, 19 Sep 2025 18:32:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: timer: exynos4210-mct: Add compatible for
 ARTPEC-9 SoC
To: Ravi Patel <ravi.patel@samsung.com>, tglx@linutronix.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
 krzk@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 ksk4725@coasia.com, pjsin865@coasia.com, gwk1013@coasia.com,
 bread@coasia.com, jspark@coasia.com, limjh0823@coasia.com,
 lightwise@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com,
 smn1196@coasia.com, shradha.t@samsung.com, swathi.ks@samsung.com,
 kenkim@coasia.com
References: <CGME20250917071322epcas5p3b25ff15ee16f58aa3101f2fc44b554cc@epcas5p3.samsung.com>
 <20250917071311.1404-1-ravi.patel@samsung.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250917071311.1404-1-ravi.patel@samsung.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/09/2025 09:13, Ravi Patel wrote:
> From: SungMin Park <smn1196@coasia.com>
> 
> Add Axis ARTPEC-9 mct compatible to the bindings documentation.
> The design for the timer is reused from previous Samsung SoCs
> like exynos4210 and ARTPEC-8.
> 
> Signed-off-by: SungMin Park <smn1196@coasia.com>
> Signed-off-by: Ravi Patel <ravi.patel@samsung.com>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

