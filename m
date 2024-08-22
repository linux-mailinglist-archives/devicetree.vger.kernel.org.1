Return-Path: <devicetree+bounces-95810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D603995B47D
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 14:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91042285ADD
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 12:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEA491C9DD8;
	Thu, 22 Aug 2024 12:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b="kLm4xLi+"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038D91C93D4;
	Thu, 22 Aug 2024 12:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724328042; cv=pass; b=dqumT+ASXgKT/73yIhy+cLv/j8b2isO3o6gNuktm2DdkAkFZ2TPhIUz2rHpGV5zaGpmKWuuARDL8tTslyyXmSxkZkHFubSYB8EXeuIpjm2wGk95mR5J4tV7EuOH+o99VAdtLqwYylYOB1e/Wsm3ehphdqqbc64RN+CRFCtu+qI0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724328042; c=relaxed/simple;
	bh=MpIPxydMpUibOkHL/3TmV96QliUHMrs2kls043oQ2ys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kBUW6aGSkL/qQ5lSf3tcRLDYzkcfAM2/xukgmuB1JjISOBvqppIy5vrl5q4zkMg4q7S7HUFw7jKnGurEwd5bte/+2aBRSEfZYxESkHvqXmyReT7eyAmbNXBN28ZfLeDRqa7FqxmhdO27PRDT5GQj/8F2UEcQvuE1aIhvFzXdQno=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b=kLm4xLi+; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
Delivered-To: kernel@collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1724327993; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XmF4CXboFiO0+JxNj3/cf0PjAv48HwLyHaKFrCVFTibeaW6ClWVClgwFJNkyr1YVd8YPmyUoViDaa7zh6AWjZtR5ULvxvYxkyYAdTzRulKEkcppWq721rQLqfClGJKu1+jdWSR9avsY1oSnAtgaTaYe8qRF/oeKFEFs+CBS01Xk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724327993; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=F7zXwtoEV0ZT7LXN9/C4cFaG6cOzhkCyUyT3udVmG6k=; 
	b=Uq987caBLPycf+3ikEuo2XWI45j2KHLZxpL5iHsWzlsTvj9xzE3x4i2Cblkp9et4JbT0W+B3HtYZJ38u1QZu75YrEgt+x3EMBV4vnT+/6XYZXTl7fupVQbsAw+XTSrjhK+bc4qfxYDAXbmlVBoIZiTIhPkZ5qvyx0M0GfybU0Ew=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724327993;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=F7zXwtoEV0ZT7LXN9/C4cFaG6cOzhkCyUyT3udVmG6k=;
	b=kLm4xLi+CrDZ55gPpQ35KdlJ2sruQr5As9Lq9/k0KKBeZ2+s3XgjQUyD4AzgZBa+
	FlSpAO6esGIWCKKuGZRq0PMt7De22C1SvUN75e5nyQcurvZg3RX+18C6qDHpDRY0mT2
	cgqCQJt0l5d0j9amgxgPLv/CH2MDbzgcYX8Ytt/A=
Received: by mx.zohomail.com with SMTPS id 1724327990696635.433469686591;
	Thu, 22 Aug 2024 04:59:50 -0700 (PDT)
Message-ID: <7fc8cbc3-43d0-43d2-9272-350ac556e2b2@collabora.com>
Date: Thu, 22 Aug 2024 14:59:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <7E8109D4-A353-4FE3-9152-3C3C6CB7D634@sntech.de>
 <2085e998-a453-4893-9e80-3be68b0fb13d@collabora.com>
 <4167579.6PsWsQAL7t@diego> <20240822-pushchair-premises-f4055779216a@spud>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240822-pushchair-premises-f4055779216a@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

On 8/22/24 11:41 AM, Conor Dooley wrote:
> On Thu, Aug 22, 2024 at 09:01:34AM +0200, Heiko Stübner wrote:
>> @Conor: just for me, did some shift happen in our understanding of dt-
>> best-practices in terms of syscon via phandle vs. syscon via compatible?
>>
>> Because Rockchip boards are referencing their GRFs via phandes forever
>> but similar to the soc vs non-soc node thing, I'd like to stay on top of
>> best-practices ;-)
> 
> If IP blocks, and thus drivers, are going to be reused between devices,
> using the phandles makes sense given that it is unlikely that syscon
> nodes can make use of fallback compatibles due to bits within that "glue"
> changing between devices. It also makes sense when there are multiple
> instances of an IP on the device, which need to use different syscons.
> My goal is to ask people why they are using these type of syscons
> phandle properties, cos often they are not required at all - for example
> with clocks where you effectively need a whole new driver for every
> single soc and having a phandle property buys you nothing.

That would be also the case for this HDMI controller - need to check the
specs for the newer RK3576 SoC, but I expect the syscons would be quite
different when compared to RK3588, hence we should keep making use of
the phandles.

