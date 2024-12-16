Return-Path: <devicetree+bounces-131210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CDD9F27B2
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 02:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F41F31886079
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 01:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8610F3232;
	Mon, 16 Dec 2024 01:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="XMkgrCv6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB783FF1
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 01:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734311250; cv=none; b=g1mRggB/gcF4mSnYARZQKrifu6U6B6L8L0bQc+oWAKfY9SjQt+66QuhxvCJS6E9wB0jVM/nGTWwYeZtiJWFnWBlOZIcA4slvgAPeaFTnxKHolDqik7Qr+dMM2aIdLhNWi4hIG5AY8IIHVXlUQ4sgGT15bJu5Raw8QsIV4FoFd2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734311250; c=relaxed/simple;
	bh=S6urMG1++74QI1M4J7LCMOMjPls6y31u+zFXapATu7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tdSC4n552kqRwbW5UWxWPIXr92NACORCYipmdmWtsLqBhqxX74A7D2AEFFGvTXtAMBnKjCSiOWVZty/hOODk96XCvyLYhqrJGuS3nMSODF13LffsO2/EaIEW5jkbstI2bhnHWRsAfiCrqqe+ERbpkPR1i+eoaHdLkBsAcnJFO/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=XMkgrCv6; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from [10.172.195.16] (1.general.hwang4.uk.vpn [10.172.195.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id F24D940945;
	Mon, 16 Dec 2024 01:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1734311238;
	bh=J0nbcHZ7qGTE/Ol5N+bv6FAgJzDSCh3XqyaTZQ0fqJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=XMkgrCv6WEYtlac49vB7lELtJ8sUMn3I9fcSB+lvd1A0Bnn0bPggmgvZD0EaITV0v
	 j1rZohFzToVdFuci5DPY6Xa9XFJevfcequzH2uE3E9tLqZQtqO7FXQ9Do7lDwt7ynN
	 jYc9Vh/c3R7xXH40z8akTxn8Ni5Pg2gIc5ex7MNjha4Bb3DLLo2U/XPlOs6UjCYQ0z
	 VFXfDPL+393UW7zfFOGHlG/DLA15M1Srcn7xurDH4ZhiCz+/LBVbtUNK8dlJmsWJTs
	 Cbxs39TVjN/eva8RLKWScZMNGe76ioWyPYgrUzyFmC5m01cFaiQPMRrN9gd5+R9i3u
	 GBROdfszg4Vgw==
Message-ID: <53d8c4e9-0047-40f5-9142-2b3e8e723100@canonical.com>
Date: Mon, 16 Dec 2024 09:07:00 +0800
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
 <cb6c7f8d-6244-4370-944f-a1a2beac3a79@canonical.com>
 <20241213125528.m2skucuhqtrc5f4s@hippo>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <20241213125528.m2skucuhqtrc5f4s@hippo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 12/13/24 20:55, Xu Yang wrote:
> On Fri, Dec 13, 2024 at 07:25:32PM +0800, Hui Wang wrote:
>> On 12/13/24 16:17, Xu Yang wrote:
>>> Hi,
>>>
>>> On Thu, Dec 12, 2024 at 12:31:26PM +0800, Hui Wang wrote:
>>>> For the chipidea usb driver, if the dr_mode is not set, it will set
>>>> the device to otg mode by default, so here the dr_mode has not been
>>>> set for a long time. But some testcases need to parse the dr_mode from
>>>> DT and decide the follow-up test strategy, here set the dr_mode to otg
>>>> explicitly for QA's testcases.
>>> The dr_mode is board specific property, so we normally don't put it in
>>> dtsi file. Also, imx6qdl.dtsi is a common dtsi, therefore it's not a
>>> correct place. I wonder you don't set dr_mode in other dts file which
>>> include will imx6qdl.dtsi?
>> Yes, our QA reported this issue against the imx6q-sabresd board, I thought
>> dr_mode could be overwritten if board dts set the dr_mode, so this change
>> will not impact existing boards. But as you said "we normally don't put it
>> in dtsi file", I will move it to imx6q-sabresd.dts.
> Okay. You can move it to imx6qdl-sabresd.dtsi too. Then you can reuse
> &usbotg {}.

Yes, for sure.

Thanks,

Hui.

> Thanks,
> Xu Yang
>
>> Thanks,
>>
>> Hui.
>>
>>> Thanks,
>>> Xu Yang
>>>
>>>> Signed-off-by: Hui Wang <hui.wang@canonical.com>
>>>> ---
>>>>    arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>>>> index d2200c9db25a..285fb7314a88 100644
>>>> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>>>> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
>>>> @@ -982,6 +982,7 @@ usbotg: usb@2184000 {
>>>>    				clocks = <&clks IMX6QDL_CLK_USBOH3>;
>>>>    				fsl,usbphy = <&usbphy1>;
>>>>    				fsl,usbmisc = <&usbmisc 0>;
>>>> +				dr_mode = "otg";
>>>>    				ahb-burst-config = <0x0>;
>>>>    				tx-burst-size-dword = <0x10>;
>>>>    				rx-burst-size-dword = <0x10>;
>>>> -- 
>>>> 2.34.1
>>>>

