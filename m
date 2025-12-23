Return-Path: <devicetree+bounces-248983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2A4CD82E9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BD9F301CE77
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 05:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0DDD2F3C2A;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtRofPr/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE3C2E228D;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766468232; cv=none; b=pwg4MzlZ+zGvD+fLi5K+gK+X6zHzLaM6kWSJ7aCw3YICJIKXDRy0/WBaijBiWaeTWgiJWAnjirtIIMsPpoK/8sEReNRfh4hLdLZIsXBok5u+Y/BVpQ3szLDdLWSvjrIt7POUVE8RxJN5YgQCKw6S/Ek5gcJGImLTLhEHMtcfyaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766468232; c=relaxed/simple;
	bh=TopfHx7R+NfEkqLUaU8SHkHIJkgRVh3DScg2mMFNmUQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pMhy3I/jrgFdD5y989eSBXWOzH8Uio8TJyXse5BqhFtmVMWPqsT4eSeFTu/az5rrmSluMiAfZ12srG/s76uMmIbXZVNI4IkZy3LNrZfoPHZbPD+Pg2uHgBqBcZ8A4Lt4a/99xNCrrg+r2waTL4xVTJOKU01y0zL4vFnxvEOgku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtRofPr/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3983CC113D0;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766468232;
	bh=TopfHx7R+NfEkqLUaU8SHkHIJkgRVh3DScg2mMFNmUQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=jtRofPr/o77CVBDdy5aERhsUgKJ2y1pWywJ4tqYyHh6q0WsJywGUWqOtN2uJ/yLWm
	 4kOjZWR4hz90U+S1IBMzrS2L8PWVjjmg2oK/ZsFRETLaMupa0p1wWLIJvnGf1kL+Zw
	 yGEiLFGImGKFDwIO7gYQFjVON8cPFMHorIxIJCtwz4Hbh6YcZl2kGUBouIXKu2yqXS
	 xbtSuqO3cWUeFpMI80VmhuGnPutXOo68TIx9LMIMrZoCF3vB2A4PlXYArkC3JhUhl6
	 PgFoRtPaHEJTohkxxSfk2J72Rld8lTtZtL6kF7GPR5qwBhCaFR7hpmkvq46y/kLKgN
	 qHohts3Ekw90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29CF1E6ADF9;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH v2 0/4] Add support for Amlogic S6/S7/S7D Reset
Date: Tue, 23 Dec 2025 05:37:08 +0000
Message-Id: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIQqSmkC/2WNwQrCMBBEf6Xs2ZUkUtN48j+kh9hs2wXbSLYUp
 eTfjQVPwlzewLzZQCgxCVyqDRKtLBznAuZQQTf6eSDkUBiMMrXWpsZEQgvKGcWWBDRa9842JvT
 +DmX1TNTzazfe2sIjyxLTez9Y9bf9ueyfa9WosLFOOeeDU+F09dMjDtwduzhBm3P+APAZsOewA
 AAA
X-Change-ID: 20251125-reset-s6-s7-s7d-211f9782dfab
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766468230; l=1263;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=TopfHx7R+NfEkqLUaU8SHkHIJkgRVh3DScg2mMFNmUQ=;
 b=WI3MBDEAUmJoam63ErKvMPGdx1iWdVinT1IT/wRrj443CU3LFtAcSvfZ8WO4itFicCvXRq2JY
 8FGgbqNHf7bCUg+CgnCe8qSHD22kEnBZ7Xp4LEgNhIRZuR6VLL+NiD1
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

Add dt-binding compatibles and device nodes for Amlogic S6/S7/S7D reset.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Changes in v2:
- Fix some macro definition names, MAIL to MALI, PIPEL to PIPE, PIPL to PIPE.
- Link to v1: https://lore.kernel.org/r/20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com

---
Xianwei Zhao (4):
      dt-bindings: reset: Add compatible for Amlogic S6/S7/S7D
      arm64: dts: amlogic: Add S6 Reset Controller
      arm64: dts: amlogic: Add S7 Reset Controller
      arm64: dts: amlogic: Add S7D Reset Controller

 .../bindings/reset/amlogic,meson-reset.yaml        |   3 +
 arch/arm64/boot/dts/amlogic/amlogic-s6-reset.h     | 171 +++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi        |   8 +
 arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h     | 124 +++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi        |   8 +
 arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h    | 134 ++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi       |   8 +
 7 files changed, 456 insertions(+)
---
base-commit: 79482f3791c4760b9b0d8d9bfde9f1053ea3dd5e
change-id: 20251125-reset-s6-s7-s7d-211f9782dfab

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



