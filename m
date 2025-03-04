Return-Path: <devicetree+bounces-153655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56470A4D672
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBBD21898E90
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46F91FCCE9;
	Tue,  4 Mar 2025 08:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oLStp+Cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA501FBE89
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077031; cv=none; b=Z/AS0s16jbqket8JWVbFVU6yK5aEmDKsJYmHz6XEkZBH64Vew6Bef0hEJTg2H2HTzZUmh1H997X7NUTpx4/fNTqbJifdSe+aCMAGHR4bb6+8uIFAXLcR26qsCandvHFsUhIrPcHjg8XVhbw5n5Ax+QQ5rIi6582mSumlfq4/Ht8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077031; c=relaxed/simple;
	bh=R7n1fGRKBqdjYD7qjAK0e0Z/E3j53RSIm1oESRXE5hs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vqm4yDh4YyJIxDEcoFEfw8ru6dNiipm/WKv3ifj0SHp/TTFPozw8oJLd4Fz3APeXOeb7pH1EpXmwjQm0hqLD0QooT+m73bGxa2mUAxjS+N3FoVTrWV0JXWaJLG+LDmlBBd3hTb1lQZOVSADwVqOW4gbYdHs+K1X6LUMxELBRyPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oLStp+Cy; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bbdf2b607so2537221fa.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 00:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741077027; x=1741681827; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=exz8dJdGpu0keF2ocUHooEu3xVfMKLaveroqXRkMjFE=;
        b=oLStp+CyBpwi9PjekiWbpLhpJPiLNfBqQ7Xg7S2uBN0Nj+Rg1yRwihTXifdbumzjjv
         td1RbEZtpyK1kYB7+axVkK542Xz7uGPQVl21+WOX/JQ37efVLRmk+KSb/3OkmMunqDRI
         FeGo1oHZ4EmCyvOQX/4EhyDosAl5sAspNqU5SU8vgdTp3uwA72/qVVjMDnRtsp1Z6Tua
         xK0u4OgpgrPfSR0slVvnoK+LfsLO/C8bmbEVUgbZgCr6XTneFf4nLfyU0//OnxAj8FDp
         47jixILWSZFXZvibp5+EzbS42PIf7iALJhsjXp3mJuORpj/t5wn3OcP7Ho/uz0qHBniu
         p9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741077027; x=1741681827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=exz8dJdGpu0keF2ocUHooEu3xVfMKLaveroqXRkMjFE=;
        b=KwlWG0yEPmlPuHOP2ARI2NP4XRGWqX9aoYytuDEeBgcnbdslwcHRscEVbczE2oZ8Md
         PlRwzZJd11gQDZ4NkCMG5yJucEeXcUbuWKPzpxzFITHKt5utz306/gTfZMWvbh6g1xyF
         CQO+zZh6aq6z//I2BhQcgt4PWzJdcclYR2jUq1+PWSVnEh14CVpc3iRfbSCL7F31XPAp
         aNuHgk2iWveR8On7xHZ8zIzybJVr9gpHLaEGnxIgVwT7ARUzB9MDC22ZZfE4V/lrN6Pr
         osUuBHmbGOzwuJMMHS4dF0yJASdaesaxB86AO35r6h9sEBgKyPiZqsSlK8xelMHQEBvg
         SVow==
X-Forwarded-Encrypted: i=1; AJvYcCX7bk081WxGeaOLLS76Jw6CSKB+JWujJlElTIHjNZr0XL2uKe57H3fFb8Rjytn2NbGk2tnUhfjYgzFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XxpwfA20ov3bjPKQwrlCSGCJUWQF1dr8y5lOkzqBEaZKo/P6
	AaOeoIkyb5PJELHozq/M1dMvmh+dZaM2VLAKbFVfz9z7r+4ELK6e0Rsi7rTY1Ss=
X-Gm-Gg: ASbGncvEHEulTDiINJulUEpkqTI9DCqj2qdPh3axPZXkz5SIqmaBJyvCQuENBuzVgOM
	m3srZ8Xn9L9CLnCfphqmNaPAhktRB3m5OuNLH6/0DVNETynqOV70BY9oaCZGFdoTUMi3yt1EVab
	bxDBHqYuhbMZ2wu0u4a9LiQp0BBHCur2YSEId+8teLGq4+ad8bpJiuVCIxh1YIpzYOA1UU0XGE1
	GWIjCu7k3cR2ovPBWeNPlHGNC5LSLh47YcsKCfok8UDj1vB40hu1nJ4BanOX7OVkoWcRKJvWBbt
	BqRdcQFuqRZjwEByyAIcUQ5DumxtOM+4YG2w0xY1eGhAlex8k+u/Lf+RDuU49S04dM646SVAVr2
	bTfzCtKB2wO/Uu/gWmiLLA2E=
X-Google-Smtp-Source: AGHT+IEGXHdD67orThjoh+EdcaW0STtZkWcUjMqYIynw/oUS1Hi87oaWacTmj0dkEiU9M/5UUH0QdQ==
X-Received: by 2002:ac2:5492:0:b0:549:5769:6af5 with SMTP id 2adb3069b0e04-54957696de8mr1360664e87.6.1741077026829;
        Tue, 04 Mar 2025 00:30:26 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494e52a47asm1295952e87.152.2025.03.04.00.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 00:30:25 -0800 (PST)
Message-ID: <2e6a0c7e-9c24-42fb-be9a-2b73da8dc69b@linaro.org>
Date: Tue, 4 Mar 2025 10:30:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
Content-Language: ru-RU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dmitry,

On 3/4/25 01:53, Dmitry Baryshkov wrote:
> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote:
>> SM8550 Camera Clock Controller shall enable both MXC and MMCX power
>> domains.
> 
> Are those really required to access the registers of the cammcc? Or is
> one of those (MXC?) required to setup PLLs? Also, is this applicable
> only to sm8550 or to other similar clock controllers?

as it is stated in the cover letter, both power domans shall be on
to access CCI or CAMSS.

>>
>> Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> index d02d80d731b9..d22b1753d521 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> @@ -3329,7 +3329,8 @@ camcc: clock-controller@ade0000 {
>>   				 <&bi_tcxo_div2>,
>>   				 <&bi_tcxo_ao_div2>,
>>   				 <&sleep_clk>;
>> -			power-domains = <&rpmhpd SM8550_MMCX>;
>> +			power-domains = <&rpmhpd SM8550_MXC>,
>> +					<&rpmhpd SM8550_MMCX>;
>>   			required-opps = <&rpmhpd_opp_low_svs>;
>>   			#clock-cells = <1>;
>>   			#reset-cells = <1>;
>> -- 
>> 2.43.0
>>
> 

--
Best wishes,
Vladimir

