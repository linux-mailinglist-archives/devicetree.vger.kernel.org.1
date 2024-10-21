Return-Path: <devicetree+bounces-113720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 243459A6AD9
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4481C1C22604
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268A21F9EA3;
	Mon, 21 Oct 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WwlovjZ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F243F1F9A91
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729518263; cv=none; b=rY32b7ToB1lByImj2LPsEMxXoS7bzPL0ES5v6ajiXoNuub3f2Ss6Gd5D0zshCVVhe8D6+J6AVMWGsCCy9wrle3zbKe5B99n3+ouKMwHxdKlV8JVzYsjYUPHLcFggnepK5+WLQvooZCuI+T8FI8PWGiDUvBpci40p3hwfe7V7gGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729518263; c=relaxed/simple;
	bh=BAFBA3PSylWKEW63BdR/LWiXoxleLdw7dvkAgNGemzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TgBXaHovH8zMQHkV9y3/VIqnE8J4Pl81bmepXGYZKcUm44r8HLlsFTxxLnrYjFV944gT9sGAk65BJLU6/+et/KESc/1KDHli/Qymqc2bbeH+6ImhUHBGqee9tVZwFo7tkXjKoKOydgps/1+lRqXGCGjyq9jCWNFGPMgiYa4cMhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WwlovjZ6; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20cb7139d9dso40099625ad.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 06:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729518260; x=1730123060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rEnajADAbGhm3M1pNyKurdElPnt+aWsHL33PQ0Q7Gvs=;
        b=WwlovjZ6pDY2FQvWAJuusjt6o9AjBfDJPIS7b3ik8JP3zfeGy8Fu5m6oQY2qAatr/K
         Je+uQXkSs/s/gQqSZmYJluYzoOlGu24pBZbaWIp7LFqzB8MxLvEeir/ZfSapN9ZCVTuW
         G7CTjlRYkWOYfmf/4hOWaKp2zFjYfp+s8R/lfhVsOlsdjlwpgzisLdmZ84TfBg3vhXUv
         IvgZhOVMdPh8FHfXWbpvigZcsxEiEwWkJib9uWrRjKV0toFMfUU8BU481+amUuO+huze
         QTmGQhsER2tLjx4F5ug11hB7Cqx2qvMlEoJ8TYDIrWgc/bVGIl5DB2PKXWGf5UFLROfm
         JcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729518260; x=1730123060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rEnajADAbGhm3M1pNyKurdElPnt+aWsHL33PQ0Q7Gvs=;
        b=BokegXc6naNEJSIm6mEw9RMs5xOLfQ3D7W2Xssfgc6C7OYoK14KMys2dz1rn+0Q4Uj
         NA48QtD/Uc9EEgGTzOc5men0RvV+OM0HX4JZLkSjJPqd2usvfpgp/1BXw7S1Dv7SERvX
         kqLCpx228tY92YgiGRu7QnBc+kF/8iFYZEk4qK2drW27rk00ypbIYovrNrIek4HSflx1
         3BTQViUwSLmAohFKRt9xyHj9IC/nTeJ1JXO4lI3Y9J2lBSw+6Bx0WfCdU+xvQ7PyzzTs
         NLnhiZve1GLzB3i+UKovBGYpEzzLl7e0jPddb/lb0nl3tNH5LXNQdHeNTE72GLJsqJZ6
         FUxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUigNic1edjDlJb7oLYyWaiF1y0Vxs//9RC4yCYu5Wwit38lNCqPkmNssFDk385Wf2ZR/DKSjgbBKTL@vger.kernel.org
X-Gm-Message-State: AOJu0YzxAO9/owlU0dIaxBjv9y77pTgUA8yInjVpdk/qzjzt30HjZMRH
	2Fy/EO/hfsEZqBy7a6jN2zkuCHu6GCRgG+M8XN10fM+YZ4uCmXGP8bVuRXN/dH8=
