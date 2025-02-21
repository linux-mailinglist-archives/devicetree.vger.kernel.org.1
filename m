Return-Path: <devicetree+bounces-149727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B7EA40392
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 00:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58CD7189AE6E
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 23:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C5020B1E7;
	Fri, 21 Feb 2025 23:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="vocGKBdt"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B023818DB0B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 23:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740181189; cv=none; b=Pc+Yx2qUG2xVOxar1KzwAc6ZZjMH+jqLXhun23fBdOxC5VQVkN4A1IZH+pzRPsZ/GkEmax0vrdaJfXJ4ldyOUqMzIfTQr+pYNLc6RrAeUWKJfdjDrp+fXmW84H/c9EJaUTRMembC3/N4elVZliXNSWPSSXlDKEAGgTOokApcUxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740181189; c=relaxed/simple;
	bh=vyhNgeOrYGbDnImKc/jEWBJHmyIIcC5LBYoCURsL4I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkQ4zDFx8/y265LSs5TBv3gU+oyNXhu61cDwdQ3+bDdOtFTiFO+m6KbozrqovHKaruGl/25MJ+MFrXe9UA9IBcjexgJvy3NuZo1CbpTZopgaTqtOZbL5UVDTbsKVGQ5kc33KWSCfC2k2WLftjdOnROGiBnfiPejaFavXr8zsyTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=vocGKBdt; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id C15528A0A03;
	Fri, 21 Feb 2025 15:13:40 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id AA9A3160036F; Fri, 21 Feb 2025 15:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740179620;
	bh=vyhNgeOrYGbDnImKc/jEWBJHmyIIcC5LBYoCURsL4I8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vocGKBdt41/eCeMu4YU+CArZ78x0+Z6/Yq+IyO5iYGUXepO/opn0ydttE0nRqJZqx
	 t3RJJtpU/sTaXAiB73iUozN03MYw6M53uRcz9x9RcmFOuzrmx9nK21+UHD5VRbdSAF
	 KU/zTDvmuJLrpyrpf8w4fS5xqipCkBBwSrI+TOZ8=
Date: Fri, 21 Feb 2025 15:13:40 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250221231340.GS16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Feb 19, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> This patchset is looking for testers. I do not have the hardware to test.

I do have hardware and I gave your branch[1] a test.

The following things tested successfully for me:
- Kernel boots
- Ethernet
- SPI NOR
- Micro SD card
- eMMC
- Bottom M.2 M-key slot (using an NVME drive)
- USB 2.0 ports
- Blue LED (using heartbeat trigger at least)

I did not test:
- RTC
- UART
- HDMI1
- HDMI IN
- Analog audio
- Mali GPU
- Heat sink fan

However, neither of the USB 3.0 ports work. There are no XHCI messages
during boot. I confirmed my kernel config does build XHCI. I haven't
ruled out a mistake on my end yet.

Also, the green LED is constantly lit even when the trigger is set to
none and the brightness is set to 0. This made is a bit harder to
confirm that the blue LED was working. I haven't ruled out a mistake on
my end for this one yet either.

I'll also see if I can give HDMI a test.

JE

[1] https://github.com/jimmyhon/linux/tree/integrate-6.15


