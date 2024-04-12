Return-Path: <devicetree+bounces-58739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC978A2EB1
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AB191C21143
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 12:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97655914C;
	Fri, 12 Apr 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9nVlnWD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959CE55C3B
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712926712; cv=none; b=gQrACaR/aglAclx96SkokVsy/AXS9dXTAxLnBkZqKmV0sGp801IWYONjDVcaN1vdD4xQ1CYJ03j6tv+mv1zGI64Yp7SiIugGVWHd1ho+G7hOLcPUltQH93tQkqPkDVaTYiKMotDdqa1HI3uB2M98xCLJuFEbfm4UenVrjMqgwA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712926712; c=relaxed/simple;
	bh=6jKTFVNQuNQalKatg6CmqSXTnFJUallQY7OIfMkZQzs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z/mWw2yerJ9VfCnz6xxGJv9u4le1yxsiku5kmUg3aW+7wTHIrBJuneG2ftqylCHbiFc3MxkjVg2aLD3PuScAEZwTxWDJkIC+NN8b69Fhkhh7ZrNFpIDvOElX28so+Ciy15L0vpkwEP170JZP13avxF7MOujgubcWhmDsx9SDyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9nVlnWD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7EF1C113CC;
	Fri, 12 Apr 2024 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926712;
	bh=6jKTFVNQuNQalKatg6CmqSXTnFJUallQY7OIfMkZQzs=;
	h=From:To:Cc:Subject:Date:From;
	b=m9nVlnWDXq6qsfaIw0d4f3EsFNcaM0VTh2o5jjXI5pE1tIk+hq0HLjHDPQgHYYHim
	 Ts9R2WND6hUPzassL3Uv9BA41Zv6xVH9QJZy5nTsQqD701B+EeVcM3hFLyeIUFYj0f
	 TUcL0vjfceCiWyeAlBbDEWiiL1G+X6SD9wuviAllBPl14jZF9qAhKY1gtXe/+yffQK
	 WXgReZ9t1mHwmpzDXCcZren0/fVmxWketDJhifW88jcB9nHzcCV1O9oUB/jBvHTsrP
	 oJpZgNY0/SyfKTwmvQyoV0VweNE8iTcFNkTJphFmrZIPPqz7C7O10es5H/tZvIAdAg
	 PxDMn15PXMeuA==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] rockchip pcie3-phy separate refclk support
Date: Fri, 12 Apr 2024 14:58:14 +0200
Message-ID: <20240412125818.17052-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series is based on: linux-phy phy/next

Hello all,

The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
"common reference clock" mode. (Which is a sensible default, as the most
commonly used clock configuration is "common reference clock".)

However, PCIe also defines two other configurations where the Root Complex
and Endpoint uses separate reference clocks: SRNS and SRIS.

Having the Root Complex PHY configured in "common reference clock mode"
while having an Endpoint connected which is supplying its own reference
clock (i.e. SRNS or SRIS configuration), will either result in the link
training failing, or a highly unstable link that continuously jumps
between link states L0 and recovery.

Add a rockchip specific device tree property that can be added to the
rk3588 Root Complex device tree PHY node, if the connected Endpoint device
is using a separate refererence clock. This way we will get a stable link
when using an Endpoint configured in SRNS or SRIS mode.


Kind regards,
Niklas

Changes since V1:
-Picked up tags
-Rebased on phy/next

Niklas Cassel (2):
  dt-bindings: phy: rockchip,pcie3-phy: add
    rockchip,rx-common-refclk-mode
  phy: rockchip-snps-pcie3: add support for
    rockchip,rx-common-refclk-mode

 .../bindings/phy/rockchip,pcie3-phy.yaml      | 10 +++++
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 37 +++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.44.0


