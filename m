Return-Path: <devicetree+bounces-100075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3538596C17A
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F322B28BC2
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06731DC742;
	Wed,  4 Sep 2024 14:57:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927641DC068;
	Wed,  4 Sep 2024 14:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725461820; cv=none; b=CeW5ywWPJkzEgLroXjft1ZTAcOumqaGNO9rQ2f2D+gmqoZjBaCC36V2cye5ns+zHRBTLia6g0v2T2NfIuvW6OIJsBrIoS8uQsZ51o8SHsvSBhyxga7Rw30h13mgPYq5eCWBjCTQEpwwEFoeNWeTuGP8fh7pFjX6ftcxJMPELceM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725461820; c=relaxed/simple;
	bh=5ksqwFARJ4ocknn249vhi6HhbLRdgZZBwQyXMMaNgwY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PGcb+YBARGIILRot7uiUYFTOffGIDEitawvPaPSiguObYgTBpIQFqVxFvKnjwlyggpmhLumqfxvpqkQEDmhm976otnE88qVsoKyPJ72lJFTEdwKgDJNUzv1g7J92EJD1UJf6vJteRW0Apc8tHHXpseblxk5mf593YYOTQsQsrnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27F85C4CEC6;
	Wed,  4 Sep 2024 14:57:00 +0000 (UTC)
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 45CF25FC00;
	Wed,  4 Sep 2024 22:56:57 +0800 (CST)
From: Chen-Yu Tsai <wens@csie.org>
To: linux-sunxi@lists.linux.dev, Dragan Simic <dsimic@manjaro.org>
Cc: jernej.skrabec@gmail.com, samuel@sholland.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, uwu@icenowy.me, wenst@chromium.org, 
 broonie@kernel.org, daniel.lezcano@linaro.org
In-Reply-To: <0a6110a7b27a050bd58ab3663087eecd8e873ac0.1724126053.git.dsimic@manjaro.org>
References: <0a6110a7b27a050bd58ab3663087eecd8e873ac0.1724126053.git.dsimic@manjaro.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Add GPU thermal trips
 to the SoC dtsi
Message-Id: <172546181728.1883804.16312630644940365957.b4-ty@csie.org>
Date: Wed, 04 Sep 2024 22:56:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

On Tue, 20 Aug 2024 05:57:47 +0200, Dragan Simic wrote:
> Add thermal trips for the two GPU thermal sensors found in the Allwinner A64.
> There's only one GPU OPP defined since the commit 1428f0c19f9c ("arm64: dts:
> allwinner: a64: Run GPU at 432 MHz"), so defining only the critical thermal
> trips makes sense for the A64's two GPU thermal zones.
> 
> Having these critical thermal trips defined ensures that no hot spots develop
> inside the SoC die that exceed the maximum junction temperature.  That might
> have been possible before, although quite unlikely, because the CPU and GPU
> portions of the SoC are packed closely inside the SoC, so the overheating GPU
> would inevitably result in the heat soaking into the CPU portion of the SoC,
> causing the CPU thermal sensor to return high readings and trigger the CPU
> critical thermal trips.  However, it's better not to rely on the heat soak
> and have the critical GPU thermal trips properly defined instead.
> 
> [...]

Applied to sunxi/for-next in sunxi/linux.git, thanks!

[1/1] arm64: dts: allwinner: a64: Add GPU thermal trips to the SoC dtsi
      https://git.kernel.org/sunxi/linux/c/89f1a037e97c

Best regards,
-- 
Chen-Yu Tsai <wens@csie.org>


