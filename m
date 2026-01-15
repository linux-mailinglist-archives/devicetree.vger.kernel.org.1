Return-Path: <devicetree+bounces-255721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B817D270CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A7A43051DC9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9993C1971;
	Thu, 15 Jan 2026 17:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agGaemDg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2F534216C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498322; cv=none; b=M9MivKPSg/D8tuIfWHZArLXTzRuupvjCebFzMCiwvmZQiF03FrSkJlKkUxu56s6rQ4Md7sgIxcC7qiOFCoD8IqdO8jMZXCBkdsxrbW/FN7mr6RVR5E6yMBvI1zfgvLXldZbgyy70Lmi3yYrL7LF5VjsdN/Zfv+nXFfikcvQuzfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498322; c=relaxed/simple;
	bh=UJ62QhE0z1mWbLKaTG/N9Ah90St5W9bIvVAyP2MRfsU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ev5QN66oog530Pa0SLPyHD2sLpDiEXQvEr5R3Ow1UXyAgEm+EnFSQv7yhbhrU2xmVXhZ6qMmWj/vDtFL+Z6OvZldvf5gozc0gfbmGSIb7XWw0T1yX2UhnHkk3Hb6ZZkCfr+aE383mowmDQhXEwd+81F+92YlC4K5qtKxptNZ7vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agGaemDg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27F19C16AAE;
	Thu, 15 Jan 2026 17:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768498322;
	bh=UJ62QhE0z1mWbLKaTG/N9Ah90St5W9bIvVAyP2MRfsU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=agGaemDg2z5bX0VDV9+mHJ0JkmSVZm+6FPqby1ViSSmJbXMqaoObr8GfFye6k41y0
	 LJOuD6brvRsF0ZxKL31JQQ8XNAnGLePm87kIPjWn6M7n/DIdRIdAz+RWdSaCAyd8D6
	 K0U0NBvt0ot4PZ8kE6EZOxC+WgesXdSav4iCvD9HzzmTPdWVlZoOXeM00B6rCkL8AL
	 Eqz6L0hFhHhwLmBF9/EOguy8I+I5eu7v4WGGGMdX1K9Cu9N6/pYhuX93+D8aficW2r
	 aOSXPPpSD4Tlz5rlnvBWSFyw5rUaO32/JC2pv+8P3+djc6O4BfQc5BHD3WVxdwHj2a
	 zeuogLuE9JQFw==
Date: Thu, 15 Jan 2026 11:32:01 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nauman Sabir <officialnaumansabir@gmail.com>
Cc: linux-mediatek@lists.infradead.org,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: display: mediatek: Fix typo
 'hardwares' to 'hardware'
Message-ID: <176849832082.924193.1440994026964193868.robh@kernel.org>
References: <20260112160759.19027-1-officialnaumansabir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112160759.19027-1-officialnaumansabir@gmail.com>


On Mon, 12 Jan 2026 17:07:59 +0100, Nauman Sabir wrote:
> Fix incorrect plural form of the uncountable noun 'hardware' in the
> MediaTek DP binding description.
> 
> Signed-off-by: Nauman Sabir <officialnaumansabir@gmail.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dp.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


