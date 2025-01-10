Return-Path: <devicetree+bounces-137544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C77A09694
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 401DD165A4A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF1720551F;
	Fri, 10 Jan 2025 16:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBtxZpWC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CD12561D;
	Fri, 10 Jan 2025 16:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736524858; cv=none; b=cfH01b2eWyO2YpRmuOcjfZClYa6/Z9yXFdgfXFhoM3Yt+6amEM8QWt8cCM/YeOCYBzwUtknCWwh0Y8Ft7zwItRocI5oooXHy3bDxQOTJdCj4Xiykhd6i12p76Q4cy0AF2aKkYnCv4OrzO+d6IQaAYqWZrDA3cR+QvjIjUI/MpT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736524858; c=relaxed/simple;
	bh=WsbcWmB4avxs8PQ/QnaxJWbjKMgGATeU+dv0LMHwpN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z18g0IzaQMUJp/kDWs5Qk524LvKyTof4vgCwu3u3WEC6vockCkyouZaFqZFdr+eTXtpbzG1xzHNtLmdtlcd31xPxfyf0SEM7QaD6XcU68JqFeEOhijlhf0PczLzeP4oG6bkHPAqdDenVqU6il+xyccjq9lZ56I9u1m+B+L850Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBtxZpWC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCD8BC4CED6;
	Fri, 10 Jan 2025 16:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736524857;
	bh=WsbcWmB4avxs8PQ/QnaxJWbjKMgGATeU+dv0LMHwpN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UBtxZpWCC3jEJLSPpplJMW60G78iuBm7SqVlr734mSfH1iNP3M8nzUsmrupFykPTu
	 XBW/1fyZXEsjeCgzc4/XI/8Y1KkNYq6Za5LIcMaVQP1vjzu/WrhJ53ekwE6ir5izWD
	 lbNM9O8tlsuJaflzHloCsXh5YHPmz8DQdaSPo8QvT9T1eaB8qwPzoSQnY14/Q3JjQZ
	 qWvti6dJ5XXw4S0uNoi78Cnq6HCPWqdvkgxt7/EVg7nY2wTHFwKWyZmbUT8enQcloT
	 ooe33jKH5mRxApn6IDhliX85a+XZ19V7oXhBfYJUIgo0lsyuCu54xH0hDglXZpEIPs
	 QiGb/2cpr5s1Q==
Date: Fri, 10 Jan 2025 10:00:56 -0600
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	git@amd.com
Subject: Re: [PATCH] dt-bindings: soc: Add new board description for Versal
 NET
Message-ID: <20250110160056.GA2939302-robh@kernel.org>
References: <20250108113338.20289-1-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108113338.20289-1-shubhrajyoti.datta@amd.com>

On Wed, Jan 08, 2025 at 05:03:38PM +0530, Shubhrajyoti Datta wrote:
> The Versal NET (Networked Adaptive Compute Acceleration Platform) from
> AMD/Xilinx is a next-generation adaptive platform designed for high
> performance computing, networking, and AI acceleration. It is part of the
> Versal ACAP (Adaptive Compute Acceleration Platform) family.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
>  Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml b/Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
> index 131aba5ed9f4..e0fa36be7e35 100644
> --- a/Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
> +++ b/Documentation/devicetree/bindings/soc/xilinx/xilinx.yaml
> @@ -10,7 +10,7 @@ maintainers:
>    - Michal Simek <michal.simek@amd.com>
>  
>  description: |
> -  Xilinx boards with Zynq-7000 SOC or Zynq UltraScale+ MPSoC
> +  Xilinx boards with Zynq-7000 SOC or Zynq UltraScale+ MPSoC or Versal Adaptive SoCs

Perhaps make this more general instead of adding to it for each SoC.

Also, the '|' can be dropped while you are here.

>  
>  properties:
>    $nodename:
> @@ -187,6 +187,10 @@ properties:
>            - const: qemu,mbv
>            - const: amd,mbv
>  
> +      - description: Xilinx Versal NET

Above you say "Versal Adaptive", but not here?

> +        items:
> +          - const: xlnx,versal-net
> +
>  additionalProperties: true
>  
>  ...
> -- 
> 2.17.1
> 

