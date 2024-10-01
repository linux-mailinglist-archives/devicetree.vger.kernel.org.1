Return-Path: <devicetree+bounces-106751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D7398B8B0
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01B98282674
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 09:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1954E19F125;
	Tue,  1 Oct 2024 09:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A+gJ8Mft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6147719EEC5
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 09:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727776446; cv=none; b=NrDPGATWEkHGlAvllXW8+gIgQcmZ7poB8ZxvD2BvQmidcQotDVmV/VmfDYwAS5+3bzlzQH9ZxAfeVp9DMwjpo0tGa9kkmjYXF4MmFMevxUDcfM11OD0sTq9HSz3ec08xKBUBG8vAoBgo7ddiQJ79yjkG7WQl41qDfuHTPN2ISmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727776446; c=relaxed/simple;
	bh=qhTAdx4eIfmHPAR3JH2WGt41RjDWDL1ZRiRjkJ5GAZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dbSc237QIi8uTReSvcJgDiHi62jn3sp8G8Bci0b4mOGAo2XQBBlhBeUPQNfpHHtggUjns1RiweInBZq8QM8xixZYj+1a6tz9WgN7id/2bBMZBZ/ocxv+/LdE/jcznVSrDxdrf4ci+uEuGl1oNe/oRYqlbX1UhArHFVOey7JBdjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A+gJ8Mft; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso806145666b.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 02:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727776443; x=1728381243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A9E+Kp5/p2D43RyigGsyne2CVkFVSUbJjEtYYyU4Uws=;
        b=A+gJ8Mftbq4UnahpJmWJ2xovi2jBbrNYH+1a1GN7vI+EPWpg4KY597uF8s+toJ3VdU
         4Zt76o2SLAfy+VebyxRxAy1Z0dgja00fXB65H3L+FPvEdbV7fKVw0zS1Nk6V3WR4cVkE
         XTHrx3cdcRV352fVGcOysTx3DWrgyKy8MMb83dJNid6C8ds3fzeB8kee+Iun8jIIy7fO
         XYptaUgjdtRRRUAyHznx2JAbyWkacfIGeiaMFWbtFmQagFyjQbr12OfBp/YNB0f2ZN+t
         ljyDbstyHuY7YejdEu9VILGHr7AAxi42gFFMeHo2Wu9pCfDLlXX3jyZZXsb891G1Ajyv
         oSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727776443; x=1728381243;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A9E+Kp5/p2D43RyigGsyne2CVkFVSUbJjEtYYyU4Uws=;
        b=fe3HdkzgerbUaaz05vrRTfDQYT3xV74sXP2AUHVVgT+UFAMXvCnkKNCYfmt1oS/gh9
         nStGFrIELWX/qXWIVY/NQF9YkjR6eOfjYYtx8j3LusIahcRU9JNHoIND0fVdnuOxpSeo
         aIxWtHgrxsqHxNc0W4UifaBp1KLIlxRhgw2dUhAHH09dgGw2Nd9q9/d06cTgvVQuShOc
         z1RD18BNHaQmaUh4aG2gkDOFypKxya0YKZywQFgyHgM4lCzX4yjQLqrtI+k53AnwOBC3
         kJ6mcjQZID4n6+xWaczqViP1VCWpJXKUpGjzuJjoOJy7R0k15VKOzKkoiiBPsuVZ6FIF
         1v2g==
X-Forwarded-Encrypted: i=1; AJvYcCUHVWtrn6JFwqOaRLw8bDDTUgvhTSPTGW259FbSaQNmZ0kaxH43ImCYtG3iluEI6M7RSErh/OJwz+3L@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0vkI8jN68sMS/EsnNqK1BRDXy80fjJKa151683DycOU0qbvRO
	2fFEmjMaO21rgLYhMKAIJNu/zVW/X8i1O9jyuQhIU4VUkBYdEoSkaSra4MjNgrQ=
X-Google-Smtp-Source: AGHT+IGjZV6E3B3GeLat9/PcfgjscVGr8XQ2l9Aj+Dgjg7W1W7CTfRYCXSZBLsPLOku4DnNH4zCBQw==
X-Received: by 2002:a17:907:9284:b0:a90:c411:24e0 with SMTP id a640c23a62f3a-a93c4916d9amr1830582066b.23.1727776442590;
        Tue, 01 Oct 2024 02:54:02 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27770b4sm675459366b.42.2024.10.01.02.54.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 02:54:02 -0700 (PDT)
Message-ID: <652b3b74-65d0-479c-a863-7e8f32be7fc9@linaro.org>
Date: Tue, 1 Oct 2024 10:54:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] dt-bindings: media: camss: Add qcom,sdm670-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241001023520.547271-9-mailingradian@gmail.com>
 <20241001023520.547271-13-mailingradian@gmail.com>
 <aleot5kegf5xvlvzmws6tmxcqxw3gnmxndclkb7rdzcxnmehel@varsfzbmiszm>
 <306b0806-70c5-4dfb-b7e3-5614a20699d2@linaro.org>
 <094a889a-497d-4569-9798-04918cea63e7@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <094a889a-497d-4569-9798-04918cea63e7@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2024 10:47, Krzysztof Kozlowski wrote:
>> These are appearing in address order, which is preferred over reg-name
>> ordering AFAIU.
> First time I hear about such rule. Where is this ordering preference
> documented? We always ask to keep the same order in each file.

Eh evidently just my impression because we sort nodes by address.

Yes, definitely agree both the regs and interrupts should be sorted the 
same way, its inconsistent to have one set sorted by address but the 
other sorted by name.

---
bod

