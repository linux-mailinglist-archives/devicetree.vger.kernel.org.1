Return-Path: <devicetree+bounces-135002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 446E19FF6B0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 08:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE33E7A1124
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 07:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39AF18FDC5;
	Thu,  2 Jan 2025 07:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL4vnxZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E05179A3;
	Thu,  2 Jan 2025 07:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735804694; cv=none; b=sAtlZHynSVFGbN0YqxoPL6IhRrdqGjqd8iOXnUon1tpzBEeAlgQbeUysdBADCRFXdq6L/bYyfkpu289FBzXHq5bl83hbSGdTsjQcBDKTsrSlGTESF9WU+blbRfsWQj9CS/WN3rCVA32pv2TbdQUA+C6LbXQSvrV02DQFePkkVEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735804694; c=relaxed/simple;
	bh=gnlg1iwRA44t0Q9m776Cc0idy3V/9d7L0QBK8wPFtfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d5Znmxmkvb0evv2uohPtaTyRXRAalcbGK0evQ+GU23PntSK/TWAdCsyUSmwTyMHeW2Kb93g4arGX7JLPMssEyiWmAZ2UO6NObnHiGEPwt9cW2ZKc4/rA+A+QI3OxNkmev/6fUZP1AlNKiotXI540AgfxbXfyZ1kQn3xKNAag6fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL4vnxZ/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 588C4C4CED0;
	Thu,  2 Jan 2025 07:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735804694;
	bh=gnlg1iwRA44t0Q9m776Cc0idy3V/9d7L0QBK8wPFtfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lL4vnxZ/baQURW31Bb0YBJziu0sFojruCSFEM/FqDDifOw8IHAvPPWs+Zs20M87uk
	 /ECz7UP4LZd7TSLaqPLNc8yYG3QfJXFLOQTHSWimMC6rUsyklQRXW5KoWABMtVJl97
	 tspPWDjaqE9peupnQdAPpIdMcScVEqx6R//8AMRPtF/qvk2U+1mf4u4w3vzVrQkYaC
	 /pGclTGyDhwm8iqxMyNmLNxr5iLayZzwBAPtgLBShUyfuZY4XwLrtN+xB8XspUtv7M
	 kEv96pw4/O3h9jo6Dd4GV+RLxRnhJph0y9Cu5XR6FP70l/uGx3ORHcsTzrplky5YI/
	 Rve/tqri1/Xyg==
Date: Thu, 2 Jan 2025 08:58:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, cristian.ciocaltea@collabora.com, krzk+dt@kernel.org, 
	mripard@kernel.org, hjc@rock-chips.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: rockchip: Add support for
 RK3576 HDMI TX Controller
Message-ID: <zz5exgmftibayrh7vjfoq6z32xf2bm3ibejb6rc5xpqslejaab@ex4tj5am4hhk>
References: <20241225103741.364597-1-andyshrk@163.com>
 <20241225103741.364597-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241225103741.364597-3-andyshrk@163.com>

On Wed, Dec 25, 2024 at 06:37:30PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> RK3576 HDMI TX Controller is very similar to that of RK3588, but with some
> control bits for IO and interrupts status scattered across different GRF.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


