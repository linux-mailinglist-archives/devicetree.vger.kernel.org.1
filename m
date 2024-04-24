Return-Path: <devicetree+bounces-62452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F008B12E8
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31F681F21887
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 18:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240CB199B0;
	Wed, 24 Apr 2024 18:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="psyrmjYu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00A017547;
	Wed, 24 Apr 2024 18:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713984822; cv=none; b=KZQjRDLTaE0O+bVDCIPJMUD3vzY6U3ZxKQnJo31sNnf/lVp4cqxLxNhdv166Jd6+EBWWFgQI+tD2D/IAzvs+opFObpPYPzGj8Z5Edf3H2KlCfb8Mobzh0j90hzlbxuo+RDuVQyBCmepmsXWlIyjBkFjT6UFSrWl+nlFi7uRw9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713984822; c=relaxed/simple;
	bh=JReJtYzITQP6/VHBJJbrJcVU8JRMApJY+9XkPt1Iuys=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=JVz1J5wwYJLpuHltcw2yIkmm1ErRxTZx7gUr35hvNSnf20mqiF8502MRr1r00m2Ly3FKR2C64t/N3aM+1TAk7NHtkh2fQolYhEpOa6AgukZm1RLEF4x32znH+7ftn1ah/UYkQkwn1VpywJUnyT2ddWy2e3pzTh/Fzv2cDOhbNOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=psyrmjYu; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713984816;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wmh2zsD5aonHgzjvtDSksCkYXZ2zaCKpg80CDN+KkvM=;
	b=psyrmjYuA48TPP0SxIo6oCGiiv9HjFHxQ92ys8CxP808wVs+ZDbAB3j02YIvlZQtVe3ZBA
	KMZvv6a+t9f+FCrfyvHlr0zZ3d2fC9a9FzIVBD59fK9lsPvaTJiwJZRrx80MKA18qiPFvm
	4NmT4pL+ONkRLOzBCTC6RrR8XnXI0/eppZkYBgp09Jx0U8CA3W0q1CnOqJw5PXCGTmunJn
	W4PYNQmt+pEc5J0zZzXef6wGwyLRFgYFdrCBirQHYEEvDLO7B4k9yICyPqfRdHOOiEX9yB
	l76bOi9FmGqojFdR/rvA6s+S8Ir8tYaxmaQeZqFuREU9ZsCSUvre0/f4EkF0ag==
Date: Wed, 24 Apr 2024 20:53:36 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: linux-sunxi@lists.linux.dev, wens@csie.org, samuel@sholland.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, didi.debian@cknow.org, Marek Kraus
 <gamiee@pine64.org>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: Correct the model names for
 Pine64 boards
In-Reply-To: <4912377.31r3eYUQgx@jernej-laptop>
References: <d2943d9f4c99a239f86188eaf45a73972685c255.1713833436.git.dsimic@manjaro.org>
 <f4a7e60040aa7cc1ad346bd1cc35b64256413858.1713833436.git.dsimic@manjaro.org>
 <4912377.31r3eYUQgx@jernej-laptop>
Message-ID: <7f6cc2b938f6f79b1a0fc63539273641@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-04-24 20:51, Jernej Škrabec wrote:
> Dne torek, 23. april 2024 ob 03:00:20 GMT +2 je Dragan Simic 
> napisal(a):
>> Correct the model names of a few Pine64 boards and devices, according
>> to their official names used on the Pine64 wiki.  This ensures 
>> consistency
>> between the officially used names and the names in the source code.
>> 
>> Cc: Marek Kraus <gamiee@pine64.org>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> 
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Thanks!

