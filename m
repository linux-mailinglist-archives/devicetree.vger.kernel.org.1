Return-Path: <devicetree+bounces-260768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHgrOGYSe2mlBAIAu9opvQ
	(envelope-from <devicetree+bounces-260768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:55:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E235AD0A4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 862F6301E7E8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0608537B400;
	Thu, 29 Jan 2026 07:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AFiZYSWG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51631365A17
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673312; cv=none; b=LpR+0v1XuPjh7OONE8xxH3DCfUo8e5rwDFf4fzEjzzKGVhsyP9nXOAx4laLnvLaL8T2TJ1l4vfzHfCEJPJqpZmVYu/QuCHqG0UoMvOiMMTNBsbVc6A2yik9D33RW4ztJR9uxn7Zs+qAWTqGuL1MGRq9R/v3a9ZGTFlmGz6bq6RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673312; c=relaxed/simple;
	bh=eyCVeg7f67HR0pVwpHS/CU/ZJg5xRy4DjDYrcwUwdaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IYMR7Auz5wk5hI166UP8IBvjLje34ZgTg86RvyZ5M7PneVHmqD44sl/sonpFTPgxYqlHEjQsvOAcdSoMOdWrraRTOqlSFTSDpsCVLyM9t/MFao/V+Tj/UJ2wDX0QgYjoGNKUU5qOzjfE/itzNbBQjT2IH5fGdhYfZ+h3ys8zgkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AFiZYSWG; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b1981ca515so1001097eec.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769673309; x=1770278109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3TPHc5bOLijVe07Jm6G9DH+b3/G4af6i/e5GczImAc=;
        b=AFiZYSWGV6ak3LSNf4GVdhxsBg7z07JX0r+i6jjUOjMV6qsThw6lGlHzb/qm3OPu8O
         bJ8BBdZJqXiEtIXjDg1tU0LYv50kY+aSueGGQN6c/pwpNiGSmStmh6+yAoK7Y81/EDCt
         a04qmhYwZL4cINh7/VGPbxG82HAiSQ+BI1KnmKOkuVYSEF67vAkXX0PdIHgiHQ9waMi+
         tU4kfkP+pfuIUsCjwIZN5n9nfBFWsfizSFz61TYJqmM4pt8j8eK2hFKhPqTAnZlp7IXU
         umUjYfVxSIlJm4CaG7cCII/XtCCJ91mx8GGP5BXso/bMj6pLQXKzVWf02hXAIQsc9joQ
         8rkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769673309; x=1770278109;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D3TPHc5bOLijVe07Jm6G9DH+b3/G4af6i/e5GczImAc=;
        b=no1jqe38bo0WTpxTF8xgnFZHAMrMSvby+10hM4AVyLJSoYyEUhjuBl0tjEHBWnLUhW
         p/WE5OjdjGyF1a+IyX/yvktrAy5UgxM0AdD58SsnYzWyOKdUhQKFNQW5xZC3uN9NBNyv
         QgdNUJbojdg+9XgZez+78n6uxpN8MQZDBXYf9+zq/1MlTlkLMPPftRkv7CTvfPi1QRr1
         awEizdZ3kGL3TtDFufEBuaxv0Aaua14+Z1VLyqiRp42GpAKZovUG9Qr2n2VHXqsv9l0E
         6ZqtjLyeM/m8wJlGSyfoDOlY2MQkbxlzQ3AT/PCnOYFs/TqR40ykWRSdK6Hzf2uCCDF2
         0YhA==
X-Forwarded-Encrypted: i=1; AJvYcCU5ZBMwe0tafkArxcl+fMpF5qM9rjpBA8+prpBXwoLlH9gISE8FYvlpLvq7E6FcHZSfonL2QRIWMz16@vger.kernel.org
X-Gm-Message-State: AOJu0YxwxMJGb6qCeL2wff8n5iIsj1mUR6BQIJsLo8wbhDlgzhdznXeG
	8j1iJvQ6URFrpuDlLaI6U9zpSCgF/+caN1sNm1uEbREaaFsj2EIwHA8j
X-Gm-Gg: AZuq6aIoDpaDsUVpsUHoIwAyC/XQ8dbHbgsOsZYnUfLoIAY2Wmvoi04dPSfa9CpyObn
	vLfYHvTwgq/5+KSQ3hvL5JAH8hx6ooPS2wgbzkmwpIgsr651ZflOjBu5qZFIvkdiMcJwDfEfjFd
	ecOparJg0vOVA03mm4ktPQrnvK6Oucq2wMYzBtqEFjjr1KMkjfMN5+EqZaUGW1FoF7L6LGuHMVx
	avmywtwDeNxSvsdkmkWUWTeJLBsTulI+cWp/VDd8tD9grqFAqH/50SQkXkpaU+SoBFtS3JPa76J
	gWjBFT1BW62hDp9SgseS8+KkBLN7SQ0B9lHkV1gx5QRQNtuRzlwjl4mgL2Lis8LTeafwK8xxewe
	IVK+RGTZqufwci0KjSFb/jm2s13Hfd6R19P8rLv9asX/E7e/guI4ToLkiu8rQJ+pp/kkwitmAt1
	a1lNlh2oago/ijnKuCokfBfHB7EKTUJ5Sl3IueAR3h2DvuE8oNAW0bFofF4x2GfiefGA==
X-Received: by 2002:a05:7300:7307:b0:2b7:2fff:ed30 with SMTP id 5a478bee46e88-2b78d9fda38mr4503871eec.20.1769673309301;
        Wed, 28 Jan 2026 23:55:09 -0800 (PST)
Received: from [192.168.68.65] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a170ca0esm5994238eec.15.2026.01.28.23.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 23:55:08 -0800 (PST)
Message-ID: <d2e3face-8d66-4136-a40c-635a1d055b2c@gmail.com>
Date: Wed, 28 Jan 2026 23:55:08 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt Add PWM vibrator
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251211-expressatt-vibrator-v1-1-41bdc47217b2@gmail.com>
 <821a7dc3-7b00-40d1-9332-ef57ad22f9ca@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <821a7dc3-7b00-40d1-9332-ef57ad22f9ca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-260768-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guptarud@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,codeberg.org:url]
