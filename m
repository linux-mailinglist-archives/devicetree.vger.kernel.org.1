Return-Path: <devicetree+bounces-137575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAE8A098DF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB67316B54C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC350212B01;
	Fri, 10 Jan 2025 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCBEGNfR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80821214201;
	Fri, 10 Jan 2025 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736531330; cv=none; b=ppCiclOmpKCmWBfndgjeTxS6nVZ3RFsppZXGFN/qNXxgtu9Fkksoy/Oqy9F/AbIVmkpmwagRigp0cDwD4r3wX5wYYef0j/iSRQdFueAY7whS19mi3LMP2lXP1E2vrx+DQVQ8qvzK0EuLT2AfvD28j49cO00JjoLFunwn+ucikRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736531330; c=relaxed/simple;
	bh=avXSG9Lg+ybSrIBxDQnAPWz+SgWtfc8XJZynpbDXwN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KxoI8vgVkcbSjHN3OfE3KyGuvfWEfP0XJ6ak7oRiuBsuJ4dE9uxVHsu+OxQIQrXH7f0OM04IJiZhEMTWeAE/f/qj7w529P01Tl3IJ33dkCXDoKTB88iGn0Pd0PVazvnXFvApURZAikw6DV72jpTi1ggprGsN745eeeKSaXyQ4hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCBEGNfR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD6B4C4CED6;
	Fri, 10 Jan 2025 17:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736531330;
	bh=avXSG9Lg+ybSrIBxDQnAPWz+SgWtfc8XJZynpbDXwN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aCBEGNfRdMCRoVepBxiskg+OpVEUXhB5GkfcV7Ypj4iUPYxbT3YfmTFKd8pJnBNJY
	 qZtS9cMUEwJVui7cPx1Amio968qaicMbB+6a0KKOQZtGxzdbUaVPRfIZpir5TbXOcV
	 TB2yObZYx9H51vNovPn4mYf6dxOns1XyN8iKKQ3GtTdXIEK/aq21iQT+hr6prFjjMD
	 hoiw98IAEBHwwPLdklpgIGkTmZ84u0zitWg+N0aIIFqPE9N+oBD7blNk/xg746mV6J
	 wku+AAKh/AhK+CPSU2+8CBoX6ll/BtQt1bZXOR1PXBe0JdBrD2JLg8n6WZZuPCbvDK
	 dMrtNLRs7nqFA==
Date: Fri, 10 Jan 2025 11:48:48 -0600
From: Rob Herring <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Saravana Kannan <saravanak@google.com>,
	Maxime Ripard <mripard@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Marc Zyngier <maz@kernel.org>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 05/14] of: Fix available buffer size calculating error
 in API of_device_uevent_modalias()
Message-ID: <20250110174848.GA3223452-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-5-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-5-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:26:56PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> of_device_uevent_modalias() saves MODALIAS value from offset
> (@env->buflen - 1), so the available buffer size should be
> (sizeof(@env->buf) - @env->buflen + 1), but it uses the wrong
> size (sizeof(@env->buf) - @env->buflen).
> 
> Fix by using size of space from char '\0' inclusive which ends "MODALIAS=".

I prefer to get the printf specifier change merged rather than reviewing 
if this is correct and doesn't introduce any new bugs. We're under 
utilizing the buffer by 1 byte. I doubt anyone will ever hit that and 
it's not any worse than if they exceed the correct size of the buffer.

> 
> Fixes: dd27dcda37f0 ("of/device: merge of_device_uevent")
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/device.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)

