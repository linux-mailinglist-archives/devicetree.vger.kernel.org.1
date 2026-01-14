Return-Path: <devicetree+bounces-254778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22923D1BFC7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25BB8300C155
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28841DF25C;
	Wed, 14 Jan 2026 01:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Y8hbep/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32104.qiye.163.com (mail-m32104.qiye.163.com [220.197.32.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E29248F66
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355258; cv=none; b=hXq05q7cSCzlxF8xeHnGS3nnmME/ZEMcbma4JOgSG2dspUch2XdmSXPf5Tq3UIxYiL9OSzvf38yQwAZxmz1/GgP3LKH4mg5FMCbjjWexrODK5Hs8Jj2O4xOBwIJwSbeLntCQFstEr50S5GXdykCIDKDqUtMlp9CFOpJKAJ8hgSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355258; c=relaxed/simple;
	bh=g7z058j0bXnvPif7XVhdeZ+uRvtQkc8Jng+4GNjGSPY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=V9OgdzNkeeOlndlbOPFqEVqas7LtqfcYhJqD/J57bO889BioWDGih3MMxf2oQdA69NSByaBWhCOUgCji8BpzOf1BFCmpgCtKCcVDo8MpTgoeGa1oHZuTwnFnhqszpk4/qcPV8+waz5SkYax7/Fu3pIiNPq+87AO68tKwvk/2ECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Y8hbep/3; arc=none smtp.client-ip=220.197.32.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3de;
	Wed, 14 Jan 2026 09:47:21 +0800 (GMT+08:00)
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
Subject: [PATCH v3 1/3] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
Date: Wed, 14 Jan 2026 09:46:52 +0800
Message-Id: <1768355214-198361-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bba2f9cc809cckunmdcf781114283e5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNLHVYaTENJGBhMSh0eGUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Y8hbep/3LXAmBMD1P2WnuShDHbrAvAdlvFVbuOuMhnLlP8VqR6RzvoJY6zXh/GiKFIWsOEEQIUzuOsWLWuhsnc3USoohqtXyGJq0LcQPUpKXnFyhzuwBfamJjnMiwiYmkMCNyEWOHOPxBXKbjQMX7TYKk/CjK7f9HpuwQgrN94I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=AczjdJsFb095JkSpdZQoyE7UxR51PLqYbEkqBrM85Jc=;
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
Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---

Changes in v3: None
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


