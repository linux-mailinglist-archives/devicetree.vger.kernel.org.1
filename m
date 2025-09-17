Return-Path: <devicetree+bounces-218196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59048B7DD7C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57F623AAD23
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 06:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C44E285042;
	Wed, 17 Sep 2025 06:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="m+rH69no"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3D239085
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758091157; cv=none; b=on21yRJ+Tmnzu0WWb9Z9dk4hKrMHhus/j+jLvlFhTZm30VENUMAD+FGisj0w8CFb+8PrkK0y1sWGgJ7Fqnkow3V5qKtMDjsz3zVwb7aZLihzwyusujilUBVpwzyu3F510zksazPxIqptX6+e635u4+eY8T42BVz/jDTvFp5Kvzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758091157; c=relaxed/simple;
	bh=xX+N/SN6MUaa28wK4TLjv1haNtZLkkAoQ0rN+SnsVF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C9K017/PESYT5yZgSwVtyEPX0gShoUQ8PSbjzyhR4itSZ1vJhOEaZIgfojq5ln4VitMpnLcE4zczXzt57hXgL85Dwxq22dfDXb/5EhS3rPpXx+8tisjRP64GeHsU4k0biiFvSw+BKEFAVVQC9/sNanjYuAVZbecO+hcZYfPP+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=m+rH69no; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ea3e223ba2so2923226f8f.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 23:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1758091152; x=1758695952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=77F0eh5zIcs6VOlyvrc/5uKyRtamVm6y2K0LLyVNiHg=;
        b=m+rH69no7YZRPl+4Xd+0aWlbj++OWjCYyIA5SRPhpvU/l/m4TbsdRC50c5ILRKWuWZ
         ACot07tfWtO4iBTtyGMvFYdkpgGQDmZk3Omm/J38aQLr7hCH09SUiNUHnBq/taCfyH9L
         Rlik1dn0iRayfpd+la/S+RNV8oP991XV6XhysI7Ejeh45x3n6ikm4y6XRPGS3h28IiNj
         Rdz3KJGQJpGmrOphbG6qjuRWYwmYHUfjqc8tecQTEe8QJB4wQWXhFvdaktjHS+VUjkgA
         NOTZlZrFgTRATuqIinCUHpRbu7if4ob3ybn8qGOOWogH41WGDy1pJef/f2vi9AmkdJR1
         f/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758091152; x=1758695952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77F0eh5zIcs6VOlyvrc/5uKyRtamVm6y2K0LLyVNiHg=;
        b=MJCcJkIWdVgUGMe+269wytlUYyPTSUQOKJMbho8LL1b7swfF6G+k9FQe8XkYYUPcF0
         iTm4fEMd9f24LGU1Gu7rPHWdQvN0kvTkXTHQONfzpQXEzcIxGc+0ByX+JnCYOnI1pGgJ
         /xaub2PCtFSaZUVlzhJe7+b+ZYzWPu9DaVBN7OOZKMQaDuTO9Dz0X55BXXtc09O8Fren
         A5yNO4KMQRSb96Cr4sy2d6zmahu7SeSkgdu+8k/l45apil9r3oTHOmMKp/2y7MMN9n8p
         o7OpyDAHstu5Q5D7EZgdRQ20aWoPzvCfwGJIA45NHJm3NWg0sKmQJgWdZYzV3hhBnvD1
         IooA==
X-Forwarded-Encrypted: i=1; AJvYcCWz/sJJj19xcxpDYan+YoXAOC8q6xELaE6OmiNCwYH3DJUEn36oWLFn8JYjXLmKO6/3GXKjDXVjkIWw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywiw7gk2i3KP4b76C6cdwI0BYdd67JgV1rTeG49VwGQML+DX4JE
	5OXnaz1itVBIV3hGi/NKWnnjacRX3RenGyy+apAwsfyF2oe1x/xFFlfB5k/FlQJMSs0=
X-Gm-Gg: ASbGncs0X5qMvRCwp16wBj068AvwSIIU3GHCDPN3+7oHPgLVz5xc0wkv13/BTq9YGUN
	CWUjWmKm9zWG3hWsja1rHN9fTDSYjIa3LP8KhLfhgP9d0mnIDLyd3nBUIg/GjyLKlex+y6HynuP
	sYY3Qd2tXCHXwVXDyFYX8JVBpD/V7yQpsMwR6ihZ1sSBMnIFi9m7U9IaOolpcL71a3d0SNXBlyh
	ngTFIyT8j3tNTgEpbKP4T+YajNt4yg7NiBoorVQWbEbwwJATWRavJN+7ONRlOXi5eYB5JDjdzq2
	UC9KJqzTQkJRvTnbrcnCF/thjKBz/WtCZmA4Px4NYlbgkp7jQjwSc3uQkzhNhwW+TifPWDABena
	WONDmxxoTu6/5yLn9DSzLyM0sFjJExrlUABF7WNwOkJRU1S88fllDfegbh00nlshT0oNOAzMl6F
	gqRJQ0FhWBNQdRwg==
