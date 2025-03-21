Return-Path: <devicetree+bounces-159813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0489A6C3D2
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 21:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24F4C3A4A17
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 20:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 115EF1EE033;
	Fri, 21 Mar 2025 20:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="UAPj7u9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611C022FAC3
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 20:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742587349; cv=none; b=Ll5LDuWPNnW57BJKaPQk0rVekVyN7vW1DgNdCvEdDJGg/XZGAMoCn8rl79XGy4RT02gGUdiwqhRPmpLG6Iq1TtKAOYYb7zczFLFx8Thr0lABux0vF4GjbK90V3I4vgGXO0zduX0ZxEqdjYPKhwHeRg+VMPURarRVwX6ubsLSTfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742587349; c=relaxed/simple;
	bh=xC5LZYUCbr73IMc8LcHgCXF4sZ1DcNwEfB4KFqgjCJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RsxCOx4HM3RMM9SuduCael7AIgaLglzNHdMegUIoqBqRiOcbPJh51f70P+q7B48h7RJGspPC8yeluXFho86/RkTCZqpJ9xxTOn+16m9ugw9PqBMBmIIgRyFeZFxRo2M/5bnAE3ozCbxdopHtAcbbUo+1EY1Ho6SLdPp2qR52v1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=UAPj7u9D; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 635FF101E8FE9;
	Fri, 21 Mar 2025 21:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1742587339; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=drWgqDtEwtRQ/AqNec+865/QoSBEzToGMlvzXdRpbRc=;
	b=UAPj7u9D99BzWdmrqugwwfMF1kOr649TjzIBIrq4luHu3EKIxBSYIlVak1XBT5eZi8IlIx
	WH8Lb6E04i0EDXTUyFMYBabrxds3rJoJtAgSWLBRbbFg1/qhgZztdq2LGVCXJBvbyq+wc3
	KCVQSBu2VkznmY8lFrQcOqkpiG86I7rhBwo/QO2z86gNO5Q+jqWpP+GH2Zkr1wAGUnmEu3
	S9rvJQSGNl/aRqgtlG67xsnIuhxEIt5cFLHpccdkvSHaWRMeymOyJtuNiE0rhWoJytV8Jo
	4GAR5ZO7/E7pOVsavK64sbJ4OFsnVYm/NtqDV/yWRBm3yMYvCUFpfBCvDKZ+QQ==
Message-ID: <12a0c285-8f1a-4014-9253-0129a3a6ba21@denx.de>
Date: Fri, 21 Mar 2025 21:00:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/panthor: Reset GPU after L2 cache power off
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-7-marex@denx.de>
 <Z8GY0nWXOxCKF-XL@e110455-lin.cambridge.arm.com>
 <fa88c1c1-89ba-4a10-bd57-0819d7740c0a@denx.de>
 <Z8Wb05rmGW0ORnJB@e110455-lin.cambridge.arm.com>
 <20250303133523.2c5153ed@collabora.com>
 <20250303134250.5ba726fc@collabora.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20250303134250.5ba726fc@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

On 3/3/25 1:42 PM, Boris Brezillon wrote:

Hi,

>>> This looks like it has been part of a R50 release of the DDK, which is recent
>>> enough to consider it up-to-date. The issues you're seeing with fast resume are
>>> probably due to some integration issues or other quirks.
>>>
>>> Boris has the most recent experience with playing with fast resume, maybe
>>> he can share some tips on where to add messages in Panthor to try to debug
>>> your problem.
>>
>> If you end up with fast_reset=true, that means the FW claims it entered
>> a suspend state from which is can resume quickly (fast-reset), and in
>> that case, we're only supposed to power on the L2 block at resume time
>> AFAIK.
> 
> Can you try deasserting the reset lines at probe time and keeping them
> deasserted until the device is removed instead of re-asserting at
> suspend time? If that doesn't work, try doing the same with power
> domains.
I'm afraid either of this makes no difference, no.

I'll at least send a V2 now, so others can use the latest state of my work.

