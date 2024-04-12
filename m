Return-Path: <devicetree+bounces-58650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 008018A2B4A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9B471F219D5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D277502B2;
	Fri, 12 Apr 2024 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJiKmBLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCDB4D5AA
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 09:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712914451; cv=none; b=UnWrUL7299W6zL1psWcPyuvhtiEiqmZKXK8sPsaYcFpfiWTc0zFCUId3IYx9h2SDdWlEhbYowzz2JFgsQGS+a9Ik41he2W0ZwslbzORIDdLoyNeffC+nY3gvTYztRzYipCqpokR2jXpcJ7HEFtGpfHaq1ay+fjJB8T7W0v4HhW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712914451; c=relaxed/simple;
	bh=xLQra8oyKWr2gJU0/Rk9xTiOnKsb7illFI7gIOIzVhk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e0CmtTkZy35Cvxc2jPn/7eC7zoFYnCRqvec4I8VOmyK8QjLsIy+MVgJ6SSDTJE6f3j67kfgADEEGvsXQrQeAQzbfz/Qc19X3yxy12uVU9GC2gsnBUCMkstFsRoQwV6AYkvJNrUWfxwZiqf7ZslexhAAdh2eNwuhfbMNWnr0GLKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJiKmBLZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6D5C113CC;
	Fri, 12 Apr 2024 09:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712914449;
	bh=xLQra8oyKWr2gJU0/Rk9xTiOnKsb7illFI7gIOIzVhk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJiKmBLZyThS4o9klLsG7k+vRZefWZMLLZABuOXb5bUE1cPPFvBXXNdV2C4WRrOvT
	 e9RrDQdRrfqh5BDLf5swFSPw+jn23s0PAJcyzpdIrVjUM1N99OyXOZLn87p4SDAXsT
	 sAwWzd3ADkFRcqxaTy9ed5p4t6QDiXcWdRp9M04NS7fp1NNGE4P9mIkkVfnBAeqthh
	 ii4NDHpReUI7f39KyrrhqDF3ZCwTmpCgKtq3+DNYD37Pm2g6RN2I1Im2hlaL1QQOwF
	 jINB6EGVNQCSWjel5G+8v9NNihP9mmWjSPZU6xatq8YpHx5WzjqmmT6hSgq6Zm/2Rt
	 07zW+ALIjeVfw==
Date: Fri, 12 Apr 2024 15:03:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
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
Message-ID: <ZhkAB6goB4TmcmWu@matsya>
References: <20240411130150.128107-1-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>

Hi Niklas,

On 11-04-24, 15:01, Niklas Cassel wrote:
> This series is based on: linux-phy phy/fixes
> (Since there are other rockchip,pcie3-phy changes there that have not
> yet reached mainline and which would otherwise have caused conflicts.)

I merged the fixes into next and tried to apply this patch but second
one fails for me. I guess it needs to be rebased.

Always based these changes on phy/next or phy/fixes+next (which is what
I will end up with to resolve)

-- 
~Vinod

