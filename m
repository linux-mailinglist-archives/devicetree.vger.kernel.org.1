Return-Path: <devicetree+bounces-58735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 171038A2E89
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:42:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C066B1F2301A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 12:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9988A56B71;
	Fri, 12 Apr 2024 12:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4nYe/em"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B3E42069
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 12:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712925767; cv=none; b=V+CK/6RbSMHWGWN2u2KeNLHGUOuxxOzb+2C9amNLTsX+RQJOIwr2TLi+3E78UaJglT18yM52M64pCaGUD2AUYyCdh/26Z/PZh2+w+yCj9nbTQTB28wWFKgBSLJG2w3r8A2/A0LXZsv2Jgy641CXqzHuIRn5SDXRUqQQmNjfgmqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712925767; c=relaxed/simple;
	bh=RFZZ+mGFrMvvzGP+Wwx3ZJjWKuRdZUpn09zEfdGc7P0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DIOGPqC3eoouiDRyE2RtWhalXdi8S0k+MIF9e/8tj9f4cfsH5uEDRgsK0B2d6uUK2LrqH4ARfYVhtTz+muCDNMF1tp3g1uYaF6yJa9OzPlIPP6B1KORrtauEl/j9Lw+I2sN5hA45j1E/ga2BV65jPw90feBW7mRTqyUA22qjmgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4nYe/em; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F31C113CC;
	Fri, 12 Apr 2024 12:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712925767;
	bh=RFZZ+mGFrMvvzGP+Wwx3ZJjWKuRdZUpn09zEfdGc7P0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f4nYe/em6FK0f+oAwuh0E1rMXQ1OyU4HGcc0d3wGEkQs8c01qL+qYZXK7o533Ysy4
	 12FEaeYNYxLWiGTQZbgfQMmJRnPAIosXSS6Zww3JQkROF0SrSm9b1ggXg6zLAYYwKO
	 odOnXedPol5+Z1ADVvnwDXI7aPmAXVzsYC7lgNGgKqiSH+rgcBS7HfOj6+CsmkRYZw
	 DRCJo2Rlk4oN1rmCBnunXTTJfaA9Nl+2iXXwuyCohy8+z6igI07gVChSGzHOp3wIZa
	 JaY092JRKQkFik2TB+OLe0WFl/4PQtSCz8HtXg7oFHfb6dT/JeAcwQkYR72H3Olyk3
	 ns6WGTbpiZsiA==
Date: Fri, 12 Apr 2024 14:42:41 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Message-ID: <ZhksQc1kNDWHAfWw@ryzen>
References: <20240411130150.128107-1-cassel@kernel.org>
 <ZhkAB6goB4TmcmWu@matsya>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZhkAB6goB4TmcmWu@matsya>

On Fri, Apr 12, 2024 at 03:03:59PM +0530, Vinod Koul wrote:
> Hi Niklas,
> 
> On 11-04-24, 15:01, Niklas Cassel wrote:
> > This series is based on: linux-phy phy/fixes
> > (Since there are other rockchip,pcie3-phy changes there that have not
> > yet reached mainline and which would otherwise have caused conflicts.)
> 
> I merged the fixes into next and tried to apply this patch but second
> one fails for me. I guess it needs to be rebased.
> 
> Always based these changes on phy/next or phy/fixes+next (which is what
> I will end up with to resolve)

I based it on phy/fixes since there were commits for this driver in phy/fixes
that were not in phy/next, so I did it for you to not get conflicts :)

Since this still gave you conflicts, there must have been other changes in
phy/next for this driver. I must have missed that, sorry.

I see that you have now merged phy/fixes into phy/next, that will make things
easier, thank you. I will send out a V2 based on phy/next shortly.


Kind regards,
Niklas

