Return-Path: <devicetree+bounces-239567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F211C667AE
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 6149E2A8A3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F33C13176F2;
	Mon, 17 Nov 2025 22:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM/VMzVx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9167239E7D;
	Mon, 17 Nov 2025 22:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419791; cv=none; b=gJWXFyYC0lHy2Nt9euPYkWdl87SP4yjtR1etXYFRldM811AQMCmavP16dsXrYFXmfTe2/yraVZMslYKR4GJBEJGiH13R4bO2vuJxjFCrDAkNSgPDX9+lv9hrEKdH2Anf9Y+EUz7MDFbv7nUaSIoUdpyB4b/SFcxxt+dOsm/0lt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419791; c=relaxed/simple;
	bh=c+NaU0TriAs8ICepbzbf9oSBIbi8FE5b3ihXcNJEAqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u9QpieRau8KRIkLQ54pVdQAah02vVh/7FbEunJc4OWghXkyEaaCiERmZMGSdsjnbtjfDMHqytYBXd1ZiDGGbxBdWXNFAV8x9YbrmruTUoYUjAc3zs2Db8ft8i0Z3UsWm9cVlzwuEDLx9YC3N9BHbxUO9ghQL4o4gPU2or3Hy0DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM/VMzVx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8140FC2BCB3;
	Mon, 17 Nov 2025 22:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419791;
	bh=c+NaU0TriAs8ICepbzbf9oSBIbi8FE5b3ihXcNJEAqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EM/VMzVxSdpPvUXGhQKI5DnvOcrVqnxSdHsdS2c2EkaX92mDRnOiKE4UHyinqY6iu
	 YhUtXo/0f5zcQwOIv0UxLHrIr+g8zE9yBS+/ewzdaI0hF/liUoS3tj60ktDIpUZrBl
	 ul48+y18WJ3hL64orexIK+QyiUsgQ1XE1l5D8GxgW9geQZ1MllVIXvXxgAujRLbD4n
	 h3HNeZyhHc/9Wqh2IMJFUS2ZwdA9dagjsGogOi+0N9C49kDg/gsfwUCMBKLFark7Gc
	 SAcjVn7HKU9BmG/T/wTy4kYasaKxCdU2VoZiK/aG/CwkGiYmgS+LRbYH8MczX+D2Cd
	 RRWqgEz+tvDqw==
Date: Mon, 17 Nov 2025 16:49:48 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Paul Walmsley <pjw@kernel.org>
Subject: Re: [PATCH v1] dt-bindings: cache: sifive,ccache0: add a pic64gx
 compatible
Message-ID: <176341978797.862829.13625647277395076899.robh@kernel.org>
References: <20251117-colt-carnival-8aab0a900816@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-colt-carnival-8aab0a900816@spud>


On Mon, 17 Nov 2025 14:24:37 +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> The pic64gx use the same IP than mpfs, therefore add compatibility with
> mpfs as fallback.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Paul Walmsley <pjw@kernel.org>
> CC: Samuel Holland <samuel.holland@sifive.com>
> CC: devicetree@vger.kernel.org
> CC: linux-riscv@lists.infradead.org
> CC: linux-kernel@vger.kernel.org
>  Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


