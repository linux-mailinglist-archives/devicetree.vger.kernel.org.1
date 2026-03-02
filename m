Return-Path: <devicetree+bounces-269825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEPzDB9GpWkg7AUAu9opvQ
	(envelope-from <devicetree+bounces-269825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:11:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2EF1D4741
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A24CB300B2B7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 08:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8C727E1C5;
	Mon,  2 Mar 2026 08:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h+W/ZjB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613BB1F2B88
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 08:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772438769; cv=none; b=X1Oo/0TiuqlA/OrM+xd7V+oXaY3CtBDz6i8nLTZXkDeUObmvbpVmzDygdXZM5pq0zlO4yToj64SWouKWDkVGSypcXwVL9oUYjLggXlcyzQFcCIjhP8vZvR9bXt5gKWWQxlIgO+EFj8q3jVf3Ahj7mHPt19nBiofH5IaZEhX0qUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772438769; c=relaxed/simple;
	bh=j4gadNUevzcGZJA4iRiQkfmFGUBrx21sxEROz2pxX1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZozag7nVfQI6ai+QQV9040hRPsPW3SoA5xFMxIigVh55GDK6M1KWBjax6aC5uVTA0i9/hC5TUMky2EZG+VOihSD3qbZvdMehztzMHz6K2d8eUu7Df1ZjiQqscP/oKiSFM1BnJUWRb2Bg5i3hf4GRgJBTVfDa/lKoGEf3ZEDuEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h+W/ZjB1; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ae56e68216so2654045ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 00:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772438768; x=1773043568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pzgC4aUzxFSpLAMwn+L0pn5MDObG9dJ9EJftg3QZJdc=;
        b=h+W/ZjB1pyFInRBXLOkH4tcsmK3vFD95t61qxRIq0NuxzDwDKXRw1IDBxDM6DGsGhh
         lKHkBBDirxb2vGOv7Pu6P449CZfVdG5fC0SgWgr3/R2xUkQong3RUdJYjdgPsvBVLeSU
         hlfZ2C9A+muM5ZTl66ISxcjq6ubp92mbetNfkeFMdq+DGY7baOkSY7y9p1PsCUpo/mdg
         UsZf+hRcJLxIrNOqKfdxFxwZk+NEFlIYdxwAKFKpjIEEKUpoLDKMuzJ8T+d80QwC2I0n
         EGf10VezOAOi3bvCLeUDm9QyKAO1qN0WT6lviVlWb63hrqJjmLYRZPeewNtRH89sYeZQ
         9m9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772438768; x=1773043568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pzgC4aUzxFSpLAMwn+L0pn5MDObG9dJ9EJftg3QZJdc=;
        b=w0GOmt4Nrm72RCwJTK38WCWuszT8PNPELUdylwzSYBnYQVESEDc8Z2Yfms0TNnaIv6
         aUg5qCvp8/PmLOowhtJERtxV+gybjwnBYtLDeLBpWMumfvgu/g4QoH9TNGKGEK9L3US+
         hDId4QPCPP6oW7gzbVX6naegho6G8oQYSoJjSRVZUvnontKWv/JxRzG8Cfq+JyoLW1PC
         /QUR9EhJvIhONXMddJWbh/DFhqsj1TUWnDu8kGKbYZp2I57m+CcJA8IVyTlGeRA0PF92
         thc9ucx20lPpWGE/GShsac1jNkeW7vCsxmKsue4zjmzuL5yEslpnIlh8U7soKbOjxHtz
         4KaA==
X-Forwarded-Encrypted: i=1; AJvYcCVfX2tjaN6aHI2FwYswOWrAzUsKWD3gO2vBRDqSiZIZBBcDdcsofZyFbLPrSdIo2WrdH0UlMM0vioE0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+Xli5N1ok3sWE36tDlDekTI5rsB47bjeEsKIvFk9wHEfROwYi
	9AjgtvH2zeZ8Yq6Yd5CIgEWz0B37AASImd+XAzIryHcgCWPWgVGg6Ff8xywE3Q==
X-Gm-Gg: ATEYQzyZRUvIjWH1a7D+yTpJagiH1n4IZtfnkqywhtXfyKacy2HFioOWrtickeT62YN
	iCbsz1X4MeyWe5gMNgaVf118fdG27ipWJTI6TQWZnTIsnXydRJchXr+xjxA+DLaitLgJC1a0IfO
	BBa+kXB5aYDC17vz+Lgz2Cyv4Ma9q4OmHY8o8nmYUasx9xcmeE7THH1srI+7X2aAZVqA+J9BM1Z
	/5Df8VVbO5vzAGtTJiJhpdLwXCpy4r8QzlFtG4bxIvmKQ4RH7vXn8LvF3aNdSDWo2JEdE72h0ro
	VjH9ddVnJ8Ge93OQ0vscHqxhLoo58u2aCSoUpROBMdwmAWToVtgNPaXAlWZ8wdiNAp3NueXiLT7
	Z2wHhFJMXUzxYN/aUcWjt2n7M2cNgCbPAGfTlH7BhLVEj/VXh3dyA31r9J4yfVjdmiRCLJS3hCG
	PD71EdNagTHsBcNiap9RyA7/sF4INsMfWmhPHC0at/M36jahDxWSbHudcPsvFicrKhvy1Fxj8=
X-Received: by 2002:a17:902:c945:b0:2ae:4e43:a607 with SMTP id d9443c01a7336-2ae4e43b71amr25850355ad.13.1772438767557;
        Mon, 02 Mar 2026 00:06:07 -0800 (PST)
Received: from [172.19.1.48] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b257esm130191305ad.4.2026.03.02.00.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:06:06 -0800 (PST)
Message-ID: <5607ce87-a1ab-4de1-8917-0a7c31f943f2@gmail.com>
Date: Mon, 2 Mar 2026 16:06:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: nuvoton: Add I2C nodes for MA35D1 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andi.shyti@kernel.org, ychuang3@nuvoton.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260302020822.13936-1-zychennvt@gmail.com>
 <20260302020822.13936-4-zychennvt@gmail.com>
 <20260302-amiable-rugged-mastiff-ccded3@quoll>
Content-Language: en-US
From: zychen <zychennvt@gmail.com>
In-Reply-To: <20260302-amiable-rugged-mastiff-ccded3@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-269825-lists,devicetree=lfdr.de];
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
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[2.110.182.16:email,2.110.221.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.111.43.64:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,2.111.4.48:email,2.111.82.80:email,407f0000:email,2.111.199.128:email]
X-Rspamd-Queue-Id: 1E2EF1D4741
X-Rspamd-Action: no action

