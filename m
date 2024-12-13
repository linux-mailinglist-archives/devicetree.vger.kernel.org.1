Return-Path: <devicetree+bounces-130706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB109F0AE5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 539FF282D7D
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 641E81DED52;
	Fri, 13 Dec 2024 11:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="LtK8AXJc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506871DE3C8
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089150; cv=none; b=Z474JMrkhdGTqtTA3pQg8VpwM+FJUwX5iXdpfszYj3qi8IlFOa2mHANDDfZGFW1T9oPWF6JyAzVQhohj+ro2/6uG3wDNYDw1+fDMmqN4frB8+1BlpI91HulHNOYiRVNbnO44BH0DKYJaDDyXsKjhR2e/NiHWvs1SSCk13DJhLbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089150; c=relaxed/simple;
	bh=My7QKmOFrjXmczkd8D12duhW9HKsMEngKlYaNJTostE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tkEMjTzO7tdDqKua0k6dcaPs+IlXTv1rTDMKDZh1rIUiy7+hJpIexDGS7mCSd7ntSbAE+2dPLeJpXMr5/7nReZjuaWn/dvsVMWKQQ6KBYl7eERoa2VYq33vDMWCnLy5/6TB6MojJf6EjKjb4gdz3w/QgOomYr1zCWWqv1iy5ow8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=LtK8AXJc; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from [192.168.5.25] (unknown [120.85.107.173])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id D700F40277;
	Fri, 13 Dec 2024 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1734089140;
	bh=1uPtqPumo6KwvxbkLBKcwxn97AompsYgpYkahNyogJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=LtK8AXJcccUMfBI+gK/4BHLMv6/0/0hGDwldzQtw0t53/pHL3IP1T6Nv7N3W+fgz7
	 /VqN4el8Q+YhMNzK2sGy9UudEKvGdZWUJES8Xoxo562zzX36zWqSqMNcLQpzjTdZp8
	 p/+pfgWNrXEzGe+RYvr7j+edtc1BtqsfWTpDcTRYd6Z8/Ryg7tAVLCO7J1SmJ9Vnwc
	 Z/djQK1RQGNzWbknJgdE1b3YztEktIchT04uYvWECtqOm7bwvlCRcDzCwf5P2rhn4X
	 mM4vVkF0SPpu3bbkuLL5RY/ozlW7U8n8eTjycwW5txCIRc00fSVhPTSkuz4fG1RzB9
	 BsnHDDDj0KySg==
Message-ID: <cb6c7f8d-6244-4370-944f-a1a2beac3a79@canonical.com>
Date: Fri, 13 Dec 2024 19:25:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: nxp: imx6qdl: add dr_mode to usbotg
To: Xu Yang <xu.yang_2@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com
References: <20241212043126.73045-1-hui.wang@canonical.com>
 <20241213081729.ohgs7tyyzywd4uyc@hippo>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <20241213081729.ohgs7tyyzywd4uyc@hippo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 12/13/24 16:17, Xu Yang wrote:
> Hi,
>
> On Thu, Dec 12, 2024 at 12:31:26PM +0800, Hui Wang wrote:
>> For the chipidea usb driver, if the dr_mode is not set, it will set
>> the device to otg mode by default, so here the dr_mode has not been
>> set for a long time. But some testcases need to parse the dr_mode from
>> DT and decide the follow-up test strategy, here set the dr_mode to otg
>> explicitly for QA's testcases.
> The dr_mode is board specific property, so we normally don't put it in
> dtsi file. Also, imx6qdl.dtsi is a common dtsi, therefore it's not a
> correct place. I wonder you don't set dr_mode in other dts file which
> include will imx6qdl.dtsi?

Yes, our QA reported this issue against the imx6q-sabresd board, I 
thought dr_mode could be overwritten if board dts set the dr_mode, so 
this change will not impact existing boards. But as you said "we 
normally don't put it in dtsi file", I will move it to imx6q-sabresd.dts.

Thanks,

Hui.

> Thanks,
> Xu Yang
>
>> Signed-off-by: Hui Wang <hui.wang@canonical.com>
>> ---
>>   arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>> index d2200c9db25a..285fb7314a88 100644
>> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>> @@ -982,6 +982,7 @@ usbotg: usb@2184000 {
>>   				clocks = <&clks IMX6QDL_CLK_USBOH3>;
>>   				fsl,usbphy = <&usbphy1>;
>>   				fsl,usbmisc = <&usbmisc 0>;
>> +				dr_mode = "otg";
>>   				ahb-burst-config = <0x0>;
>>   				tx-burst-size-dword = <0x10>;
>>   				rx-burst-size-dword = <0x10>;
>> -- 
>> 2.34.1
>>

