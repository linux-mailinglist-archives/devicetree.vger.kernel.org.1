Return-Path: <devicetree+bounces-13376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA5C7DDD6E
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 08:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD0921F21CA4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 07:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0729663D4;
	Wed,  1 Nov 2023 07:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="LXdBHclx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C363BC
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 07:48:58 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-23.smtpout.orange.fr [80.12.242.23])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D357B122
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 00:48:53 -0700 (PDT)
Received: from [192.168.1.18] ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id y5y5qB80Rlciay5y5qrV60; Wed, 01 Nov 2023 08:48:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1698824932;
	bh=CHO9ALMzPTlbEkghyJZxxX8YXlVDHe23Eei/dtpPG50=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=LXdBHclxjNCD3uIXRewY+ORmSBe35cHR1JjuVFDRDU8kDrSTRifteRQoW4s64jwnT
	 hEAdOYyZJfqc81IOQQKhsFSf/5KRwlKHISzP2jr75ZnqPyHfLc7HIuT47TWZCXfZWt
	 2bujopMXPT/Mqp/QF2XTTdRwpZdXMOBLIKRvPgCYG0ry3/RS1+P5AHQWP7dR2HLig5
	 7+WZRU/T+y4jCl/k+TwXlJGKGEllyGJ2i0kEyU4l90WZDtEf38wfgMRFXfc7uEQQW1
	 WEpakuLrSVci2vxwk0TP7s17m1Ploxi0ciw54aIONfoON4Md3n7RGk9/Rug4xWMT+E
	 WA0TYoGxfamEw==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 01 Nov 2023 08:48:52 +0100
X-ME-IP: 86.243.2.178
Message-ID: <baceb44d-0d58-4410-b662-ad2830869db1@wanadoo.fr>
Date: Wed, 1 Nov 2023 08:48:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RE: [PATCH v6 1/2] usb: dwc3: add Realtek DHC RTD SoC dwc3 glue
 layer driver
Content-Language: fr, en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
Cc: "Thinh.Nguyen@synopsys.com" <Thinh.Nguyen@synopsys.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
References: <20230826031028.1892-1-stanley_chang@realtek.com>
 <202310301424.39UEOShlC2187546@rtits1.realtek.com.tw>
 <bc33c01db5b048899dce5467e7efec74@realtek.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <bc33c01db5b048899dce5467e7efec74@realtek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 01/11/2023 à 07:27, Stanley Chang[昌育德] a écrit :
> Hi CJ,
> 
> I think these functions are not needed in remove function.
> 
> In dwc3_rtk_probe_dwc3_core,
> I have used
> dwc3_node = of_get_compatible_child(node, "snps,dwc3");
> and
> dwc3_pdev = of_find_device_by_node(dwc3_node);
> 
> So, I call these put functions.
> platform_device_put(dwc3_pdev);
> of_node_put(dwc3_node);

Yes, but you call it only in the error handling path of the function.

I wonder if they should also be called in the remove function in order 
to decrement the ref-counted reference.


Same in __get_dwc3_maximum_speed(), the reference taken by:
    dwc3_np = of_get_compatible_child(np, "snps,dwc3");
is never released.


See the comment at [1] to see what I mean.


[1]: https://elixir.bootlin.com/linux/v6.6/source/drivers/of/base.c#L681

CJ
> 
> Thanks,
> Stanley
> 
>> Hi,
>>
>> Is something like
>>          platform_device_put(dwc3_pdev);
>>          of_node_put(dwc3_node);
>> needed in the remove function?
>>
>> (as done in the error handling path of dwc3_rtk_probe_dwc3_core())
>>
>> Or should it be added at the end of dwc3_rtk_probe_dwc3_core() if the
>> reference are nor needed anymore when we leave the function?
>>
>> CJ
>>
>>> +     of_platform_depopulate(rtk->dev); }
>>> +
>>
>> ...
> 