>> ---
>> 
>> Notes:
>>     This completes the correction of the model names of the Pine64 
>> boards
>>     and devices, which was started with the Pine64 boards and devices 
>> based
>>     on Rockchip SoCs. [1]
>> 
>>     These improvements may cause certain issues if some scripts misuse
>>     /proc/device-tree/model to detect the board they're executed on.  
>> Though,
>>     the right way to detect a board is to use 
>> /proc/device-tree/compatible
>>     instead, because its contents is part of the ABI.  Such scripts, 
>> if they
>>     actually exist in the field, should be improved to use the right 
>> way to
>>     detect the board model.
>> 
>>     [1] 
>> https://lore.kernel.org/linux-rockchip/06ce014a1dedff11a785fe523056b3b8ffdf21ee.1713832790.git.dsimic@manjaro.org/
>> 
>>  arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts         | 2 
>> +-
>>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts           | 2 
>> +-
>>  .../boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts     | 2 
>> +-
>>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts            | 2 
>> +-
>>  arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts   | 2 
>> +-
>>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts    | 2 
>> +-
>>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts            | 2 
>> +-
>>  7 files changed, 7 insertions(+), 7 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
>> index 596a25907432..4aab1f98fac7 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
>> @@ -5,7 +5,7 @@
>>  #include "sun50i-a64-sopine-baseboard.dts"
>> 
>>  / {
>> -	model = "Pine64 LTS";
>> +	model = "Pine64 A64 LTS";
>>  	compatible = "pine64,pine64-lts", "allwinner,sun50i-r18",
>>  		     "allwinner,sun50i-a64";
>> 
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> index 50ed2e9f10ed..a3c1752fc5d8 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> @@ -13,7 +13,7 @@
>>  #include <dt-bindings/pwm/pwm.h>
>> 
>>  / {
>> -	model = "Pinebook";
>> +	model = "Pine64 Pinebook";
>>  	compatible = "pine64,pinebook", "allwinner,sun50i-a64";
>>  	chassis-type = "laptop";
>> 
>> diff --git 
>> a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
>> index 6265360ce623..86cc85eb3d48 100644
>> --- 
>> a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
>> +++ 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab-early-adopter.dts
>> @@ -9,7 +9,7 @@
>>  #include "sun50i-a64-pinetab.dts"
>> 
>>  / {
>> -	model = "PineTab, Early Adopter's version";
>> +	model = "Pine64 PineTab Early Adopter";
>>  	compatible = "pine64,pinetab-early-adopter", "allwinner,sun50i-a64";
>>  };
>> 
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
>> index 0a5607f73049..ebeb04156eb6 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
>> @@ -14,7 +14,7 @@
>>  #include <dt-bindings/pwm/pwm.h>
>> 
>>  / {
>> -	model = "PineTab, Development Sample";
>> +	model = "Pine64 PineTab Developer Sample";
>>  	compatible = "pine64,pinetab", "allwinner,sun50i-a64";
>>  	chassis-type = "tablet";
>> 
>> diff --git 
>> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
>> index 5e66ce1a334f..411d97610be9 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
>> @@ -8,7 +8,7 @@
>>  #include "sun50i-a64-sopine.dtsi"
>> 
>>  / {
>> -	model = "SoPine with baseboard";
>> +	model = "Pine64 SOPine on Baseboard carrier board";
>>  	compatible = "pine64,sopine-baseboard", "pine64,sopine",
>>  		     "allwinner,sun50i-a64";
>> 
>> diff --git 
>> a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
>> index b710f1a0f53a..52d81ff0d77d 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
>> @@ -6,7 +6,7 @@
>>  #include "sun50i-h6-pine-h64.dts"
>> 
>>  / {
>> -	model = "Pine H64 model B";
>> +	model = "Pine64 H64 Model B";
>>  	compatible = "pine64,pine-h64-model-b", "allwinner,sun50i-h6";
>> 
>>  	/delete-node/ reg_gmac_3v3;
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts 
>> b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
>> index 1ffd68f43f87..f8b524d02429 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
>> @@ -9,7 +9,7 @@
>>  #include <dt-bindings/gpio/gpio.h>
>> 
>>  / {
>> -	model = "Pine H64 model A";
>> +	model = "Pine64 H64 Model A";
>>  	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
>> 
>>  	aliases {
>> 

