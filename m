Return-Path: <devicetree+bounces-58899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6898A3B3C
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 08:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5892D1F21752
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 06:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747F31CAAD;
	Sat, 13 Apr 2024 06:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0FvY6jI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502EE182BB
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 06:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712988393; cv=none; b=ZtUZ1Ku0vWapm/YICl3h6yH4ncR8zkJzODCF86FBFVRHC3UmADlYA9TlQaJWGvPOlk8WJMRylr2YGnBPQhtXcD6jkMZShkikbIWAO8/f8jy2IjrzrTZjZhAvXyoojQXCilFRZv2TRztWxAhQDqLUl/8KY1D1L9uEYZe7faZ6lJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712988393; c=relaxed/simple;
	bh=uRsytWM+Wij6OaLhlah01nbnk2oNUTDKgra0gaiRkC8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RyuNDzzfYuNlWd5gXpWfSv7/f6RTEscsN3fHLjrgF478KFg77KvN5QTgO32KYFlubzuYI0mu37ZOWcCUtPCR5tp6XKG09xHr5q5iHBeeMa47uJ2s5CWRmnK/e2+8y8swU1nzgCb+nHN4y+C31ly/nQOgWLVIHWYbD0ohx4LWbfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0FvY6jI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B58EC113CD;
	Sat, 13 Apr 2024 06:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712988392;
	bh=uRsytWM+Wij6OaLhlah01nbnk2oNUTDKgra0gaiRkC8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Y0FvY6jIDOoTtXdioDPivFQs7D004ThZPfcnd8DDcbiLb7mu0HzfZpdsXWdx6pets
	 A2oalL+1SRLIoW+SNGtKEtrkpiQnDV6s8aMn0fEnbNRVc+FRl6l6ElrRGHls6kkBhl
	 DhdWA0NsvrVUgw0Pi6p1vP1VFQbK80gIl/8nJiTj/Q/C9jWzmrcHScOCgvAzC3ca8c
	 7DbbrImRi3jqJxsK8TlN2QXDQke3Ya0Kkzgy5w+a5zFVhnfg9lMqyovyxH6GYKUQL2
	 pJzBnA07gPU1bTUjIEdUH5RcG7Ebt1nLs6qEkiWTsbNoY4/Xk2qupbOOxAp/9m75W1
	 YwwU7W9ADQF2Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>
Cc: devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Michal Tomek <mtdev79b@gmail.com>, Damien Le Moal <dlemoal@kernel.org>, 
 Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
References: <20240411130150.128107-1-cassel@kernel.org>
Subject: Re: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Message-Id: <171298838693.603171.15268474242938067689.b4-ty@kernel.org>
Date: Sat, 13 Apr 2024 11:36:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 11 Apr 2024 15:01:46 +0200, Niklas Cassel wrote:
> This series is based on: linux-phy phy/fixes
> (Since there are other rockchip,pcie3-phy changes there that have not
> yet reached mainline and which would otherwise have caused conflicts.)
> 
> Hello all,
> 
> The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
> "common reference clock" mode. (Which is a sensible default, as the most
> commonly used clock configuration is "common reference clock".)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
      commit: 46492d10067660785a09db4ce9244545126a17b8
[2/2] phy: rockchip-snps-pcie3: add support for rockchip,rx-common-refclk-mode
      commit: a1fe1eca0d8be69ccc1f3d615e5a529df1c82e66

Best regards,
-- 
~Vinod



