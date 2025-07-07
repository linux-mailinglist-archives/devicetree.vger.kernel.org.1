Return-Path: <devicetree+bounces-193588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C84EAFAFB4
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03CF74A087C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2BBE290DAC;
	Mon,  7 Jul 2025 09:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wahg4mq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBEF2882A5
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751880601; cv=none; b=Fioga1Btb+nWKajgnEmdKmdfZ7+blG4zYjmD5l79p7Ymel6YRkkdh7z3ouJ24l4xxkRR1f/8w8nxD955tM3g+QzXwE9ueCyoBQbT5bmi86uS1lc5+jh0pB8QWx5+4NFWmyM/pVM1nS+uh76gppfjVpp+hl0G7k/sYbG1mfsDvFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751880601; c=relaxed/simple;
	bh=Tcz/ZSON6tyal3jWImYScvZPwBqGMsZpcQToQ5CN7DE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e8xb2bshGD0wfTC1aLPoMt/uazpXKHa0vOmgp8OSeEz9Zrc+tK2WAv0EyiIWK4TGgi9EpxdfpPzuHNPLMVxymPL4Oqo+5eAMaMA2VcFLHKismLZkiQ95vO2UJtupgIDB+Zoc85tB5IVIkFBMNb9DyjnUUK4HFj0o/m67F4OCqIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wahg4mq8; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a525eee2e3so1772003f8f.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751880598; x=1752485398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IG5Dp7YEckX2tzrC76ZgnO2aWG2ab/HrAoOTloA/d6s=;
        b=wahg4mq8wZ3AoWxrd8aqF0xLGbOmgqzToBp7PaAZi/yW4e07Ky64sXpFueo7mF9ptp
         n66O2IBKAUiSNnA1HaBPThAiSQn4nxrCedyHkzoMNUSLn8lS5g9aEpJFGwSnbm/EAv9P
         yKEzOSugrv28+S8KJOefZwfvVrKwtUqZdsKjvjkMvEfYhmSl1d1ltM2kSYkZ570zF0OL
         zNqLrAMw28uXZWhtnEO6Ryn0vMF4hDPT1lEWVWkEktAObBtdfyRLHgPIWEwbKpx2twNC
         AzXEMz28dnVkZGBysQKzw1nwMMd4X4/WEZNLEKchGonDEgihp18q3qcF32toZzeBMEfw
         3www==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751880598; x=1752485398;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IG5Dp7YEckX2tzrC76ZgnO2aWG2ab/HrAoOTloA/d6s=;
        b=kd3+47fcRaXLF+2xM4VsnSybBl+vToSNBRfFogUTDqPz55ys1L3DobqiOXgCgviwqT
         4hAvQD9TTppj4ZTCr83D+5goNNankrp5L7KTxbFxv4a5a4kh0vjIyXOW/n8QL/HfSKal
         0iTb0ecRvLlJNZOifAxBkL6QI+yA2CQnmlJVZEpwyCw3Tqxyt92l/m43yd3DQRtZUENR
         EqckMDpJX+jYrnGjr1UELlnir27s3Loklcnf5rkMUmm+hWD0hEaXv82P3M/1q2T4hWoG
         XCFfGC9m2xb1qAxdTHj1XlBnTBxelsvoeekvPukGfK0WnbTEDr9krnZ2KN4Xfp0vgXy2
         KwZg==
X-Forwarded-Encrypted: i=1; AJvYcCVa1ox/s6d+r3q0ozCvL/uboLxyCFqCebXsVL6lYHswm4MTpoXiQ28idr31rU7w5GZLdj40NZCXoU27@vger.kernel.org
X-Gm-Message-State: AOJu0YySWHkvPJptzXOYX4/a3noIc4YbuCJ5Y3sfWsz3AOYpgnTyU7lU
	S9KIVt7YHObyXwYn04CWepQ1678v6GjQeGFoseGO7l837YArh/ZUdGDqWkkf3GfV9tc=
X-Gm-Gg: ASbGncuHVmjUkeQVX8IGIqOM/TUYt/XlxKD7A5mlyve5eZP9p3l1A4nn/SxNwRHqLoS
	/6lcdK8WmQIjYabKVqcw7e7L3QZEfXivCZiDbLDKOCZmDRN7jLvZ3g6ujknZ0VDEBgAcfZ6vesQ
	534nmMOWXX+vf8xL1IDNK3RWesv0lDRHbk9NF7/41W+t/GbHmBZoYMXOCaXbs/VXcGbR4uZibzb
	msQOfUZsfmEVIMCH3fI8AivNY+JR7TicIXi5xHlNkvwZ/yJVkTB5+fMxXKNMO1GHMHonItgrs5K
	RFLIhlTr4qih0vP02VcN3c1PJeZJdbQHzWQZI+ic+2fM1kosFQZwGDgq8nzuCT+gdx6DbI/BNkS
	wnuQe788ZZxnUUpiA9rFGgrUUZqY0XtA+jtsf2A==
X-Google-Smtp-Source: AGHT+IH6vBe89bzij44XDEItcxOcNLjzsQbkPRwS+ZfcpIFZigGMShngtte+AasQfadHQ7sAC2jgvw==
X-Received: by 2002:a05:6000:430a:b0:3a6:d403:6e75 with SMTP id ffacd0b85a97d-3b49a9fed4emr4082140f8f.4.1751880598209;
        Mon, 07 Jul 2025 02:29:58 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b46d4c8619sm9520972f8f.0.2025.07.07.02.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 02:29:57 -0700 (PDT)
Message-ID: <cce7a38c-a90b-4f9d-b1cd-06dfadef2159@linaro.org>
Date: Mon, 7 Jul 2025 10:29:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] media: dt-bindings: venus: Add qcm2290 dt schema
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>, krzk+dt@kernel.org,
 quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-2-jorge.ramirez@oss.qualcomm.com>
 <76492de3-c200-535a-aa1b-c617ba6146f1@quicinc.com> <aGuOMrjfQBNYAjmF@trex>
 <aGuS1X+RfX38krpf@trex>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <aGuS1X+RfX38krpf@trex>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/07/2025 10:26, Jorge Ramirez wrote:
>>>> +    maxItems: 5
>>> 2 should be good to support non secure usecases. 5 not needed.
>> ok
> isnt it better to just leave 5 here - thinking of the future support for
> secure buffers - and just update the dts?

It should describe the real capabilities of the hardware, not the 
expected use-cases.

---
bod

