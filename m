Return-Path: <devicetree+bounces-34093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 249E18389CC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 568C71C250AF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93C757323;
	Tue, 23 Jan 2024 08:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z8DbXT/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3764457303
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706000282; cv=none; b=hRk+XXFNg7DTD33GawXbkksmZ++hVPQjjDbrxXV9oO5ssKHyzS0Etr03jfAUyEWQ+DR+rL1ggi1v8+Tg9SXrRxZnitrVr6cUz5Evqrmxc9+QUsS/A9QcqDPcXqIJuk+n9t1aQUueDpkChx0qzyOg0lY4IkEckDXuwCgERmADGFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706000282; c=relaxed/simple;
	bh=TAEtUX7AGoyoblV1ruTY9aKViipB6cuUSDtLLHtj3nI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=bGZv4cG22yKELLsdFvIsewzXQR2egM6s6rfYNJaUxrITYilS0ioyI/YM2eqVlac6mevSZYiI9X0prvCdepfelvQQ/OzaptNii12Fmw3XbN16H6MPXBEF4qgN9K0JWuF927NOKmGW9Ql2Mxx2Yh7EQrBQKXQwor+EgbUdlwDEeeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z8DbXT/k; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33929364bdaso2314113f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706000279; x=1706605079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TAEtUX7AGoyoblV1ruTY9aKViipB6cuUSDtLLHtj3nI=;
        b=z8DbXT/kdFV0e0nY8Z8IvqQblLXQqGHBUUSFCR2J+Tuw/+Ny0j1ZD4thYXycifoDYp
         +kUvdHbUE/cl5Vm4U+M+9ILz/btOQz5uZF/BgXx9JThOls9gl3N06auXkpA/HX7WBxq9
         JHrSfmf0YNPOk7cVwQlBaRZHlq6WIf9rSBmp/5OALpodjBosOXrs6fS0ATrBaRQgh1og
         zn52dOamL7hps+6szezlozyBm/a57nksL5jAMD05RBkeVYJL/WhV75EuSj0ErAM1v/zu
         y2310jEF75Am0YdWjfCZ2Hdsi4+2eyj+z2ebBAociR3s85CJIvrfzKN2XGN1zIjC/vQk
         n+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706000279; x=1706605079;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TAEtUX7AGoyoblV1ruTY9aKViipB6cuUSDtLLHtj3nI=;
        b=DddKiq8SkWxkFOiNM8VM9eDFMgcXYdwnJ3lGJcxdHxwCjsBo5D/zE+biWQLxM54MGt
         hsGZOmME9Oew45jg+3F9k7148+Vn90ajzZRMPhZn82oool35xBr1IICSLzZfdNojbAHh
         hdRZ3zgIC7rqeHp0pr813+Hy+yYhrIkd5qOM4sIpDeZWFxISjCJUXWzOc5vcrUASuCf0
         yO+KNsg+605vnZgnBx/ZW5EdwVk1TFFQfMmsW7YlXvRehgmSaC0Ys961OGWI+dQ0TmKK
         1QtN4GkLBFFdzHfCgouUvFVohkAyA98KjXYyvTxz9wb2b1gTqJQ4HfnJYKYtfTkLo0Qh
         SXtQ==
X-Gm-Message-State: AOJu0Yw+t9LpHlevgDQo6GoSgVbr1fQekyjqiH4ouZqwWY2Bq2JJOSoe
	KA/AaRGeTVOqbv3or+5FbKIVOMe29/UIB6vsvuxfuo7UpWmPgdING7RM/Dbz4E0=
X-Google-Smtp-Source: AGHT+IHD5YKuEThiIkbL848qL0TZ9zQd7/ZSj6LMVYqVOpW3dwe4BCu01VjMMqTy+/OCYMe98X1PcQ==
X-Received: by 2002:a5d:4f8e:0:b0:337:bb0f:3702 with SMTP id d14-20020a5d4f8e000000b00337bb0f3702mr3615197wru.35.1706000279311;
        Tue, 23 Jan 2024 00:57:59 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id h2-20020a5d5042000000b00337d941604bsm11559252wrt.98.2024.01.23.00.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 00:57:58 -0800 (PST)
Message-ID: <9d5249a6-5838-4af1-be18-3b9a9e34a937@linaro.org>
Date: Tue, 23 Jan 2024 08:57:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: exynos: gs101: define USI8 with I2C
 configuration
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 andre.draszik@linaro.org, semen.protsenko@linaro.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-8-tudor.ambarus@linaro.org>
 <9d12f4f9-1892-48f3-b8d1-8f59788cc91d@linaro.org>
 <6ddbf20c-6929-4cb0-9fdb-570cc7170b9c@linaro.org>
 <7fdc00e1-0a93-43a6-8fb6-c447ad8aef64@linaro.org>
 <a2c64a9f-4467-44ef-a13d-0af80abf4dfd@linaro.org>
In-Reply-To: <a2c64a9f-4467-44ef-a13d-0af80abf4dfd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/23/24 08:44, Tudor Ambarus wrote:
>> However I don't fully understand why that dependency - except patch hunk
>> context - exists. You shouldn't have such dependency.
>>
> Let me try offline, I'll get back to you.

The dropped patches depend on the dt-bindings patch that you queued
through the "next/drivers" branch:

b393a6c5e656 dt-bindings: clock: google,gs101-clock: add PERIC0 clock
management unit

We need the peric0 bindings that are referenced in device tree, that's
why the next/dt64 branch failed to build.

Please let me know if there's something on my side that I have to do
(now or in the future).

Thanks,
ta

