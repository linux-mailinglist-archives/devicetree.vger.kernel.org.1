Return-Path: <devicetree+bounces-146620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE639A3594D
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:48:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1A1216C843
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 08:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360ED21CC53;
	Fri, 14 Feb 2025 08:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWqTQYPh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE441519B5;
	Fri, 14 Feb 2025 08:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739522908; cv=none; b=K6fCu0iRJIEqnk9QwxA9x3BWSeFhoYkPw4T69h4MxO91GxWGjMZB6lAuZucPqh/rmqKEOm6hkGgNO8KIra6lk+RFzq6iFT2L+fAQopRN8j0tykdeVwsKSlMUl3qrgjOpdVWe5t/Aie4we3pcuEWFvVa2MmX9ZvdDtD61XnVYAIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739522908; c=relaxed/simple;
	bh=0CcrT2Wlm4tuiPUS1c1qxjhwtvUKk5Qd28xIn++aGYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IwR5PnEDc5RmzZqeHzRVKnA8yzaCAgs3yKJdZT/t/92MXOqAXGrUAhZcrVtjeFNbFDb9//X8bfKiRctjP4o2DAEBKKYmkyv3N+sJkYTarPxSpRNLjbg8Na0j0cuwdd/Pv8DtM633/xs5BlgmZJl2vv4q/Cy0rDX+pnDV+gCa39I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWqTQYPh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1D1EC4CED1;
	Fri, 14 Feb 2025 08:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739522907;
	bh=0CcrT2Wlm4tuiPUS1c1qxjhwtvUKk5Qd28xIn++aGYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mWqTQYPhLMpHVUAWn9+lI+WwXv0GpK5coz0IWSRGmVoS/yyOEqF8pXWKyTNwRgqq/
	 1yYbAjmPEQNjRC7EHElD6mCfhYSfQfeKjo5X1Y4g5xFupDNPXZXTNypGKrMipamTb1
	 WeqIo2Bh/57hrJCgyFW1ZJQfDFILZFVXKan3Da+owazDy0wetKYk5TxzM/+boRTfXs
	 rsT1hUclKurPzWFEBl7TNdESBly5X/B5JnD/XAMsISomqmsJ/rSi3BOZVvlCGWgrIm
	 MkShT8hiNcHdWxxHpBM+TJ4z1McfHV9kOcynn9oXnZGjBFrmEycJQ/Kt2U7cVs14bF
	 SoLtIXvTiC4XA==
Date: Fri, 14 Feb 2025 09:48:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wilson Ding <dingwei@marvell.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, andrew@lunn.ch, gregory.clement@bootlin.com, 
	sebastian.hesselbarth@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, salee@marvell.com, gakula@marvell.com
Subject: Re: [PATCH 2/4] [PATCH 2/4] reset: simple: Add support for Armada8K
 reset controller
Message-ID: <20250214-nimble-loutish-pronghorn-d0e3de@krzk-bin>
References: <20250214065833.530276-1-dingwei@marvell.com>
 <20250214065833.530276-4-dingwei@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250214065833.530276-4-dingwei@marvell.com>

On Thu, Feb 13, 2025 at 10:58:31PM -0800, Wilson Ding wrote:
> Armada8k has one register for unit soft-reset configuration within the
> system controller register area.
> 
> Signed-off-by: Wilson Ding <dingwei@marvell.com>
> ---
>  drivers/reset/reset-simple.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
> index e4e777d40a79..a792b913e1b1 100644
> --- a/drivers/reset/reset-simple.c
> +++ b/drivers/reset/reset-simple.c
> @@ -183,6 +183,13 @@ static const struct reset_simple_devdata reset_simple_active_low = {
>  	.status_active_low = true,
>  };
>  
> +static const struct reset_simple_devdata reset_simple_armada8k = {
> +	.nr_resets = 32,
> +	.active_low = true,
> +	.status_active_low = true,
> +	.syscon_dev = true,
> +};
> +
>  static const struct of_device_id reset_simple_dt_ids[] = {
>  	{ .compatible = "altr,stratix10-rst-mgr",
>  		.data = &reset_simple_socfpga },
> @@ -203,6 +210,8 @@ static const struct of_device_id reset_simple_dt_ids[] = {
>  		.data = &reset_simple_active_low },
>  	{ .compatible = "sophgo,sg2042-reset",
>  		.data = &reset_simple_active_low },
> +	{ .compatible = "marvell,armada8k-reset",

Undocumented compatible.

Best regards,
Krzysztof


