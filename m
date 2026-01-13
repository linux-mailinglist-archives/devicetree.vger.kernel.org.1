Return-Path: <devicetree+bounces-254287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE158D16F0A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C4233010FA4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DE6E26F2B9;
	Tue, 13 Jan 2026 07:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Pg9fYGsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973191.qiye.163.com (mail-m1973191.qiye.163.com [220.197.31.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67D81E5B64
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287727; cv=none; b=A9JdpZof1EsOjEZiSKJ/2wiwXPL72hSGPp5wboyDrBwPwcQl/WBseMyGJGjcfiqPFJCg46giudGYyph4zvq81dGUYkQNLtBgK/Gy5wJKSXOucEOhoFkYGoTIJGIhpX6gIvY54F5uC3L4uHveQUh9omkeXzzapGfzKZluM0Niqs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287727; c=relaxed/simple;
	bh=igZJPoaLqmmSK+ThezdBktt0yiiefTxo5OXq9QX5Hx8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=GenMQ0fl8KHrK5F5MyHxfydlTUx6ha3ZcjEWyqKUqOMfGaU3JWKrWX4Ems7EISDIcltAgYc37USpyQexZsHg/RQQNkXiFhwVf1Za+Q6S53l1EBFzfowq8DGN4Z0bOzW6RRiExBA23VOT3OPvp63SNTUOARCUW0AXpaKg7x9nM8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Pg9fYGsU; arc=none smtp.client-ip=220.197.31.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 306510f8d;
	Tue, 13 Jan 2026 09:18:59 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/3] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
Date: Tue, 13 Jan 2026 09:18:23 +0800
Message-Id: <1768267105-127385-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb4ef49d609cckunm57b018bc340263
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhDHlZCHkNIH09CHUhMGkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Pg9fYGsUF0d5Ec1K88/4OCFqDiANDPdFnwVtrszAOH4QJMVsZcJWjHhF9+1pECTUj/Vth8baEVm1tL05ElPsk2TZlb8CG3bNltqM9aPf74i3Fh4YcugB1BT9gxHnt0x43h/fnchbbcU4MX3HiQMeOBDoMU/5Wpz4DJyH+NN+tEw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sKDdA+mRlqGpB2zrxgDEc6II4R7/r831X3bCz/53IMM=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

RK3576_IOCGRF_MISC_CON is IOC_GRF + 0x40F0, fix it.

Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

Changes in v2: None

 drivers/soc/rockchip/grf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 27bfa09..8974d1c 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -146,7 +146,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
 };
 
-#define RK3576_IOCGRF_MISC_CON		0x04F0
+#define RK3576_IOCGRF_MISC_CON		0x40F0
 
 static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
 	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },
-- 
2.7.4


