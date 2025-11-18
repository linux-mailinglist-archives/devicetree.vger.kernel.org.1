Return-Path: <devicetree+bounces-239618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBC7C67A1F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 245EC4F3F59
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46AE42D979B;
	Tue, 18 Nov 2025 05:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9YcQUDC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB282D8779;
	Tue, 18 Nov 2025 05:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445545; cv=none; b=nvAr5EyYHwarCTKhoEbI0D+bN6HFXUoOmWUdoCQHMJ+0T5soFlrcV2pS0CS4Z0UcME9am5uISbiANX8XmOa2jxDGar9dF1ejHhM3ozANSziPV9TjehXO39e85znTLf3PmDddsnlvB6lMhXmJ7JGkMUakk3KDEBsTjkGYVSE4wZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445545; c=relaxed/simple;
	bh=1QM0t5Ua7sLNTgCR2HCyFI0Jnd2kpNqkgXu1GjfNhHY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jXDIuq8az/5M3u0Werr21YNs2Foz4UwYyYqAe6ytzP7hPqIlQ12CoYNtONfkJrC4F4O2LZf0Xx6ojETWHsHuUgn0aRE9jW4TDO30cAuJbZ0uhaA9/mDZI3e2om5rUzM0piuUnfISXV0bw4hhrxWYVo1NYC9G0PzP0yfFccoTsa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9YcQUDC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E765C2BCB7;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445543;
	bh=1QM0t5Ua7sLNTgCR2HCyFI0Jnd2kpNqkgXu1GjfNhHY=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=E9YcQUDCSPZ1s7ElomysnOqhC5nBV15S334tuOosNWPvrCLnJDUJ1m1K0CGehwpiU
	 Xlndy8n3uljPzF/1NVk/+oQUMRPcpDuhxDRcSCAPH//R3FfUKifLqzgWEObe4BA6zj
	 PzeZlOi9TFj9e+BJ6A2CzokL16qXoqe19B4U1wXbDwYyF9PeIhTDIQSmj/8Eqjwnml
	 OV0v5nINQkkkaiO0kRZ0VVb0ut8YkXGWE3BAL+ZN7mZWD+Gx1BFrBbCHvbP41RFVPl
	 uYjK064FPsdMb7lP7O6n4JbVeju7cey418FE9S0YACRSGEODY9oZdldnOMVoxwegqw
	 H79SW0HHucHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17DF9CEBF97;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH v2 0/5] soc: amlogic: Add new Amlogic SoCs info defines
Date: Tue, 18 Nov 2025 13:58:59 +0800
Message-Id: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACMLHGkC/22NzQrCMBCEX6Xs2ZVs1P548j2kh3Sbtgu2KVkpS
 um7GwvehLl8A/PNCuqjeIVrtkL0i6iEKYE9ZMCDm3qP0iYGa+yFiCxqYJSpC6g5apHSoiEu84q
 I7bmCNJyj7+S1S+914kH0GeJ7/1jo2/50xT/dQmgwd03pXGNOLfubGx+hFz5yGKHetu0D1mZ4E
 LYAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763445540; l=1206;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=1QM0t5Ua7sLNTgCR2HCyFI0Jnd2kpNqkgXu1GjfNhHY=;
 b=6aaN2cau58FDKag+CaRCY9OtdEKI+wgC9kmXaJRppovgKuLz5yFuPf3aqOJpLRo4zWGkyj+PD
 R0NlVfv75jSBPv4plZ5B2cpA89fs99xDjoRI2rznjksDCqkur0j8a7q
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

Add more Amlogic SoCs info defines, include S6, S7, S7D.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Changes in v2:
- Restore the previous accidental deletion of A4.
- Link to v1: https://lore.kernel.org/r/20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com

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
 drivers/soc/amlogic/meson-gx-socinfo.c                            | 6 ++++++
 5 files changed, 33 insertions(+)
---
base-commit: 8d5b965a53bf6a4e2a2a028b75b2c7067cde5397
change-id: 20251112-soc-info-s6-s7-s7d-01c86911c249

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



