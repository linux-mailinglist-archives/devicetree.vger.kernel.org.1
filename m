Return-Path: <devicetree+bounces-118368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 514059B9F7A
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 12:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F218C1F2174D
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 11:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE05C188721;
	Sat,  2 Nov 2024 11:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eUQPjz/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DF81714A8
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 11:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730547766; cv=none; b=rZfuLYQNVZ+CO5gk62DsnmgXcwc3OnTsfrEnBloqYvg4ND6q5q0L8mcMVQl+z5QYZ+QVpeaOZnhI+iAQfu9MSY9Y5YqiRfaS7gRXLAEdjIlvL/Azf5FtFDmUFXwmX+beLF3V2M1jI9V8M4vy44WDkRxQLFRiZtxIFgDoZ22lsFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730547766; c=relaxed/simple;
	bh=uwh0C2cyEDzgLbf6xiS8x78uyQsu1QgW0Uuwn6RrDrs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N9ZoNPjaa6tKd+Yj9W8x4NDaADw4GUX+DHtVpWn7GmDQjBuntTEei4Pwqefep1xX5zln1vfcnoHftfNkauvTv63FkOQyeez6kBjNb8vhCyPQsbNG9tSiDjwfV25wNjgEb4VPrcdOwRpVmFdQxE7SH5AdpHZVlXYbgtZLG+aSpAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eUQPjz/x; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4319399a411so23155025e9.2
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 04:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730547762; x=1731152562; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CTbzwY9IrWSX0n7ADNCULpJIMjPNU6Tl2Z09wShD6Ug=;
        b=eUQPjz/xHmxJqiAY7swKjvwDWCkyOSt6dthOKWf/VvCwlTM117tXlZGUqqWuVd78TD
         mvm8RMQ/GrbVixovdPFgaQiYFSMj+JjcWwfsydY9M9M0jz190dtQ+mk0u2Plc1qzc/n+
         BIopDRFFNbQGb8/w0sPXwyiUCKle9CAZYLi4p8ZfdHq7VE1rge5LBoQB48tNKOp0X2Dr
         NlJxYPIzcnGO1ksUs342gENMzEXniVR3rC5FeYk0btbAvKSYX7YPkpSmDuf+x63AWLou
         Cuu2zQ6tWo1SS5v8gh93K7uQWA8IoSslGJZUMWQAjmXsKpUzgntp5gNJQw0f81If/lQk
         XU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730547762; x=1731152562;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTbzwY9IrWSX0n7ADNCULpJIMjPNU6Tl2Z09wShD6Ug=;
        b=cXU+rO7RyRPooQzFcA68U24c9L5lZsUhS7gAnSqTniobsdQ1psOhCQy6HQa75wFbvO
         mNpNNtfnOycjKviR5/FfRCwpEyIFRMS4G3WQN/UFoXs/wBCNWRuWBxVlpA68UJcCDW9Y
         lypcODx5Xjmc1L1IVr25uZCDq+k4/ENBWZx8aXaZZyhWlxA00gHsqss9mPry4Z4En5X8
         I95sxtB3dm0SD+KcpqLxwRv7+QQ5IkwmYCsMiHZC3I7b8zyXkFcAmbsDXbuqNk6vmwS3
         1sFGEZmr1iBjgsErz/oiW52uNgGw1DUhvXQjwBlzP+Rr1I0F7MQVgnmoM8agjaGmLy+d
         X6OQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBgm6UP6Ha1KV3z83KhHWWswmytWi7kgEQUyCIsUVbT/hmBeEvNXAR4C5XcN3YnTLj6gDQvXJCrhMI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5s5nPE0DLPQXhnt560WTU9ntlmJfCC3AXRrjhCFHkwlltzrys
	2CMZ25o/S2HkDQzSoq7PICW1eYhE9o6D+t5Yu6PFPMhp8NEZt6nIHAIIzVbOHII=
X-Google-Smtp-Source: AGHT+IGbiHgc1qY7IS7cNGp/UxNuY1r5J5mkWHiZZvRQts3BNsDLBxAUiErlh9Rewy9S2888koSy5w==
X-Received: by 2002:a05:600c:46d4:b0:431:5bae:c600 with SMTP id 5b1f17b1804b1-4319ad2f063mr242581585e9.34.1730547762079;
        Sat, 02 Nov 2024 04:42:42 -0700 (PDT)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852fdsm92023115e9.34.2024.11.02.04.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2024 04:42:41 -0700 (PDT)
Message-ID: <95e3b7c2-8db6-439e-831f-c5b770c56078@linaro.org>
Date: Sat, 2 Nov 2024 11:42:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: dt-bindings: media: camss: Add
 qcom,msm8953-camss binding
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241102-camss-msm8953-v2-0-837310e4541c@mainlining.org>
 <20241102-camss-msm8953-v2-2-837310e4541c@mainlining.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241102-camss-msm8953-v2-2-837310e4541c@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/11/2024 01:32, Barnabás Czémán wrote:
> Add bindings for qcom,msm8953-camss in order to support the camera
> subsystem for MSM8953/SDM450/SDM632.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>   .../bindings/media/qcom,msm8953-camss.yaml         | 323 +++++++++++++++++++++
This looks better.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

