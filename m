Return-Path: <devicetree+bounces-199765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26770B11E75
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 14:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9CFD3BA0E8
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D66D248F64;
	Fri, 25 Jul 2025 12:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="boxoPOsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B6521CA1E
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 12:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753446444; cv=none; b=kSE4Gp6EAtx08p038jjn5okEQoR4Nsn7/P8M+AK+Z09o3ZqOnRz8Cff9TlkZ47xmCNrP4UN6nMbqz31VkeF87w69Prl4X5xGaOZHIsT2gvKVEufKC9crnQm0TvmYz72l8FMrlGguYtpVwNMfNdWNi05dmMIMfrRqxTTdqBaWfao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753446444; c=relaxed/simple;
	bh=7y2jb6GkOxJ7n0h6bbRCBTz+o/AxMfRSADbIZa8A7TE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=INIywO1/Ldpyvk0uxUFw2kmItCEcMloVc3yBo4aErC90VrrI+LmNjoV0bIFDZJt04I7EYaPgu7E9H4sCNc46AQqloKcyuPKMfXNETNhAVG/psXEIhpAzHZkcFf+zRjOUhAk3YOqDN4pPV65gyShSfJjnvleop9RkFIzWWK7U7vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=boxoPOsd; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3e293a3b426so23968255ab.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753446441; x=1754051241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A/mBvaMsi9x4Ax/J09iijgNlpW3/r7uWvIizFrxl++U=;
        b=boxoPOsdR7d09gyhumRtSEy2pLk5UTNddDeFSgX0DA8epMxfcIvRZ2E8Bh9rqD5L6s
         Egqai46UdEZ5y1LAxBAI3yYUkPn7/su6jIkLIPrWREjauJemXZNpqyuPh9TsIj8SiZ2C
         9aWBwTckXIAcwOAWdHFxLxrcZNwoxB3EBgxY8tFNrmfrZ3R7pi1F+z+jwgOweY7HcRd6
         OQ/tZdU24yflDmQaBWit68ZabtddguLIUzD9s1gxRgYjBldTyB9FtP7/pc/TxpToYI41
         MeiFB9lIXb0nEC9P4enmvfAYl9yMdGu7hUTFljaomoZEWBZSwIbszBonl03ewhBd1gQj
         TAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753446441; x=1754051241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A/mBvaMsi9x4Ax/J09iijgNlpW3/r7uWvIizFrxl++U=;
        b=uwW5LBYmgagjkhNAF20/k06K0kNv9KKMueClovEDfA6uolOM4dIkIv5KDMeWXGT/m/
         W7upeU3M5Ya7LTByykZD89nSicQXSymASPlmp/pk+zAjvRgHpii0zyQhYIoS4OS1qCt9
         JMC+Ooq1u99GcqiPKQfeaHg/3JiU+/LA0Y6aWqxMyn4sGNR98nFyTIpKx0D3L84nXPYD
         edSA/7JlgOgzuAlzkdG/QqQbJDw/K9OkCv6FQC7jUBBP0TUV22KFa2Q57icR/YVxEk8X
         /2un/ilxKtsUpjDsUpH0K+AanQX3cBzz4g1m3+7Xl5CJoOLz4gMT5Cj7XFOorJps5EcW
         P5gw==
X-Forwarded-Encrypted: i=1; AJvYcCXzCFFq4wtx6gRQGBKH/fH3u4IjKIVWb5ONX1E0Y6t5VLj2vOM6i4CSwxbmIhPhAioQOJ5X7DXw9YmD@vger.kernel.org
X-Gm-Message-State: AOJu0YwicBOW602vgzqld/pp16wD6GJCFfYGM/Qx10Oewt+MwM7GRfAp
	kBHQ8t59TWmAW+3yhMlWpd32IxS6HfAQkIMdvj/UuYAd2Lk5BV4GAWNJcOoMijeGzSI=
X-Gm-Gg: ASbGncvJ+rCzrqC2xh4gTttrk11DSr4Dny7hZTzjvkYWilFTzvY+I6cs+qdubvctajo
	+YAlx5aXsCh0HzAwTPGuHh7T0PVwId+DhrGU3NPS9gX0cxBUPSqEYR94Y9uAZ+vitm0V6GWzCWQ
	o/4ELSXY3puI0fyzb82+oXs0RgpeuQO6rG0tm5dBbQtfaE4fzyjrzVgGjMKqSQmFsQo0crdhsiH
	qJyoImc9xo/yov34vikkW1FdwIN8xm0tODfVaGQDq7jANGGiumojbU4v1gj3zGR1WiIo7I7PSGy
	fmd9ba9Y4v/qps7KJnhf4ypJqhwrsyD5nDV8Xo3yBHxH9npsw4/8zcsArBh2JE5UYKSW41xKiHO
	qLVZZmszeWX5Kkck1xbAjvDfVqdeV2f5lTg==
