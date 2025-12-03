Return-Path: <devicetree+bounces-243997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2611C9EE74
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 846F83A6C34
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0262F531C;
	Wed,  3 Dec 2025 11:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rzTUaD/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D555729DB64
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762817; cv=none; b=QIv4wkp/yZSFn7ox0nECB5gZF+0s7Mecyg9iXwWG0xZRKiHp1VA+b8CiAicGYPni3X0l8e5Stw6XuK10yFN05CWi7pbqZ9t1lCE+yKBa8ohxVkhdvsJq5Jr7JWYb/3fGiIiRnBN4YHaARFt7LP/osM+AUq2xOUDFACGn4VYKKes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762817; c=relaxed/simple;
	bh=507B+B9WXoYANTS0ahrX+Qe14RdOpDY2weWI1yop9EQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BkTMUCE8dRmR3O3PwRukAEj9w9wUfUFyfXmAl54mXsrEBqg1KHHeXQMThCnerdIqZ9M+HIX36IRnMtkB3LuWrvB7dNDuAu1GdF6saK1SJ8evCtgOETbG1fKnwVa42N4IgquyZD9RuVGaqipwN6M1bAKjbkXi3siV2TNNrWDJ6lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rzTUaD/x; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59426dc96f2so553438e87.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764762814; x=1765367614; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLSfduDvIMtxBr/FllCfWDI20xqIyxuL49iYC6vyl1E=;
        b=rzTUaD/xl82gayHcOIOStzde9uoQHYlaj3F0qeQiQJLVNNd5MJTRaaXVJFIDmdiacG
         RTzoY/xy3IHjz1m4A1nkNsjxdq3l+lopqEm8q7k/VUnL9jGGJJFo+T9t7k1RREFVdRga
         DqS2ig+xiV5gAgdjfAgSx6xTU/+5odhQNzWDIg0rRhh30PjNlP37xdLMO8dHOT54CMu0
         Zn3cJFv4THQpwbBQVaEd2XXsLWHn7wMnGSM5HQRJiaU0R1rJ2Etg+vmJiC9zEvtZP683
         p2xLdatpTu7DGK/YA1cvesK13T+L5rgXakDx36X/X8FxayELbObORHYDgEAi8LVL3umy
         +mtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764762814; x=1765367614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bLSfduDvIMtxBr/FllCfWDI20xqIyxuL49iYC6vyl1E=;
        b=kTiKUwb/ZwtLvi8GIenx6au3eeX2J64dDo4d4YSG8rI96ehDiBup2s8BZOAJGMy4WW
         O5Dc67ZEFdC6BOAtNr8BqDqgjBbeY1F9WuhvrlHgHYqLr19oTggcf3LQlt2yi+KqhoIM
         XGDUdJQwIMeYCnL8MCHv9d7OY3p9lfYU4sqThOENGrCM/GwiWCgpCrmm+nsIdhSK7SJ/
         SA5NnOU3DY2Q+CB9RvCAkxRplq7ltzEnFahfHRsgPv1irSE8mYV3QPMOWsYK3OCgPJOn
         FI/yzgDtNX6KjwefXjtaBLbh+GrbJ5+qkoUzwlAuM6rr7Nx78SWHOKZysp7KFkpU5YNT
         qUMw==
X-Forwarded-Encrypted: i=1; AJvYcCWV6nFf23cL+oC19LniH4CKuaWvJs37wbEySTJi/hcwdvq8WL+wwaaPQtZvODj9kdVb7oDYGI878kIx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6zGkwIK6+y1L5gsrCQDsrj7J9swU72HDnpnDSiVaIGq4vUfty
	ogVnm5SoISoT+aO8wr/YVDn94FFcpjC0BMWIStsK3JPZWMueKX5bcCQRqFPyyEQ3dd8=
X-Gm-Gg: ASbGncttdu/977PbrODBjqxkj8YKa5ijfn76DHl64WUe/HHA2Fy+a9DEtsPATWvtznz
	/JV5nDaJbZ24/yEekiqbmSFiBtTper91XCrAjhyWBZtoqSJ+JcBZAD/loX/VxL5MHyyfobo3xVt
	KnGYJLc8kFRr17dChcY3IFAQ6+3u+71mp7teUtZeX7O2N70Si6TdFsltav4M5XYEYvSjowdhXoe
	PMoiO5m9dGsLgyW6ZW0+NV1UXd0N9e0czaV76hcpYRrpT0Ye38myhtOhoPwpEjInCgPFh58CpEW
	oWOh9BBFbbbZDohoawMZVbu6ChB9HMsoPG3yWguRvwVYGRbdzJXVXzE73bOdpeL/uq89Rz+9Ig+
	OfKVVWnaq7Lqz9KshHpqofirHnEXJd7qs4xKhiyo2Nxdpj0e2vqEgfdbiG8Youp7tYqgTLkw1hS
	THXzEeXIZBZI2vfrbe/1T16P5aZ2e9bRcnlzyUBT+3Ad9VriY2dLcBl2r8FoX5laMcKg==
X-Google-Smtp-Source: AGHT+IF+BxD58dug8k9kIEX+VDZ8eK8yGZDoOi3c682xLhrZRW5uMS2yoSke44pZijRRO5+w07eqaA==
X-Received: by 2002:a05:6512:3d18:b0:592:f7b4:e5fb with SMTP id 2adb3069b0e04-597d4b40ff7mr305526e87.3.1764762813737;
        Wed, 03 Dec 2025 03:53:33 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d24099022sm41772011fa.27.2025.12.03.03.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:53:33 -0800 (PST)
Message-ID: <828b0012-f9c1-49af-a3ae-2797a6256a6b@linaro.org>
Date: Wed, 3 Dec 2025 13:53:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sm8550-qrd: move camss status
 property to the end
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-4-vladimir.zapolskiy@linaro.org>
 <3f8e8e3d-fb38-4e17-8a55-a22ed9329a9a@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <3f8e8e3d-fb38-4e17-8a55-a22ed9329a9a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/3/25 10:32, Krzysztof Kozlowski wrote:
> On 03/12/2025 05:05, Vladimir Zapolskiy wrote:
>> Conventionally status property is the last one in the list, move it there.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>> index 48af6d114161..b3eb0836c408 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>> @@ -717,10 +717,9 @@ vreg_l7n_2p96: ldo7 {
>>   };
>>   
>>   &camss {
>> -	status = "okay";
>> -
>>   	vdda-phy-supply = <&vreg_l1e_0p88>;
>>   	vdda-pll-supply = <&vreg_l3e_1p2>;
>> +	status = "okay";
> 
> Please do not do such changes node by node. Fix many or all devices here
> or none. But actually even fixing all should be postponed - we discussed
> this many times, first proper linter is needed.

For historical reference the corrected here issue has been spotted by Konrad,
and since the requested improvement could be done instantly I added these
changes to the series:

https://lore.kernel.org/linux-arm-msm/21430004-b186-4f28-be59-bcb3851237b8@oss.qualcomm.com/

Patches 3/6 and 6/6 can be dropped now while waiting for the linter or
be squashed together, or just included as is, whatever is preferred here.

-- 
Best wishes,
Vladimir

