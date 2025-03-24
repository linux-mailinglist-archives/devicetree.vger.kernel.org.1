Return-Path: <devicetree+bounces-160297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE36A6E316
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 20:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86799171A12
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880BA266F09;
	Mon, 24 Mar 2025 19:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="EIVD1Puc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418319F42D
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742843360; cv=none; b=gJaFfEYFTKjA1ztRmd3xpR77WIlUDsK3FatArHWnN6cQvVBkFGDqjZscLY6v4aOFqBSNNm8BhZZPS0hrf3FD7K7pMQ/zg570z3ng80hhys5uNfGgEV8HXeC5V4mW5ViihV50HUbzwtAZvVmPP6F7iVlQ4tcAj0lW47HrWRD5p+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742843360; c=relaxed/simple;
	bh=tMdbtZjxK5Hp6vpTGbR0eVJuD/+caqSIXla2BtJsgQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V2AuWNRckdCYb6yvnQNjPCTfV7D4EHZMNRpCgXhemqZEQEwDmwoyq+NbzmR4yIOUMZQ5et6Qg2r38Ix/2Al4rzjJAgI4YJmK8DdVMtbtoHbWH2kugVgqtW6gFXsUZzEdjuDqLaNihMoB8pWA3QWQNVA9zWZKtP/DlEKkvImfZGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=EIVD1Puc; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4CA52102E64C5;
	Mon, 24 Mar 2025 20:09:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1742843348; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=luE9KNFBY2yc7R/r8kECD9v8u+QS5s1DIkupBbe0SSw=;
	b=EIVD1Puce9GrbbyT1REgTbYEiv/mzMu+ZRfY5ES/3/fMYFUQXKfknvvd1b5InJ9Eu6037N
	MlWSub3tdlXkUWWZLL9Ww86CskVGBYSTFXBLSe1OXl6bzdiTcQFBc9ryum/GelslPY4Kse
	qY7kNLYjJ0fN5NTayPBDktZKK2ue7mko3nk2nHIFYzYY5FK4BOin0JMko/LQVGjKW0VUfD
	uR4Mv3JRJLu+mS40KfEJTCn8t7CRLTN+zB8YIEoMqcWR7Li++KbCeLsBiEv2X6UyktIx1I
	pjoqE0y8H6y+qr/Z96/asN+t3K3T12cXKvs0DmYSgDpx027o+j00SAI1Rl65Jw==
Message-ID: <22187ae5-7486-416b-b612-53021bfca11e@denx.de>
Date: Mon, 24 Mar 2025 20:05:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] drm/panthor: Implement optional reset
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev
References: <20250321200625.132494-1-marex@denx.de>
 <20250321200625.132494-5-marex@denx.de>
 <20250324094333.7afb17a1@collabora.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20250324094333.7afb17a1@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

On 3/24/25 9:43 AM, Boris Brezillon wrote:

[...]

>> @@ -563,6 +585,7 @@ int panthor_device_suspend(struct device *dev)
>>   
>>   	panthor_devfreq_suspend(ptdev);
>>   
>> +	reset_control_assert(ptdev->resets);
> 
> Hm, that might be the cause of the fast reset issue (which is a fast
> resume more than a fast reset BTW): if you re-assert the reset line on
> runtime suspend, I guess this causes a full GPU reset, and the MCU ends
> up in a state where it needs a slow reset (all data sections reset to
> their initial state). Can you try to move the reset_control_[de]assert
> to the unplug/init functions?
The reset on the MX95 is not really a reset, it is clear-only 
set-never-again bit which goes only one way, the "unreset" way, so I 
don't think this has any impact. Also, I commented this out already and 
it made no difference. I will give the second part of our suggestion a 
try in the next few days though, and also try the updated downstream 
firmware blobs (sigh).

