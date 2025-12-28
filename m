Return-Path: <devicetree+bounces-249979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 003C7CE54DE
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 18:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20D6A300980C
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 17:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4CA620C477;
	Sun, 28 Dec 2025 17:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZIwdCNnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B32718EFD1
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766943447; cv=none; b=qcdH17xV+JeT0gYjK4KuFSWWUn6dG8sIoLy4nHG5aJBSRimKUcy+jlbiG4w9KUYsOZb+0/ahb8XrXoqQh1WAasiIzlZ2kM9whsuVMg/e14ekAf46x+7QpbvBoPIzWwXibbVUVbVWGbMty+zQEuGHQyP8xXes7R7Bfm4WS2ee0TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766943447; c=relaxed/simple;
	bh=IU3oFTJZ5OOm1UjlmbTgSas+pHivq/znUw+5jxL3u2E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xn7lE0BmbgSY/dOVE6oFx3m2iOTqCUIVdyEeajRhovnwoKCYeOEYsUGx5Z0qUz0PfAlLgwn0C2GvVkFwAjzoQavQZWvmdWb3h0e/X+VSzMEhqhdlDznfucEfA+0sYNreGHthv+CHxNBYMwIYleTJkLFSEst5U17P8E5amsFEfrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZIwdCNnU; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fed090e5fso3931320f8f.1
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 09:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766943444; x=1767548244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wVpE42Nm/eglv4AuJiF24kJ0VOC6iIK2FSatfzsCK7c=;
        b=ZIwdCNnU8FvfehJyjFTeKa9IFWr+KQ/tHMYfw0Q5ZpAozEmJWcVoKaUSSZKgKm+9Xy
         klppD3twneWKRFAdTqlE+QgxGGILM0f6p+X8EPCWWjax6VVjwtYUiH158wINp9pYdCrU
         ymOQeDG6pipxQTwHTU7/AiPULjx36CQSUqoAR03/HLYedK5R0goR0fCe/uGkVTS6qu4J
         jHJ5cmt/uSYcBmkADTFDox61thT7MaMLwr05bfJ3X4eOS7trGlM65Vs+ye40qY583gqz
         oL2nLdDbwIETIzd7tXRL0+UZ768DVAPuwvpN/woePldjOuThpPkKhkYI8ZHmlBb1w6A/
         eHMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766943444; x=1767548244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wVpE42Nm/eglv4AuJiF24kJ0VOC6iIK2FSatfzsCK7c=;
        b=K62/pZHyaXyUr3P1OTGs5mDuVggmEUchr9MuwQjeqkfR70hRK9CwbRKDNSlrU2N1EA
         rMsYxUSEuaQIXf0W8dFxopyZAbvIhWoEV8sOucRFxz43xVTqohkpykcH6FKkV5f/Xvos
         S+Y/hROjd1Aug/KiuvmK9+ViN+W4iK5kcrb9sTh0qiV0ozyp6nCczFAx6JDthU68MK/u
         285RggDiUq+7eubeDi9vn7kdV2B5ayRgkKMe67vfT8V7nnrCEuPKLX5AwXt9gkbdz2r+
         0ItFFXUacX+PVDb8YbdIluHHxCzFZgimE9iUO4dHy2exYJaFPuMyt9cLnFPUkvnehBku
         sFhA==
X-Forwarded-Encrypted: i=1; AJvYcCXComnuryk/Xdzv8ELyj2BWnzM74yeqPKU2MjtQ0Ynv99CgwuRKrAdha1lji9JOf97JF/bm9a0fjfUR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvs0TgqamcW5hf8ArsyAZsKW8xshhrf2gTHIr5MH9wKrIBZ4HO
	JIHx6cYK/bz2Z7btT7PzJth+RQAyAFZFiqXjRPrkTr7d6Zu3Ep9W64il8iXOHvYpQYA=
