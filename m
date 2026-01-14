Return-Path: <devicetree+bounces-254878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3317D1D70C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67482308CDD3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1344937F8C5;
	Wed, 14 Jan 2026 09:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNsbd/QM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F38C37FF7C
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381538; cv=none; b=nuiXB1MH4UHe8BAkNFvW4dDaHnzUbVKbXu70IcKSBNm8Ifk4IevT+EhacjxYS46ef66j56p9/hcsWRes/Ney9Pa2KsSwGzBnakXR+pt0HCp6k31h4brusO+xA9+9LMtSujEryQiAMA4T15LGHu0Rx/L7AGz45UWEJBd+vm5b+Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381538; c=relaxed/simple;
	bh=Y4cGk7FZ9Tv7rbUXspt4q1+esZYXzsEHtxm2Dj4JK8s=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JnxP2apDOPUyv60N9/KZnfzEbPYvHzFoAgfEK+Pelj+dkq1z/NDmaO5Rm4dn1sQ41rv9TErH6Z1Ey0WTNnev7W1HvvOiYYBQt8KvB1+LeFzaEsxZ2CNaSIKoKJqNVYSaSF0RCFd1dKFmuRZs/w1/dEBsmbyKBKsAYQ4ybgCX0hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNsbd/QM; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so56780895e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768381534; x=1768986334; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ofYNEYsZ/JYVYWk8P2K9X7Vw7eOrU/DC/WvC2YuSY3E=;
        b=VNsbd/QMed7IR7Tek5aMUXA8hkH30ywiv2wertAMHEahbJMjcOx342vQI65gEsBvV/
         Pa0uXTMKVicHQBWNVf870faNjuapCnjIsqLzOQsLTLClqhqLcQ1n5Adfw7BpXcBhbT+w
         QSVfIF2TBeqqqFvESiBi46Iuuyg0RAq5oxDofVucfQtrzLZfVEGgG8O6DBrtuaT+muXd
         vUy5TVm725VfL2q9cBhtmZELf/tagNtjicx0flOSq0Mhm/HPFpJzJ3rhQnL3Yz4XhLUN
         TGZO8OjCKamEIU0U/x1/60/1MtVCvKHzUfZdd/QL5SzorbBtt1Q2Lf5KIpns3TyHGD+l
         3CTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768381534; x=1768986334;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofYNEYsZ/JYVYWk8P2K9X7Vw7eOrU/DC/WvC2YuSY3E=;
        b=MPFdygRiTXHSqWKZYHZH95iEUuaUp2Z00euaop80QbjU/8fL4lUTrBKdmmQvEkCeWe
         KyZkevwQzR4MlTjDIwhTE/8vwrbIIM3VwsEDvNoS3IG/oxoq9ybjYNXwO+dmYncCcmNd
         S/6y2gBEDFzXYDUjt9ZGcxeQ4K9yFq7EQ9IHL1sK5ZUAUiKGOk/mkAA3V9WkCs9R3gIw
         VsSVKOxKdHuCPxheuXlak0k9y69LXc3rPZzpI5eZm8paA/B7kDEts4qMaItI6nhG2xE2
         SAN6HaI6woHVT7K7evirdgXYoJlExghCF0C2YXQVFVn6WUOyFJz3ovF065GqXVYGf+9n
         q+5A==
X-Gm-Message-State: AOJu0YyHMLU+M66P/HKywFSmTncgWisUvGscndcLCh4b1Y5ko8KzuQC/
	4g7NagOckrt9iPGhf77wrCfwHLPAAo9PS2tf8nP9Rz5HKO8vdFct5CDDtyxB6VFS8vA=
