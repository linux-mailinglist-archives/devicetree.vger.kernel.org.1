Return-Path: <devicetree+bounces-134268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B50309FD193
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61608188176E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 07:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAE014A4F3;
	Fri, 27 Dec 2024 07:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mie6Ipnm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9088A149C6A;
	Fri, 27 Dec 2024 07:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735285462; cv=none; b=ho6E/a6SarzltcAaVYT0avFQ0QkbSj94Cc4ZA4DA4dGy8mqNA0GyBFsXvMhwkcyFQep3JPUuprlTeXaV80zqqC5EBFYTeNR3FyAp8nRmRzVWLXbvro91+wW94vGNapWrp5SmQ7i1lFQyOpZrGzEmL98JUbhDpPQQmFtGU66Fi9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735285462; c=relaxed/simple;
	bh=4iGbVgm5OBXB3efPP+XulSFSNwgag6CexiLlxMXb3Cc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gMIEOOik+LhxNDc03fzFeK1cIufSPKc6lnMPhgpaCum97cw4CSTHN4Fp7+y7Gtd5C96REqTTD4+ZR5VikMzPAy4m8dF2uXuOE1b/T5WkLaZ4iFzsfQ3T3MtRNB5pDMSFLKt543PM7uQgZgf+Gu/AOeDvVx0U0qM+FUQnxGSjWL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mie6Ipnm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 534B6C4CED0;
	Fri, 27 Dec 2024 07:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285461;
	bh=4iGbVgm5OBXB3efPP+XulSFSNwgag6CexiLlxMXb3Cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mie6IpnmKJMfCyMtG188dS85JVnSDcZ2Fqh2Qs2oBrqoSONQ9PwtI1Dxa1zf/8y1Q
	 kkqLfeIX8wt1BySWKWnjVrKsVsmmfI+7dsqaBbGaOBXEVuLime6ps7i8PQxA943ALP
	 ZE4/WpXmVI2BTWlPFKjDWQUW4CvEGTqPPUU1VrH2LhpJ4hpn71cDCXioXLkjK76WbX
	 tRIvHZLb/gA4j7aHreglsf8gay43SEFWQGce9XqXQGa+wWV+AWshvQAzLiJDh9fYA8
	 v3peqH6Nw2Wx8yhj0BOCfhQTT03L3008ToRieaLCO0N3UNpg5QLi60Wq3+H008ocu7
	 +xYprbyTdyTHQ==
Date: Fri, 27 Dec 2024 08:44:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, Tim Lunn <tim@feathertop.org>, 
	linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 14/17] dt-bindings: arm: rockchip: Add rk3562 evb2
 board
Message-ID: <witidwqrowob3phqq2xjlja5qzirssfg2ltmejafny7xtcpt5h@huugdobopvxo>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-15-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-15-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:49:17PM +0800, Kever Yang wrote:
> Add device tree documentation for rk3562-evb2-v10.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Update in sort order

So this is patchset for ARM SoC? Or for PWM, PCI, USB subsystems?

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