X-Rspamd-Queue-Id: 5E235AD0A4
X-Rspamd-Action: no action

Hello Konrad,


On 12/16/25 06:22, Konrad Dybcio wrote:
> On 12/11/25 11:23 AM, Rudraksha Gupta via B4 Relay wrote:
>> From: Rudraksha Gupta <guptarud@gmail.com>
>>
>> Add a pwm-vibrator to expressatt. Currently this vibrates only at 100%
>>
>> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
>> ---
>> Add a pwm-vibrator to expressatt. Currently this vibrates only at 100%
>>
>> Link:
>> - https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/arch/arm/mach-msm/board-express.c#L1767
>> - https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/motor/Makefile#L5
>>
>> Test:
>> =====================
>> samsung-expressatt:~$ dmesg | grep vibra
>> [   79.892226] input: pwm-vibrator as /devices/platform/vibrator/input/input4
>> samsung-expressatt:~$ fftest /dev/input/event4
>> Force feedback test program.
>> HOLD FIRMLY YOUR WHEEL OR JOYSTICK TO PREVENT DAMAGES
>>
>> Device /dev/input/event4 opened
>> Features:
>>    * Absolute axes:
>>      [00 00 00 00 00 00 00 00 ]
>>    * Relative axes:
>>      [00 00 ]
>>    * Force feedback effects types: Periodic, Rumble, Gain,
>>      Force feedback periodic effects: Square, Triangle, Sine,
>>      [00 00 00 00 00 00 00 00 00 00 03 07 01 00 00 00 ]
>>    * Number of simultaneous effects: 16
>>
>> Setting master gain to 75% ... OK
>> Uploading effect #0 (Periodic sinusoidal) ... OK (id 0)
>> Uploading effect #1 (Constant) ... Error: Invalid argument
>> Uploading effect #2 (Spring) ... Error: Invalid argument
>> Uploading effect #3 (Damper) ... Error: Invalid argument
> Looks like this is because GP1_CLK does not implement .set_duty_cycle..
>
> The downstream driver you linked to does so in a terribly hacky way
> (from the vibrator driver and not the clock driver):
>
> https://github.com/LineageOS/android_kernel_samsung_d2/blob/cm-14.1/drivers/motor/immvibespi.c#L53
>
> Upstream, we have an implementation for clk_rcg*2*_ops, whereas 8960
> uses clk_rcg_ops.
>
> They look very similar though, perhaps you can hack it up..
>
> One thing to note is that you're passing GP1_CLK to the clk-pwm (as
> you should), but we need to do clk_set_duty_cycle on its parent,
> GP1_CLK*_SRC*. The framework will take care of this:
>
> ```
> --- drivers/clk/clk.c
> 	if (!core->ops->get_duty_cycle)
> 		return clk_core_update_duty_cycle_parent_nolock(core);
> ```
>
> so long as you add CLK_DUTY_CYCLE_PARENT to the child
>
> [...]


Sorry for the delay, but I'm struggling to get this implemented. I have 
my in progress work here:

https://codeberg.org/LogicalErzor/linux/commit/4e7f94d9fdd1e4e1d688b2eb518494d710f157fb


I was able to get rid of the -16 error that was getting spammed when 
using fftest, but it is still showing

Uploading effect #1 (Constant) ... Error: Invalid argument
Uploading effect #2 (Spring) ... Error: Invalid argument
Uploading effect #3 (Damper) ... Error: Invalid argument


If you have any other insight on how to make the vibrator variable in 
intensity (it's still either 0% or 100%), please feel free to let me 
know. I will continue trying to hack away at it to see if I can get the 
variable intensity to work via fftest.
>> +	/* TODO: Vary the frequency besides being 0% or 100% */
>> +	vibrator {
>> +		compatible = "pwm-vibrator";
>> +		pwms = <&gp1_pwm 0 54347 0>;  /* ~18.4 kHz */
>> +		pwm-names = "enable";
>> +		enable-gpios = <&pm8921_gpio 4 GPIO_ACTIVE_HIGH>;
>> +		vcc-supply = <&vdd_haptics>;
>> +
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vib_pwm_gpio>;
> pinctrl-n
> pinctrl-names
>
> please, both occurences
>
>> +	};
>> +
>> +	vdd_haptics: vdd-haptics-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vdd_haptics";
>> +		gpio = <&tlmm 47 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +		regulator-boot-on;
>> +
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&haptics_pwr_en>;
>> +	};
>>   };
>>   
>>   &gsbi2 {
>> @@ -241,6 +270,21 @@ touchkey_i2c_pins: touchkey-i2c-state {
>>   		bias-disable;
>>   	};
>>   
>> +	haptics_pwr_en: haptics-pwr-en-state {
>> +		pins = "gpio47";
>> +		function = "gpio";
>> +		drive-strength = <2>;
>> +		bias-disable;
>> +		output-low;
> Drop output-low, the driver should take care of setting the state
>
> Konrad

