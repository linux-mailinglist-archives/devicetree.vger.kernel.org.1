Return-Path: <devicetree+bounces-143199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEEDA28743
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE79C1889614
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8668821C16E;
	Wed,  5 Feb 2025 10:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="NhHdZ4Ew"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80852163BE
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738749729; cv=none; b=FKp2gyDI5rsHqsi4mJQqc/TOAMhDJcPCB3Z6iIvSacEInnomVARtl6wBRTK6RwM+h9GnaAkCrLtBY0arSflk3SodrXd3PDdhqs2xeTUYC+mLcmT7Z+06lav036Z/b+EfS5orZbVTJl53+AYJPywiEg8jm9Rn4RZkfPCWj3k7IhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738749729; c=relaxed/simple;
	bh=E0PTNIwQS5JcJ66tT1ZxxvzSk70T0G2+/RcDJA8kSH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P45S42UV0578Dz9vbzw67TOuZlXuun0rqg4vB0VILM890tFhrDaE6usyTMXkXryhy+KzKxgMCd2gIG6ogZzmXnbu1eF1Jl5SpUjD4qH11EsjoqcBMAhJGeuCCnvnHZb8apJ2fiwyoPAGPYEBTCruAp+ZulKHHcS/HSbeOiDcS/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=NhHdZ4Ew; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AE2C83F682
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738749722;
	bh=lRkR+WYaons/jJVqBwYKIgchNhk8mrQWriNR5CVl3/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=NhHdZ4Ew/XkUXa222qi6TdUYpJQmVXy92bSTutSshYFoHdia9ILRwslnkAS8KgINC
	 b27GkY6KpH5auJ3ytQAKU8JF9saQrnUipGCH378YDKykTXN3ve3b9NW5z5T4Q1t/hp
	 XoY56BN/AHwDDB09j/g9SvFNrMcOUTV8PXTcK2Tg31hUbVwySSvDx6SRRshiZh+YFW
	 edxlVILdbcZ7e8ipytC6ABSy2TVcavc31RovDsVVhDcvvNSw7PQ05CCVzN+GU/Zb2l
	 +Ro4q8xgi7zyBe8u3M3lzg7eIU/yWEGQEO778TCR9E1Hww5uLXfPnRzB4eyAuotOE9
	 4yj4ILZqw+dBg==
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4359eb032c9so46306385e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:02:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738749722; x=1739354522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lRkR+WYaons/jJVqBwYKIgchNhk8mrQWriNR5CVl3/0=;
        b=vHebW0DXv4UbkqtDSd1CYtngit0p8Km44uCpd6Y90FotQkXlpuQbdTIbLNiMQPXFJp
         Q4F8mz6wqg4vQC1tUtFKkXMMDlOhC+YSUQ1TKPQ8GVcOlKZFHcD773UW+nhx3KazZJkn
         49dBbfwuNM0DYpRH4gQhbY5p5mS2Wve8lydgnzFhaq4/HUvZPCplxhOVol3u5AY7uzRJ
         Oj4eRr+Wz8gK73DDWKb3+sGXwhnriTfZIJhAp+wmd3a94ygi6QHgyeFdzqmgyd2lrVen
         b4ZD7k0iT8JSqvT51cawzzs0YeWKDigQxs0vJ9O1xyOsIUJSGt/Ljk6Pb7LRBm9Ct+AG
         XM9g==
X-Forwarded-Encrypted: i=1; AJvYcCX+9UWTpAStgLQEBqO4zVz4d3iImh5S1OozEQlJBtTnTUFOM4pcYnSs3sbQNPshtuF39cYxtaWEAmo3@vger.kernel.org
X-Gm-Message-State: AOJu0YzgRi+kGHYnMxfanaDjwCUPXi8/evPcpSIoG7Uf2n2Hkjfbz4hL
	OvqXepnZu/DEeGyEmIPQbXVsa+qMSK5ZNF/pmLR3DhW7F7ZElp6z68djD01Bv4lmQJ1tIfHf5Wj
	FZRTGS0wjcD4P+nBFM/iVNFa/p8pN4lsMlf+wTSbITmRtTzZFrHxkdFGIg8PHdbISVurj+bO1Mi
	0=
X-Gm-Gg: ASbGnctO2iDQ11kP4MYshu+tui10UsAVBSezGA02TW8a0Mb1CrAO8FSNa7Jul9Q9B5I
	jQi1JLJKEIWJHvMMNx1rVbCKCkSCc1stAV4wKsZZxC6PtcYkqqeJfbGMut/GPtAWvntJNwPFinI
	4/AQVotiK5Y8O9XjAtCRpod+rw4SHkPRa1Xj5Q08nyTVK8Z8L2vp6BrbayQc43DzvLFMnEBl+4H
	nEiYlqVQKyT5Wlr6bQGCsueOhbj1OhK4haXmZ9v4KHxS+sd06c8IKwkQDaLxloQ6yXfg5ogGIxW
	cYFIIrzAeahGW2vAMjN+JJVaZ6JXb1IZgeqtUeMHP5r5Vg58edtpN+TqjO7FS2c/GpA8oQg=
