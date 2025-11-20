Return-Path: <devicetree+bounces-240572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4E6C72DCF
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53E2D4E7DB3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26B53128D0;
	Thu, 20 Nov 2025 08:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQt46LFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C225310620
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 08:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763627014; cv=none; b=imvwi+pdmQwo6bWODnhLpKM75efLCFx401uOlRCcjs4wclA49Wri6snzZTKOfe+A+0xJw7ftbmmSX9zN51I7jQ7AAU11pslZUJrkwnLYAcSvS6VFWuAeRHqzE7PE8qq61+k2NHAWDk44kpnExiLKwOSjj2NxIcW4CkCo6jEdJtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763627014; c=relaxed/simple;
	bh=RfnXUdS26iFTvQwO9oIL4UUwfJq91eSjKKx6NXjsfQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C+lDy0LDctF4OmFX/dxl5pAFoNsMYnR48yClFpr4kibcW9PAvKBoDxxEK+YyPdEV3EQakORty4oxiSrRjL/j8TRGj47XGsaHfMubRZ6BEfPWcKLiJG3Cvr9L3o6VocZFFmPPFbEPPCrxbBb8U3UMiYEAufsRvodo3Wn3S31lgcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQt46LFZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3136DC4CEF1;
	Thu, 20 Nov 2025 08:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763627011;
	bh=RfnXUdS26iFTvQwO9oIL4UUwfJq91eSjKKx6NXjsfQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gQt46LFZaOQt91vVyohZuGPDSr3WyHn+1NAem7/7nzhZ54QHync8lNaAsPADM6ocQ
	 3k2VooattGUlZvsHRDo4NTce6V00ytnSkSf7rUHZd23WpVdhQErlG0kzMzn6a0Qn7B
	 e+jTqrVaN7cMuttZqAMlCd22pmU4KFfXwePwiPBKylGlMXPK5BE7tYztqpTUKRBcXa
	 hRz884L8yUf3gKQKHKdLKxALwRkx5aXf2mCWQLfpgc1aoebhQ3Uoa7nJ4U9QZeyOW9
	 JIchTSipnGw+NlUT2Y/btV2GqYrDCKvqqVOyTBeuipIBX27MYJr8iJPiQ0OBdjcll8
	 HKxmQ+KjJOxEQ==
Date: Thu, 20 Nov 2025 09:23:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>
Subject: Re: [PATCH 2/2] arm64: dts: intel: agilex5: Add fallback compatible
 for XGMAC
Message-ID: <20251120-discreet-charming-nuthatch-f9b99b@kuoka>
References: <20251120025820.41308-1-dinguyen@kernel.org>
 <20251120025820.41308-2-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251120025820.41308-2-dinguyen@kernel.org>

On Wed, Nov 19, 2025 at 08:58:20PM -0600, Dinh Nguyen wrote:
> From: Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>
> 
> commit 343ea11a2fe3 ("arm64: dts: Agilex5 Add gmac nodes to DTSI for
> Agilex5") added the support for the platform specific GMAC controler on
> Agilex5. We also need to have a fallback generic compatible, "snps,dwxgmac"
> so the driver can load correctly in cases when the specific compatible
> is missing.

This is wrong. The specific compatible is not missing so you describe
impossible condition. We do not write code for impossible condition.

Best regards,
Krzysztof