X-Gm-Gg: AY/fxX76LfCpjoivnRqu0XGEKGttaO3ZvwQIO8MBV7y27T4I2F+0wnSDbzf2hS9hIzo
	mQPtFLhzhjCQi1/+nSZAU7CPH7+WByg5M86y1cnDBXdYf1yHlxrLyTy4voekmqWfiFqIjLgESEL
	JF61C7r4sz7AxlyXsexEM3PxdL5+AyLe6eAD2wbPpzdGqIIWXYEIQ3HvtQJ4kAddQK8UpCKXhzE
	MsN+OvknZPJDV/eWb/PvveF5ziTJxsdTdTt9ofkWcBfidyU/WSK7sP1waEnfT8obS1ldzoUQebn
	uchTVlZw1LLzkFLsWbF4QF7UiDHIlvM6RqeCUV73ea1SfFfUYC5alU/6RUbikI1kJi1TUmExPfk
	w9klVHtG1MeFIbUWfUKEvtZdsHxbtbzKNyZpSwGoM5b0cR4DvVjHafgFuteQoIxi88RixYBlD4y
	ZsTHwkrz5YLLIed5cYkl1DdXuhTRdKzGexGQBLq5883wudP+aV/M1jkrRRkkyYbtg=
X-Received: by 2002:a05:600c:3acb:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-47ee3353e2emr21588345e9.21.1768381534430;
        Wed, 14 Jan 2026 01:05:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee562d7aasm17655715e9.11.2026.01.14.01.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:05:33 -0800 (PST)
Message-ID: <a09feb0e-6736-49a9-aba1-799174c9b43a@linaro.org>
Date: Wed, 14 Jan 2026 10:05:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
To: Chuan Liu <chuan.liu@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com>
 <20260113-amlogic-s4-mmc-fixup-v1-2-1ab1fca0fb2f@baylibre.com>
 <2491170c-d055-4231-8fd1-164d89198ae3@amlogic.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <2491170c-d055-4231-8fd1-164d89198ae3@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/14/26 03:48, Chuan Liu wrote:
> hi Jerome,
> 
> On 1/13/2026 6:39 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> MMC A and C are mis-represented as having their "clkin0" input connected to
>> xtal while it is actually connected to the MMC clock, mostly in an attempt
>> to provide 24MHz to the device on this input.
> 
> Right.
> 
>>
>> Fix this and assign the clock to 24MHz to actually provide the required
>> rate.
>>
>> Fixes: 3ab9d54b5d84 ("arm64: dts: amlogic: enable some device nodes for S4")
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 12 ++++++++++--
>>   1 file changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> index 62538fd9db6b1ffb33a88e12628aadefbaa453ec..6324d1eb5994009df5b09923cce373a87229f4b8 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>> @@ -819,13 +819,17 @@ sdio: mmc@fe088000 {
>>                          reg = <0x0 0xfe088000 0x0 0x800>;
>>                          interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
>>                          clocks = <&clkc_periphs CLKID_SDEMMC_A>,
>> -                                <&xtal>,
>> +                                <&clkc_periphs CLKID_SD_EMMC_A>,
>>                                   <&clkc_pll CLKID_FCLK_DIV2>;
>>                          clock-names = "core", "clkin0", "clkin1";
>>                          resets = <&reset RESET_SD_EMMC_A>;
>>                          cap-sdio-irq;
>>                          keep-power-in-suspend;
>>                          status = "disabled";
>> +
>> +                       assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_A>;
>> +                       assigned-clock-parents = <0>;
> 
> Is it possible to remove assigned-clock-parent?

Yes it's not necessary to keep it.

Neil

> 
>> +                       assigned-clock-rates = <24000000>;
>>                  };
>>
>>                  sd: mmc@fe08a000 {
>> @@ -849,13 +853,17 @@ emmc: mmc@fe08c000 {
>>                          reg = <0x0 0xfe08c000 0x0 0x800>;
>>                          interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
>>                          clocks = <&clkc_periphs CLKID_NAND>,
>> -                                <&xtal>,
>> +                                <&clkc_periphs CLKID_SD_EMMC_C>,
>>                                   <&clkc_pll CLKID_FCLK_DIV2>;
>>                          clock-names = "core", "clkin0", "clkin1";
>>                          resets = <&reset RESET_NAND_EMMC>;
>>                          no-sdio;
>>                          no-sd;
>>                          status = "disabled";
>> +
>> +                       assigned-clocks = <&clkc_periphs CLKID_SD_EMMC_C>;
>> +                       assigned-clock-parents = <0>;
>> +                       assigned-clock-rates = <24000000>;
>>                  };
>>          };
>>   };
>>
>> -- 
>> 2.47.3
>>
>>
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
> 


