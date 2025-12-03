Return-Path: <devicetree+bounces-244147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D68CA1AA7
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2E09301410F
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F6732D2490;
	Wed,  3 Dec 2025 21:21:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1A02C11C5
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796896; cv=none; b=ItPCRAY/h5lNa8BRYG03E63x4qCq9iAaLIydITb+XEC1Tnq0yzchzegqRnanvjkZGLOKA9H8EXDxdepXViJV6yLOIYLYRfImMoXwELTXwn4EGy5PfPWWX/PmdXNcM/zXMdNXU3y/icr8Nve9m+qVkwWqPo9F3NDdlxo4DMypLKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796896; c=relaxed/simple;
	bh=lCMzX+vCKFrM/8xi4mlSpRFVNyJfBt7ARlHnJJGsAIE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TWY7TQRcPszupFv5XeWH8EglanBc/BUc0S/Yi+NrJQ4LRtiGQY8nkcizORZwVJe8dneVtJFT1h31N0IRGqoAkVx7IdKKJy4WfiiF1M0+I529GL1YKTAwmVT3yFNYA6qlsAy2EjiiH1GEjVLW0wcuNWhxo6RMtetZDzgXsz90atQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQuHg-0000gJ-5X; Wed, 03 Dec 2025 22:21:12 +0100
Message-ID: <1db3a9ee-ae09-431f-93ac-680bac088f79@pengutronix.de>
Date: Wed, 3 Dec 2025 22:21:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/22] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
 <20251203-spu-rga3-v2-1-989a67947f71@pengutronix.de>
 <81593c42-fcc2-47ad-8d0f-69a2d17664a6@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <81593c42-fcc2-47ad-8d0f-69a2d17664a6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Krzysztof,

On 12/3/25 9:28 PM, Krzysztof Kozlowski wrote:
> On 03/12/2025 16:52, Sven Püschel wrote:
>> Add a new compatible for the RGA3 (Raster Graphic Acceleration 3)
>> peripheral found on the RK3588 SoC.
>>
>> The existing rga node refers to the RGA2 peripheral. The RK3588
> What is "existing rga node"? There is no node here. This is a patch for
> bindings, so you say which hardware existing binding describes and what
> are the differences against that older hardware.
Yeah that is misleading. I refer to the existing binding/compatible 
values of rockchip-rk3xxx-rga which describe the hardware named RGA2 in 
the rk3588 TRM.
>
>> contains one RGA2 core and two RGA3 cores. Both feature a similar
>> functionality of scaling, cropping and rotating of up to two input
>> images into one output image. Key differences of the RGA3 are:
>>
>> - supports 10bit YUV output formats
>> - supports 8x8 tiles and FBCD as inputs and outputs
>> - supports BT2020 color space conversion
>> - max output resolution of (8192-64)x(8192-64)
>> - MMU can map up to 32G DDR RAM
>> - fully planar formats (3 planes) are not supported
>> - max scale up/down factor of 8
> "differences" in meaning nothing above is supported by RGA2?

except the last two points yes. The RGA2 supports fully planar formats 
with 3 planes and can scale up to a factor of 16. For the scaling I can 
add a note to make it more obvious that the RGA3 is worse in this regard.

Sincerely
     Sven

>
>> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
>> ---
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
>
> Best regards,
> Krzysztof
>

