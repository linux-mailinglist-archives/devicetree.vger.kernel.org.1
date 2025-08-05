Return-Path: <devicetree+bounces-201961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDA1B1B5D7
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 16:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10F043AA7D7
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8367327875C;
	Tue,  5 Aug 2025 14:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp3v4xCw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC4A1D7E31;
	Tue,  5 Aug 2025 14:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754402656; cv=none; b=REV36sWpV+4nALOzxCsocGAwXC7Mpa2cM8JEslzfIhzwAtbIrq5s5FP5EYnIDfOdfEwg1CP3At0S+qwKfUa8ijy+1hw40RFISVktYfodekRuFuZ9V3wKPBXK4PkSa+0FBAR3ZhOjfCc61MpO3dpGmz78pCfZDdJZ97Quc526iI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754402656; c=relaxed/simple;
	bh=iMoRTUhEfsYPSZ5AfdOy40I7O04fj4XLzBcVOQrAo/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VlVP26RMW3rCMLBRudL1rZzwCtFtUn5k0/D3Vfut2xFUNLyPpV37doZPirwRx65mRimhw8oYPPaYXVGPaWc9HCUGjNHupfIhGqkD4Zxj+fILRaKwg3wyvNkx08a9JbUC2sPh8Wk0NgymxPAjxjTSzIoVnrSkHWG3y+xl8dHw5Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp3v4xCw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5BFAC4CEF4;
	Tue,  5 Aug 2025 14:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754402656;
	bh=iMoRTUhEfsYPSZ5AfdOy40I7O04fj4XLzBcVOQrAo/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hp3v4xCwjKGkrGD4Pzvd2o9pDWOtwqrXnp2Kn2lj151s1LKFeBBRBLP49GX0Q4ZLV
	 GH24bIyZHdMWr69elUOKHdJfxOocQGiy429kpmYfxAQlXISu/e34mL/rbGPInoy5cr
	 n/TRhq0VcxyvDC/IizKSTAXNHSlJZMXnwRcsQO/d4vJtL5FSrRQLoPQj2ZCu9qVJhj
	 WiuNHwIt5fIIV71yMLzH/+QSVDIssvMXkkIKXDh8ZsbHbufDgzSZnmtJLHk5g3cApm
	 zB+XUkPn/0jcceHU+8cO/wgASDfC51aszIzimce8Z5TSNz6AkwBSrHQGcrKJdZurWy
	 vmcJk76eCthzg==
Date: Tue, 5 Aug 2025 09:04:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-kernel@vger.kernel.org, ghennadi.procopciuc@oss.nxp.com,
	devicetree@vger.kernel.org, tglx@linutronix.de, S32@nxp.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v3 19/20] dt: bindings: fsl,vf610-pit: Add compatible for
 s32g2 and s32g3
Message-ID: <175440262896.1529239.4583136749439718490.robh@kernel.org>
References: <20250804152344.1109310-1-daniel.lezcano@linaro.org>
 <20250804152344.1109310-20-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250804152344.1109310-20-daniel.lezcano@linaro.org>


On Mon, 04 Aug 2025 17:23:37 +0200, Daniel Lezcano wrote:
> The Vybrid Family is a NXP (formerly Freescale) platform having a
> Programmable Interrupt Timer (PIT). This timer is an IP found also on
> the NXP Automotive platform S32G2 and S32G3.
> 
> Add the compatible for those platforms to describe the timer.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  .../devicetree/bindings/timer/fsl,vf610-pit.yaml         | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Rob Herring (Arm) <robh@kernel.org>




