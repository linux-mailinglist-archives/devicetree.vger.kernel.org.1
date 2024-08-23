Return-Path: <devicetree+bounces-96064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE8A95C7EC
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 10:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0F381F26039
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559D71428E8;
	Fri, 23 Aug 2024 08:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JOQXpQGm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F0813FD72
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 08:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724401348; cv=none; b=fEHBerWPMq1SufVDN3sxtxVNLvM5j4WJqqUauloqrBKfh2TS64xiRHovI6RKJRgSVF7Xfqt2ccFYdOdRVCOE+jMPc3z26JXfcfD1pyaM1J2ZB64XFKo5NsMDlhh2syfhWgWSsfAIWqIJHrle/XejHjyiki7D7cszzlMcpE20+I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724401348; c=relaxed/simple;
	bh=olwfkoaRr08oCOtlFmtAAvZb9ypgjhs6SyDGIPi1veA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nha+vADfjK78c0jpw7HziEfgitJL9llmqFWbgTZAiJsYOkCoTs1tdWCUtH29GRSuUc5+jvufleYdevEh+Qnb6l81XacEzwdzM6rn1rM3KZ+bB85y2aOdQAYJg6CNNkmIduRI6cWojiyV7pUFKam82aHvolLDW6qWh4uRiriYNE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JOQXpQGm; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5bed68129a7so2309413a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 01:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724401345; x=1725006145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gjHxTMy2Nb4CqjIIWZfncgAo/x9JF7WsLmBVhhpHbs4=;
        b=JOQXpQGm6Pp6jZ9cCaJA3Xngud+ey1rvJu00SGRy5TVewO7zGspjyqPcB7xvBSLOhf
         bi2pt8dx+Ei5IGAfWZqlhFv7HL+aa5fBZ70k1tip+Jazu9vskHiU7SUqGNSrB0GMlaZL
         lF7BHnkfswiKXHVG0V/I+s7p4Z6cZgMz1MhlsEjm8shdx9XEIcirbpfvk6wHDDuWr7Ir
         s5YSMGiR+ClfIEEA6ETDtXzncnUARw6t6QNEnqrrqPD8XNNodBVoUmS0LONlRi+QgY2/
         Qhn3Wwj8Bj/nDPzI3TTVolBv8MQlEZv2xqe8cvA/89CeUK+C1utFryxtvXiemweG77Hi
         1QTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724401345; x=1725006145;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gjHxTMy2Nb4CqjIIWZfncgAo/x9JF7WsLmBVhhpHbs4=;
        b=fAQMHqSHCWAYEEf8KrbnhcZT8NguK3EhYh3Ljn+vYXklyaIkQ0CTa2o3MAPYAKYKER
         6dAVvVphPQK1Qbgxf2Dol0ZC2/jWoyrEVMU3vMAcFt6YGIf79CNztpihqWJTUmSZppIL
         vaQ/CC0559fiS4XdDJKKcpqzi6RpRal3kU3tVHyeRfi8Pn3CslkJds4s03GfLbzlpZWP
         oM2/m5+6YF91ACBe/S1I70skQPKG+6lw7meNhwFm5M9kEtO7l/Gx/B13aRSStin99YAP
         qq3DJlOSYCu3YBEhXR63DJQkWI8NCpoC+PGDrltg8eEIxMmM4dcW1o4cNZAfRm4msZ74
         /fvA==
X-Forwarded-Encrypted: i=1; AJvYcCVTApQu7YYj+fYGXduPYMEtRz5oKlFKbnOOwltmMM+mP3woAMbMwT0SA1+PNor7LgCQazxYpx8DfTy3@vger.kernel.org
X-Gm-Message-State: AOJu0YygkBgtpZOGAbJABX1quZlrSl6YiTKaQJi0LjCa3dC5zzR9y0Da
	oxqDfsIRgyy10g6HGiHNwp/DNobibqJfYEhev5JP2ARrVIIjf3pjjWFksPndpVw=
X-Google-Smtp-Source: AGHT+IE9ppracdAv81Pivu6h9pYjNfT03Szj3V/OWKCxV2uZxK94QYzAMcFCesft7Qb0HDUBmenfyw==
X-Received: by 2002:a05:6402:430a:b0:5bf:a2c:4f35 with SMTP id 4fb4d7f45d1cf-5c0891663fbmr945656a12.10.1724401344444;
        Fri, 23 Aug 2024 01:22:24 -0700 (PDT)
Received: from [192.168.200.25] (83.25.211.12.ipv4.supernova.orange.pl. [83.25.211.12])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3c9dd9sm1796897a12.26.2024.08.23.01.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:22:23 -0700 (PDT)
Message-ID: <6a39f1bc-7372-48bd-adb7-00b9db1419de@linaro.org>
Date: Fri, 23 Aug 2024 10:22:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
 <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22.08.2024 22:59, Jonas Karlman wrote:
> Hi Marcin,
> 
> On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
>> FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
>> which ends as GPIO0_D4.
>>
>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> index 292022a56332..fcea11ff2af2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> @@ -25,6 +25,11 @@ chosen {
>>   		stdout-path = "serial2:1500000n8";
>>   	};
>>   
>> +	ir-receiver {
>> +		compatible = "gpio-ir-receiver";
>> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
> 
> I would expect to see pinctrl here that configure pin for gpio func use.

Thanks. I based on rk3588-friendlyelec-cm3588-nas.dts which has 
ir-receiver done this way. Will copy from rk3588-orangepi-5-plus.dts 
which is more like you describe.

Have to find a way to test it too.

