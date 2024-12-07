Return-Path: <devicetree+bounces-128188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED47D9E7E11
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 04:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECBAF2867D1
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 03:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37F222615;
	Sat,  7 Dec 2024 03:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="VEtfrcrm"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta1.migadu.com (out-184.mta1.migadu.com [95.215.58.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7BE17591
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 03:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733541144; cv=none; b=Nl7biEymFZN6WjVkyDxqjOrxGyInKtbR0fa25R952Lc58FD4mjE6ohANkjLY2k0GZUdBz+z0VXltq8T27K6jcLfec0Pty5h/iX88yLmvh69bOMfyNgLvCrY58KWVxwHvY3Z6R1RQSNRcpD/UxNyd/+ALgdUmOBRv2GAipMw4FS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733541144; c=relaxed/simple;
	bh=uN0SWZSMajrpYqKCPc9g5H38lWctE31CpFAFj1KL7IE=;
	h=Date:From:Subject:To:Cc:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sJ2OXEBQ32yKmn5J36lz5lXeOR5yMaauhAkBAFQHAKGxYpJ+4Mu9tFNZLnnLhpFDEBBNARiZ0fswpZ7KWPqeUzgPmkMdvR97g9rowxsM3/Ew8xzggYmkPpMBXKm8WUgAbrRqh4nVYFENqJ2iEwya4aoQWOihjClwakOSfTHkhtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=VEtfrcrm; arc=none smtp.client-ip=95.215.58.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Date: Sat, 07 Dec 2024 00:11:55 -0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733541138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CJ53yZUv5qWn3FKAR6sSyKcUASeqiB2DCBVhCzW2Yw4=;
	b=VEtfrcrmScEb9ksaohHhM8XVmH+Le2ZPpCe9L7OD7V3L3oy/wrpOxfUAKBhKBGGyykeR+G
	+aJh+kLm0NAc2sj7XMwYqEm+wfUhLGJf+tzJrWRLwwqfsB8pvPUaWBB18X6rdugCAtz/io
	6Yflt6LSmSoTiarAs2tdOxbq7UQCx89nBCAZlLsMBdTl92T95hd967srl5XJfruyCDVRK2
	vlaEurX+6t/qIjO6lAVl2Ypzv9/lbai4c+2ILF+YtQuieYMrgRpAX3HR/SGkzLq4z9f+dV
	OURLJ4EuNZt8GJSOwK23HUdWI8X5Do3Ck8OJmx+QXOoyT+iovZ9L4555WStvgg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
Subject: Re: [PATCH 0/5] MT8516/MT8167 dtsi fixes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Fabien Parent <fparent@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Message-Id: <VVS3OS.MZCWW6ICFFUB3@packett.cool>
In-Reply-To: <7bf536a5-30c1-43d8-9ea3-3aaea65c6b0a@collabora.com>
References: <20241204190524.21862-1-val@packett.cool>
	<7bf536a5-30c1-43d8-9ea3-3aaea65c6b0a@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-Migadu-Flow: FLOW_OUT


On Thu, Dec 5 2024 at 01:27:01 PM +01:00:00, AngeloGioacchino Del Regno 
<angelogioacchino.delregno@collabora.com> wrote:
>> I strongly suggest you to also send one that achieves basic boot 
>> with UART console
> as a first step for upstreaming your board, and then go for 
> incremental changes
> everytime you get a new feature working.

Wanted to get the PMIC in first but sure, could try splitting out the 
initial version without the PMIC.

Oh! One dts/dtsi question: pretty much all MTK devices so far have all 
pinctrl configurations defined per-device. But on this SoC, pin 
assignments have their "canonical" function in the pin name e.g.: 
MT8167_PIN_58_SDA0__FUNC_SDA0_0 and on this device they are used as-is. 
Would it be fine to place these default pinctrl configs for SD/MMC, I2C 
etc. in the SoC dtsi?

>> Generally, if the patches are only simple additions, you could send 
>> the original
> patches without any author variation (and fixing that 
> MT6392_IRQ_numbers enum
> in the original ones because lower case please!) and then your 
> patches on top
> with your additions.

Right, I was mostly unsure if the email workflow supported just sending 
someone else's patches, but I guess that was silly - of course 
git-send-email should do the right thing!

> The upstream driver just gained support for configuring the display 
> paths
> entirely in the devicetree as those are obviously device specific.
> 
> You can make use of that for upstreaming your tablet after adding the 
> display
> nodes (and bindings, if required) as if you go for the default 
> configuration
> that's probably not going to work because it's for the pumpkin boards 
> which
> will most probably have a different display pipeline compared to your 
> board.

The pipeline seems to be the same.. The pumpkin board was brought up 
with DSI as well, the main pipeline I can find in the Android source is 
the same (+ PWM).

I am still struggling to get it to work though: DSI command mode 
configuration gets acknowledged fine, but in burst mode, the vblank 
never arrives. Tried fiddling with various things (CMDQ or not, mutex 
as vblank source since there was an Android commit doing that, etc.), 
nothing helped.

>> By the way, is anyone familiar with PSCI cpuidle/hot-unplug issues on
>> Mediatek Android devices from around this time? [..]
> 
> I did have some issues with an older bootloader on the Xperia M5 
> smartphone
> and would even lock up at boot, because on the old firmwares the power
> domains for the CPUs are not managed automatically by FW.

Interesting, thanks for the pointer!

In the Android kernel sources I could find though, there are no CPU 
domains in the mtk-scpsys-mt8167 driver, and the only references I 
could even find to the related register bits are from code that *reads* 
the status of the CPU power domains to make decisions about sleep 
states (only_one_cpu_online in mtk_idle). Trying to add those to the 
driver anyway, did not succeed so far.

~val




