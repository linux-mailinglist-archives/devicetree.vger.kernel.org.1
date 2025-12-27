Return-Path: <devicetree+bounces-249865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91157CDFC9A
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 14:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7734E30198B9
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93244320A29;
	Sat, 27 Dec 2025 13:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGuzYqyF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ADA314D3D;
	Sat, 27 Dec 2025 13:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766840619; cv=none; b=fLdt6EgGbB/kagQAGl9SmZJD//daMi5BSIFEKFthph0XpK3DRNUBARYub9z1lDaDrKcPcQoycPky6cLs1T+pO2UDzAQKg8Hht0tupwG1JIBVnVR8Eu3R40y6fXw8erAD0POKw5JjgNyBVbsmgVDLbFAaqRIzgtKWmAIMiAm4JWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766840619; c=relaxed/simple;
	bh=Wqwb3o6BSu14O7NzML1JrB6nW276UFpu+/YaOfyV2wI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rBZhQVlr7i4o2p3jF/qAXmJyVQ4Z1MNeHbYVZwDj5eeecKeGr2RAX7rh1MEp3rwbp+O0REjwsLarKocpFbioRWp3CHjTR2oFlBeqRzsMtgNmVTOkslY1bUZH9R97CjR9qGLhB6uo1N/AzWM1lC0TPPr8gzJHr9hs+s4aVBSaIik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGuzYqyF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 671A7C4CEF1;
	Sat, 27 Dec 2025 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766840619;
	bh=Wqwb3o6BSu14O7NzML1JrB6nW276UFpu+/YaOfyV2wI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EGuzYqyFOo/fEuMi6ESArC7JhQ029gKEFO0Nikb0Pp/jJ9NoC/YGQwZ23EJPr/HED
	 6pq6Y/B0Ll+IQLJtsE/OpU628KrFOoLft7zmz0d+8Q45VNfpY5Rrfia6jhXBAJXBt+
	 AkHTdDdFR29+ZUWpjUCSqge3PA9yKOHuBYXKC0RkQubDNImw5sVbP/K70bPytfSEN6
	 Upr+eYBubc4GfC/bRdpyCPxyLCQV21dVG3jqM0LqEFPDQxUdm/2RgdwxLXaOiBMvrL
	 u2lKqYAdYJWa+mUfOJ8yQl7o5m9FEnoL44fox0/k4oDOV/FON9rlR3a0WN7g4F3nkw
	 +rpKVmR66G5dg==
Date: Sat, 27 Dec 2025 14:03:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add PHY_TYPE_XAUI definition
Message-ID: <20251227-airborne-energetic-kingfisher-adc4fb@quoll>
References: <20251224054905.763399-1-s-vadapalli@ti.com>
 <20251224054905.763399-2-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251224054905.763399-2-s-vadapalli@ti.com>

On Wed, Dec 24, 2025 at 11:18:58AM +0530, Siddharth Vadapalli wrote:
> From: Swapnil Jakhade <sjakhade@cadence.com>
> 
> Add definition for XAUI phy type.

What is XAUI?

Your commit msg duplicates subject and is obvious - repeats what is
in the diff. Pretty pointless.

Best regards,
Krzysztof


