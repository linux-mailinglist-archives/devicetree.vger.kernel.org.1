Return-Path: <devicetree+bounces-105384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F6898691E
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 00:20:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80953282432
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 22:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC2D148FE8;
	Wed, 25 Sep 2024 22:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="aqHix8AA"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1291A148838
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 22:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727302816; cv=none; b=FyEYTnB0v2xGxv9cD42k910PzAnfdqRVO4uiC/HIDm1hEabpHrhWqpY7kGr+E1SWeKgzDCnTqqbzPEPEQz4b+17QNpUWk+uITpRLjY2Oxw7adCaTCPOR8qUH3mJxbfn1xczyJU0SiwDLl+kB81S+gdPVI+WyUixk22NbTuSySRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727302816; c=relaxed/simple;
	bh=xpJItLWdhVBCE/D81RajHvMZJ1ac8DMzzia3bzw8KGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n1Ai1TpMyv3K1pd9jFJS9egIgW+TfOi1/iQldoewC77+pCSBhc9qDC+r5ns1F5q7m3gWWiqIDnCc/BFluiSFiVRDNahddBd0hU9gVEtIHo7Bqlp1q9AEAp/jEa+TXJvQYiHjqL/2GzF2qXyqnyKlSZ74gRjUbhWZIjKf/6uskp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=aqHix8AA; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id BD06C88B11;
	Thu, 26 Sep 2024 00:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1727302812;
	bh=do3Sl4RtSTlU/saLa7lvwjMUFA9Jfy3e1vkyEM6S3Q8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aqHix8AAszf/P0G1MSdqx9d2bNOMt34T9H8tnHl5WKnFSGKYxG4zYJNXzZwdZT9sh
	 YO+9De/SvzzGPwtFZ4hh3HK/du9VJKbOs7Fw8kum1TNsVbPfx5MqBri6nks7tRcdP3
	 7GI4440na5Z5GPxHPYom+NCKUgf3cBLLgbTbPx/3YqsoaCWI8TTYbj5++ZPwW6L8//
	 lXPjRm15pkBaj086Lmta3ChHezksTgD1/Meml29499ahP5uS4Q8pEeexRETjYquvo+
	 6+cU7cl4FUM58WPGQdkVfgts7+cZQ7/q0xTWcn9u7Cidm0MwwBc+JwB5TnhwL2gIPe
	 56PUb/XSMprKg==
Message-ID: <0d14b8e5-78e0-4b91-abf7-ec386dd363d4@denx.de>
Date: Thu, 26 Sep 2024 00:08:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add DH i.MX8MP DHCOM SoM on DRC02
 carrier board
To: Frank Li <Frank.li@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, kernel@dh-electronics.com,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Gregor Herburger <gregor.herburger@ew.tq-group.com>,
 Hiago De Franco <hiago.franco@toradex.com>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 Joao Paulo Goncalves <joao.goncalves@toradex.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mathieu Othacehe <m.othacehe@gmail.com>,
 Max Merchel <Max.Merchel@ew.tq-group.com>, Michael Walle
 <mwalle@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 imx@lists.linux.dev
References: <20240925001628.669604-1-marex@denx.de>
 <20240925001628.669604-2-marex@denx.de>
 <ZvQ6qWMAEZaR/5pl@lizhi-Precision-Tower-5810>
 <08b805f8-a4c5-4aa1-95b2-66292a681aa9@denx.de>
 <ZvSAXAXeSUdPu2h8@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <ZvSAXAXeSUdPu2h8@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 9/25/24 11:27 PM, Frank Li wrote:

Hi,

>>>> +/* USB_OTG port is not routed out on DRC02. */
>>>> +&usb3_0 {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +&usb_dwc3_0 {
>>>> +	status = "disabled";
>>>> +};
>>>> +
>>>> +/* USB_HOST port has USB Hub connected to it, PWR/OC pins are unused */
>>>> +&usb3_1 {
>>>> +	fsl,disable-port-power-control;
>>>> +	fsl,permanently-attached;
>>>> +};
>>>
>>> Suggest run https://github.com/lznuaa/dt-format to sort node
>>>
>>> &usb_dwc3_0
>>> &usb_dwc3_1
>>> &usb3_0
>>> &usb3_1
>>
>> I'm afraid the tool (I did not try it, I used plain GNU sort) is not sorting
>> this correctly, look at ASCII table, 0x33 is '3' and 0x5f is '_':
>>
>> $ printf 3_ | hexdump -vC
>> 00000000  33 5f
> 
> Sorry, I have not run it for this dts. I make misstake - and _ at ascii
> table.

No worries

>> So if the sorting was correct, it would be:
>>
>> usb3_0
>> usb3_1
>> usb_dwc3_0
>> usb_dwc3_1
>>
>> But I would prefer to keep the controllers close to each other, i.e. the
>> current order which seems more logical in this case:
>>
>> usb3_0
>> usb_dwc3_0
>> usb3_1
>> usb_dwc3_1
> 
> next time, we should use better label name in chip.dtsi file. I try to
> reduce trivial node name order issue in patch review. And make contributor
> to be easy to follow.
I suspect the dwc3_0 and co. is somewhat inherited from other DTs which 
used the controller before.

