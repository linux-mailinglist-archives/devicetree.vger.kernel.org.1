Return-Path: <devicetree+bounces-250892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C60B5CECDB2
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 07:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEEF3300888C
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 06:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91FA22B8BD;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR5CrW/c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913C5223DC0;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249827; cv=none; b=pODZAg8M6Mo7tAw+pgRXSQt4V2+YDPLv56D6HluoltKvD4RpWbEpWHdc/sRu9+6gOhctbcewt0valpSRdC2HZcZbI44PMjgWt+Bkqe+bxHxdqOnKzk5IMH2pmiP2v7pkeie074XXE4e7JxLF+xb9Nl6+neBzJnnZOVDToD+5tjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249827; c=relaxed/simple;
	bh=y7Xib1VykIOIuwDYT1LgmZreFH/0h6GvKNisTgW4mqI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BDpHG/s7jb71riAf7P+VyJn3QgYlYGyA7ZB9tCMCEK9yvuhSEB/IDSnV6Nfux+3eO8eHcGpm+eUteTrvfX2ZMLk5yHvHmTn44rQ9PGwqb3OoWMGR6G/LzSC7aM0j8qWG3R+lSzTeuzuHxaSCbtHAmCQzpMAtEgxp8LO++JKFLIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR5CrW/c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28573C4CEF7;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249827;
	bh=y7Xib1VykIOIuwDYT1LgmZreFH/0h6GvKNisTgW4mqI=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=nR5CrW/cM9k8+tnsaoQ4NYozG1YKD2+qzZaGNzpfDFY9pluKwFohDwRjJ4VIS0Fop
	 5HTFL3xU8oycuPdD9LWIjt9MW1Gc/qPhBwsB56KpjiBYC9yU3wyztg/YwJ1yLhSW3O
	 oZCzQOVqW0EH/0/wSLr8qlzrpq3qUIrNKzdPcUZVmnlja0aJlXvixQ+Mt0xc04AalX
	 Oh3en9aPQ9txHIi2S7fl3NNtWNugMDi4tGM8yXFuqdwYAyheIO2i5lQFBxIqKNXmLD
	 J21nzWJwjyQ9NsLXK1ks4+3Bz9UFLH0UWZfssaz4AfHsxFD2odl4zZzpIWlXAHtQ8/
	 HfTNpRDhSpLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13EF9EE57CE;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588
 boards
Date: Thu, 01 Jan 2026 07:43:08 +0100
Message-Id: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHwXVmkC/52NTQ6CMBBGr0K6dkx/RKsr72FYFDrKBGmbKRIN4
 e5WjuDyfV/y3iIyMmEWl2oRjDNliqGA3lWi6114IJAvLLTUtdJGguPxeAA/ZeDYDV1PCXgwtbU
 Q0gswuPaJI4byK9TWSK/x1EpRfInxTu+tdWsK95SnyJ8tPavf+k9lViDBG9sqq119RnNNjj0F2
 gecRLOu6xcK/hwP5AAAAA==
X-Change-ID: 20251230-arm64-dts-rockchip-rk3588-npu-enablements-1e2830d2e7b0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1792;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=y7Xib1VykIOIuwDYT1LgmZreFH/0h6GvKNisTgW4mqI=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVhehlL5HowYfiZYW+zzvkD9xqKEkcqkG8am37
 CxHDRvpsiWJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVYXoQAKCRA7Xj/jnsft
 6e9hB/4l4ovOHeAw15WbmnPtzYpJE+kbvTCuT64We5Nn1iXZyE1UjGdXsKSb+jIlx1Zm2x4HPXE
 WE1ixuJDeShaDWmsAOcokRLsHDmkQUkyoSyodWOBd1+varM7QAxbGztMA+SXI1SA5EQ2x5cp0Or
 ocyRcOyVzLsSyPMyY9LcYwJhQWlbJhULCPn0FC/bZ0BGDawmWLI+KZd8tnr3+TQaIDrKeiwMQMT
 dNFApaPBJNwFxIT4xW5bYBe49qRg64wWtvCwiPaAcdFLRIU44WxK5Z21CDV69zX1dJMs4bxqZKS
 BLl44+U6rmW0wHngUCODQPWR5T15qd7I5nNXBjQ3HQL0IUIh
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

This series enables the NPU on a few Rockchip rk3588 boards.
In every case here, the required regulator was already in place.
As suggested by Jimmy Hon [1], since the NPU power domain supply is
being described, also remove the always-on property from the regulator.

In Jimmy's words: the commit message for the introduction of the 
pd_npu label mentions how the regulator no longer needs to be always on. 
[2]

I might send a separate series dropping always-on from the same regulator
on the boards that have already added the NPU bits with no changes to 
the regulator. I wonder if I should add Fixes for those.

[1] https://lore.kernel.org/all/CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com/
[2] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-7-77ebd484941e@tomeuvizoso.net/

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
Changes in v2:
- Drop the always-on from the vdd_npu_s0 regulator.
- Link to v1: https://lore.kernel.org/r/20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net

---
Ricardo Pardini (3):
      arm64: dts: rockchip: Enable the NPU on NanoPC T6/T6-LTS
      arm64: dts: rockchip: Enable the NPU on FriendlyElec CM3588
      arm64: dts: rockchip: Enable the NPU on Turing RK1

 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 35 ++++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 36 +++++++++++++++++++++-
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 35 ++++++++++++++++++++-
 3 files changed, 103 insertions(+), 3 deletions(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251230-arm64-dts-rockchip-rk3588-npu-enablements-1e2830d2e7b0

Best regards,
-- 
Ricardo Pardini <ricardo@pardini.net>



