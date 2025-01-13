Return-Path: <devicetree+bounces-138043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A87A0B888
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A9773A9658
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FBC1235BFC;
	Mon, 13 Jan 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXx6264B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A3122AE7B;
	Mon, 13 Jan 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736775833; cv=none; b=Z43ZbFnxBPDpBLi2/qLdixEw1UQkduKS2eGIwRGBRySGCt4mfOycHlfjAyl2uNm5+pIfOLhHldlkeH5dp1xbGdPeRXXIL5sMSCmGfpXEusPb2WdD88goYUrPBK1YoKLRtqIMO5tvwPB2fHTPByGo6kKQZ8+wqvGVVYi5ct6J+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736775833; c=relaxed/simple;
	bh=Uu/kS9Yl3YUCfiDYUTuoo9UUgeOvyaiJ91tEgbM4Heg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E5Twz4JlMClAx/LzIVwRpFtc5vfSwVRYs0qlv5lj2vUSyTfWQWtg2MYFSbIaSTH3z17v8Oo8aT48xsX3v7vaoN7jNLcs7zIVhcQijOkwLp1Woaamhfn4qlXx0qL9AiYkC2AN/yRC3HLLBdRIA/PhMJsqRYMXVXnHHDF7pccmIgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXx6264B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36C1C4CED6;
	Mon, 13 Jan 2025 13:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736775833;
	bh=Uu/kS9Yl3YUCfiDYUTuoo9UUgeOvyaiJ91tEgbM4Heg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bXx6264Bv68w7xNMVDQy5SpwbaA7Lkh+bTrms1UD0ke+EkUb5eZQLYeRH3LxB4agQ
	 oX+0Kfv8r0HCUaYXSlICyjJVNGy6PINEBaJyCdrou4m2cYHaSlzdM6CJOEmoJ1mF2O
	 VsNphYgVHk3KxKSNLaGH/dL8MPfFlfrzEtjfCh2MX2CHbO47oD3L1SeNIMikrrnRLL
	 9abH8t5wthBloqvhdQB38mcKiJkMHkRzW3eieGdCc7I7AgIYpUvIeVxux1FF9IBTkQ
	 Yuadz1jLTdfLi2gtFERn7jcSatBH3mxY9e3xtqOEfM5t1YdqCzp45h5aUDe+6lYVQp
	 5ZWfZHx6Plxng==
Date: Mon, 13 Jan 2025 07:43:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Maxime Ripard <mripard@kernel.org>, Marc Zyngier <maz@kernel.org>,
	Mike Rapoport <rppt@kernel.org>, Zijun Hu <quic_zijuhu@quicinc.com>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	devicetree@vger.kernel.org,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
	Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
Message-ID: <173677582896.1697397.5123977451198992803.robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>


On Thu, 09 Jan 2025 21:26:57 +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> parse_interrupt_map() will use uninitialized variable @imaplen if fails
> to get property 'interrupt-map'.
> 
> Fix by using the variable after successfully getting the property.
> 
> Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


