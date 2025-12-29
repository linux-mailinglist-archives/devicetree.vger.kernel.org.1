Return-Path: <devicetree+bounces-250290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B2ECE81D9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 248E03017381
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 20:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD6B274FF5;
	Mon, 29 Dec 2025 20:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="gfLhfqRi"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE53B26FD9B;
	Mon, 29 Dec 2025 20:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767039306; cv=none; b=eI9Ah5r/bJTYD9l1WDnLFuk7mPLj6hP+rbG+2fIuZORz25M8Tr6aifMnsX9qtXw3J93PQZi3r7m0D3/+PVh8nkQMz2VrBMMJ7y2FwO+Kl/jtkGfn5Gfd2r/zbZ9LXaIgztiVJ5ZWRbY3dGA9vTJH6Zl3G/EoZt5hb4P+IxQTBBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767039306; c=relaxed/simple;
	bh=EXpJchBI62g1MTxwD7F9IE6Tajtk45bU7e6PqRJhBh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pf0VOfrsQ8GQQK5SiEThZzFG0Pt6RnQfWTD0PR7VVx+JgBNLAesq50Qjpk0PDJYGmW8A5vUOTEqKmfcr/fvr+h8iXr4z4ABZWSYxjYb4HAv9w2WPjV2ttK8MtHRETFXkJzAVYRFd33uAypWnKCduJM8fQmTdJy2Eqw8Sxs1+H7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=gfLhfqRi; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=bEEUJVfxLVTTxjkHipHATe6EImddwPLUCuwideZLEw8=; b=gfLhfqRize/eRRS/BDZh55+6je
	mVyUeI6SdYH4q++FKnkHq/XL40pqWaCcK6xHZ52N5EImUBgLLb6IO5hqO9oWMg71hEh+E2rUQx0Jk
	dFed70DloaP/4djHySE7IB0qB4zaFlqGD2RibN2HhX2NtbgPusxHXB4SKuNnDpY8CBAOMniCcjuu1
	lJqWSmTatvds7H4HkE1qsjWQozMgKn1Eot/LgNBiRgMMsqxJ122x8FjBuWgIJmnJilG6BMmuCV+2a
	0RketsO6gb4dqyIOIO7Kf44qT3rmtdPezdPZn2qZW5kvtMku2XyyQ1ouN0af0z4D4k959S1i0NWg4
	uhJ0Mytw==;
Received: from [2a01:e34:ec5d:a741:1ee1:92ff:feb4:5ec0] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1vaJdq-00000003dMY-1TXH;
	Mon, 29 Dec 2025 21:14:58 +0100
Date: Mon, 29 Dec 2025 21:14:57 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Ze Huang <huang.ze@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@gentoo.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] riscv: dts: spacemit: Add USB 3.0 support for K1
Message-ID: <aVLhQQrYQ0T2rBeq@aurel32.net>
Mail-Followup-To: Ze Huang <huang.ze@linux.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@gentoo.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
References: <20251101-k1-usb3dts-v1-0-dd2660e5740b@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251101-k1-usb3dts-v1-0-dd2660e5740b@linux.dev>
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi,

On 2025-11-01 17:03, Ze Huang wrote:
> This patch series enables the DWC3 USB 3.0 host controller on the
> Spacemit K1 SoC, and enables it for the Banana Pi F3 board.
> 
> To make USB 3.0 work on the K1, we need patches for the USB2 PHY [1],
> ComboPHY [2], and DWC3 [3] driver, also, ensure enabling the following

Note that the CompoPHY part got merged in the meantime.

> configurations:
> 
> CONFIG_PHY_SPACEMIT_K1_USB2=y
> CONFIG_PHY_SPACEMIT_K1_PCIE=y
> CONFIG_USB_DWC3=y
> CONFIG_USB_ONBOARD_DEV=y
> 
> The series is based on v6.18-rc1.
> 
> Link: https://lore.kernel.org/all/20251017-k1-usb2phy-v6-0-7cf9ea2477a1@linux.dev/ [1]
> Link: https://lore.kernel.org/all/20251017190740.306780-1-elder@riscstar.com/ [2]
> Link: https://github.com/torvalds/linux/commit/e0b6dc00c701 [3]
> 
> Thanks,
> Ze Huang
> 
> Signed-off-by: Ze Huang <huang.ze@linux.dev>
> ---
> Ze Huang (3):
>       riscv: dts: spacemit: Add USB2 PHY node for K1
>       riscv: dts: spacemit: Add DWC3 USB 3.0 controller node for K1
>       riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3
> 
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 47 +++++++++++++++++++++++++
>  arch/riscv/boot/dts/spacemit/k1.dtsi            | 32 +++++++++++++++++
>  2 files changed, 79 insertions(+)

The whole series is:

Tested-by: Aurelien Jarno <aurelien@aurel32.net>

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

