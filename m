Return-Path: <devicetree+bounces-254988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 04127D1E308
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:46:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5091302CE77
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D73394485;
	Wed, 14 Jan 2026 10:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bLQx6GbL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFC32FB977
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387269; cv=none; b=mOpNK0a0tGLlaoSOOZ8BcqzvR0Lp3Gmq2TD1ACrJkOvjbOOsUoHttNGFH40CeALDKbAjCidlOzN2EJfcHTfADqnJkyPt+HeQlORGjY6v7rqsusdO+F7gCXpclGyKCfo8CaPCvZeG5dj1Lmp1QB42D/LIsV/D4YIU9BJ3Yl2VGck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387269; c=relaxed/simple;
	bh=m3a1sMwjKym+V2GToCzh+9/lwn01kyYPCDD/yh27vrI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=EuIMJYFJZGIhk1iZ5rLY0eBUQ3TZWkIphRQ6465muUR1KM98igPQKT+Ql0qGkTG6jNbij7Vpz78YPG+qF7kssvAfo70Tq+XQJLk1fSvjzNdT5IK8/4birVnV7gOoctvOYyA9+/1o+MuP6muAMnHbAPTdFY/MHE1TkW3XMUR8M2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bLQx6GbL; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4775895d69cso42700235e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768387265; x=1768992065; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+NcxQNU+z+mjpVWzVO5zIslJ+Ha+xCleufzRRdU3nw0=;
        b=bLQx6GbLuB+GdAwEeeBAMMqD+JdAVuUSapljAcSKNC4Q5TpBZSDVlsNYJaZ1i4Q/rF
         wkqHK4azUxQuIanOxEfvEGLwFQOpwmj+vRPYHd6ptvzUaEIX+XoRyoM6lfSKwYrv1msw
         lVXHEnYJ6DekDnkQVUZTkxCy4WxTk3UcUgumYmsgnNTqkAbcx6UolmIEh6A/k7fuHlVV
         2azpPsZPuJNyOx0uWbBJDCt6DGsiYj1xW4C8mKyD0vCAZ2pTlLQOZfy74k85xScPkAfa
         XgOjk/IfwubCF7RFBj/BpPv5QxVdX3BAVCJfLyjfDqO280v465SUDUcAB9eIfNfwixfh
         6IcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387265; x=1768992065;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+NcxQNU+z+mjpVWzVO5zIslJ+Ha+xCleufzRRdU3nw0=;
        b=XCmT8xOuHaUT/Poka3RaWZSJ4/t/CU4YizfW8TvMwXHkdFSZEVFqg+dlFfaaknYu21
         X3AL9NPN2D9/iQezNVB+bUKlAZlm2fJ03RMSQ7hK+vU3GUcWClkQITBGeNyub3uWN7DQ
         hZ6xjZGpfUEBCQ48CBzTNhj644I+LBxRv2AQDzttQh3S7Ka543CT07I+e7FhWs9G/hhz
         mz2vQAzcMyybehdV5wIp1SmD4GYbQ4FNkLr9PNBrlitLJITrS5nKwqQD26lQjrp9OJ4c
         Ib+MzMvdJB65gkDI9fHZaYPUQb/t/KN/3eDe+ojOSG5KsaIbdlcWypVyDjzfVzxGSnjZ
         77QA==
X-Forwarded-Encrypted: i=1; AJvYcCVc+ohkSB5JM/9V2/B6tqugumDA9TiHR5vlFNfIAtyy4ZMAUAsYYwRNfO6bqILfjUDzgx/sUTuNIlHq@vger.kernel.org
X-Gm-Message-State: AOJu0YzV8N6phXMwj30DSC97i8xj5B/ilXjtIvV25qNZcijYNRt4tc4R
	OURQbMU+nmZku0DiIm4gVNRCopK0Ry7G7L0pofVibSJHk3tkmtmIJc1miUFm4isVfZw=
X-Gm-Gg: AY/fxX76JHE0mWVm5zThNbXSG1/5u8JIlPpImaU9AjJy4t4UODNd/QRdqdb2QZPg22/
	9f+YF9GfodzYYTCp8/DJsKbjyVyiwhw67mWRHajdRlhkvlD6X66sgk98AVoDohuiG9kwYv6sa7N
	5l+bgnNRjuFhBgw7ZX8J13RcKkn3LVlbyJj/msuEem8z+Ex0YRp/R+ux3lKTTXYRnkk4Lr63EW+
	myDM23+CE2Q+hWT1oSS2BenHKKi+5U7JruGj0M4VMwdBTBBQN7G40XvEQMPAsfBL3Rfz8pJb54h
	DbPelfroQNcTqsVJexC5oKiOCCrBF7yAlgw03WvjeroRE3TeXXFEhOTnOpuSMxZzz2QaPBvmTQu
	tSWDpUQJWt93Z6IRNmNdJ6fLA+gzLc8j+KmP03g4y3AhBrpUzwtzK5BavfRbS0mxa5xwEVF6yqU
	ck8smS2Iko1Q==
X-Received: by 2002:a05:600c:5490:b0:47e:e20e:bba4 with SMTP id 5b1f17b1804b1-47ee3356e79mr22358195e9.18.1768387265370;
        Wed, 14 Jan 2026 02:41:05 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f2cc:bd72:2de3:86cd])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee578d37esm21654835e9.1.2026.01.14.02.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:41:04 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Kevin Hilman
 <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Xianwei Zhao
 <xianwei.zhao@amlogic.com>,  Nick Xie <nick@khadas.com>,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-amlogic@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: amlogic: s4: assign mmc b clock to
 24MHz
In-Reply-To: <d55bd5c6-d5f8-45d8-9c6b-22e401f6a7ff@linaro.org> (Neil
	Armstrong's message of "Wed, 14 Jan 2026 10:05:35 +0100")
References: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
	<20260114-amlogic-s4-mmc-fixup-v2-1-7e9ab5f12286@baylibre.com>
	<d55bd5c6-d5f8-45d8-9c6b-22e401f6a7ff@linaro.org>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 14 Jan 2026 11:40:59 +0100
Message-ID: <1jikd4xyro.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On mer. 14 janv. 2026 at 10:05, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> On 1/14/26 09:56, Jerome Brunet wrote:
>> The amlogic MMC driver operate with the assumption that MMC clock
>> is configured to provide 24MHz. It uses this path for low
>> rates such as 400kHz.
>> This assumption did hold true until but it now, but it is apparently
>> not the case with s4. The clock has been reported to provide 1GHz
>> instead. This is most likely due to how the bootloader is using the MMC
>> clock on this platform.
>> Regardless of why the MMC clock rate is 1GHz, if the MMC driver expects
>> 24MHz, the clock should be properly assigned, so assign it.
>> Reported-by: Nick Xie <nick@khadas.com>
>> Closes: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/
>> Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
>> Tested-by: Nick Xie <nick@khadas.com>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 4 ++++
>>   1 file changed, 4 insertions(+)
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> index 9d99ed2994df..62538fd9db6b 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> @@ -838,6 +838,10 @@ sd: mmc@fe08a000 {
>>   			clock-names = "core", "clkin0", "clkin1";
>>   			resets = <&reset RESET_SD_EMMC_B>;
>>   			status = "disabled";
>> +
>> +			assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_B>;
>> +			assigned-clock-parents = <0>;
>
> In this case, assigned-clock-parents should be dropped.
>

Dunno why I thought that was always required. I'll fix it and the other
instances

> Neil
>
>> +			assigned-clock-rates = <24000000>;
>>   		};
>>     		emmc: mmc@fe08c000 {
>> 

-- 
Jerome