X-Gm-Gg: AY/fxX7078SBMtG2eABZkpmfcV/ImQvDFmDHHa+PaOuU0iGGqkEFRG6KMa8wIK6mvL0
	NS9Q8l2R10SXp95oS6TB80qB8bm9NFMZzgf+wEZsv6v9HNnGJzYAD9pwLKOtz3Qnlj/iLiqop5A
	SiQ+egmLmliLGHMkpIJAam5M7XMvU9OFpTQChx07viR+/LNn24MHMQuvjvo1tjuQX3oqNp6CShW
	ozs3M9o4j79UKfVCH01suA5wEFsMbiqMV6gfym5uijYivJhNQTVZJfsPdb6rM5hG2fZcv7Jy9Of
	n7AyRqrhx3MKr4RiqX2+BekU9IjXxJ0dmhpUi9P2WEUAe5+SvhHIdA/wn/wNquocOUGLQzap+fC
	9P/3D94yJZgsWAJtwsoDdOT85z9VJDV/TV+y1aOfWg5/RuN0xVSuKqbJt13SyCO2avMC/mXnrso
	35HoSJ7I5tW7icNFxfX+OxvnX9HqeDQBu7l74D9TCqrvl8ejX/HQynfAk346kUBol9CGiH0r7j9
	mqt
X-Google-Smtp-Source: AGHT+IHE0OkFcwTNOw8wEuwIrfhr0vrnj+ENYFnmwQiktK0vMMBBeGZzt5Tqu1ud08sB+J6NZr+fHw==
X-Received: by 2002:a05:6000:2c0e:b0:42b:3afa:5e1d with SMTP id ffacd0b85a97d-4324e4c9d89mr38116918f8f.20.1766943443689;
        Sun, 28 Dec 2025 09:37:23 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:37e6:ed62:3c8b:2621? ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm56716550f8f.22.2025.12.28.09.37.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Dec 2025 09:37:23 -0800 (PST)
Message-ID: <ba28863a-a5fe-498f-92a0-d71c356e7189@linaro.org>
Date: Sun, 28 Dec 2025 18:37:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] counter: Add STM based counter
To: William Breathitt Gray <wbg@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, s32@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20251217075000.2592966-4-daniel.lezcano@linaro.org>
 <20251228065241.21144-1-wbg@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251228065241.21144-1-wbg@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi William,

On 12/28/25 07:52, William Breathitt Gray wrote:
> On Wed, Dec 17, 2025 at 08:49:57AM +0100, Daniel Lezcano wrote:
>> The NXP S32G2 automotive platform integrates four Cortex-A53 cores and
>> three Cortex-M7 cores, along with a large number of timers and
>> counters. These hardware blocks can be used as clocksources or
>> clockevents, or as timestamp counters shared across the various
>> subsystems running alongside the Linux kernel, such as firmware
>> components. Their actual usage depends on the overall platform
>> software design.
>>
>> In a Linux-based system, the kernel controls the counter, which is a
>> read-only shared resource for the other subsystems. One of its primary
>> purposes is to act as a common timestamp source for messages or
>> traces, allowing correlation of events occurring in different
>> operating system contexts.
>>
>> These changes introduce a basic counter driver that can start, stop,
>> and reset the counter. It also handles overflow accounting and
>> configures the prescaler value.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> 
> Hi Daniel,
> 
> It sounds like you're trying to implement a clock for timestamping.

Well no, it is a counter which is used for timestamping. It is an 
automotive design.

> Although the Generic Counter interface is flexible enough to shoehorn a
> a clock into its representation, I don't believe it's the right
> abstraction for this particular device.
 >
> Perhaps reimplementing this
> driver under the Linux common clock framework would be a better approach
> to achieve what you want.

The common clock framework ? Sorry I may have misunderstood the CCF but 
how a counter exported and controlled by the userspace can be managed by 
the CCF. Can you elaborate ?

> Regardless, if you do pursue a Counter driver you'll need to follow the
> Generic Counter paradigm[^1] and define at least three core components:
> a Signal, a Synapse, and a Count. Resetting the Count is typically
> implemented by defining a struct counter_ops counter_write()
> callback[^2], while overflows are typically implemented by pushing
> COUNTER_EVENT_OVERFLOW Counter events[^3] that can be watched by
> userspace.

Yes, I think the Generic counter makes sense here for the goal to be 
achieved. Thanks for the pointers, I'll see how the counter fits with 
the paradigm.

   -- Daniel


> William Breathitt Gray
> 
> [^1] https://docs.kernel.org/driver-api/generic-counter.html#paradigm
> [^2] https://docs.kernel.org/driver-api/generic-counter.html#c.counter_ops
> [^3] https://docs.kernel.org/driver-api/generic-counter.html#counter-events


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

