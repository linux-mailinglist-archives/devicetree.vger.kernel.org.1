Return-Path: <devicetree+bounces-239283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 04173C63854
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7BA0834EDEB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A30E82D3A77;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/P34vY2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7910A246BD8;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374622; cv=none; b=dy1LU8cm5RRB+wI8M+QceLoiufviLoCQFsfp+v8Y6JLkEaPi2oXGrPQukms+Ue0xjlL9a2enn1hQPoAfqc6daXPheMmowMssWwyxGdaM+VL0yiA0q7aw+kOMKgpRdIHMm28G6dhH+qKxgGTnoFp4Rxwxjszi/x67XER9BMabdc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374622; c=relaxed/simple;
	bh=aukVyKf6SM/XsCjCWq9eeHkk+NbJxGlbfhudMeFmdm8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=H1+fIi5d1MXFLhVF3KffD2jl8IwpDl7Zzp71Ck5jDV/luhPt3X1YixS8U7jtwhMBd0pHtPG5APStmFpsZq5qb6ZzUP9XcrX7MtSFjF9QkFCjFf+WUftU3ltx5Q9UajUttvhFd6N6FG8akqaIXk0ZNFKKOaIJq+PEP/GRc/HsVck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/P34vY2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05800C116B1;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374622;
	bh=aukVyKf6SM/XsCjCWq9eeHkk+NbJxGlbfhudMeFmdm8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=C/P34vY25Zec2yxyNDdJ2clHsDuXoY4fvq/vUGSALJz7Z+3KQvlS/fvVgycwAVWLh
	 jUqPNP/MW1aJ8DQGwrR9f5WBkMoSREmtdrlZ/yzh7pXliF4T665kfhjx7VDtonqaJJ
	 5u/0nbdDcT97tt+dxtCKIVqvQMdSDC2rHJlKkHMq/GrgPI4QbGEaliSCv2FjFMUz3T
	 HG4LxJyArmfBdZmzn0jJTrC1S1ejLwkQQFkQ8oIKmQG0/1H29M5f96+Og09Zvm6BC5
	 Wm/dfyzGbwwyfGzbp5z7RDQEnksJGUgTO5MZaOTwuCAXozWYmQRNyntRXAm0pcNQ0n
	 ZsCb/avy59HgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E51A0CEBF8D;
	Mon, 17 Nov 2025 10:17:01 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH 0/5] soc: amlogic: Add new Amlogic SoCs info defines
Date: Mon, 17 Nov 2025 18:16:59 +0800
Message-Id: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABv2GmkC/x2MuwqAMAwAf6VkNmCK718RB2lTzdJKAyJI/90i3
 HLD3QvKWVhhMS9kvkUlxSrUGHDnHg9G8dXBtrYnIouaHEoMCXVAHSseW3LTMBM5281QwytzkOe
 frlspH9fFvoZkAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763374620; l=1049;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=aukVyKf6SM/XsCjCWq9eeHkk+NbJxGlbfhudMeFmdm8=;
 b=C0IuzYTEuNE9tlPGIHItE5TtHdWAF8MvDqs2pleu8u+sCdsjEmlnuf6CzmK2OdZvZVkegdu0X
 q7Gb0lwbF1LDbwiOzCNvRMtYZqqsLVGNccYgmYZgm65TmBnot+KP+1S
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

Add more Amlogic SoCs info defines, include S6, S7, S7D.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Xianwei Zhao (5):
      dt-bindings: arm: amlogic: meson-gx-ao-secure: support more SoCs
      soc: amlogic: meson-gx-socinfo: add new SoCs id
      arm64: dts: amlogic: s6: add ao secure node
      arm64: dts: amlogic: s7: add ao secure node
      arm64: dts: amlogic: s7d: add ao secure node

 .../bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml          | 3 +++
 arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi                       | 8 ++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi                       | 8 ++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi                      | 8 ++++++++
 drivers/soc/amlogic/meson-gx-socinfo.c                            | 7 ++++++-
 5 files changed, 33 insertions(+), 1 deletion(-)
---
base-commit: cb718411c4c05a4a424c2b73790a1648be97a4af
change-id: 20251112-soc-info-s6-s7-s7d-01c86911c249

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



