Return-Path: <devicetree+bounces-256287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E31D6D38981
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1633302B115
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD5E2EFD8C;
	Fri, 16 Jan 2026 22:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="Vf486Z7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34C314D03
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 22:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768604132; cv=none; b=LEX15Q5LhmdwjuwC9tg/eXHXUFJ+0mbgF+4ihaXVaE5hUGABHpiwUAjRwwqeN/9Y5DTkKAZkGGXlJHpc1l5lu6MI2u1ygZkFrGEaRH8f0c5N27yX2UH6WBHL7ufvlAI5xT2ojFdwFOaBwLQS8Jqe44AUxeZeFb8oVnqYh2tXqnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768604132; c=relaxed/simple;
	bh=llmfTPp0WelKz7jhVXMsw5K4Hl8MVjxqniwEWa7ji2g=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=saXRgUwCdme6QRs6FSyRb+G3Umphmm8jmXG/r0MxdlzOLkNKJyAQR3yrZX/+6l2FqMKUE65iicu5PvhYkLcd3SDk+2NWl8p3kahSilNStuOMhF+ufCO8GvRtpUJOOku7nLSLETa/Gfd5YcgHtCvQ95kQ3s5V7DdiEdCQh2wj/Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=Vf486Z7q; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8c52c1d2a7bso392901485a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1768604128; x=1769208928; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kaMQBLQZL4oC9WJAEgtAsMP8QqOYOo5TRnK/me2K3Oc=;
        b=Vf486Z7qBN3f/OiF7l6OqCyLfzQnOkm9QXPHBSwnnrEwB+siGkUMs3/4gacYoshRKH
         0QVo0cMAqi8uHWknnL8cvXnAZscCG2NQUncQJLWaXrtboR2DIPm3bvIAJfCLyAuZXAyi
         cIc7zFCGzUoZkSMczNhIVr8DX4YiWCrDAsBxVsbdPGmmexOB5No1t3EBTzTg/WPUHDJ6
         z75VL/S7ViNFvmWdqcicyrLYsUkxBQ6hbBScmsCZgiovFhppLEbvkF3Ee3B98LBhNJ2r
         OtfRcjPWBsqbG2Or6Gk9mC9Nr0BfCpgP5HE1SF1sM7bsk+aQ2fbowYmMzXkDTH7znG6x
         jf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768604128; x=1769208928;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kaMQBLQZL4oC9WJAEgtAsMP8QqOYOo5TRnK/me2K3Oc=;
        b=tZD0zsgBC7TrFjMV0ribd8FKXwGFYbGyu+oAUiRH4fyhFaxv3qg+luUkC33yWIO9Ro
         EAgEJbwxJ1uBJHGBl+exaeA8nCBD2pNq1QkSLiBAgGyexjJTRFNf0KWdceCYcOJ9QUsf
         xLdUWqqEEk7QueI86wLFei5LmzABFTL+LnZDMlQvh47PNTPE+99yaedUM5kxXdwrEBP0
         Kgq5r+vZdOaW+kWFWjHbpI54oUUbeNkY6x7dPm5fT9WHi9/d8lGMyx7CvCX+gmn+ATt5
         qO9u1vkF8fVzft5l9flJLem22OFhJjE6RAu8QlqcutRDXajVjUn7CN1sa/7cLWrl0IYE
         NViw==
X-Forwarded-Encrypted: i=1; AJvYcCVzJv99MSno0QQsgNrbJpDelcTYHPjFXFj25j8qKXZV6x51Zt3WTvr4Kp7u9mSpdXHX+JWLnOPpFEkr@vger.kernel.org
X-Gm-Message-State: AOJu0YygsdN0rEwx8Em0oSjZ517mw/ONakn4hWeeSfzXb8d00XTk6eP5
	S4d2D8ZNRbMI2OzDcIlal2J3DQFV+2/MWFBR8sPmq1a3JA7RVV8rXO6aFv3pkip6LVg=
X-Gm-Gg: AY/fxX6TbMJQ32Fa9OiJx8GHn9q8F78yW3oEFGuInriMXmSePD3WEhjwgiXkyRstV+1
	o94HiixBRPaer7TSFZJ50dN/m1XKPB5KVhv8LA3UHGa6ySVwmkbnfLJ5JX5N+VwzLo9TrO8tNTd
	vLv6LcZlMbGhtc7sBR6i17ffhibuewiZubeUXToFWqZP4aR+4fxd8fE3k4/OfuRG+qs1GDGhCW1
	8WKagJ1uJ7SebKwDYjHV83RmemAZjRssDhVctC3L3m2DZnDTQoJ5a1IVNBxJCJ30ZzgyxZUboJs
	aetVIcVIYVMGE2Dvjn00uS1xSo8DXIV/V7h8WR3Qn3HrsIDHZnvSYnDUvBXYujVNh1n2mlGNf8H
	nh0R3EoEbFsMQnO/9NJilSwfEz7ntbz2eXl/0bA5ChZIovpe+/JQmf+lIVSnlXnQ67dXgqYSEGw
	xZS18SN0H8lcNttzVBErQm/YtiyvJ9Cq/iGgMHOB+ZqsHiQP9XO5NeaOKHrQ==
X-Received: by 2002:a05:620a:298a:b0:8a6:1a5d:7ae8 with SMTP id af79cd13be357-8c6a64eb2ebmr839278485a.28.1768604128544;
        Fri, 16 Jan 2026 14:55:28 -0800 (PST)
Received: from [192.168.0.189] (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a724ec87sm337089085a.30.2026.01.16.14.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 14:55:27 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
 <176859948742.425550.1764024067188709567.b4-ty@kernel.org>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <79b3e8ae-134c-df6d-396d-9b7f766ef666@marek.ca>
Date: Fri, 16 Jan 2026 17:53:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <176859948742.425550.1764024067188709567.b4-ty@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

It turns out this change will make things worse for the (unfortunately 
common) EL1+64GB+brokenfirmware case.

Because of that I think the Fixes: tag and "(fix 64GB models)" should be 
dropped from the commit message. (I can also send a v2 with extra info 
in the commit message if needed)

On 1/16/26 4:39 PM, Bjorn Andersson wrote:
> 
> On Thu, 27 Nov 2025 16:29:42 -0500, Jonathan Marek wrote:
>> Unlike the phone SoCs this was copied from, x1e has a 40-bit physical bus.
>> The upper address space is used to support more than 32GB of memory.
>>
>> This fixes issues when DMA buffers are allocated outside the 36-bit range.
>>
>>
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
>        commit: b38dd256e11a4c8bd5a893e11fc42d493939c907
> 
> Best regards,
> 

