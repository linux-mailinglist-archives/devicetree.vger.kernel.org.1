Return-Path: <devicetree+bounces-160589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F2EA703D4
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47C8A7A5643
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0691C25A345;
	Tue, 25 Mar 2025 14:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="YkIqrPLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085E425A324
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742913315; cv=none; b=paMk9KRhBJbSu7QmSPOR3DlOWgR5acuS0hejDBWNb/1TCdsij/Oqofh5qcx08uRG7qMqbwrRqa5XtVVVdbBcW4ePUjUSyLVnSrzfqXY+ytS4YXaiiFjLiZo082W482j9uG5FtrYgxLsUE8opwY08Pk92pjZCdLBZ2QBuSaCE+MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742913315; c=relaxed/simple;
	bh=f4rDpzIaw27cWLZTFhTB7eMPv/RlYGMu7kxHgkuzwY8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fhSdUuOb+OauteChXAP564nfffiNiHMxcC1mrf+8MEAGuyf+m1cSTvxkgiN8o7e39srvUOS6GEvVouENas+SaxHNIiO2k99Y5Nrr9KKsVCAn5Xi5p6qPGxe1ZO6wUR6q35jW4fd0Qmgt3i5NoPSzGyAqCrfbK2Sp48gu/26sZ6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YkIqrPLQ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1742913311;
	bh=f4rDpzIaw27cWLZTFhTB7eMPv/RlYGMu7kxHgkuzwY8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YkIqrPLQ1klvRPSV9f8DLqhBy2jPEssKQmd5GPS3Tw/hO8uBTNaMR/orBwoIniP5A
	 duYdAabrGodLUP4r2drlbwy7RSOMdnJslkGLvqdJFYEdqhO4Q9oley6QaJ76oYl1U5
	 /J8spi9maOAb8Tax274gcg7qNBUmx6ivBu7wIwdsaUrI9Y9U41oJCbYuH7nVMNZN6U
	 sXEl+ngwYGuePZm0OWZU67mHsFuynWjO+pyJXwjPJ6AmhJTOAS2p119ZtOuvQ3K1AP
	 vw1oEYvVvVaN6I0hhzbaxWArieEYjVqROVujzpxOHHv6T95ifdzURcCsTomAqvnTf7
	 WpSzxnud1j1GQ==
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5828517E0A80;
	Tue, 25 Mar 2025 15:35:10 +0100 (CET)
Date: Tue, 25 Mar 2025 15:35:07 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley
 <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, Fabio Estevam
 <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Liviu Dudau
 <liviu.dudau@arm.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>, Steven Price
 <steven.price@arm.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev
Subject: Re: [PATCH v2 4/9] drm/panthor: Implement optional reset
Message-ID: <20250325153507.61d82e39@collabora.com>
In-Reply-To: <7aadf355-edf0-46fc-b969-65c3789375ca@denx.de>
References: <20250321200625.132494-1-marex@denx.de>
	<20250321200625.132494-5-marex@denx.de>
	<20250324094333.7afb17a1@collabora.com>
	<c1de2afb-3559-4fbb-b13b-2373175b420b@denx.de>
	<20250325084349.344a0f11@collabora.com>
	<7aadf355-edf0-46fc-b969-65c3789375ca@denx.de>
Organization: Collabora
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 25 Mar 2025 14:50:32 +0100
Marek Vasut <marex@denx.de> wrote:

> On 3/25/25 8:43 AM, Boris Brezillon wrote:
> > On Tue, 25 Mar 2025 00:37:59 +0100
> > Marek Vasut <marex@denx.de> wrote:
> >   
> >> On 3/24/25 9:43 AM, Boris Brezillon wrote:
> >>
> >> [...]
> >>  
> >>>> @@ -563,6 +585,7 @@ int panthor_device_suspend(struct device *dev)
> >>>>    
> >>>>    	panthor_devfreq_suspend(ptdev);
> >>>>    
> >>>> +	reset_control_assert(ptdev->resets);  
> >>>
> >>> Hm, that might be the cause of the fast reset issue (which is a fast
> >>> resume more than a fast reset BTW): if you re-assert the reset line on
> >>> runtime suspend, I guess this causes a full GPU reset, and the MCU ends
> >>> up in a state where it needs a slow reset (all data sections reset to
> >>> their initial state). Can you try to move the reset_control_[de]assert
> >>> to the unplug/init functions?  
> >> Is it correct to assume , that if I remove all reset_control_assert()
> >> calls (and keep only the _deassert() calls), the slow resume problem
> >> should go away too ?  
> > 
> > Yeah, dropping the _assert()s should do the trick.  
> Hmmm, no, that does not help. I was hoping maybe NXP can chime in and 
> suggest something too ?

Can you try keep all the clks/regulators/power-domains/... on after
init, and see if the fast resume works with that. If it does,
re-introduce one resource at a time to find out which one causes the
MCU to lose its state.

