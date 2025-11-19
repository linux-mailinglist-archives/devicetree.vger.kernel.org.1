Return-Path: <devicetree+bounces-240032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D721C6C782
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2CE203681FE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9B62DC79F;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuBDf3ae"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D100D2D594F;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520746; cv=none; b=X9Iuj8guMhi461YSvMoywIPPtGBJedMMB0YdTPo/taj45/0AvDyqZPU31wHC3JEBC0nhf0nn9x7NPb1fYsdv7COmfOUYfd/PA8HElIA4ZKHSCEZxGspBSYvg0qfodK3jkZk67GZ8QEA4aFcNvC9JVjgmIUqi0ihH4FQr5qwjtX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520746; c=relaxed/simple;
	bh=ElCciTxYJE7L49qWv6JNOG3HGQMWHUYfQycN6MnNKKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XDyYL+cDfzIXKrsJfJW/Scx/bszDOXuz4BtOgxr2XTgzUXr01s8K8z7vq+L7AW+NaR+4FriyanCYLITTuFEKQt9zALToHk4Kk24CInJwAUAXC4Kk3/g3sNa//SUbEWCiHuQXOB+oOVlHoaIxGJcEYhxydwdtZ/ZETjYvRuI6Pf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuBDf3ae; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D89CC2BCAF;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=ElCciTxYJE7L49qWv6JNOG3HGQMWHUYfQycN6MnNKKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=JuBDf3aexUMVaL+djrhneMCUZijivQpzYBV5Wyfb23ROoM9QzshWrAWcOLi8Pv/uH
	 WRe6F4i7yZgYSHSu2nOYaPpVAPKXKcOAk6z8nx31jpwl3RcnoSEMq+VAR1T6lPEHfT
	 u3xw2drfirBsCeMS5YxPOGkgUJySfdFUBuKNvV7SubdfjJc1163UFvfXoPilNypxBk
	 mq6SBLu58OZnRARJPx89k04HEGlIanC68SDh2dcRYTlf+2lb+yHZM3wzUyu7V455XO
	 V9PvvBsYHnTMEzYzHstzBgnjWSBw4tlUUDe43R41SQ1KnjZVyVQTqv0w5GKPblBcHt
	 68vN9hMVMg7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11D2CEE356;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 19 Nov 2025 10:52:23 +0800
Subject: [PATCH v3 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-2-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763520743; l=1131;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=2Mf1Qm+uRzCORwHeNC32iVQnPUYJm9R5423gGpFP26o=;
 b=LvDbdITIaIPRQ5mkhRzLzxcmSAM22ARk2rlCXtaPf8xd7zO3rkzZE2v55YVNg8hBIrfx1f6wJ
 HSErg+4k9FnDKMMhmDqVwaICHoPlWkm1hBxG5HYYDtT6/ZWlldZXryj
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add new definition for Amlogic SoCs, include S6, S7, S7D.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 7549f1644e5e..2a54ca43cd13 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -46,6 +46,9 @@ static const struct meson_gx_soc_id {
 	{ "A5", 0x3c },
 	{ "C3", 0x3d },
 	{ "A4", 0x40 },
+	{ "S7", 0x46 },
+	{ "S7D", 0x47 },
+	{ "S6", 0x48 },
 };
 
 static const struct meson_gx_package_id {
@@ -86,6 +89,9 @@ static const struct meson_gx_package_id {
 	{ "A311D2", 0x36, 0x1, 0xf },
 	{ "A113X2", 0x3c, 0x1, 0xf },
 	{ "A113L2", 0x40, 0x1, 0xf },
+	{ "S805X3", 0x46, 0x3, 0xf },
+	{ "S905X5M", 0x47, 0x1, 0xf },
+	{ "S905X5", 0x48, 0x1, 0xf },
 };
 
 static inline unsigned int socinfo_to_major(u32 socinfo)

-- 
2.37.1



