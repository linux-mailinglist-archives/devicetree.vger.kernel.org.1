Return-Path: <devicetree+bounces-138065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BCEA0BA1E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B3C43A24B8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9260D23A116;
	Mon, 13 Jan 2025 14:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz7yB6Mi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1A123A10A;
	Mon, 13 Jan 2025 14:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779175; cv=none; b=LlDTDsXFkabe9+iB0FHZ3C4ubTr35Cg1hMcNmS+yJBcN9YV44WIOQnMhmSRTS2jQ46wzPPn/gMQ8rpIh0NM3yW94ahlQNVT8xnJl2SGuCo0VkWxkGYXfN42x0JNCSTCZH0V0KheKjH0bwr3TZfuCzRgLL3d2q4gaqpMP3Q2v7uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779175; c=relaxed/simple;
	bh=IaOZC28IL6ah2WMoTA311nE129uFTBD+S8Lw5VqWngQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YXBa10ooHoepF2DvyHaLnzdQhjbVAFUAgQOIV364VnMq2gFVlA+e47yD8zp41bphuO9mURUKPmHbDIgc6iwfXfDkfChC+fk307KZjrhG5KgT0O3iVrjCQQJjqhY/fZnokqGpidJipjnTtzdF6Bp1ukTWBGK6ETS4TEgHWS3oMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz7yB6Mi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4E84C4CED6;
	Mon, 13 Jan 2025 14:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736779174;
	bh=IaOZC28IL6ah2WMoTA311nE129uFTBD+S8Lw5VqWngQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sz7yB6Mi+RD/A9k9FXg12z5CY/KcPP6CgtJJ01UjAu+UZ7d5AirnKPbNm1wvtNb07
	 LrhvFiZWWzz3DPgR7rgtL9jHVbNwyVQ1d8oGzr3INLdHnOxNU3mt6I3ajL6h1hpPKY
	 z5ogM5rSTmnOR4FLq8Cw/AC5JrOoj/2abUkZoZ9fDhRUWDF8RklAH72iMYppneoS1f
	 3AyRpCDOylqxZkdqIdB4dBbi50fcd5jUeDk2ba5gVTKzZCT3UNrgw5psuCU3DxwLN6
	 pupT200Mw5U3JPPfNrG33SIJByO2c+Xgfs6XRURITLjKWgRTZaa0IskNTbfoIryBuM
	 2ghHcmVDNA/6Q==
Date: Mon, 13 Jan 2025 08:39:33 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Mike Rapoport <rppt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	Zijun Hu <quic_zijuhu@quicinc.com>, Marc Zyngier <maz@kernel.org>,
	Grant Likely <grant.likely@secretlab.ca>,
	Saravana Kannan <saravanak@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 08/14] of: Remove a duplicated code block
Message-ID: <173677916950.1982970.12902053539406189262.robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-8-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-8-db8a72415b8c@quicinc.com>


On Thu, 09 Jan 2025 21:26:59 +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> address.c has a same code block with fdt_address.c.
> 
> Remove a copy by moving the duplicated code block into of_private.h.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/address.c     | 21 +++------------------
>  drivers/of/fdt_address.c | 21 ++++-----------------
>  drivers/of/of_private.h  | 18 ++++++++++++++++++
>  3 files changed, 25 insertions(+), 35 deletions(-)
> 

Applied, thanks!


