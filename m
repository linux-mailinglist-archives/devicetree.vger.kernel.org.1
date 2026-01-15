Return-Path: <devicetree+bounces-255501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A47E7D239DF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 77AD1303094D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7791A346765;
	Thu, 15 Jan 2026 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VocRTdYL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552702EBB89;
	Thu, 15 Jan 2026 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469603; cv=none; b=oPN7/HgYGjarvDAIthyehY3tYVbsAVdUoUof9UcSX2n5HKDCWlAvIqAXMCsfiJY/BlyJ1wuI8j5ARVa7ao+CkTKRNNeT8auYedW+Skck4rteqQ2uZDsgWDRV14b2QzEms1onoUY2MdUar2s0KppzbARFUR7AIRb36+Lb5RsYT4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469603; c=relaxed/simple;
	bh=EgQt5dQv9ybkWw1y+RJ58Ly9gOA8IryoNMIJXjGm5d8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=seja7BWhsEft6d4VZbh+xlxpkA+7/EB3IRlNjY6Jiz7qJo+Xs4szIKjGu+C7MPyr+/ALcRo9MlwyXbrRwMSniOdKibP85E5jC0pSL/A4ro7lkQxLgcS+0H9Py7uqf7+bGX3NbSmkilw/gJgHRgsm7Z/M6SatwxsaH1KW1vhwr1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VocRTdYL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 769FEC116D0;
	Thu, 15 Jan 2026 09:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469603;
	bh=EgQt5dQv9ybkWw1y+RJ58Ly9gOA8IryoNMIJXjGm5d8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VocRTdYLffCQSTy0qzYsgdAsHEgPc5iPDZhxRm2jevzw7aIH6sLzbDnW7AnJIY66M
	 04FVYijBzLwTWLeDE11WmpinDpBMSRVRmbpBoh1j1YanoRDbeqhQjR0EQryKcHP2XR
	 H+PtHypDXSgyVD6KoJUjWuzjxtRHzWWQJ6eEJs4ljCMgE4S8gbIvwAMf0STsPLCnd4
	 s60HbBbiS+fz/CBxusHl56U6OgMr1MV/bEnlsc02YLTtPvdftH37PeCeXjOwxmukqd
	 DxkgZYLZkHWc2GC3vwAtSSiouKV7XaRzqUX4qAC+QEynPHNKsdsIYlf16s1uqOG4ii
	 iRJY+rKag0zFw==
Date: Thu, 15 Jan 2026 10:33:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: tzeyee.ng@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: intel: Add Agilex eMMC support
Message-ID: <20260115-eager-armored-tortoise-7061a4@quoll>
References: <cover.1768378952.git.tzeyee.ng@altera.com>
 <a1858f93fb430d3f664406e6d300c4d44b4647a2.1768378952.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a1858f93fb430d3f664406e6d300c4d44b4647a2.1768378952.git.tzeyee.ng@altera.com>

On Wed, Jan 14, 2026 at 01:42:52AM -0800, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> Agilex devkit support a separate eMMC daughter card. Document Agilex
> eMMC daughter board compatible.
> 
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
> Changes in v2:
> - Add new compatible string for the eMMC daughter card in the binding file
> ---
>  Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


