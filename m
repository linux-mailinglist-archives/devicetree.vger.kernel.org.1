Return-Path: <devicetree+bounces-105741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA63B987BCB
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 01:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8866F2834A9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 23:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E4341AFB28;
	Thu, 26 Sep 2024 23:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FuPan7vj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696DE1CF96
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 23:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727393476; cv=none; b=iatuUe0R50/Khx/vZfqerV84Q0iLV+vTLrhEnnzR6sYWLHPbQputG0/EdpuZVNlTtmi+Xdxbg/XCFHdnlWCO3uo+aY/0QLPRaSSvuLoZiBaxqXgwE/itswj23SAvbEzNpdE/w7ReZU8RggFzJrYqp8W6FozioaBh3XMOaQZLNxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727393476; c=relaxed/simple;
	bh=7hoodPtwf3xVI9JLDfUA40Je1A7R9N7HAhxABPfVdZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DLLiiDJEKddccPIN6a5iNxVmfIZCa/hoGThXfd88naiGUM3UqLuEJVYLgBJoFGNvbePlHisxHksYkVKrhdXLQeYH/3aQKg8q6+2PH4O5VB43lkhk0nc/E+Ua29yu0KAZI1OyX5jgn/k8ynObSsz+L+TJALwmF7vFmMH6f+mhLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FuPan7vj; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c241feb80dso4782720a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 16:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727393473; x=1727998273; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=toinFhJP3tFAS9cxuoVAyU9xS2LGZOz1oWCsjvSfxfs=;
        b=FuPan7vjGzjNg/5OSMpWCYC1sumidyiShL/lj8Xt8Ux1XwjXI9Kn9fGNlLONLXZM+d
         /vejY1QUXXA24crJIMZQsrBHk1RRXAnX0imLUS/RLeInV+8rkdyLDOWPfutTeBVbciD+
         6mWyWOJupfgQxsUKW60bjFaAIru7CIYm+jh2JLzuYl+HaI5broD4wIsLUTzoia7FCRZO
         s2El5rDNTM15AOqRocOHPJm7UMHaYmNbF91v4cUENdZ5HENgapgKMLBza7V6sxWJ0vO9
         bZu3y1lYMSlR47CJ6dRVB6kmMis9tK8My+hWrb2eK7PoUnaCIut6NukDv2WDvOtOz3/F
         uFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727393473; x=1727998273;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=toinFhJP3tFAS9cxuoVAyU9xS2LGZOz1oWCsjvSfxfs=;
        b=jFc2UyOuF0FUJrbE2tACoIXOk2rDKNSsnCAhC5YggZRTGQwq1nrBm3dCUaZnkEmprI
         reOOm4axLgEvV2kJ4A0HW+8sfwBX8rp1MYTTUapEZHKNgeEzZzmNuuPxY5TEDt3Qup4v
         0vJ3krRl7nwrb3udSz1GLRGytORyXERKOEXQYME+RE/DosKndVqyKN0rgz+It3bD7L3d
         fvJ3X19q/bpiC2GwQnanw+0E2zqZcwfluvh1iIMbdYbeQLoFp7B3WffzARKy7EO81AzY
         d/uHTAILJboc5x3FYOUssEN2ptOyI5gagnHrQ0iXxmmromJynXXOOeUnGZrWUPvIM+2c
         AtgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXWV+QapFfpGPkzV6IdJ3O+d0MbdjGoNIW5r06G0bl8xVd2nKlPDa8/EI0Yym2AnJYY+LSWUES8M3x@vger.kernel.org
X-Gm-Message-State: AOJu0YzfTBIrosM7CpxHKbzecGc1S88zcMZN7oxQ9z/5POf49hsKazoF
	WTaV8Q1jHCWDrZhX0OuvjWuE3DqsKn4TmL7SxYd0XmTVR3wYvSZf/fjnAi8solk=
X-Google-Smtp-Source: AGHT+IHpF5KFnQN0CqvNcoR4PK5z3SNZf94773yelZyvSjGnVMyQcOdZgke9pl/b//B22gsfh2xSAw==
X-Received: by 2002:a17:907:7d8c:b0:a91:15ba:7c4d with SMTP id a640c23a62f3a-a93c3211997mr146447066b.33.1727393472757;
        Thu, 26 Sep 2024 16:31:12 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27c5af5sm50749266b.70.2024.09.26.16.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2024 16:31:12 -0700 (PDT)
Message-ID: <86bf9cb5-a0bb-46d5-8deb-f0e8a86932e4@linaro.org>
Date: Fri, 27 Sep 2024 00:31:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Jason Chen <jason.z.chen@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240926-b4-master-24-11-25-ov08x40-v1-0-e4d5fbd3b58a@linaro.org>
 <20240926-b4-master-24-11-25-ov08x40-v1-2-e4d5fbd3b58a@linaro.org>
 <ZvWDbxzm2cCgC8tP@kekkonen.localdomain>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ZvWDbxzm2cCgC8tP@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/09/2024 16:53, Sakari Ailus wrote:
>> +      - const: xvclk
> This seems redundant.

Right so you're saying you'd prefer something like this

drivers/media/i2c/ov8865.c

I can drop the dependency on "xvclk" as a dependency in this series.

>> +
>> +  clock-frequency:
>> +    description:
>> +      Frequency of the xvclk clock in Hertz.
> Could you instead use the frequency already set, using assigned-clock* in
> the example?

Almost certainly yes.

Yeah, I do that so.

---
bod

