Return-Path: <devicetree+bounces-259278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAa4HylbdmnBPgEAu9opvQ
	(envelope-from <devicetree+bounces-259278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:04:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49B81A72
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 266F73003628
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 18:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76ED4191F91;
	Sun, 25 Jan 2026 18:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f/+LN4kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1B628E00
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 18:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769364262; cv=none; b=qSsU/CHkHvLpuEIIPJbtnUOgsKG/SuvJhjWyMnJi/MMW+x7gANH6/mdzzixwNjBSc7ZBCUfUL9A9g3onu6tk5X4HCSsyYT9inoxciFu9WbEMSOHeLaNASgVHozQttiuop/cYj6DxAMDzCKdE0eJIh9wbLQBeLFgnJCWmyx7Pzqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769364262; c=relaxed/simple;
	bh=agBRKuwWKtPnJIUdcu7sA87gTJa6Q8gGTGTdHOJl4TA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j0hgnQSxz+Rz17wOzrF5z7R6c3nyOUuH2wx2JofIvU3JrPG1A0GAC/f+oY3eXMb+dZoBhK/sUpLSkzfUe3fFXCr5KfeAKqhbzgH3OkkN3Y7xaeARJiF6S3gBgyyVKSDtoIVk9CF36nNr8wqsn97d64qI+AcCOJXcTGEwg1P1CdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f/+LN4kg; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4327790c4e9so2425851f8f.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 10:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769364259; x=1769969059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YPoViYNjyfGmUsvPf8KRXEGZpQr2hqfqFw85F8RnlH4=;
        b=f/+LN4kgeJkpcSAXOrRtKqUU1xEeq0CSyYI6PJottS4MvwIgFAidG38qa/+wyPIkLl
         MRFOucwGTi+j64H2Ds1ZMDOOw1YQBReP26kX2dove+3Xm/kmUHdjt3bAljZr+rBtsw0W
         NwxMIuo0FvvSTUTYltNwt2e4a9Tw8ZXaCjnVlOOJpEYWAU/bom63iJQlgXSBU9jkJAFJ
         PWI1iWrhThGghxciNIZqvH3D4t6u7O6PwbNjNOHHqwJb4El+Fi4Vj79NZ971f0PHvcLQ
         OnS/Vw+YiKK0NJCCdXoDxlLAqn3JLXTZ/aNFuOJ9ShFxGFKJukHLa8YoY+e8gEUnO5kM
         JJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769364259; x=1769969059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YPoViYNjyfGmUsvPf8KRXEGZpQr2hqfqFw85F8RnlH4=;
        b=RYr/d2iuBMHeszG1T3lxnJikjec3E+tbHy7dj5XbgYwOBz110J1CTdubTdiPPRUzpq
         zDWnel/e3nDaW8jKYe/nROlkLgiFLDE/Eu+t0tyeD07oN/FdsJW7EzXXNQfk1tN0fQxS
         OjhKVU+gQ9xMGjXEvEAA1fAqlRfGRJ9jZbLSxTD5CNYRR1sGMqQDzYSQ7UMQUgqh6Xuq
         n4DVGI1YVPUs92VNbGlinu1HQe1qWVpLqOBdtQi4C9aMPIfS9FglLXF9+ao5frJeAK49
         vpbVX+CsATje6kjUYoT+Rnxs8uBKxBXqvcYSbF5lzjnQ4QgaLjKiCgL1Pvq9g0Y++5Qs
         Ykew==
X-Forwarded-Encrypted: i=1; AJvYcCWR1HanzGEDY2Icf5m61nOPfk2plCake7+9ntM7kqAmI/mcF3g9PaIFrnwCpp1tA5kon+isQKPSJCDZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzVpfd2Yt5m6xr5/6ET4WWMNmAPL9OItREx5E44Gq0Ng1KEQ28O
	QndDQNgbohZYRq0EiKA4mMyU5s00YuDpMGDFiwfzb3bKSANvKhurDNhVu1hh8tx5
X-Gm-Gg: AZuq6aJMFya4Ar5Ty65kqOAo6QAh0YwydksTsSQqCRRe11L81Z7sYy/OdVaBQEvKrX1
	MQ7LGnfyH9+0xvpMw5BZhkuhkYqsZLDfd+1MFO4VZ7ODls1rnfkJsChw6Miu4t7DJpYXL3ucP/m
	+I1XCOUHsF2yG3SwxuFHjRta3m+L9p+NLmbvEQEtYsdFDMbsdlqyLX1A5+BYGOHQ6EZu0CUKzzs
	7GHFHiFGSgVKV3VNozOlFFXoaTLtQCExmVoUIzf1Mkn5HXtgGMDKXT+4wtuT77pPcyqm3gct/ZY
	WBq8Rb4zAnD/IKGtw8Ho2jSOxdHFnVBy0Y3050awKGppstx4KNRycNi99g2CORZR8QjlovQ2to1
	yUn0tUCqZs3F5O81W1jbiwTV1J6i1t1V3kygN28RiJ1tnzLOuby2oLXkXXfXnUFMkxvTTsAuuvj
	Ktv2Zrv3E5dADwQq+iIAG5CVL0sN4oz7lzpcSpMtEmfFfwmV79x//SBdZtdnBwsKcde71Y+BXRw
	Q==
X-Received: by 2002:a05:600c:c16e:b0:477:63b5:6f76 with SMTP id 5b1f17b1804b1-4806111e38emr4511635e9.25.1769364258971;
        Sun, 25 Jan 2026 10:04:18 -0800 (PST)
Received: from ?IPV6:2a02:8010:6606:0:fd30:74ec:a5b0:107a? ([2a02:8010:6606:0:fd30:74ec:a5b0:107a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d6588e3sm84017525e9.3.2026.01.25.10.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jan 2026 10:04:18 -0800 (PST)
Message-ID: <6235f7ee-d0fa-4c46-b98b-54af4d9d5ce8@gmail.com>
Date: Sun, 25 Jan 2026 18:04:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251109192128.72527-1-sigmaris@gmail.com>
 <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259278-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sigmaris@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[friendlyelec.com:url]
X-Rspamd-Queue-Id: BF49B81A72
X-Rspamd-Action: no action

Hello Dragan,

I haven't been able to test patches for a while, but now I have access to
the NanoPC board again, and I've done some tests:

On 10/11/2025 00:23, Dragan Simic wrote:
> Hello Hugh,
> 
> Thanks for the v2!  Please, see a couple of nitpicks below.
> 
> On Sunday, November 09, 2025 20:20 CET, Hugh Cole-Baker <sigmaris@gmail.com> wrote:
>> FriendlyELEC offers an optional heatsink and fan addon for the NanoPC-T6
>> and T6 LTS, which plugs in to the fan connector on the board driven by
>> pwm1. Add the fan as an active cooling device for the SoC package.
>>
>> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
>> ---
>> Changes from v1: https://lore.kernel.org/linux-rockchip/20251026194858.92461-1-sigmaris@gmail.com/
>> * add the fan to the base board dtsi instead of overlay (Heiko)
>> * just use 2 trip points for warm and hot temperatures (Dragan, Alexey)
>>
>> References:
>> FriendlyELEC heatsink with fan addon:
>> https://www.friendlyelec.com/index.php?route=product/product&product_id=305
>> Vendor DT with trip points and PWM duty cycle values:
>> https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L75-L90
> 
> I think it would be better to move these references to the patch
> description, so they become directly available in the repository.
> It might be the best to use the "... [n]" form for the references,
> which puts them as close to the backed contents as possible.
> 
> Oh, and I think that "arm64: dts: rockchip: Enable active cooling
> on NanoPC-T6" as the patch subject would read nicer. :)
> 
>>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 39 +++++++++++++++++++
>>  1 file changed, 39 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> index fafeabe9adf9e..9164a0ee6228e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> @@ -11,6 +11,7 @@
>>  #include <dt-bindings/input/input.h>
>>  #include <dt-bindings/pinctrl/rockchip.h>
>>  #include <dt-bindings/soc/rockchip,vop2.h>
>> +#include <dt-bindings/thermal/thermal.h>
>>  #include <dt-bindings/usb/pd.h>
>>  #include "rk3588.dtsi"
>>  
>> @@ -89,6 +90,14 @@ usr_led: led-1 {
>>  		};
>>  	};
>>  
>> +	fan: pwm-fan {
>> +		compatible = "pwm-fan";
>> +		cooling-levels = <0 35 64 100 150 255>;
>> +		fan-supply = <&vcc5v0_sys>;
>> +		pwms = <&pwm1 0 50000 0>;
>> +		#cooling-cells = <2>;
>> +	};
>> +
>>  	sound {
>>  		compatible = "simple-audio-card";
>>  		pinctrl-names = "default";
>> @@ -591,6 +600,36 @@ &i2s6_8ch {
>>  	status = "okay";
>>  };
>>  
>> +&package_thermal {
>> +	polling-delay = <1000>;
>> +
>> +	trips {
>> +		package_warm: package-warm {
>> +			temperature = <50000>;
>> +			hysteresis = <2000>;
>> +			type = "active";
>> +		};
>> +
>> +		package_hot: package-hot {
>> +			temperature = <60000>;
>> +			hysteresis = <2000>;
>> +			type = "active";
>> +		};
>> +	};
> 
> It should be better to use 55 and 65 oC as the trip thresholds,
> because people often report around 50 oC as the observed idle-state
> temperature of their RK3588 SoCs, so increasing the first threshold

Were these people using the heatsink accessory on the NanoPC-T6, or were
they using some other board with worse heat dissipation? I recorded the
package temperature on my NanoPC-T6 with the FriendlyELEC heatsink and fan
and even though it's not idle but actually running Home Assistant,
OpenLDAP, PostgreSQL, Prometheus, Grafana and Nginx, the temperature ranges
between 46 and 48°C, and the fan never even spins up.

Then I ran stress-ng and recorded the temperature under CPU load, with this
version of the patch and another version with 55 & 65°C trip points. [1]

I suspect if people are seeing 50°C at idle, they're either using a less
effective heatsink, or in a very warm ambient temperature. When talking
about the NanoPC-T6 fan specifically, we kinda have to assume the
FriendlyELEC heatsink is used, as there's no mounting for the fan without
the heatsink.

> to 55 oC should be beneficial by preventing the fan from spinning
> when the SoC is actually idle.  The second threshold is usually set
> to be 10 oC higher, so it should end up at 65 oC.

I'll send a v3 with 55 and 65°C trip points, but I doubt it makes any
difference to the fan activating while idle; from my testing it seems to
just let the SoC get a bit hotter under heavy load.

[1]: https://gist.github.com/sigmaris/2d5590271cf26da8ec6cfc7ef8e3e8bc

>> +	cooling-maps {
>> +		map0 {
>> +			trip = <&package_warm>;
>> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
>> +		};
>> +
>> +		map1 {
>> +			trip = <&package_hot>;
>> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
>> +		};
>> +	};
>> +};
>> +
>>  &pcie2x1l0 {
>>  	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
>>  	vpcie3v3-supply = <&vcc_3v3_pcie20>;
> 

