Return-Path: <devicetree+bounces-242268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AC9C88B23
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:43:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 219E934CD67
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E8731A55A;
	Wed, 26 Nov 2025 08:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5aeBi46"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB5E31A549;
	Wed, 26 Nov 2025 08:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146619; cv=none; b=IKhN5TY85XKySBPs4/TaoXFoy8DWiTV6HCRrjFPrkzpmteGPT85R4b/sONwayCndde8PD0GnJ3QSk7SYkPBZ10zCLqHFXNADO6GOG1IbFdSYlBtqteVKi/+yrIzadB2F/ktxCB+Ao7E6D1CTy/Fp5PKBMwkH/bI9kf8vMYM82u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146619; c=relaxed/simple;
	bh=jC4bQXuzi4917hOc/DiBoUs9OPvTj12PLSG7NCtBDwY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q+pMSS+kSLFhVuDrdzlwsigbsp7DIfW3FC2bziOdPuW1Lq04L7ekaY5C0o5LMDZ/+Egi5BWRGY+vYMsBfuqkCkDtuYV0D4YAu5xzhWICQw2/9isVSx99jYaUwp0CQMBrVBS+/BGG03Hlv8oCRLx7zAlSuoADnq8PhKrRobpHfsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5aeBi46; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEB14C113D0;
	Wed, 26 Nov 2025 08:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764146618;
	bh=jC4bQXuzi4917hOc/DiBoUs9OPvTj12PLSG7NCtBDwY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5aeBi46OqJEC+oU0nDRtmy3PE+DyUs3jKNX2ghpyg5NxJFHsJJnP2EjeXP2IWDtP
	 4ARG4yShnDiP6Jmq9au/gzOeMJztb6vQjg6ChWZRc4Twwi44Al9Cmc0VleK2x8+fQc
	 Sy1V2ixtTvltgGQ9/+JH7g35yFdO16K9Ko4yEb7iqJf9axW/QIII1iEWJ6YQkJVbgw
	 Ts5eI86VJbSKsg7sGOTrVMOPfMgTn9pny41ACfVWtv4wIM35fpIi8Q+1rN6TGvAq/7
	 NWhx2TSLitCDn02eW6Guz14HCVj3+C6nQhWPra0EwdLi2d1I9IETQhPw2BM3hnO66u
	 mmXzs4VSXjykQ==
Date: Wed, 26 Nov 2025 09:43:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hao-Wen Ting <haowen.ting@realtek.com>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de, jinn.cheng@realtek.com, 
	edwardwu@realtek.com, phelic@realtek.com, shawn.huang724@realtek.com, 
	cy.huang@realtek.com, james.tai@realtek.com, stanley_chang@realtek.com, 
	cylee12@realtek.com, phinex@realtek.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: timer: Add Realtek SYSTIMER
Message-ID: <20251126-impartial-spiritual-ibex-31cfcd@kuoka>
References: <20251126060110.198330-1-haowen.ting@realtek.com>
 <20251126060110.198330-2-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251126060110.198330-2-haowen.ting@realtek.com>

On Wed, Nov 26, 2025 at 02:01:09PM +0800, Hao-Wen Ting wrote:
> The Realtek SYSTIMER (System Timer) is a 64-bit global hardware counter
> operating at a fixed 1MHz frequency. Thanks to its compare match
> interrupt capability, the timer natively supports oneshot mode for tick
> broadcast functionality.
> 
> Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../timer/realtek,rtd1625-systimer.yaml       | 47 +++++++++++++++++++

I received THREE same emails from you. Please read the output of
commands you run, e.g. when testing git send-email.

Best regards,
Krzysztof


