Return-Path: <devicetree+bounces-196163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0CFB04447
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 17:41:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68494189B390
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 15:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA77026AA8F;
	Mon, 14 Jul 2025 15:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OpV+l75w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83B525C82E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752507055; cv=none; b=AflutAEtDWG6ntNUJXxb6N7x8nfguOBE5/tkehuWAn3NJuVsp6+jt5Svom90PNoqbPES8yQ3WZ6mBT3p2iPm60xkpBzCE2NsmBBxUSlrP2o1qYx8IOhuuggGI8AEaMA8umNmB8innDy5IGf5liul/sPjsGsUyz1aJHaZOqzrBKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752507055; c=relaxed/simple;
	bh=fA43pWYFrATPW6o5X367Dz4sZp9Qsee5YWb/rsDVtHI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rQZFZtQIW1eMSSEVWllF7iaysE4Wm6quUe5qhOBiCP/+dupuYzpUchodhVycda6glGiINGh5xv0ZbuPNx0iYYxher1xLwlNqDlkzZjaK3qRtls9icoVUNVKLlRa7d4S2p8KNPcITQ6Fyo++bK9NJliNQnpZcyuXRH9V7eJFdKKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OpV+l75w; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-558fd850d79so277278e87.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 08:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752507052; x=1753111852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GhPM3WYx0FxLSMjDVhXzRCwSNY+8UAUHTyFHv1jdzFE=;
        b=OpV+l75wSKtdSC6QHwVfpc5V8y+cLJrZLCHK7El9n9SBmWloBzGrX8Bb2tP6eUN2Ea
         ovzkOiIwEaAyQX7IrxEW4UUbjkFndypRsVZtWMmWwIzinwBE6sQ666BaD1mmyuZVs4GM
         7inWAj08Bq6P0NvC6M260Hub3oHnOiorTRyTH0vWrPhj+oTgtx6IpWm5jVdhX4WsblIG
         EPjPx81ClEuesSAO51IbGn2SqaqA/4p2lZ8/ZFo83QFfu0XG/ZzIl+F0wf+vlr+pLVzf
         XWaX8PQhiMhqhu7YTVoopo18W8ONQUu8khEfBxu1QRtISeGH8cUEhFu4bIteK/uKVWI0
         /dXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752507052; x=1753111852;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GhPM3WYx0FxLSMjDVhXzRCwSNY+8UAUHTyFHv1jdzFE=;
        b=Bwnu3gpVz0zLWLHouIyg1rbjTRj0SU7sFS7YCT5M6kVyjb5AkiEO54Bx0pDlDBUITo
         Cit7nxzOt2BiqMymu26G98DSXLeuWDQoSC5FAqhONdUx6qK9VX0G1AOsyc5vJNX5AWOX
         t5OE1W7ZMC2glA4wP6ZRQP0oEh/sLeecfUlMBUEHH8uVYw8wljLuQs4tfOcW3pLhnJIq
         aB1fw1cSk8ctmrlMb/i5nrzQranws+9J8Q8M2wlpF7DSRZkIDu0oMaPvFCJYEmJ/fVNs
         uSljGGXeCPWuLlrVCzKhekDT77t5iFQI1pJS5+5aZ6zaRjR1YqTTcEBuOSR7aLyEK8WL
         Jsyg==
X-Forwarded-Encrypted: i=1; AJvYcCUcdnhwiw3yqQrVYwblqZfnTxXGYGcYwTVxA+iic25b5CDQNzSR/CBpw596aSHzxB8LG0W7J9XSJweu@vger.kernel.org
X-Gm-Message-State: AOJu0YwAc5JHFYP755z303dLwptE58LnDVQKzFQ3gNeSYmyhHLEl2Fhn
	wkGju2tAP9JsBoRYMJDKnuKrHb9+WKWyhEnmhPUXqdzDfpD1w6Ru3nVrZeqYX1rOTXU=
X-Gm-Gg: ASbGncsiiF5DIu9HUqp4z9s4K0t8OXvgJoFp3qltnxs2XfjvQ295a8FPfJOQyxpq1Yk
	6Q6U0D2SH4AQXz4+ct7OhJUUdxeFHX4s0mKFMS/gL5rbb0r6aEplbAC0qszo0QDS/f/WUT9a2U4
	q1i/IGHp+RZpIxw7R/IDhIhV5sG3vVQuYmGuEfv0VR3phrC6muwu7+J72RZ4OjuE1SuSkX9dA1E
	/O2K7nvTIXxjhc5z3k0ryObpoojJ40hDp6f1DUOsPFXuDET5Gjj8fV0RrJczkVYy3dqVA9Ol4D0
	SWPaN2jarTbcTHDEVav4NW8zvalOYmJK/MvBLKU9fjzE1gQnvuBftw0xEhCF1zMFS659nFXLkQ5
	PGYlth58llI9qr68I8KgZKsgZZAnXDpFOc1bl4GqrHZCMd2UC8o9faeIXuMXBcvYfTFdqJV75RB
	ev
X-Google-Smtp-Source: AGHT+IHfIWtfLwmI4o3tG95if0xJBRcWewfBclWlcePGlLyhwHi1HTCoA+WOs0ItuEmU884D+uo5xw==
X-Received: by 2002:a05:6512:2388:b0:554:f76a:bab8 with SMTP id 2adb3069b0e04-55a049b4b48mr1393417e87.15.1752507051897;
        Mon, 14 Jul 2025 08:30:51 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d0f35sm1985120e87.108.2025.07.14.08.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 08:30:51 -0700 (PDT)
Message-ID: <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
Date: Mon, 14 Jul 2025 18:30:50 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/14/25 18:17, Bryan O'Donoghue wrote:
> On 14/07/2025 15:58, Vladimir Zapolskiy wrote:
>>
>> This proposed device node scheme does not solve the known and already
>> discussed technical issue expectedly, namely there is no given way
>> to describe a combo mode hardware configuration, when two independant
>> sensors are wired to the same CSIPHY. This is an unsolvable problem
>> with this design.
> 
> I think that is genuinely something we should handle in camss-csid.c
> maybe with some meta-data inside of the ports/endpoints..
> 

This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
of sensors to a CSIPHY. Where is the relation to CSID here? There is no.

Please share at least a device tree node description, which supports
a connection of two sensors to a single CSIPHY, like it shall be done
expectedly.

-- 
Best wishes,
Vladimir

