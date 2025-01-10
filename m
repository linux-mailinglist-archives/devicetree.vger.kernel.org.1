Return-Path: <devicetree+bounces-137574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C2A098D1
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B236916B18D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D268214213;
	Fri, 10 Jan 2025 17:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0PqYs6M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1E1214225;
	Fri, 10 Jan 2025 17:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736531107; cv=none; b=DyjEMblsuiC/52zr0oAFqbmCgNFXBrJJE9VND9e06f6fpjPhlT8crLzjkuAtMobAWkcQ7Ag0IrtYeVnwDG0YtzJ/V0nYWPtFztYDSzy0aUYzPkTR6Qq0mJb5PLwcOs6uWBr+fKZwt6RpTXxuraN7PncJ7T9l2b0BwCBRSdsoIEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736531107; c=relaxed/simple;
	bh=ne/VB/aYegC3eNGFxr1R/3Yyt4M74kNR1x1KINnG5ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a/nuIh0SV9PM0wYZk/loFgG1uD5X3f8iKvbS3PAOdmF0E5RvwiPM6XtMqbmWcYVFdBmRs5JJvtFutTd2vsYlil2MW9puXCfdFeq7WtJxgRB8W3P4eH3t4kqouGHp17jD7vqIXL8a0jMKn/gTaNSOfFPBSgHm2UEu4IdnweRL8T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0PqYs6M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD50C4CED6;
	Fri, 10 Jan 2025 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736531106;
	bh=ne/VB/aYegC3eNGFxr1R/3Yyt4M74kNR1x1KINnG5ww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L0PqYs6MuAujbo8rQGxqNhInxbPCkA5/jygZ5RihpM0SUoj5JHopz9efibrV4GNbe
	 19ORUWpjribPRfyXV9VVVGJ2kXh9bAqdzfm65jzrsqytkIVTk1f6cy3mY4h9vo0vb9
	 9Ct8ErgIVfsDL/z7iaWtMUinQY7eVYCVSKG7gqms8ml/iEjsQw68eGIX39dJS6oaS6
	 qgFMv7vLvKx0nGti+UEkTu2WxRMoAmdxqyNHloKl4jPmRUeKxcm7fu0yyr4ABMJ7Ij
	 GgcNB0gakMQmg4C+qwMDFj5lwXYO6by+nVmKvL0eNTZ+ng2vw5Clua9qB2J0dkxwKt
	 dgdHMjwFxjPQA==
Date: Fri, 10 Jan 2025 11:45:05 -0600
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
Subject: Re: [PATCH v4 03/14] of: Make of_property_present() applicable to
 all kinds of property
Message-ID: <20250110174505.GA3220565-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-3-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-3-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:26:54PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> API of_property_present() invokes of_property_read_bool() to check if
> a property is present or not, and that has 2 shortcomings shown below:
> 
> - That narrows down property scope applicable to of_property_present()
>   from all kinds of property to only bool type.
> 
> - That is less logical since it says a property's presence is decided by
>   its bool property value.
> 
> Fix by making of_property_read_bool() invoke of_property_present().

I already indicated I wasn't interested in taking this until we have 
reason to split the behavior. I've sent out a series on that now[1].

Rob

[1] https://lore.kernel.org/all/20250109-dt-type-warnings-v1-0-0150e32e716c@kernel.org/

