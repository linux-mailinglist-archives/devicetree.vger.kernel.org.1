Return-Path: <devicetree+bounces-129894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 719A99ECFE3
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 16:36:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2E06164FC5
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9171D5CF4;
	Wed, 11 Dec 2024 15:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u5SCX4mq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA3B1A4F22
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733931385; cv=none; b=mkOYfIH7EhuK8hVw3sDZk6Y40rvm6FE2wfoTz/C7q2YILdXwTkFCwXSWlaX/ViSz3GpA/tpQFHt/Eq3c8YqWlMzr7hWl+pjrSUBdYUH5VQdr14KfuIaJDPHWAwR3EYNNyqWnnVjvF7fpxZQG/LJ7sN6/bD99IVb2tfsZZk/p84M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733931385; c=relaxed/simple;
	bh=T2LCy7TaoiKqJOZvO21IBs0qwYbo5Fc1sIddbn+N978=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJi7E1NqTRhGjwoQF6etol77mSeI7W78ThhsIQrCR+IN5HcRwFztZj9eSfOiVP5YC7wrVgcPl2E5ps3UuFjNw5Xgkb09Nh+pmnHoo7ta3ni0TRy8l/gnqJe9Oa5nt1AyDBU6N+P1mSM+gWiVoKJLUR+IfzRaHYflifhIu0QocJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u5SCX4mq; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cec9609303so8336118a12.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733931381; x=1734536181; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d5P83OAh9oowkPZhX/FCrb2KmUC/mQW6tgdnMEWWNNc=;
        b=u5SCX4mqf2ye/bldAr3V2KYo59Ced9hXW+xwbHJd3SpnI0q5xqmD79GnqVkribQuc1
         RG2l+JFCJLRSfnMtFQqO6rD91tRxAujYJTENy8q3E21ScM62vokgSCo/a18oivJZLMHq
         v9m80on1w/le9hf+lpKzDx0CPag9KgwmwHD8y3sq4jvc/6XAo3yjGba6qAWOHlIkU8ML
         p5lqMAjJF30x3NJpKcLdTAL84VUu1gn5Wj0UEsdiR9FOJR/r81e+4rzaZcvEQ11uciIR
         2Gal/ZRTwI6emWcbcqpowz6NPf6ur3Ip0gse1n2u9ljAe5z5gojxpOe5Tuv7tCyXYWkN
         yJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733931381; x=1734536181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d5P83OAh9oowkPZhX/FCrb2KmUC/mQW6tgdnMEWWNNc=;
        b=UXp5HjdScznyLTwcer5lzLHidYingd/cPNh2OzMCdliNjh3GumW0giBIf6YVBtNrGl
         frZIOjbxLEfmOQEtMSCwF4yDwsNT63awtIYutPsCdIfByz5ixDi3tI54Z6K/GWty/cOQ
         Zui/HhBOj39etWPDCCo6enwaEKvPCPrHq7A8w+TsJHJZIjOR6iPsFYfiH6Pl0Xe/adGv
         i79zInUEMLUzb5tBUbeooqkJw46Q4ETn8txLgFi/HMk4Ke+TOM5dIeIKhddfEiSA019g
         bBUcKfT3e2GBUVjiJZYM5+N7AWTPcYaph2eM5DQJ/kTU0wafLBrDO/1sOHg7LTvRIC4X
         fhkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpodoly3WIjvtZ/kAKyz2she+z3jJAaFoujxzOBsh7bzTcWa3VFck3NUXm2qcYFLg/W4IRgFypswTA@vger.kernel.org
X-Gm-Message-State: AOJu0YxAZrxeI/KQP5TNhI0hFyBQZJWJIFyhfEkIbnv0vB6pMyspHByK
	4P4AwnVraegsYxGoa13F1ejAjwxnSONnz4s2RRln3M2Cn2jwJUyytjG4t3RrVVE=
X-Gm-Gg: ASbGncscPQBikzuMPpeKoMgAPqArJ8TL6NA3OU6apSDo2YScdHYLi3z643AW510p1bH
	TbXSXip9A1uudGGpP9z3VzKkL8nmq+wmDkhun36C6H//HX1eF8S2UcUHAExnEexdMM6Eo8ukUdz
	PGy9MbCqDWyxTp9jinazyRafse/1M7kudiWdsA5h75QoXFqOMrM/yJN9i2K9zF7xqTt16I/f35M
	sT3Ev4yWG5Ldhc25PpKCkr9MyyDln3Bdv39GsROFbVjjc6P8DyRkob1UacI/sidJGs=
X-Google-Smtp-Source: AGHT+IHatiBoQj6Xuonudb8Upnrf8L1LWgUj0MXYi4G2nUPAC3KEoRXoMBGg29UMXHdRgWC0yX9McA==
X-Received: by 2002:a05:6402:5386:b0:5d0:c67e:e26a with SMTP id 4fb4d7f45d1cf-5d445b0cf92mr37496a12.1.1733931381459;
        Wed, 11 Dec 2024 07:36:21 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3ef026a41sm5541772a12.15.2024.12.11.07.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 07:36:21 -0800 (PST)
Message-ID: <12704563-f2d5-4e2b-a6ad-53b8ab5c5df8@linaro.org>
Date: Wed, 11 Dec 2024 15:36:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 00/16] media: qcom: camss: Add sm8550 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241211140738.3835588-1-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

@Depeng.

Some of the patches at the top of the stack here - won't apply once 
Vikram's 7280 patches are applied.

Could you please rebase your series with Vikram's patches applied and in 
v7 send a link in your cover-letter to highlight the dependency.

You can get fixed up shared patches from my x1e tree here:

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/arm-laptop/wip/x1e80100-6.13-rc1+camss?ref_type=heads

---
bod

