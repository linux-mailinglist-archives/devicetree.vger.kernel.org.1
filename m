Return-Path: <devicetree+bounces-251141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCB4CEF59D
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 22:25:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57B1D3015149
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 21:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB592F069E;
	Fri,  2 Jan 2026 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2ZSzqiS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112A8196C7C;
	Fri,  2 Jan 2026 21:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767389145; cv=none; b=qK2ZYULs5Av1LN4ARoW0Pd9xPUsj87uKVV8WUfM7qmipBlgpC//Fh1a3y8h7UDjDBlz8PWNmir4u9MVZjRP6Mt2eFCcBbgnzEuz3MynIvlA5YP6Qm3k9+C/LcKx9raDzUB+qENx3pROdVHbjNJ2qlILdubLL16RmufSym1jRVwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767389145; c=relaxed/simple;
	bh=fSCIiEzjxHrYRnOYfytUvb2iBEk0yL9a7DCl02sBomA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R2ryr7qA2hrOAgudiGmEe8y/DmT5pkyXQSSdPhWlsRBjKMsQAFo0DViXTf+xKWDxhw6/Ztcscp8LYHDluUQehAzo0ioHh/zya3D7yud7CKu4tLOFVX1/BlkjmoLRnJZB4o/PIc8RwH2YPozyDUP+omCH27qjkDasGR3s6J0Zm/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2ZSzqiS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 685FEC116B1;
	Fri,  2 Jan 2026 21:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767389144;
	bh=fSCIiEzjxHrYRnOYfytUvb2iBEk0yL9a7DCl02sBomA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r2ZSzqiSCI8L0AZAgM8dG+L7CLsEj/OowabhVsGDsLh1t2IYuTE/HYyYi2Bxzy9tV
	 1yTh++Q6HuCxWn0Ge589vOyx5Z+e9F4vGztmKxIh19hbT5odDhwIv/91oXWtilDBZF
	 ev15z3RpprZlcO/5YVTA5VWD+/Q6z3r44Uq+ojORGwKzuz2DmcuMEQ2mkb6tFLGPPC
	 umBVmrfcrEg2wNuGMLFzrGVoudVXNuT34SDGEBrzBxCzHjw1O8KvERTnltZQQj+ExB
	 S5QA35JCiCnQ+HxolGXGaf/7UgENZva8JcLMBm6j66C7wko0/HJyQ2VxRKeQBsLZj/
	 +3UiQST/7WHUA==
Date: Fri, 2 Jan 2026 15:25:43 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of/platform: Simplify with scoped for each OF child loop
Message-ID: <176738913119.211974.14377161056885469462.robh@kernel.org>
References: <20251231120926.66185-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231120926.66185-2-krzysztof.kozlowski@oss.qualcomm.com>


On Wed, 31 Dec 2025 13:09:27 +0100, Krzysztof Kozlowski wrote:
> Use scoped for-each loop when iterating over device nodes to make code a
> bit simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/of/platform.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 

Applied, thanks!