X-Google-Smtp-Source: AGHT+IHN/ehUoWz4nWNTcpRpWVKsXcIc7vWF74OZtujCoQlKZC39nGhEfqrrlaKVy+NS5GzpK/RF+Q==
X-Received: by 2002:a17:903:1d1:b0:20c:e262:2580 with SMTP id d9443c01a7336-20e5a8fb25amr172757925ad.44.1729518260070;
        Mon, 21 Oct 2024 06:44:20 -0700 (PDT)
Received: from [10.211.55.3] ([4.28.11.157])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7ef1a953sm26029185ad.112.2024.10.21.06.44.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 06:44:19 -0700 (PDT)
Message-ID: <2b449955-6596-4c9a-9799-f15d186e260f@riscstar.com>
Date: Mon, 21 Oct 2024 08:44:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] riscv: dts: starfive: add DeepComputing FML13V01
 board device tree
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
Cc: Guodong Xu <guodong@riscstar.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, Alexandru Stan <ams@frame.work>,
 Daniel Schaefer <dhs@frame.work>, Sandie Cao <sandie.cao@deepcomputing.io>,
 Yuning Liang <yuning.liang@deepcomputing.io>,
 Huiming Qiu <huiming.qiu@deepcomputing.io>, linux@frame.work,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241020134959.519462-1-guodong@riscstar.com>
 <20241020134959.519462-4-guodong@riscstar.com>
 <ae5gels34ozgzrcrwz53wj22hoy5cq3crn3dmkhitxlffmnavt@6lbmrcpjmqyd>
 <20241021-unroll-empower-3ab903615d6d@spud>
 <c048d270-7a07-4807-b816-0f4e0aeb67f7@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <c048d270-7a07-4807-b816-0f4e0aeb67f7@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/24 7:47 AM, Krzysztof Kozlowski wrote:
> On 21/10/2024 13:16, Conor Dooley wrote:
>> On Mon, Oct 21, 2024 at 09:17:59AM +0200, Krzysztof Kozlowski wrote:
>>> On Sun, Oct 20, 2024 at 09:49:59PM +0800, Guodong Xu wrote:
>>>> From: Sandie Cao <sandie.cao@deepcomputing.io>
>>>> +&camss {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&csi2rx {
>>>> +	status = "disabled";
>>>> +};
>>
>> You can drop these two, I marked them disabled in the common file
>> earlier this week.
>> 1
>>>> +
>>>> +&gmac0 {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&i2c0 {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&pwm {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&pwmdac {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&spi0 {
>>>> +	status = "disabled";
>>>
>>> If your board has to disable all these, then they should not have been
>>> enabled in DTSI in the first place. Only blocks present and working in
>>> the SoC (without amny external needs) should be enabled.
>>>
>>> I suggest to fix that aspect first.
>>
>> Eh, I don't think I agree. Having 5 disables here is a lesser evil than
>> reproducing 90% of jh7110-common.dtsi or shunting a bunch of stuff
>> around. Emil?
> 
> Why reproducing 90%? Only enable would be here, no? Or you want to say
> the common DTSI has things which do not exist?

For what it's worth, I agree with Krzysztof.  In the (long) cover
page we pointed this out, and offered to do it in a followup patch.
But if requested we can do it now.

So in v6, a new patch would be inserted before the other three,
and it would:
- Remove the status = "okay" lines for those nodes that are not enabled
   in this new platform, in "jh7110-common.dtsi"
- Add nodes where appropriate in:
     jh7110-milkv-mars.dts
     jh7110-pine64-star64.dts
     jh7110-starfive-visionfive-2.dtsi
   They'll look like this, to enable the ones disabled above, e.g.:
     &gmac0 {
         status = "okay";
     };

     &i2c0 {
         status = "okay";
     };

You guys should come to agreement, but I do think what Krzysztof says
is the right approach.  And unless convinced otherwise, this will be
what shows up in the next version of this series.

					-Alex

> Best regards,
> Krzysztof
> 


