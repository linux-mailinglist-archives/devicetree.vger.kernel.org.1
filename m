Return-Path: <devicetree+bounces-211145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B78B3DAC3
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBEE7167C7B
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 07:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B6125B687;
	Mon,  1 Sep 2025 07:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L5V7s0Hc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3A0258EF9
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 07:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756710377; cv=none; b=sFO8UnAzUftMNJD3Yn0j9KT/CFG7x7wJHk3PiU8MUIu6l+nIbOSJ47It6omAogFTy3cVGXQNpCG0KGa8E+rFde32ygIRk+hRrx/oKce/WTZ6Y+Mzvrl7GV+tqk5j8y1gv0v9usb1p9fHt+0HL5u/1g6HrGeFUZpRlnndvMWhTIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756710377; c=relaxed/simple;
	bh=ghUkVbbL6fSFFM+VnU2xLQumO120VvySAdwvS0T6ve0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u5JVG2QuGO+z9n7wFFWPrAAnCCiMuCR5Wh9Mgw4CQKbootCZg6uA0YjyIC7e1swFC9Lq9DP9NIaHrqmR+6qLE37UuTIV5XaIbnLVZwTQchp7jZV6CYi2bQqQeEWnMmkvdRxI385CTZkRnX5nefPAPeKk7GxicZt7J0y+Qu4S8aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L5V7s0Hc; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45b7d497abaso24921015e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 00:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756710374; x=1757315174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5RiPjeOB66FDKJZfr/ttLTVqavYTkJ/P7VOQby544s4=;
        b=L5V7s0HcpxIN9ySwa+9k8bvQSXh6cl0hgNZll5XItb+IdlZ5Vu2bJDbABBorJxKxF0
         UzscACIGYpDu4Np3yOwYzXlypBbXq7lXYdPo/SNf/vWBrRBfkNm3V5Ow3BgEI+qEntL1
         Tr904zYYYwi/WIO7yQduQExd5GVJ1lhGjnyClNX4+cuYikU274e/6Ek4ZmQRjEZwTPlH
         cajgmtQiOwddI1CWRuSaJzNIAwSKBK6Y/69Q4Zr06iuFf7idqzFEtsm/ap1F3jX0Dc8S
         4gZMLk1w0TGZ0cxhmKra/aIVjvHz6HccPzM4IGvEJM9qVthIB7lOtmUpymMXydjEGtdG
         VqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756710374; x=1757315174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5RiPjeOB66FDKJZfr/ttLTVqavYTkJ/P7VOQby544s4=;
        b=OUgPPkBeo8yGHZGEPIjWVCG2VbUKkFCgU5lfO9J2Y9EWgeUIScwRNEsLheHBvI5ATI
         9KvPB4/mVHdJT9+I0/5BN5/2iORgaOvBzDgH754mGrwQ0EhxWFJq6cykQf6R0+Ag0Jca
         OR3Q2FJqTvN4kBNbuXX6bIS4CIkD87bc3xj9nQcjfhIKbob1iiBRsWnrWvqJv9XevLFl
         J1AhRk2jJcQbkx01lEDkYDCtJwAJUDUQcosuol/8Zq/lLUXh8YQyQRd7Oclm8GYH2US8
         W173nnTcF5EPSu0hws8akOzyUsNbhBW/Y078OJ4H0SynLSk6mE2GGU8ogkSM0sOed8dY
         FtPg==
X-Forwarded-Encrypted: i=1; AJvYcCWNQ74doLUy6d5x4qOtjfczSa/Hn4HPwW6FiTAP/fAeYfrm/FpcLXqEuih/7EDOuez/xSUk5NI+5thp@vger.kernel.org
X-Gm-Message-State: AOJu0YxLjJJzSJUdawvXJ4SVn4/SsnRa8+SG+7ULoXHTLhbEZ7TCNbQU
	h8UKB1XpOL+WehkcPOA8OEOOXpo2oA9Zx09y1mHcWEodiyjCiu0txqJtIWFzDXQXGLg=
X-Gm-Gg: ASbGncv41kcihft95pqRbt+SddswXIp/VkscogPThI4J1WSrdGuknYlul/WnBdt5DK+
	QFIiRd3SikIBwjr85evRoR4k5txLsZCUXu+E9+uKlVMy3TThIrjDS7/ic2V6IqvtoYffWsatUnb
	YeW0ynb1F9L6i30xjghXuOFPRHOpjorZcJipPM/MChhyI0qa4roYDZbbJmEbZuwop34LVVgY+bK
	oQBA8DRi9I+ngTiX6WNpG3JXn7lxBXWJrzhfLHLajp9cIBGj2OnSfwLIxno4HIhcw48tGFb0Src
	tZeyN6HIvlguRTz07G7eU5+ApmU45walxPloHxKKeUlXX3Ibfe6hYsNSeQWzrLEGdMvIj/XCW+1
	02Wfvmg7WfNlUKyfQVxLadfTlYjowwgEEUAcd71oQ
X-Google-Smtp-Source: AGHT+IFnBbOE5ba7PQ9iK6x0QBC9gheBMd69i0QeCPDpf2UAKrxEuZOeM6Cz6ka7pF/Dx8JiLhhRIQ==
X-Received: by 2002:a05:600c:a44:b0:45b:7f72:340 with SMTP id 5b1f17b1804b1-45b8557c68cmr60349155e9.25.1756710374198;
        Mon, 01 Sep 2025 00:06:14 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d85f80d8casm541692f8f.54.2025.09.01.00.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 00:06:13 -0700 (PDT)
Message-ID: <73674a4e-2397-4470-8743-763e0fb7435d@linaro.org>
Date: Mon, 1 Sep 2025 08:06:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] exynos-acpm: add DVFS protocol and clock driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
References: <20250827-acpm-clk-v2-0-de5c86b49b64@linaro.org>
 <28b5b033-76de-4fed-af6b-6d8342362c47@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <28b5b033-76de-4fed-af6b-6d8342362c47@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/31/25 11:42 AM, Krzysztof Kozlowski wrote:
> On 27/08/2025 14:42, Tudor Ambarus wrote:
>> The Alive CLock and Power Manager (ACPM) firmware exposes clocks that
>> are variable and index based. These clocks don't provide an entire range
>> of values between the limits but only discrete points within the range.
>> The firmware also manages the voltage scaling appropriately with the
>> clock scaling. Make the ACPM node a clock provider.
>>
>> Add support for the ACPM DVFS protocol. It translates clock frequency
>> requests to messages that can be interpreted by the ACPM firmware.
>> Add an ACPM clock driver to model the clocks exposed by the ACPM firmware.
>>
>> All patches can go through the samsung tree.
> 
> You really should have explained the dependencies instead of me trying
> to decipher how to handle this patch. It's really not trivial.

My apologies, I forgot. If I tested individual patches, I would have
remind about the dependency. Something to automate for the next time ...
> 
> You do understand that clock is completely different subsystem (Stephen
> Boyd)?
> 

Yes, I do, sorry.

Cheers,
ta

