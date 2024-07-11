Return-Path: <devicetree+bounces-84904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2D692E331
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46CEA1F2379B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 09:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A961534EA;
	Thu, 11 Jul 2024 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="h7C7NGTU"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EA115279A;
	Thu, 11 Jul 2024 09:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720689297; cv=none; b=r66LIA2PswtDIPVPmChb4C/99hUq/WHdEiMsyKN2lfAl0lX6Mx4wBeVFwPOiJSyz1Wq34SesxvIyqEtqWt1d9k5EHS42GA5yYgjFSdxIltiUL7YPh9nVP8k8cbzlqZj+UVEJYzCrwed3PXea7BgzvY3zTHB7LVhVtgUFq0UN8Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720689297; c=relaxed/simple;
	bh=jRL12pSR7nFD1GOyXrNM8OZHY88t8+G32DLgDdf7alM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzHYY3Y2ab33Wmixh2geUfZJYhc2v0BxaYksH0lxW5DLYAzab2lxCBVURk8ZnbjHiy/NQA4GqZNAh5kM2LyDWgtHTV4yjGjAofRhOF8jhn2g4A5Wewf7XDg3w3RfX8QWDc16vqSWr1Mj9t364X5cmwEFplOqizTQqtv349GpalQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=h7C7NGTU; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720689294;
	bh=jRL12pSR7nFD1GOyXrNM8OZHY88t8+G32DLgDdf7alM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=h7C7NGTUZJJ4XSlQLWg9xIFx2MBR2kxeIb6LpmyMOwAmqqiLm8TYHzP2z9No4fvUz
	 lRl0dCNeiz4ol+Vj5WUpZXucwLyzL0jQi5HdKgEL4QejAfjVKliEh6o/QDvXySkk1f
	 UcyzqucgiWtI+OFKGxh18aXfq/sNMyfGW1iSX6dpBL5Fb57+739WYl1lnynEVPR/sZ
	 vrzDxVd/YSW3xx77oBcM9g2soXI4kPZGs5BluBZxnA1atajYLzTzdTkeJvjKKkTfyd
	 Y+2QNSTMkR+UvurfEKzL4A2bfGxQGOd15mbskKCOcVJu29j6qu6VTdELM9HciZScUr
	 wWyUbCVbH9k/w==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 661A337821DB;
	Thu, 11 Jul 2024 09:14:53 +0000 (UTC)
Message-ID: <11d6aa8e-841d-4c84-8a49-e8915fc80587@collabora.com>
Date: Thu, 11 Jul 2024 11:14:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Probe failure of usb controller @11290000 on MT8195 after
 next-20231221
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wenst@chromium.org>
References: <9fce9838-ef87-4d1b-b3df-63e1ddb0ec51@notapiano>
 <064935d8-fbda-4eda-b013-8c8fc63b561c@collabora.com>
 <375b2345-657a-4b8f-b5e3-dc16784ffde9@notapiano>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <375b2345-657a-4b8f-b5e3-dc16784ffde9@notapiano>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 10/07/24 21:15, Nícolas F. R. A. Prado ha scritto:
> On Fri, Jan 19, 2024 at 10:12:07AM +0100, AngeloGioacchino Del Regno wrote:
>> Il 18/01/24 19:36, Nícolas F. R. A. Prado ha scritto:
>>> Hi,
>>>
>>> KernelCI has identified a failure in the probe of one of the USB controllers on
>>> the MT8195-Tomato Chromebook [1]:
>>>
>>> [   16.336840] xhci-mtk 11290000.usb: uwk - reg:0x400, version:104
>>> [   16.337081] xhci-mtk 11290000.usb: xHCI Host Controller
>>> [   16.337093] xhci-mtk 11290000.usb: new USB bus registered, assigned bus number 5
>>> [   16.357114] xhci-mtk 11290000.usb: clocks are not stable (0x1003d0f)
>>> [   16.357119] xhci-mtk 11290000.usb: can't setup: -110
>>> [   16.357128] xhci-mtk 11290000.usb: USB bus 5 deregistered
>>> [   16.359484] xhci-mtk: probe of 11290000.usb failed with error -110
>>>
>>> A previous message [2] suggests that a force-mode phy property that has been
>>> merged might help with addressing the issue, however it's not clear to me how,
>>> given that the controller at 1129000 uses a USB2 phy and the phy driver patch
>>> only looks for the property on USB3 phys.
>>>
>>> Worth noting that the issue doesn't always happen. For instance the test did
>>> pass for next-20240110 and then failed again on today's next [3]. But it does
>>> seem that the issue was introduced, or at least became much more likely, between
>>> next-20231221 and next-20240103, given that it never happened out of 10 runs
>>> before, and after that has happened 5 out of 7 times.
>>>
>>> Note: On the Tomato Chromebook specifically this USB controller is not connected
>>> to anything.
>>>
>>> [1] https://linux.kernelci.org/test/case/id/659ce3506673076a8c52a428/
>>> [2] https://lore.kernel.org/all/239def9b-437b-9211-7844-af4332651df0@mediatek.com/
>>> [3] https://linux.kernelci.org/test/case/id/65a8c66ee89acb56ac52a405/
>>>
>>> Thanks,
>>> Nícolas
>>
>> Hey Nícolas,
>>
>> I wonder if this is happening because of async probe... I have seen those happening
>> once in a (long) while on MT8186 as well with the same kind of flakiness and I am
>> not even able to reproduce anymore.
>>
>> For MT8195 Tomato, I guess we can simply disable that controller without any side
>> effects but, at the same time, I'm not sure that this would be the right thing to
>> do in this case.
>>
>> Besides, the controller at 11290000 is the only one that doesn't live behind MTU3,
>> but I don't know if that can ring any bell....
> 
> An update on this issue: it looks like it only happens if "xhci-mtk
> 11290000.usb" probes before "mtk-pcie-gen3 112f8000.pcie". What they have in
> common is that both of those nodes use phys that share the same t-phy block:
> pcie uses the usb3 phy while xhci uses the usb2 phy. So it seems that some of
> the initialization done by the pcie controller might be implicitly needed by the
> usb controller.
> 
> This should help to narrow down the issue and find a proper fix for it.
> 

This gave me a couple ideas to try... and it looks like I have resolved this issue.

A commit will follow soon.

Thank you!
Angelo

