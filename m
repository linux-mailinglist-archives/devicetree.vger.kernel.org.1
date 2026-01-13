Return-Path: <devicetree+bounces-254281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 43771D16DF1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA5D4300CB56
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BD4366DD9;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIcmLKmd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C52DE6F3;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286546; cv=none; b=lDp/M2QsecD0Uex0niksSe0rY0bfWVTcOLk6D4erxtnYUNGATtjB76pWe/YnMt7zcNrmKkdl04ZqOJhcWaBPoe51fRTsVtY1h3SmMiTwnUBdp3p9P5y47ZXDRbOvNBhmTwOoiYM7Xxtqv3faI2KiKggKNuKzzWs+Hy5ETQJGsNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286546; c=relaxed/simple;
	bh=mWrwJnOeRgEO6bZMfF2f2PPydNykNaiqT+Cf+jwnAHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h1nbXGpZqT6v1uX3L4lX96HA0w6/hhTCGu93EVFnmM41dggNjNkNshAjti3zicX94Be/QczuKDTT12nxAArsZHbHBOnZoMmbVPCEd+gP8pVWLCL+9AfiED7xlx/eAjUPJKjdq9rOKshT25z9B3AYNUVUUqweU7HAZ7rutL9bUio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIcmLKmd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD381C19422;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=mWrwJnOeRgEO6bZMfF2f2PPydNykNaiqT+Cf+jwnAHo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sIcmLKmdrQdddoInVxvmz048vQnrtpYGM2efLLp3hutIhqSlMJcU8duxoMvi5IpKi
	 2X/jGdvC+4e0+UoezK76cY8ZDSYsicNKiLCOauHRMr1oJl6OuzRpJz7K5wAn7hb/x3
	 8to9jOzkVyCGzHDl4XkFxQKUCI0vYi9DWebC6CKAa5VLBOnzltCHE38yh9y1KBeNGO
	 BujdCdpBZHLYt24NaTAIkmltcHCBlzcsIPUFa3cJlpVlOFW4dS4fb7Nyi/RXzoPnW1
	 yb5qWOQfH4fdb2IuEwpt/4XW+Go18WxYXGXwq/G4iwfbopBYt1+xF/5Q7nEqLDSlWu
	 vaSBpuOWewZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09F4D29DDD;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:25 -0800
Subject: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=1504;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=ySfNjI6t8Mnuq2/ifE0ZjoFXQgOPGkiy/R6d0iMEMgg=;
 b=RYIUKOvuwbl5bNrcjJRBKCvN4zR/uEWENYzfyCgtOLKTGNhHcD6wgIPpYaUDMVU+2EzN4GNLR
 mVb3zHI1nmvCzdRUtIDJ4jN4KmqqTvgyiFD50giORdpGvKrZrMSfPzG
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
Reply-To: guptarud@gmail.com

From: Kamil Trzciński <ayufan@ayufan.eu>

While the Wifi and Bluetooth chip are defined in the Pinephone Pro's
DTS, it actually isn't able to be used. Let's define rk808-clkout2 so
that userspace can actually interact with Wifi and Bluetooth

Co-developed-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 drivers/mfd/rk8xx-core.c  | 1 +
 include/linux/mfd/rk808.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index def4587fdfb8..602218694334 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -282,6 +282,7 @@ static const struct rk808_reg_data rk818_pre_init_reg[] = {
 	{ RK818_H5V_EN_REG,	  BIT(0),	    RK818_H5V_EN },
 	{ RK808_VB_MON_REG,	  MASK_ALL,	    VB_LO_ACT |
 						    VB_LO_SEL_3500MV },
+	{ RK808_CLK32OUT_REG, CLK32KOUT2_FUNC_MASK, CLK32KOUT2_FUNC },
 };
 
 static const struct regmap_irq rk805_irqs[] = {
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 28170ee08898..077fe2e15b78 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -934,6 +934,8 @@ enum rk806_dvs_mode {
 
 #define VOUT_LO_INT	BIT(0)
 #define CLK32KOUT2_EN	BIT(0)
+#define CLK32KOUT2_FUNC		(0 << 1)
+#define CLK32KOUT2_FUNC_MASK	BIT(1)
 
 #define TEMP105C			0x08
 #define TEMP115C			0x0c

-- 
2.52.0