X-Received: by 2002:a05:600c:46d4:b0:42c:c28c:e477 with SMTP id 5b1f17b1804b1-4390d55fc82mr14932065e9.23.1738749721724;
        Wed, 05 Feb 2025 02:02:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGq8om1DDyQcOOxkaGbGiKq7JJDXixn8Voguht0gmaJQbiYzhmBxXZIPIdniNSl3ZJ3CUhAFQ==
X-Received: by 2002:a05:600c:46d4:b0:42c:c28c:e477 with SMTP id 5b1f17b1804b1-4390d55fc82mr14931765e9.23.1738749721365;
        Wed, 05 Feb 2025 02:02:01 -0800 (PST)
Received: from ?IPV6:2a02:3035:6e0:9052:36d8:1776:f263:97eb? ([2a02:3035:6e0:9052:36d8:1776:f263:97eb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390daf7dbcsm15922705e9.30.2025.02.05.02.01.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 02:02:00 -0800 (PST)
Message-ID: <206a6ada-1ef9-47f3-b1cf-fb1a1540e95c@canonical.com>
Date: Wed, 5 Feb 2025 11:01:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] riscv: dts: starfive: jh7110-common:
 bootph-pre-ram hinting needed by boot loader
To: Hal Feng <hal.feng@linux.starfivetech.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, E Shattow <e@freeshell.de>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
References: <20250203013730.269558-1-e@freeshell.de>
 <20250203013730.269558-6-e@freeshell.de>
 <25B3D8909DBCC21B+43663a76-4afa-44ae-95e2-3a8792de614c@linux.starfivetech.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <25B3D8909DBCC21B+43663a76-4afa-44ae-95e2-3a8792de614c@linux.starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/5/25 08:57, Hal Feng wrote:
> On 2/3/2025 9:37 AM, E Shattow wrote:
>> Add bootph-pre-ram hinting to jh7110-common.dtsi:
>>    - i2c5_pins and i2c-pins subnode for connection to eeprom
>>    - eeprom node
>>    - qspi flash configuration subnode
>>    - memory node
>>    - uart0 for serial console
>>
>>    With this the U-Boot SPL secondary program loader may drop such
>>    overrides when using dt-rebasing with JH7110 OF_UPSTREAM board targets.
>>
>> Signed-off-by: E Shattow <e@freeshell.de>
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> index 30c5f3487c8b..c9e7ae59ee7c 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> @@ -28,6 +28,7 @@ chosen {
>>   	memory@40000000 {
>>   		device_type = "memory";
>>   		reg = <0x0 0x40000000 0x1 0x0>;
>> +		bootph-pre-ram;
>>   	};
>>   
>>   	gpio-restart {
>> @@ -247,6 +248,7 @@ emmc_vdd: aldo4 {
>>   	};
>>   
>>   	eeprom@50 {
>> +		bootph-pre-ram;
>>   		compatible = "atmel,24c04";
>>   		reg = <0x50>;
>>   		pagesize = <16>;
>> @@ -323,6 +325,7 @@ &qspi {
>>   	nor_flash: flash@0 {
>>   		compatible = "jedec,spi-nor";
>>   		reg = <0>;
>> +		bootph-pre-ram;
>>   		cdns,read-delay = <2>;
>>   		spi-max-frequency = <100000000>;
>>   		cdns,tshsl-ns = <1>;
>> @@ -405,6 +408,7 @@ GPOEN_SYS_I2C2_DATA,
>>   	};
>>   
>>   	i2c5_pins: i2c5-0 {
>> +		bootph-pre-ram;
>>   		i2c-pins {
>>   			pinmux = <GPIOMUX(19, GPOUT_LOW,
>>   					      GPOEN_SYS_I2C5_CLK,
>> @@ -413,6 +417,7 @@ GPI_SYS_I2C5_CLK)>,
>>   					      GPOEN_SYS_I2C5_DATA,
>>   					      GPI_SYS_I2C5_DATA)>;
>>   			bias-disable; /* external pull-up */
>> +			bootph-pre-ram;
>>   			input-enable;
>>   			input-schmitt-enable;
>>   		};
>> @@ -641,6 +646,7 @@ GPOEN_DISABLE,
>>   };
>>   
>>   &uart0 {
>> +	bootph-pre-ram;
>>   	clock-frequency = <24000000>;
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&uart0_pins>;
> 
> What about &mmc0, &mmc1, &qspi, &sysgpio, &mmc0_pins, &mmc1_pins, &i2c5?
> Why not add "bootph-pre-ram;" for them?

Would they be needed before relocation of U-Boot to DRAM?

Best regards

Heinrich


