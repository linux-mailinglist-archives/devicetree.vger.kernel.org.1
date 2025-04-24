Return-Path: <devicetree+bounces-170414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B044A9AB11
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8EE9461707
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71FD21FF57;
	Thu, 24 Apr 2025 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DPxOfT8K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E01218E91
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745492030; cv=none; b=OfT8uh1w5w1T++RZ9PIji44yitvPpWDLLo64Z32bgvY4RjdLX2yolNrAL4EuegdR2GQ0y7ZfThnt19PVbOnIw0n4dG99XFlXoAgdyT6aW3R7Kjx231uRkvGn1Ot4Q2RJ2gktsCd3I4H8j0XLjP3efXw+O4VZkSyjo73os8BFv5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745492030; c=relaxed/simple;
	bh=qpsqlRT1eEQ11KTAaoQ7QXAvDoDv7WRzvWDBcBdElFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g/UeJd6EJ1tgVgiLuBZhC8gS1NE6muWVJawT/izuaGtNWfdTRF0kdjf/btJoaP9W9AT4V3WOAZQQW+IJGMkR9VhlRR1WPUnojLFDPsRpukFTlLBiyHeR3DOu9m0j0SirEmgqgR36Og2HaTA5BJv9q8oODK8anfKY4NESnzNZUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DPxOfT8K; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-549c70bf6caso113796e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745492027; x=1746096827; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iz6NUcWj6EAWyg+m0t+9RfeeZ2BF2rAdUY/5Xy4ikpc=;
        b=DPxOfT8KO/Z4YmOqX97LpkiN4Q1KbAsu/MHmWpbIibaFbdUOCdTdvth6ofJU2Hn70E
         OKhDcQLMjg+1vd1Ab9DJXWzHQ+WYF9qqmFBe182YQ2CK3P2pB/hzEjARxQ309g0LPmXZ
         jfwPOiQjr/qMA6IFf4Xm+a62jN/dEI7S/lhIOXfIdHPPzcbfCbrzGdUwljXvmURkdYQb
         QTfBvGSrWiWhu0YM8vj6P6bXy8OSGC1zJgbUT/rRTs5wSck9J/bGwAHjiZtO/0FN6QbA
         H+eBVBeMPihPtU6h97vuq6fjrzbfYBEPe9Zs+Eal+HHwclKKd0iNkEHEw4TjMZ88b5d0
         bjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745492027; x=1746096827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iz6NUcWj6EAWyg+m0t+9RfeeZ2BF2rAdUY/5Xy4ikpc=;
        b=EBu9obuOHDJo/m3ziDiWKMFJthtlmWDceaPp5L1pLMYA5AfoJ5eQNk8PhFTEUvU8vQ
         j6aok7pPIAN5tMWoJnOzI5wAcf83tWh4k3nr/5/Dr3g+JaTHdez7tzbEC/tgwrCYqZCV
         +cR7unIBrh/SITzpMwwXMeZpGYP6b6RA26u8GYJhYuF8o26U8RDSYXj7tUWcQO4J1neg
         ZRW95gr7Qy2UxV1tcuBrqGqh1WImrTSs+NeKp1rVQ3zc15EMt1p+7OGBdaO6kRbBGhmC
         wV3kV4NOHVwwfE24+OhTWbJaM/JW5cBN3/DNyZhx1t/PLTnSKOk1OAQ2gdrYBIS/n1Vy
         z6Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVcDtxGl8PYwrv2LCaFylWqQ78WTGTlJgueSb6zOtfngZ6vYpeIOpBSUFuGGNCTilqIKgyr04zZjtZm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzqd6L/VULZTO/+TuZVqP4bKUaaflAUc7XScRhL8UIZPnE44wA
	ezkHz/pYL6vTUHhSCGZT9ilUTHOG24nQmc2zIuf1eexoOa6+7zuWNYzPQiqhax0=
X-Gm-Gg: ASbGncs9snfd76dJtUwdL9rWPt3ngde5k9L6bkfqM4/Sm5c8GG9Z/YDIlvNom6bCkOY
	HqgN8ES3t1W7Y+Ix2oMR3+1l0LBzQO5Ij8+NzD/GqsWkQVDl5tpel7mpXURE6EpM1utnbjxpgmB
	eX85SK0TRvjSakb0i+QPsLxAUo7oPYwKTPEdrTm5zEwOZBoM479Ik+ouYVxftTOFVw2jrKvxMvR
	5Z9VpRVSAgezdmeWtVBBGss5UXNSbP9rRR+qN0GR/clF/aQw7Y3OjQIOGWZWC+wS3R+acYD54wd
	sXQmD59Q44CFu9hM4qqeHGOlK006ziQ7582Ziv31izGc6ppq4SI0t2VDnI1tXrT6fFGd1S2uLLl
	jc6he8HIcUF2VwUvrtJ8=
X-Google-Smtp-Source: AGHT+IH/ebr6nf6wKlBpxfTE0DB1zuhY2mIh+1ErCgqLo4TAwLNWBhh6mziY2fi9srQ6OhxLjVcGBw==
X-Received: by 2002:a05:6512:696:b0:545:2774:4cb0 with SMTP id 2adb3069b0e04-54e7c3ae5e0mr268067e87.0.1745492027115;
        Thu, 24 Apr 2025 03:53:47 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cca848csm189333e87.167.2025.04.24.03.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 03:53:46 -0700 (PDT)
Message-ID: <a0ff4fcb-2b9d-4b9f-b5e1-586ff3900719@linaro.org>
Date: Thu, 24 Apr 2025 13:53:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Krzysztof,

On 4/24/25 13:07, Krzysztof Kozlowski wrote:
> On 24/04/2025 11:34, Bryan O'Donoghue wrote:
>> On 24/04/2025 07:40, Krzysztof Kozlowski wrote:
>>>> +  vdd-csiphy-0p8-supply:
>>> Same comment as other series on the lists - this is wrong name. There
>>> are no pins named like this and all existing bindings use different name.
>>
>> The existing bindings are unfortunately not granular enough.
>>
>> I'll post s series to capture pin-names per the SoC pinout shortly.
> How are the pins/supplies actually called?
> 

concerning it I would appreciate if you can review/comment the v2 of SM8650
CAMSS dt bindings I've just sent recently [1], the equivalent property names on
that platform were named "vdda-csiXY-0p9-supply" for VDD_A_CSI_X_Y_0P9 pin.

I believe both these platforms and likely the following ones should provide
similar properties, thus it makes sense to discuss it at the same time.

[1] https://lore.kernel.org/linux-arm-msm/20250423221954.1926453-2-vladimir.zapolskiy@linaro.org/

--
Best wishes,
Vladimir