Hi Krzysztof,
	Thanks for your review.

Krzysztof Kozlowski 於 2026/3/2 下午 03:25 寫道:
> On Mon, Mar 02, 2026 at 02:08:22AM +0000, Zi-Yu Chen wrote:
>> Add I2C controller nodes to the MA35D1 SoC dtsi.
>> Also enable the I2C interfaces on the MA35D1 SOM board
>> to allow communication with onboard peripherals.
>>
>> Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
>> ---
>>  .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 14 ++++
>>  arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 65 +++++++++++++++++++
>>  2 files changed, 79 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
>> index f6f20a17e501..2a8f0fd90ded 100644
>> --- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
>> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
>> @@ -98,6 +98,14 @@ pinctrl_uart16: uart16-pins {
>>  			power-source = <1>;
>>  		};
>>  	};
> 
> Missing blank line
Will fix in v2.
> 
>> +	i2c-grp {
>> +		pinctrl_i2c1: i2c1-pins {
>> +			nuvoton,pins = <1 10 12>,
>> +				       <1 11 12>;
>> +			bias-disable;
>> +		};
>> +
>> +	};
>>  };
>>  
>>  &uart0 {
>> @@ -129,3 +137,9 @@ &uart16 {
>>  	pinctrl-0 = <&pinctrl_uart16>;
>>  	status = "okay";
>>  };
>> +
>> +&i2c1 {
> 
> Why 'i' is after 'u'? Please read DTS coding style.
Will move &i2c1 after &clk and before &pinctrl in v2 to follow alphabetical order.
> 
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_i2c1>;
>> +	status = "okay";
>> +};
>> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> index e51b98f5bdce..36bd19e37b57 100644
>> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> @@ -17,6 +17,10 @@ / {
>>  	#address-cells = <2>;
>>  	#size-cells = <2>;
>>  
>> +	aliases {
>> +		i2c0 = &i2c2;
> 
> Not a property of DTSI, but DTS.
Will move to DTSI in v2.
> 
>> +	};
>> +
>>  	cpus {
>>  		#address-cells = <2>;
>>  		#size-cells = <0>;
>> @@ -372,6 +376,66 @@ uart15: serial@407f0000 {
>>  			status = "disabled";
>>  		};
>>  
>> +		i2c1: i2c@40810000 {
>> +			compatible = "nuvoton,ma35d1-i2c";
>> +			reg = <0x0 0x40810000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clk I2C1_GATE>;
>> +			clock-frequency = <100000>;
>> +			resets = <&sys MA35D1_RESET_I2C1>;
>> +			status = "disabled";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +		};
>> +
>> +		i2c2: i2c@40820000 {
>> +			compatible = "nuvoton,ma35d1-i2c";
>> +			reg = <0x0 0x40820000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clk I2C2_GATE>;
>> +			clock-frequency = <100000>;
>> +			resets = <&sys MA35D1_RESET_I2C2>;
>> +			status = "disabled";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +		};
>> +
>> +		i2c3: i2c@40830000 {
>> +			compatible = "nuvoton,ma35d1-i2c";
>> +			reg = <0x0 0x40830000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clk I2C3_GATE>;
>> +			clock-frequency = <100000>;
>> +			resets = <&sys MA35D1_RESET_I2C3>;
>> +			status = "disabled";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +		};
>> +
>> +		i2c4: i2c@40840000 {
>> +			compatible = "nuvoton,ma35d1-i2c";
>> +			reg = <0x0 0x40840000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clk I2C4_GATE>;
>> +			clock-frequency = <100000>;
>> +			resets = <&sys MA35D1_RESET_I2C4>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			status = "disabled";
>> +		};
>> +
>> +		i2c5: i2c@40850000 {
>> +			compatible = "nuvoton,ma35d1-i2c";
>> +			reg = <0x0 0x40850000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clk I2C5_GATE>;
>> +			clock-frequency = <100000>;
>> +			resets = <&sys MA35D1_RESET_I2C5>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			status = "disabled";
>> +		};
>> +
>>  		uart16: serial@40880000 {
>>  			compatible = "nuvoton,ma35d1-uart";
>>  			reg = <0x0 0x40880000 0x0 0x100>;
>> @@ -379,5 +443,6 @@ uart16: serial@40880000 {
>>  			clocks = <&clk UART16_GATE>;
>>  			status = "disabled";
>>  		};
>> +
> 
> Why? Do not introduce random changes.
Will fix in v2.
> 
> Best regards,
> Krzysztof
> 

