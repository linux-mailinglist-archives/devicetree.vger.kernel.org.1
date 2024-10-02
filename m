Return-Path: <devicetree+bounces-107102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09A98CEC8
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 10:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE3931C21119
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 08:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE4A194C8F;
	Wed,  2 Oct 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v554TKru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316FA194C6E
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 08:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727857942; cv=none; b=XW4XlcxuOOc+QLfvttN4EUFnZDtGPTVA/N2Ltv3o7nggYJrgLLgJ2Z2SEm1WhrI7nsCHM+mBpkGl3/SjLMGopwvzGZg4voBSBcH0p2EuUy2e4DiJjYJxLWbS69y8Ff4iL+MV+NK4lBSg1EXKW2BGcj4UOS6UvwHewJ106L50E8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727857942; c=relaxed/simple;
	bh=mOzLmKdWk4bUVXPq8tkOZhU+eQgnk5W+pvtN7yHT50k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jKUf9QsAlD5COBlxMQpSgEexPvvf280U6Yyfh+aWaq8gkl+EzDrgw1CxUEJZsMi46XAeNUSKUU0Vxe6Uu2h3PUA7mktJ8OCF8hcNZU2/DqgcHvMSsZSU8qs7bGaMcRHR63FeUhWQSDQtrWqNdxyU1oyl6+hXhZztXMCYnSYo4Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v554TKru; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c88b5c375fso5233521a12.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 01:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727857939; x=1728462739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oSePIfeAS+hJ3HkL8MLP4KbllerorAPpDESRWqQqT3k=;
        b=v554TKruFSog8neclvP5nNzvPgLNQ4Z1mcMXn5+gXbC+rLKtH4Y5gnfi0XEvDg83zA
         WP5RTJJftIUHhfmbwDfovVw89uWqL1fextA1LAIFM5ZrW4MNgLsFxYQNM4Ejt/eGAqZh
         /y5ytSeu7Mva6vijSHCwGsKFTqfN8nhNJiPC490vf6M+jQ7Bp64MJfpoWr2nUXH7RMtM
         lBh8kB2D7BKFLkOLQJmVyomEAzxABQKjRyLyZ15+q0Cdpo4lGsjRIXqor4hg8WX1gKYO
         URlZC+WfZCbjn3KxMWwgpfukg7gmp8GZP2LGWf/PMYKQc6yY+7mjLZfbiNt1Vwp452+X
         +lhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727857939; x=1728462739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oSePIfeAS+hJ3HkL8MLP4KbllerorAPpDESRWqQqT3k=;
        b=Cd3S+JKFZbgZC49GiQx88pAtnEvh2T72m/m8s4UrEpAnnJzZA3CJ9DkYCfah6T+VNV
         h67Wx8yCQtuuFQm8KYKPvJxcJDkBxFftCca2SClTNLViKz/Ma+rnRBO6CmFzIibVq/m6
         OiyZmyHTfz7FCPwntcmcjTyKljoAQzFddoKCj7XNZU8qKT3Wau3k7biFlbCNYYaHm4Vt
         cM71phK+BAd/Kv6LRkyyh6ja11GLUs60WOAxZsBkvw14/U1fbHZjOAGTWOiyHwBC1Svj
         /gRWYOYwMnIW5W8WgwRA0HbjniWxpFHtmTqMlpS6vLV4F9aWY75aNuektmrKI9OKgfvJ
         wTYg==
X-Forwarded-Encrypted: i=1; AJvYcCUAdN9bBHYHS4LX0ptB/n0NlKE6RkAs8hG99hlAcfHRUcXAfclz2/YzA+zLWTzVxQksCtw6AVsyWQ2h@vger.kernel.org
X-Gm-Message-State: AOJu0YxM/OOhLlb7IgrdRcBiQ5RtkdWfFxb2aXRG+GSsWyfjAtTyH9qF
	sp9j2NTl3nR/K4hxnJAQJUKw3kfKyjlPqDnz28WNqmGrxkXIMFkMd9j9VGxIJAw=
X-Google-Smtp-Source: AGHT+IHDS+c6xE80xyEdX9RHvRh6HcjnoV0Xje/vo5SfOyMz/aPQrzEgb0xRSVAptVPhDEeG6Ap1EQ==
X-Received: by 2002:a05:6402:27cd:b0:5c8:9406:535b with SMTP id 4fb4d7f45d1cf-5c8b1a33225mr1416450a12.18.1727857939399;
        Wed, 02 Oct 2024 01:32:19 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c88240bcb3sm7273934a12.35.2024.10.02.01.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 01:32:18 -0700 (PDT)
Message-ID: <6823b53c-a352-47b4-adc3-7ecbe2bcd819@linaro.org>
Date: Wed, 2 Oct 2024 09:32:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jason Chen <jason.z.chen@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241001-b4-master-24-11-25-ov08x40-v2-0-e478976b20c1@linaro.org>
 <20241001-b4-master-24-11-25-ov08x40-v2-2-e478976b20c1@linaro.org>
 <lbfppnit7d4mkstrlbxgtemjhdu7yno3kjwb7pyfaees6y7v4v@imoqfze6i36r>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <lbfppnit7d4mkstrlbxgtemjhdu7yno3kjwb7pyfaees6y7v4v@imoqfze6i36r>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2024 07:20, Krzysztof Kozlowski wrote:
>> +  assigned-clocks: true
>> +  assigned-clock-parents: true
>> +  assigned-clock-rates: true
> Drop all three, redundant.

Ah, I understand.

Ack.

---
bod

