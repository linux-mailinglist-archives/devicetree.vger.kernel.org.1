Return-Path: <devicetree+bounces-137138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA5A0792A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6155C3A5708
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78C821A450;
	Thu,  9 Jan 2025 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kP2X/W+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA28F21A436
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736432923; cv=none; b=bsHlyNsFFMUqqB1ecR/08obNDGw+J6kmRTkKIH4qep+8QPlq96F4+T6whQT9Uw4ScmJ32lGdIFQBSVd/EnykvH2yFUcGNZjCkWedUjQuFTrwI2cm/fnSvGj2jtk85HCodI9By9VA/tG8ClQIP5Az/ISCflkRisUL2+4Ab7a7gv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736432923; c=relaxed/simple;
	bh=D3nrlPeKz+EraqHs1Lv/LnyIsKAqlgwjO/7hNLdXvNc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kU+C+whYC+nRt6AT4psim/dYcvMSyY3O3pnvSKN4cbfXzHvrMIgiCgSDOUJZE9VaPgbgb9gz6r48rYNjOPS0vLYKe56Oe7dzBDXLxWk5BkTRqOfuYJKtyAkIZUZxf7XTBLhQzjGWmi9AYz+D5SQQFi24YxdlV6Q5Fm+Fiwkgu2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kP2X/W+B; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43637977fa4so1021065e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736432920; x=1737037720; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjsOqBKaPCYw0mzOU9ehmec2qZoVEQy6XE1Qe/YGZlY=;
        b=kP2X/W+BZeCAYmWwCRwFFxB243Jog5bKKepRTUjNRr6NdvgBNC/Okw6QDnbWzrEZ0F
         /y2Mp6SRTi+NNOBvzAWA7APeYJZN7eeudzM0Yd5sbJPT1RrZP/nfYDFJHzXO44DehhKq
         rIvVlo3uWSX9llzmjbMU4dtukCdoFd8W+MGei477g4V+AkH5fHZ45limlOJh4EPjqV9l
         F6LF9y/irqmvyYkCtew9IR14K7eYf5gXeATwCAgjEU/+sC7HM7f+3JfBaX+yxRkPoSgZ
         hiF9q7tOFhoXhInFYOpQOrUZI0C0Vh09DBnukJaJiRS1tSWbpcIlXPcY089+V95g5rx5
         ojiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736432920; x=1737037720;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OjsOqBKaPCYw0mzOU9ehmec2qZoVEQy6XE1Qe/YGZlY=;
        b=whA/w+9D1QeShD3eNyLNb31Q9hrMqtWjS5aDn0Up6b1IVPO7q1fueow9yftPyUhr8V
         TwfX0f51mJoXBtS5iLtWYKymjd3Xr9jc3ROi1Kax7uE6UopmF1Xr6U5tbhyFhHHGvLct
         wEkpfnqIZ3bohzuEUcoqtIdIi0KmRCQMn9DbtzweRDGsb0TnEDWevjXEVBdmD9uf4EpS
         4j5F0HkJLI28CGNTVlTwCJQhTngj7Drp8bcMRXaZwSTVi229Przy1Xo++gXCZQdjt7zZ
         QriaL5KhBsSRcpbSeNNLFmGFvst1o3KB1FFh1srhV5d1xve5xn8WTO4Ip7CeN4cdA44I
         ThIA==
X-Forwarded-Encrypted: i=1; AJvYcCWGAoTHt+6J0uTVz+pFs8ddzYWBE6R2mwJ/Doxd/uW7ZOpQgwX6aIAT7Y0CCOTkEel9J3XSOHGQUCmN@vger.kernel.org
X-Gm-Message-State: AOJu0YzFKrLabPIhrE3Xhy9aML5A5GCPt3Zjhxb61yFkdhUOt7O+RrUg
	FMfWy6r5glPzw1TBibcUg3Ofww7oOoVKWnc2BdS+aXbtG0nqm144LASVOBxsjNA=
X-Gm-Gg: ASbGnctGT6IUHeTKJ4uFLomT8ChnglQ3kbsGdsSHQNeU6NI8K/Km0tmEqJEQ5qpHMBq
	vlvJ8HLv6xw0ZjvnHGnl1aIx1d8iNGfbx2CNuXw8k0tGAq7pHmI5L+sjbQzOGQ5NYN/1WkKM4QA
	QoBeOt8JCqx6go27Sin6NkfQJM+IKeap0HFLC+GlCyZqme+EFaRV3FyhoPOYucEzvqYiMAZ0bTq
	k3a0WzczMlanCrue6+JmjXwaZF1ZaNi6SrIRJubaqYPa8CXGIvw30o614xhtfFU9C3fQJe6UJqX
X-Google-Smtp-Source: AGHT+IFJny6smGwOaWzlpqJJj0YzREKzb8CgNKKUdghyHsdeDtJJP0uQBGyF68Eno0Bqca6p0a66xg==
X-Received: by 2002:a05:600c:3d06:b0:434:9cb7:7321 with SMTP id 5b1f17b1804b1-436e2691021mr26949245e9.1.1736432920286;
        Thu, 09 Jan 2025 06:28:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e6236bsm22483525e9.37.2025.01.09.06.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:28:39 -0800 (PST)
Message-ID: <dc0a61a9-6c38-4c8e-a82f-d984f2322725@linaro.org>
Date: Thu, 9 Jan 2025 15:28:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Use recommended MBN firmware format in
 DTS example
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250108120530.156928-1-krzysztof.kozlowski@linaro.org>
 <fb988217-cc2c-45e2-b102-6e85c5aa0238@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <fb988217-cc2c-45e2-b102-6e85c5aa0238@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/01/2025 15:21, Konrad Dybcio wrote:
> On 8.01.2025 1:05 PM, Krzysztof Kozlowski wrote:
>> All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
>> instead of split MDT.  Firmware for boards here is not yet in
>> linux-firmware, but if it gets accepted it will be MBN, not MDT.
>>
>> Change might affect users of DTS which rely on manually placed firmware
>> files, not coming from linux-firmware package.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> As unlikely as it is for most of the boards, I do like this change
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks. I need to correct subject, so I will send a v2 with your tag.

Best regards,
Krzysztof

