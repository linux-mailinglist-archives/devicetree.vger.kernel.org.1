Return-Path: <devicetree+bounces-123474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B49D4A11
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B87ECB22862
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED4F1CBE81;
	Thu, 21 Nov 2024 09:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QROOU/8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A6C1C2DCF
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732181767; cv=none; b=O4l8JtrY8UvBLLSK2O1ZlLtfi1ZwdeYSpkaouRYEcW32w6y9C5g4umeOkNSvXqC1C5c0iV3Vw4dhbjdbYruSxRzyjR8aQdrlcOPnTfERjd5PqbbHv4faGlqXagD9ar0+kRdx9r4ngZbaXXewt7kwuroWc8f1gQrAoRklNnJ+xDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732181767; c=relaxed/simple;
	bh=ZT4w+cU3Dvqf35BjhmM5mFr+e38ZJq2cEAW3TsAU6l8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AdAjY+P/gdt1y/SV192jqsV++3KS3/Ar4qhH7t4EESaYY+D3qb6zf1MyrLLLgRDA6fDksbfaKdqsJLk6BkSTfDfLx3b1Ioq8sC1Jz2Iju83ZSqyBZJ78plOTsqftKnGM6bqIF0M3AuTVxNOubw2uvOLMswWnPjJjA1Dd0a145ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QROOU/8w; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso7970985e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 01:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732181764; x=1732786564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Prq+YhLlX1ECW116mG4I8YcjFkeTG4KJTUWMk26Kduo=;
        b=QROOU/8wN7SyCgq7Bg8HdQQLx0TzoYRhXYRZE12nXqu26bbWNNpPbhq/ktgXq/L3yw
         GH8o7K0mZkOvRLXJ/I7z69ttP2JfEEtWKGwg9L0Jymx7TNyVPOFqstduxu+1KocqW67S
         ouurOcGAtRO87yUNC6NenP+vnDPiYw4MTVgxF1eB8z2PdovtdoKxwGTm2IMpaePAlZHz
         zsOBIzDrFtHwA2gXtKKTwdUIJKmwz7z3y6exOuUvb6pABj/PlAHAJ/6lMsopUg+cCYk1
         H8shAZkshw/Dy4sRB/wnQMTLvezTN5fILbBUm0BZAFhKlIJWpsZXSPHoX6JQsPJmatYx
         Q07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732181764; x=1732786564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Prq+YhLlX1ECW116mG4I8YcjFkeTG4KJTUWMk26Kduo=;
        b=Gyajo8HrAdkjaifX2y3Q9/D+eXymoR0Akeg1dgTA0//BPKiE+RO6Py9ihwQZhTUjdn
         epW5d21pnTy5TZkjgl0oblAQ+aX7m87IINUD+hnOwOcTWcmWNVjZgzEihPAkJOP2KyO0
         ZnhozjVtlD8ive7IiuZpAVa6L3ZFKmZVIfmdG1ohBErinE4ebZ9qepHRCQWANeC5uwJD
         pdubdlvYT2W3bt6Nb0MCujwJmDcaAlwUFmgHwlc51XZim97gOf8kHY9IEM9kVj71oy7i
         aMw4EPOoltHtnzo+eYKMY9EXYjnrkrBXc/uy7Y+vCN1+ArRcYtNBGf+0fZ0T4yLvC6nd
         E7eQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlrOHcNxBEagh84z6OxaJpqCjaVthl1+o59bCFe9dUpOOKMuQ1QMyUWi3t0tZJ8R1y+tPJSqeZfGz6@vger.kernel.org
X-Gm-Message-State: AOJu0YyS2BbrwBpFZk5eg4oOytfp/u1a2IVUadxUYTZjVvn08kDwB/B1
	7ugNOfmv5fJmrWtx5vg6aYvtCEhyXdYIP1fPx+LR2dS5OaNbm81Oho0WOXVVJaI=
X-Google-Smtp-Source: AGHT+IH8By16gKHzbslHUV422fnt6D7QEkphYg4/fq6p6TddFAzWit/hIJ9+bUbGLQja+B7BJ+maEA==
X-Received: by 2002:a5d:588f:0:b0:382:3d04:9646 with SMTP id ffacd0b85a97d-38254ade367mr6612976f8f.11.1732181764122;
        Thu, 21 Nov 2024 01:36:04 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825493ea74sm4526510f8f.89.2024.11.21.01.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2024 01:36:03 -0800 (PST)
Message-ID: <dc76ccab-e1b3-4dc6-8652-3a26146b37ad@linaro.org>
Date: Thu, 21 Nov 2024 09:36:02 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: media: Add qcom,x1e80100-camss binding
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-2-54075d75f654@linaro.org>
 <92f3f608-1ca6-4c41-9406-28c7ad589872@linaro.org>
 <66d1c50f-ebfc-41c7-95a4-5d555b336da4@linaro.org>
 <bb58d02f-9ed6-476f-8bc6-ad56cb35e37f@linaro.org>
 <91afb347-e8ee-4a97-bd8b-9a1413051cb9@linaro.org>
 <f903025b-08ff-422c-a93e-fad911a7ee43@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <f903025b-08ff-422c-a93e-fad911a7ee43@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/11/2024 00:37, Vladimir Zapolskiy wrote:
> On 11/21/24 01:27, Bryan O'Donoghue wrote:
>> On 20/11/2024 23:02, Vladimir Zapolskiy wrote:
>>> like "vdd-csiphy-0p9-supply" and "vdd-csiphy-1p2-supply"?
>>
>> In theory, however I'd like to avoid adding endless strings of new names
>> into the driver code for each different power input.
> 
> I don't understand this argument, it's the same degree of endlessness as
> the endlessness of new designed SoCs. Should it be stopped now or what's
> the point here?

I mean to say, I don't want to backdoor a bunch of optional regulators 
with odd names via this method.

Per our previous disucssions/agreements we will do this in a real PHY 
instead of inline in CAMSS.

---
bod

