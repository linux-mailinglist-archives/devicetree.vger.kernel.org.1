Return-Path: <devicetree+bounces-239620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EBDC679FE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id A438E2916B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 517BA2D97BF;
	Tue, 18 Nov 2025 05:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWj1MY5E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC8F2D8797;
	Tue, 18 Nov 2025 05:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445545; cv=none; b=qQvvaZibWpjDE8Xa5QQzYpAd72hcbveoxtudMs2ZFkBNfsEtK6mBawlvTseigWmO1VkAPoV9glo0GD9VIXXcpnoJSjsKmOb6DMh8LU5F0RkSsWTPYoH6ogc/lOJt/tjBjIH6FiFEaAPGOYIXpZyDncK2ej9q4rNAV6n283QT3is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445545; c=relaxed/simple;
	bh=8qJePZ/qYEO2UNbXovKjzo5sEmI+BwCxbWANSjOTzYw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HzBxDxEtqYf4MsfbhZ8JzW3Zc86u335utASOPP6oB9IwjtJ/xI1smrca+DzrHKfZRwgLSt8/wN5siZrqSSrg25KHQgjPlEziT5obyBdnzo08p5oYJtYPqw2a1a/mWiyM8H1OgRCGAXoWJ+Ov+JuFoMK165/2ZozgH6jg6D7b4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWj1MY5E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A47C4AF0D;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445544;
	bh=8qJePZ/qYEO2UNbXovKjzo5sEmI+BwCxbWANSjOTzYw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=TWj1MY5E7kveAN2rm444JBrui98wazrWiegoES6D0VpoSq63HZng06SD4kCf24j/Q
	 5SWlc6wnOB/zWaKvOS73cfXOXyO9j4eBFhC2Wrp+wvoKHCWRIVrU7PZO27JxGRJrKr
	 p5HTMk6uf4RreMZKq/EkwWGQMugC8tVBPdR6Xfgtm1FYFzhLHxvGlcarPZP08iYq5Z
	 RG90V0WBWAnXPWxUhNnJsMkVvoWQixYRw+4IV4bS1NhIlzUlsBtOBoq+FpwTEWhws/
	 8tmUw0kzzLvIMbQMskP9l03prT2Aqm5CqaNv9h2rs1ZO+E8/hJNxwFE1FYSVNd/jY+
	 SQE5Jwi5aOK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D964CCD19A;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Tue, 18 Nov 2025 13:59:01 +0800
Subject: [PATCH v2 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-soc-info-s6-s7-s7d-v2-2-38e2b31a88d1@amlogic.com>
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763445540; l=1002;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=r5XOc1DExyRTPaepAOT2vA2ghPS6TRl6+HA/H3c2gj4=;
 b=ql4WsQGw8qVd45J++79fRc4h8EgbiCo7L8iE30zzHh0u4MKWtXwApGCOnN9fdJjuIykLUMZ9M
 9CmPYiY30yOBqmRzw+WWE5v/bfgPJ6tAi/q5lkQuxzBeSKUxxXBv+yD
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add new definition for Amlogi SoCs, include S6, S7, S7D.

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



