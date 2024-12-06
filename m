Return-Path: <devicetree+bounces-127884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D7B9E6971
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A43A91884F9C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240321E0496;
	Fri,  6 Dec 2024 08:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gnjSIEbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C3579DC
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733475475; cv=none; b=dGXVe8xig0asoLXfII3S1Wh4MUpxjF0imuVhiOTubs0MX4SGcpE+9pUQuIxXdy6fyPeXcLoTFdJviZ5la80XGUDePF1nUMZOf7RY0i/j+nB0AhUH4AVkUofCDVfz6yxuZ9y7iDL/IKCoNHREuJLrqyw++W9P3s3Tu49s3wziZNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733475475; c=relaxed/simple;
	bh=ZIpcoXgYiFZrLmfPH61byHy08Oku3sMIo8NPS1/kJLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NLSlNzyTMUvJwbnWUBkHj/4k74aGGO/WLsH8yqjhOlS1QcMtBPemrvMncQVYhfAGvcQ9z4ObLO+gc30O/P001nuXG3UcnyOTFp25zz6irIz1oeFXXzWT0IIswntZY8HjD999U5j99FG0vRB5zXday380eO47cdmTFr/IkHFD6zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gnjSIEbZ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-434a1095fe4so2272385e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733475471; x=1734080271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3xNdgyJk7qHuufD5ApcrW4/6+Rt6fPwGmlDYXJpxBr8=;
        b=gnjSIEbZwQuJOXBwTywFJH37mlt/4AJ+DG4VeHOdj8rEodN5xlyw1P3DsAj+9WbzeU
         hUtkucBfq8pMhDdfmS+Kl0vUjNQ3WKiBzwcWGEToIraCNdKd0ry9f78RbUdDrl9U2YWP
         ZjTHfGF0xb5AmWfDdLo62qMiosbkLWivv5j9XP75QYA+bE1xmdrcmU5t11XDhDi9/0ua
         oocfYf2HVWmeao8A0YwhhFNv7Rit6lo1lhn2VfxWAG+PmuqfYF6ZTUY3yLwYQHXJgt8h
         QOx/GZdy6tkFcfETCiVLr41H6PpvxVkuk6OKAi+BkXK/5SsJk4Xdb03uy6mntMjYdK22
         2zHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733475471; x=1734080271;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3xNdgyJk7qHuufD5ApcrW4/6+Rt6fPwGmlDYXJpxBr8=;
        b=UsKCxSnM1gKvu5gl7/jY46JoDFiFYiHB9Gt9UpNT0rKSEuD8rYbuycxZPrTYt0/vSF
         G9DlR+JgHPoD2ORWFo/YFW4CKVYfZwh2bCkv20x/UMD6eRux8ZXiMvepSl0TOlxUUvxI
         2cUuDondjxZsbrWPVzFpTq/bLnn2CrR5tz2zDiodSe6LULd80o3xr2zUOlrvjEBQ7YBY
         tNXcQQrN82sn7oIQUoEq7lCLUQEAEEl7fIdzhEQXxWpMY74ZVSkNPUFY9qINfamMwfIf
         qoGkNJ4GM31RaHHcOqPob6GF245biK7ZxiMV4acrS2FCdqI8fvjShYkWqnQA39PKeYAY
         qmyg==
X-Forwarded-Encrypted: i=1; AJvYcCWsZ1UUNtxNYoaxuMthuRYFUJhxv7YKV5rIHUEXHiGHzBuP9Ms8OlilTsa4RAd3QJAml5nvYHfXTyL2@vger.kernel.org
X-Gm-Message-State: AOJu0YyxDK0o2gGcluVAfJuEuuwhoX4JZMCCBrrorl3ytbAmf2p/KYZW
	w2usEomS6XKVXw+SvJ5PN3mhQ+sz0vcu42h3sZtPQ0/qkINf2Om+LpxezCsqHQY=
X-Gm-Gg: ASbGncv6hPEAL6LmAyDCT5nKRJxxTUJdXEqNC9cOrNYvjKTfXptzaqq1E4zXaMgUpbm
	i1pdIxbFzLeoBfSQxp5X54smyoDXHaCotTmXy8x+fYdbtQm2ayJt6pkxmTsZ4da+f8l/qeh2bsX
	tXc6hIh/tHmG/lW3CTKMFGDx70f+K6pUWv5AUBR1AT4I/ePANqej1qhECMp7f6m236JhDOQYYJc
	c5bwJdXgLWQrn19mEc+/fcc6myQwm6nNGTpW4JFq9esk8lf3BCqka6cDEUd1akP8oPrTA==
X-Google-Smtp-Source: AGHT+IHtTJ1oKAYqMTh8v/+mBIB4cULWDpxzx6rnHxc3m1z7QURDzbRZoEzl6ZbqGZ60KJ5VjxOlxA==
X-Received: by 2002:a05:6000:491d:b0:385:f479:ef46 with SMTP id ffacd0b85a97d-3862b3db7dcmr640438f8f.13.1733475471360;
        Fri, 06 Dec 2024 00:57:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386220b071dsm3997765f8f.101.2024.12.06.00.57.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 00:57:50 -0800 (PST)
Message-ID: <889da3dc-e1be-4d01-83b2-f29d09bf521c@linaro.org>
Date: Fri, 6 Dec 2024 09:57:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8750-qrd: Enable CDSP and mention
 MPSS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-4-9a69a889d1b7@linaro.org>
 <b4173f94-1cec-49b6-a882-d07b10ebbddc@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b4173f94-1cec-49b6-a882-d07b10ebbddc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2024 18:35, Konrad Dybcio wrote:
> On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
>> Enable the CDSP and MPSS (modem) on QRD8750 board.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Not tested on QRD hardware.
> 
> Not great given the status = "fail" on MTP..

Well, someone will try it. Either it crashes or not. If it crashes, then
person will send report or patch to change it. If it does not, then it
will mean it is tested.

This is a shiny new platform, so no one expects this platform to work
flawlessly and no users are impacted by such untested code. Merging this
has only benefits: more test coverage by early adopters.

Best regards,
Krzysztof

