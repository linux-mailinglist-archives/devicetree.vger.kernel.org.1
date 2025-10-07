Return-Path: <devicetree+bounces-224248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 786B5BC209B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A3CD3A227F
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65AB2E7657;
	Tue,  7 Oct 2025 16:06:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135701D554
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759853177; cv=none; b=UbE7iRn1y3TTL7GWh//HjkePo9r5n4kMDufOuPzxtXzUqN2eaC+VmySq3QLJXEJ+udLkGDvm6/IVcEuP5z/yiR1+Uma3gJ5kvyrq1bh6ZqhDeOQlvQQqzYHgmIIF7WqKhKmfUr2rpJKhcuG0zohY0MbCzBVKaLVk703jlFikuXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759853177; c=relaxed/simple;
	bh=otQ9LaPdQII8W4PlBIih7CU6YprQ9U/+24yHE6ZkALs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Awc/aZrNNDPgPevY42lM0dyHMIrozUXdbbJGoR6IKVQn1B3B+tjLEuxLJIvVvh67NnT+KVW8jjwm97LX1GYQVllrTvi4OIwHPIL4bOmeOM/HwtIQf0/TJr/eEuZ340biqEQo0DPgSFKFAX7ySMgNLWHoUKmpqHCG6qEIHbbqppc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v6ACJ-00072o-Qx; Tue, 07 Oct 2025 18:05:55 +0200
Message-ID: <947409d8-9a92-46f2-a6e7-49f3aa44d74f@pengutronix.de>
Date: Tue, 7 Oct 2025 18:05:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/16] media: rockchip: rga: add rga3 support
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
 <20251007-spu-rga3-v1-16-36ad85570402@pengutronix.de>
 <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <bf989d9f-9e8e-4acc-b502-1674ce215318@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Krzysztof,

On 10/7/25 10:39 AM, Krzysztof Kozlowski wrote:
> On 07/10/2025 17:32, Sven Püschel wrote:
>> Add support for the RGA3 unit contained in the RK3588.
>>
>> Only a basic feature set consisting of scaling and color conversion is
>> implemented. Advanced features like rotation and cropping will just be
>> ignored. Also the BT601F color space conversion is currently hard coded.
>>
>> The register address defines were copied from the
>> vendor Rockchip kernel sources and slightly adjusted to not start at 0
>> again for the cmd registers.
>>
>> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
>> ---
>>   drivers/media/platform/rockchip/rga/Makefile  |   2 +-
>>   drivers/media/platform/rockchip/rga/rga.c     |   4 +
>>   drivers/media/platform/rockchip/rga/rga.h     |   2 +-
>>   drivers/media/platform/rockchip/rga/rga3-hw.c | 490 ++++++++++++++++++++++++++
>>   drivers/media/platform/rockchip/rga/rga3-hw.h | 186 ++++++++++
>>   5 files changed, 682 insertions(+), 2 deletions(-)
> Your order of patches is a mess. DTS cannot be in the middle. In fact,
> DTS should not be even in this patchset, because you are targeting media.

sorry to bother you, but could you go into a bit more detail on how it 
should be done correctly?

I guess that your message refers to "7. [...] If a driver subsystem 
maintainer prefers to apply entire set, instead of their relevant 
portion of patchset, please split the DTS patches into separate patchset 
with a reference in changelog or cover letter to the bindings submission 
on the mailing list." [1]. If this is the case, is there a general rule 
to determine if a separate patchset is necessary? (I've also noticed, 
that I've wrongly assumed to keep the Documentation and dtsi commit 
together and should've moved the dtsi commit to the end of the patchset)

And do I understand it correctly, that the Documentation/ change is at 
the correct position (only the dtsi commits being problematic)? Based on 
my understanding of "5. The Documentation/ portion of the patch should 
come in the series before the code implementing the binding" [1] this 
should be right before the actual implementation (after all cleanup and 
preparation commits).


Sincerely
     Sven


[1] 
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html

>
> Best regards,
> Krzysztof
>

