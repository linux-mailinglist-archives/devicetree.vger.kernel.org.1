Return-Path: <devicetree+bounces-192082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B891AAF14F9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DBC11BC41D5
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220E426D4D9;
	Wed,  2 Jul 2025 12:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="elPdaOBf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4BA26C396
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751457983; cv=none; b=DnlD7hL2vVQUEOMOBpQaybj5SUhmLV3CkJKaBcrQ4ryO/BY061F00ZLmjtBPnhD0y2y+xMWOsGOzbk3r1rbdzXPz+WouiHng8hhr8P12RA6kMSV2IUoahGk2RitCZ5yapuDTT1dsEbwoLKKJ5XJH4WHAK8pVNh1QZ+vQmN+5yuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751457983; c=relaxed/simple;
	bh=GVNj0GiDbzEfuPNlWlITePA20oGFkxhZ//VQ6Wqj9z0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zp1n73MMFD7pNJI503JUhb9HNcsNL9oh6jvouDFgwEaa4Zmo0szHw6cxFF9aY7g9v3VA3VvqwmjPnsDNHedSP8bbo/4t8l3Tg9qThSEwDMFDCj4lu0MPWnIJv/X+TjWtl0g5VhCT5anXA++rY9c9T4PrjB/1dQrmqf+UQkuQ1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=elPdaOBf; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4538a2fc7ffso45517925e9.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751457979; x=1752062779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4I9wHRK6ycL/nw5skCVK6BibKiZIXkW4VmffJ6mPK24=;
        b=elPdaOBf1Y1osT08GlI0yQdY9yz4+VCtXoORGaEDDCY6UpcbTyPRcbfPBqjBONJVnx
         MmhuaPOftEXpMQBKVAKHoeXygZ5GBU9TwsTIduNp3yrNBhLzfMmkKlZKb1iWcLUu9KgI
         7+Blwbrbc5wPF3Uo98ROKzmJMaJX+7urND9kwFBD7IMGk2FLoCclyVkPxEhvDiQA7X6D
         UXe77TD3LlZqg/anNUEQ3Huokik7tBwmQQGqmKnUrJRy1A7ZKjvRvDaeUSMyMqAIQfKL
         jt6SEqYCwGM4FQuD0sJ+hYi1Hdc/z4TwR6l5UJcdc2bortlRVmFZbmCMY5VunfmHTQqv
         AZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751457979; x=1752062779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4I9wHRK6ycL/nw5skCVK6BibKiZIXkW4VmffJ6mPK24=;
        b=dVs86eD/+u+WJR9W9+DKfWI6nnaGJ3OawR+kT7WDYbZMyxzLDqcUJaDvXAE1OJkueI
         THXtOOQ5Z7YcZWU3bsYc36PL9xVm816SLlDoW6Hfst2fMirM8TzSzPJ3C4KFw1dyXvdr
         +2qV8VAp+T5AIQyngc4kuWfW4ct5zfgX1i58hMIVOYye7WUk6rAvsrEhb4Ax0k4EkAH8
         u1e03vHv5jwYW0u1yGnbI3SmHudis06jMWPIBZqpkNP9FyLqmo3gjS/VLXbeMJbQNQJk
         EgrXKSpBfgMxdycA37XWm844d4xccpUBRrt9bA71GSyPxOIkwZTYVgJ/1sM39Ig9KKc7
         lRXA==
X-Forwarded-Encrypted: i=1; AJvYcCXshgstI026iI1qF8NGbGzw69SolB7wlvQIdYFqFzJHN3yEYva293/BIGVj5Lk2M7Kjz+N6U9GikV2B@vger.kernel.org
X-Gm-Message-State: AOJu0YwEhds2/JfnQ1HibcV4YLrSLZmPrLymxSs0U/r64hmm82ac+dXW
	ya1BbkjJasiakPVp+exC0165qT3sbBu8aKFRKL8avZ9vDju15Ka8MWtAMtNludWt/9I=
X-Gm-Gg: ASbGnctwf8csiRsWE77o2x+6xw89t3NCaw3ERcetnztZgAe4m1SuEvRGx1nV98ilZ0+
	twgfgwPUYCiuEQwi16/o1ubbtbl6TNAog+nvc8AFZv5HmSZNucEhJdGzb02+7r7ppyTR0XDe30O
	q4jdpIT3YzSZlN7lbJOT1V6F4Z7fPFYIPk5hirgIwbgwqhTBbaJ/TleOzL3hUnFyaJ/YMyb8e36
	noV9XGAL+6nbt6apTuRjjiocvgvY6WwovxKvu+ei2N7GvK8NV7TlJ7Ok+q0OV0NrLlWD10naWXS
	QCtPqz3McTivwaDJ5vhMTMDc83jypJdzgodhWEjrQ4dnRF/jdRZaUQ1FFf3HFNY+Z4vbSEplF5V
	s5fVLk5cUROrMCWSORhb2d0h5NCnP
X-Google-Smtp-Source: AGHT+IFiGQ8eoDbIef8H5WgcGBsaUK7l+LIPHU5+0N6yFyzZ/rasF17jb2K+ACo904sf9rWYtcqByA==
X-Received: by 2002:a05:600c:c08d:b0:453:8e3d:26ef with SMTP id 5b1f17b1804b1-454a3c22568mr18064675e9.6.1751457979384;
        Wed, 02 Jul 2025 05:06:19 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538233bd14sm230508525e9.2.2025.07.02.05.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 05:06:18 -0700 (PDT)
Message-ID: <f5ebf0d6-2f0b-45cc-b99a-b786e5df9edc@linaro.org>
Date: Wed, 2 Jul 2025 13:06:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <5f90547d-945a-4e26-b36c-75f2d8a1af97@kernel.org>
 <eab8d79f-7188-9537-9176-3e4d22f0978a@quicinc.com>
 <5ad418d9-8199-43c9-a477-1e3b939c054c@kernel.org>
 <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2025 13:01, Vikash Garodia wrote:
>> Anyway, in other messages I explained what is missing. You are changing
>> existing hardware and you clearly must explain how existing hardware is
>> affected, how can we reproduce it, how users are affected.
> Exactly all of these i have explained in the commit message. The limitation with
> existing hardware binding usage and how my new approach mitigates that limition.
> 
> Coming to usecase, i made a generic comment saying usecases which needs higher
> IOVA, i can add the explicit detail about usecase like 8k or higher
> concurrencies like 32 or higher concurrent sessions.

Why not make this change for a new SoC, instead of an existing ?

That way you don't have to make the argument for retrospective ABI changes.

---
bod