X-Google-Smtp-Source: AGHT+IFpJvG04PuJm5q96eMexOibQMJOXrzeJLswA3Q+kKbIfnRtQOm28/7c/YDY/oduCAUIYURw7A==
X-Received: by 2002:a92:cd81:0:b0:3e2:9fa7:a60a with SMTP id e9e14a558f8ab-3e3c52414bfmr27234165ab.3.1753446440729;
        Fri, 25 Jul 2025 05:27:20 -0700 (PDT)
Received: from [10.211.55.5] ([199.59.116.160])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3e3b7248082sm12856165ab.60.2025.07.25.05.27.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 05:27:20 -0700 (PDT)
Message-ID: <bcab3c8d-af99-44c7-a994-b5e0e5c39c7f@riscstar.com>
Date: Fri, 25 Jul 2025 07:27:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/8] riscv: dts: spacemit: enable the i2c8 adapter
To: Yixun Lan <dlan@gentoo.org>
Cc: lee@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mat.jonczyk@o2.pl, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 linux.amoon@gmail.com, troymitchell988@gmail.com, guodong@riscstar.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250724202511.499288-1-elder@riscstar.com>
 <20250724202511.499288-7-elder@riscstar.com>
 <20250724211113-GYA748868@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250724211113-GYA748868@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/24/25 4:11 PM, Yixun Lan wrote:
> Hi Alex,
> 
> On 15:25 Thu 24 Jul     , Alex Elder wrote:
>> Define properties for the I2C adapter that provides access to the
>> SpacemiT P1 PMIC.  Enable this adapter on the Banana Pi BPI-F3.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 15 +++++++++++++++
>>   arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi    |  7 +++++++
>>   arch/riscv/boot/dts/spacemit/k1.dtsi            | 11 +++++++++++
>>   3 files changed, 33 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> index fe22c747c5012..7c9f91c88e01a 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
>> @@ -40,6 +40,21 @@ &emmc {
>>   	status = "okay";
>>   };
>>   
>> +&i2c8 {
>> +	pinctrl-0 = <&i2c8_cfg>;
>> +	pinctrl-names = "default";
> ..
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
> I think these two can be moved into dtsi, as they are
> common and fixed properties for the i2c controller

You're right.  I will update this in v10, which I will
send later today.  I'd like to hear from Lee before I
prepare that though.

>> +	status = "okay";
>> +
>> +	pmic@41 {
>> +		compatible = "spacemit,p1";
>> +		reg = <0x41>;
>> +		interrupts = <64>;
> ..
>> +		status = "okay";
> status property here can be dropped as enabled by default

OK.

>> +	};
>> +};
>> +
>>   &uart0 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&uart0_2_cfg>;
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> index 3810557374228..96d7a46d4bf77 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> @@ -11,6 +11,13 @@
>>   #define K1_GPIO(x)	(x / 32) (x % 32)
>>   
>>   &pinctrl {
>> +	i2c8_cfg: i2c8-cfg {
>> +		i2c8-0-pins {
>> +			pinmux = <K1_PADCONF(93, 0)>,	/* PWR_SCL */
>> +				 <K1_PADCONF(94, 0)>;	/* PWR_SDA */
>> +		};
>> +	};
>> +
>>   	uart0_2_cfg: uart0-2-cfg {
>>   		uart0-2-pins {
>>   			pinmux = <K1_PADCONF(68, 2)>,
>> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> index abde8bb07c95c..2a5a132d5a774 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> @@ -459,6 +459,17 @@ pwm7: pwm@d401bc00 {
>>   			status = "disabled";
>>   		};
>>   
>> +		i2c8: i2c@d401d800 {
>> +			compatible = "spacemit,k1-i2c";
>> +			reg = <0x0 0xd401d800 0x0 0x38>;
> ..
>> +			interrupts = <19>;
> I'd suggest to move interrupts property after clock, see my similar
> comment
> https://lore.kernel.org/all/20250724121916-GYA748228@gentoo/

OK.

					-Alex

> 
>> +			clocks = <&syscon_apbc CLK_TWSI8>,
>> +				 <&syscon_apbc CLK_TWSI8_BUS>;
>> +			clock-names = "func", "bus";
>> +			clock-frequency = <400000>;
>> +			status = "disabled";
>> +		};
>> +
>>   		pinctrl: pinctrl@d401e000 {
>>   			compatible = "spacemit,k1-pinctrl";
>>   			reg = <0x0 0xd401e000 0x0 0x400>;
>> -- 
>> 2.43.0
>>
> 


