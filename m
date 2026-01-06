Return-Path: <devicetree+bounces-252068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E3CCFA935
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BCD43278833
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468BB355020;
	Tue,  6 Jan 2026 18:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef8YQM2L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E1518859B;
	Tue,  6 Jan 2026 18:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724199; cv=none; b=APmr2lluBseBMbgS4+gny/DP1rhe3q4kvJFKOk4v3kvCWFDgG7e1j8dYXuXe6Cb/zTtcfLgqCq00HSNZr17bdt/9FZiIScpdu02SWnmLCdx3oGLgkHVoeUHU/nAdfBp2cFWvCBMJk0OrXSbeZIHAQrcxxOIKmrZpH5GaTimwvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724199; c=relaxed/simple;
	bh=wNVX7IulzCBkQzn3kkWj0KnrC5s7RfNjvq83HQ/7WuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d2AZt4Za5I7P4aVxx4USx7943bwqAn0P/OBe7//hbrJ0ltiLJ12UFtRL3jGnMNd6bSVnRr8Ngq12WYgLsOBA68LVKI2jy3PgifFA0xl/Ucms6jWUq3DEnk24qYo1qJ4hNJXglBDhaC0M2irkllGTXslzqALT0Xg1TGebLtP62X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef8YQM2L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78291C116C6;
	Tue,  6 Jan 2026 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724198;
	bh=wNVX7IulzCBkQzn3kkWj0KnrC5s7RfNjvq83HQ/7WuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ef8YQM2LNQq6eiBNXSz7SThHvlUBz987WkGv56drRGEP4fiXfCduAAzcpj9vZvZcU
	 3bgSps3+biPcyABJQNg5exqJCTVu7nRpD+08OWWBrZ8unXslaT62EkjnEeaAzZMTY9
	 MQxoScxhA/goVPXQLN5PLULCszRq/6J9Q5zTM9x3pD98WgRz8KPQuTOQYyHda6Yb+7
	 4p+ftJhsbM4YmXtxJpSXeNwTWnl/A3cmrYwqohaqebrzhtcEbEL7zt8FNrf6tNoyKh
	 orlYfnOFCrgpyjaKU7PA+sb9R3NRYfRpIq43N3MvTdlJl7RjmjpbaL/wm61iz7JpN4
	 RJfsAaXDJeHUg==
Date: Tue, 6 Jan 2026 12:29:57 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: conor+dt@kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, rogerq@kernel.org, sjakhade@cadence.com,
	vkoul@kernel.org, srk@ti.com, linux-phy@lists.infradead.org,
	neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add PHY_TYPE_XAUI definition
Message-ID: <176772419699.2512006.6478554353373580831.robh@kernel.org>
References: <20260104114422.2868321-1-s-vadapalli@ti.com>
 <20260104114422.2868321-2-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104114422.2868321-2-s-vadapalli@ti.com>


On Sun, 04 Jan 2026 17:14:17 +0530, Siddharth Vadapalli wrote:
> From: Swapnil Jakhade <sjakhade@cadence.com>
> 
> XAUI (eXtended Attachment Unit Interface) is a high-speed serial interface
> standard for 10 Gigabit Ethernet (10GbE). It uses four lanes with each
> lane operating at 3.125 Gbps (totaling 10 Gbps), to extend the XGMII
> interface across circuit boards, commonly used in backplanes for
> networking switches and high-performance computing. XAUI is defined as a
> standardized instantiation of XGMII Extender in the IEEE 802.3
> specification.
> 
> Add definition for XAUI PHY type.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> [s-vadapalli: added detailed description of XAUI in the commit message]
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> v1 of this patch is at:
> https://lore.kernel.org/r/20251224054905.763399-2-s-vadapalli@ti.com/
> Changes since v1:
> - The commit message has been updated to provide a detailed description of
>   XAUI based on feedback from Krzysztof at:
>   https://lore.kernel.org/r/20251227-airborne-energetic-kingfisher-adc4fb@quoll/
> 
> Regards,
> Siddharth.
> 
>  include/dt-bindings/phy/phy.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


