Return-Path: <devicetree+bounces-159917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48308A6CF7D
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 14:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C7AC3B262D
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 13:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5014C84A35;
	Sun, 23 Mar 2025 13:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="clLmHD7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901EC7BAEC
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 13:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742736232; cv=none; b=V9FkIj+Kr4sGu8ekYg0x2Jaeh9DBY2tJUnFJVWnQKtZ5xj4Vxbu5Mt+/nI0XUGiL1xVrist9RH+gFshM1xFTCghQl1gdR5QpTEyyPmsd+ZpY8TIvc8u2OZSbPbT6474P1FFTsarZW+dTcGUhTtM8qivLFPSASfZrcu/Z21Tsx94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742736232; c=relaxed/simple;
	bh=WDHLZ4ZOpow/9eryokeFUPYvCTF9TtyU+hXACTUYy6g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZCiEYXmfIgYMABQdB5GnECc21XFrimJFzhWBYmsLJhFOmmL+mawC8PJ4ZjvYT32onC8ORRl3EQWfW9eBd03kPhxrCMoH0nQwhPiCjqOX1S9B6tc17/SFquH72fTgLtnVercAABPQ7NZIk+JpLWBf1M+c9cxyV8pFGz21h0U7Zy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=clLmHD7c; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-85afd2b9106so378288839f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 06:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742736230; x=1743341030; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vOluyEJJQfX6U4qT7bfq8l8QHshCFBSDzvPzJIBTv80=;
        b=clLmHD7c6WRz7dhOFH7Zr3x2cbfF3qRhjcou0vlWDwW6ktTo6hwLNL7jWJVCXGgNiQ
         QlKzXdfWQXve8z8+BxSezkGcWQqwLmvrbQ4DfH1v1DoISOSJTZym5SaRstsAPCZhIpBJ
         Kq9wxg37BDid4964huvz+EP4YqOoexccAT82bSACpH/U0iTDsZvo0xlVDRgmIixbvJ7G
         ltdnGUeAlEeSPIRqlE4H1vi4ueQciaJkODoODS6XUl24P70BNUGdEGPZHsZb0jPbTqdq
         RlWraRLFbLB/vs9YqwfOr9OZ8EWzL1X3aV6lSqIwcnOslBouIv07pcGOS6DpVBZBjzsZ
         8WQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742736230; x=1743341030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vOluyEJJQfX6U4qT7bfq8l8QHshCFBSDzvPzJIBTv80=;
        b=FmoaZBW2SmHOrGoJeFLDWjVbBLhiq5jXXUPiiNbnwLPeLUz6OKOBm0zjCFg7aVP2rq
         RA4OsoKT8kTPuyOxy719/+spxeqHK+CpEC3UAoEgu475/iiWDpVqKIGDC9tgcV9cWUs1
         HZ7I2T10X41slZP9wFoAiXAttwfsx6hH1Opu8p9Tf+MW9jvGjkX9Uv5Akd/DK9EhXm5o
         CQox8SDOrLd/goSBNpke5fekfQUM3hVqmi4ATQY7BluCF+syWCopWbJC2/j/fCTxXPUy
         JBTUkxWy1cXZmEH0R4jrA96d+TpeP9DgGo0XuVt0/F+wNu3+ttZOsd/MbuxHv9uJtqmX
         oU+A==
X-Forwarded-Encrypted: i=1; AJvYcCVTEXh4teJo/STrV/OZqlUarka21xVl+UJ9lh0ULhAZMcU3gLeOTeqR6+YjOyCwsZBPKMDHq55vS9k2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8y7b2n8fdtQUEM1MsMlVp164yDKQHFqiD6eOenZZYxQkAWAjM
	KHE0hu8C7seBttWBA3J6aU/dEQqFGoz5MyjEIuRDySvfXls6A0HLJnhmTYh+ROE=