X-Google-Smtp-Source: AGHT+IG6Qsc5VU9s+KLN/ObymCbaRcvmgFQYQp7jQl2dFNfoKqhHY6bNfm9aOpDZbu6Xlk5fJjmiww==
X-Received: by 2002:adf:a2d6:0:b0:3e9:d54:19a0 with SMTP id ffacd0b85a97d-3ecdfa4239cmr495573f8f.57.1758091151984;
        Tue, 16 Sep 2025 23:39:11 -0700 (PDT)
Received: from ?IPV6:2a02:1807:2a00:3400:1b1a:e580:5909:925c? ([2a02:1807:2a00:3400:1b1a:e580:5909:925c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdbc7fe1bsm3414155f8f.52.2025.09.16.23.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 23:39:11 -0700 (PDT)
Message-ID: <55237b5d-c9b8-4606-8b5d-c7a97218c085@hammernet.be>
Date: Wed, 17 Sep 2025 08:39:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] riscv: dts: spacemit: add UART pinctrl combinations
To: Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linux.dev, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250916064739.196695-1-hendrik.hamerlinck@hammernet.be>
 <20250917012941-GYA1263349@gentoo.org>
Content-Language: en-US
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
In-Reply-To: <20250917012941-GYA1263349@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Yixun,

On 9/17/25 03:29, Yixun Lan wrote:
> Hi Hendrik,
>
> On 08:47 Tue 16 Sep     , Hendrik Hamerlinck wrote:
>> Add UART pinctrl configurations based on the SoC datasheet and the
>> downstream Bianbu Linux tree. The drive strength values were taken from
>> the downstream implementation, which uses medium drive strength.
>> CTS/RTS are moved to separate *-cts-rts-cfg states so boards can enable
>> hardware flow control conditionally.
>>
>> Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
>> ---
>> Changes in v3:
>> - Added /omit-if-no-ref/ to pinctrl states to reduce DT size
>>
>> Changes in v2:
>> - Split cts/rts into separate pinctrl configs as suggested
>> - Removed options from board DTS files to keep them cleaner
>> ---
>>  arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 432 ++++++++++++++++++-
>>  1 file changed, 429 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> index 381055737422..7811fb485bd4 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
>> @@ -11,12 +11,438 @@
>>  #define K1_GPIO(x)	(x / 32) (x % 32)
>>  
>>  &pinctrl {
>> +	/omit-if-no-ref/
>> +	uart0_0_cfg: uart0-0-cfg {
>> +		uart0-0-pins {
>> +			pinmux = <K1_PADCONF(104, 3)>,	/* uart0_txd */
>> +				 <K1_PADCONF(105, 3)>;	/* uart0_rxd */
>> +			power-source = <3300>;
>> +			bias-pull-up;
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	/omit-if-no-ref/
>> +	uart0_1_cfg: uart0-1-cfg {
>> +		uart0-1-pins {
>> +			pinmux = <K1_PADCONF(108, 1)>,	/* uart0_txd */
>> +				 <K1_PADCONF(80, 3)>;	/* uart0_rxd */
>> +			power-source = <3300>;
> ..
>> +			bias-pull-up;
> here, see comment below
>> +			drive-strength = <19>;
>> +		};
>> +	};
>> +
>> +	/omit-if-no-ref/
>>  	uart0_2_cfg: uart0-2-cfg {
>>  		uart0-2-pins {
>> -			pinmux = <K1_PADCONF(68, 2)>,
>> -				 <K1_PADCONF(69, 2)>;
>> +			pinmux = <K1_PADCONF(68, 2)>,	/* uart0_txd */
>> +				 <K1_PADCONF(69, 2)>;	/* uart0_rxd */
>> +			bias-pull-up;
>> +			drive-strength = <32>;
>> +		};
>> +	};
>>  
>> -			bias-pull-up = <0>;
> Sorry, I've overlooked this, the bias-pull-up need to explicitly set to
> a vale of 0, 1 - normal pull up, or strong pull up.. for uart, the normal
> pull up should be ok
>
> please refer Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
>
> Since the rc6 is already tagged, I'm about to prepare a PR, so If you able 
> to respin a new version quickly, I'd be happy to take, otherwise let's wait
> for next merge window (which shouldn't be a big problem)
>
> btw, please always do a DT check: 
>   make ARCH=riscv dtbs_check W=1
>
Oh, I wasn’t aware of this. I’ll update it accordingly and run the check
before sending a new version. Thanks for the advice!

Kind regards,
Hendrik


