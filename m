Return-Path: <devicetree+bounces-248578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B14DCD4195
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 15:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C95C63007634
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 14:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B302FBDED;
	Sun, 21 Dec 2025 14:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMbZENqP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976331DF965;
	Sun, 21 Dec 2025 14:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766329040; cv=none; b=tD4bdxL+YCMcm0PJdI/GmAp3QiK5AHJ5xwjtSp6K3GCKwdxkOefmcfxz5uBjuy52HHMEZC3zQFV9V3ToDO5iy4xU7NyXeqVAoAYeUS884QN08VM6QJEbMI7f4sdw4+pLHWTTArsc/w5U702J6jp27wHdyCTDdUHNIHC1emyDvYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766329040; c=relaxed/simple;
	bh=gXezM1bnjGNNpxw6I9viVcMTnNHHDgBxUYAlExvm5zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FqJVAyZQ/fHkqfY06AcdTW556zjC48AJOvInS3Vvlpt++FL6sCnDG3fHq5OlzAWKmbOdrAERV5iiL0nP/6LVmf+1dLd8fxwD/87uVAIjmuAN+0B7ZfoE8eUlJEHXBouybWb58hG+IIDQFuX4FV16NkxR2EpPPz/IcP6IRprNUqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMbZENqP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE92C4CEFB;
	Sun, 21 Dec 2025 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766329040;
	bh=gXezM1bnjGNNpxw6I9viVcMTnNHHDgBxUYAlExvm5zU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YMbZENqP187mdl0rMzLH4pjuik3cpqVZSnjRoWQkN9nvhRh47aH6Z4yLmw9Rzgf+2
	 1LYieuF7cJ/N2eDV1C6u3fzHwD+h/Er8kAlmPFzrc02iVpvEvVdueaACHS0f0zuVXv
	 4rulFJ9RVi/7Dg74W0X1lxPVTa7mFqEk8eqyPjcW7z5z+LnlV9D1spVJkbQW0/EYMF
	 IaIvFhLSxooM1/MYKshxAE4yCSL760t9gODL+xhWPG/Qff5u7zpVBof47/iGgQaVYt
	 pOe4LmAuPA0gu/Ts1UIvAo3CPN0SBjmYZJmNBqzeDxu0LPyMhJQE4jbzWasHldL7BG
	 QGSgTNmpCKipw==
Date: Sun, 21 Dec 2025 15:57:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: peter.chen@cixtech.com, fugang.duan@cixtech.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-cix-kernel-upstream@cixtech.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Message-ID: <20251221-conscious-apricot-crayfish-8df20b@quoll>
References: <20251219133553.1440970-1-gary.yang@cixtech.com>
 <20251219133553.1440970-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251219133553.1440970-2-gary.yang@cixtech.com>

On Fri, Dec 19, 2025 at 09:35:52PM +0800, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC,
> built-in 12-core 64-bit processor + NPU processor,
> integrated graphics processor, equipped with 16GB/32GB/64GB

If there is going to be resend/new version, please re-wrap it.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

No need to resend just for this.

> LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe SSD,
> as well as SPI FLASH and TF slots to meet the needs of fast
> read/write and high-capacity storage;
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