X-Gm-Gg: ASbGnctZriMsdER3Le4ym9autU/ObAkqj0XKg7jjBYX3xHOwEF5Ovoueo6S8+qtp3Qt
	iMKAsiR1k01DZYTaKB1+JvJzv0ZTWth3receFndWxtLewGWBxCuZR9C1CzeNXeTTkePkodniTlg
	aifQdM3NcmF6qTzF/wGLo15+f2MnaxPVnbm7+68qBOd2zYG3pjNG91BUj2F089numT5onz/iFAP
	bOpFDoCURaR715hx7vm0QTmmO3udwQby7DbqMkbwF/kwZGe8H8YeGyZOJvRuM3pqiPy507zQAg4
	uxrLhyiYnHkT0PGVBeYfeS8YvxroLSWW3YaVkt1/qheK3zu2BJzKvkPepRsm2BtvqCqAj6oOgRI
	VpnsIsx+FzWj7/YixixBC9KZbbrtU
X-Google-Smtp-Source: AGHT+IHvNHoOTQ7GjqXvKjbkWRzMHajkOVeKgTFwJL+MCalCStZsW2aoR41uPaZSxapIX+qE0BXZHg==
X-Received: by 2002:a05:6602:7512:b0:85b:3c49:8825 with SMTP id ca18e2360f4ac-85e2ca62dd3mr974589339f.4.1742736229595;
        Sun, 23 Mar 2025 06:23:49 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bc13d74sm125798039f.11.2025.03.23.06.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Mar 2025 06:23:49 -0700 (PDT)
Message-ID: <b5af3a7a-c5da-497a-ad67-c99edfdf665e@riscstar.com>
Date: Sun, 23 Mar 2025 08:23:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 7/7] riscv: dts: spacemit: add reset support for
 the K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-8-elder@riscstar.com> <20250322164830-GYE11633@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250322164830-GYE11633@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/25 11:48 AM, Yixun Lan wrote:
> On 10:18 Fri 21 Mar     , Alex Elder wrote:
>> Define syscon nodes for the RCPU, RCPU2, and APBC2 SpacemiT CCUS, which
>> currently support resets but not clocks in the SpacemiT K1.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   arch/riscv/boot/dts/spacemit/k1.dtsi | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> index 09a9100986b19..f86d1b58c6d35 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> @@ -350,6 +350,18 @@ soc {
>>   		dma-noncoherent;
>>   		ranges;
>>   
>> +		syscon_rcpu: system-controller@c0880000 {
> I'm not sure if syscon_rcpu is good name to go, it's AUDIO Peripherals
> in docs, see
> 
> 7.2 Main CPU Domain Address Mapping
> https://developer.spacemit.com/documentation?token=LzJyw97BCipK1dkUygrcbT0NnMg

They call it "AUD_MCUSYSCTRL section <RCPU(0xC0880000)>",
where the registers layouts are defined, and the register
names use the "RCPU" prefix by convention.

I guess I could use "AUDIO" instead, but I think it's
"RCPU" is a little better because of the way things in
the region are named.  It's a little like how "pll" is
used for the DT node name for things in the "APBS" region.
I don't really like that, because the connection between
the two isn't very clear.

>> +			compatible = "spacemit,k1-syscon-rcpu";
>> +			reg = <0x0 0xc0880000 0x0 0x2048>;
>> +			#reset-cells = <1>;
>> +		};
>> +
>> +		syscon_rcpu2: system-controller@c0888000 {
> not found this address mapping in above docs link

You're right.  I was following what the downstream code did.
I'll gladly just include this in the main "RCPU" node.

Thank you very much for the review Yixun.

					-Alex

>> +			compatible = "spacemit,k1-syscon-rcpu2";
>> +			reg = <0x0 0xc0888000 0x0 0x28>;
>> +			#reset-cells = <1>;
>> +		};
>> +
>>   		syscon_apbc: system-control@d4015000 {
>>   			compatible = "spacemit,k1-syscon-apbc";
>>   			reg = <0x0 0xd4015000 0x0 0x1000>;
>> @@ -518,6 +530,12 @@ clint: timer@e4000000 {
>>   					      <&cpu7_intc 3>, <&cpu7_intc 7>;
>>   		};
>>   
>> +		syscon_apbc2: system-controller@f0610000 {
>> +			compatible = "spacemit,k1-syscon-apbc2";
>> +			reg = <0x0 0xf0610000 0x0 0x20>;
>> +			#reset-cells = <1>;
>> +		};
>> +
>>   		sec_uart1: serial@f0612000 {
>>   			compatible = "spacemit,k1-uart", "intel,xscale-uart";
>>   			reg = <0x0 0xf0612000 0x0 0x100>;
>> -- 
>> 2.43.0
>>
> 


