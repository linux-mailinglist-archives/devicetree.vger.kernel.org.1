Return-Path: <devicetree+bounces-317767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mKZAKO+9Q2oKgQoAu9opvQ
	(envelope-from <devicetree+bounces-317767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:00:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 208ED6E48C0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:00:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="TLv/UWN3";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317767-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317767-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB838314B581
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B518413245;
	Tue, 30 Jun 2026 12:53:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556641166B;
	Tue, 30 Jun 2026 12:53:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823999; cv=none; b=Vua1Ca8T7EUF+h28RtYG2B23w6pJ87Cmkg0E3alFsNKFT/tNkl/31+HQ/KqEaQxvoOLXd9WpKjA4/CqtfT+mecnn/bdqzW/pkx3L8ygrk4306OkxdWHA9j5cfK3+1kAulw2/vvJ3SyjGkYGyxPrHao3Ato78crOvUBonxJ0op2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823999; c=relaxed/simple;
	bh=cnv+dro6g/o2f7nGM4zI5C5UpZYNAQtm/R+vGOgu5mg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uRhm38y/RDlFrN1TMp61K/I64UQnPboPvz1P/+ipuRqo/Gc8TP49LMIHES6CfFOk2s0H5cyPFFXu49jUnJasprbhZmALDwEBTetS9yfu5YWOaVUXBgp6xoxaboedx+4K1xbpKfmNDk5sxYJEWfStnCXBsIWCFtH+2+QlRLg554w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLv/UWN3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD2F71F00A3A;
	Tue, 30 Jun 2026 12:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823998;
	bh=quqKXaOY/defIjRmqlpmFrrkZp9Qyvv8wvLYUfMRkgc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=TLv/UWN3CAeV6uXwH3EbVRAnpgw6kiMg7Yq8UqcDNmbUtPqP63zj7rrzQCmUojzKt
	 M0qIbVH2l43eT0MkIKElK5XG9040QFhd9XlhNZ2JNXq4oKwFf6EBdYTVHNyW8Vpfyi
	 u3Vh0adnLjhQ4OfuOlUpr0VGcPgBcqTm3isO4QPMFXTQxPmNlvnyR0tHSTYUygrFMo
	 NF62V08ySqx+8yYCIEF3uhsvUeaUxnbhd2nYs+hYCM/UiD9/RhtrKTtFn993Bcra/H
	 GBET2e+Civfwt2D7Q1chPDqxH9ynxxy19CDkxY00Zri0tpSFfoR5dVeFy+SBDItlWR
	 c5Li+PZXWUQ9A==
From: Yixun Lan <dlan@kernel.org>
Date: Tue, 30 Jun 2026 12:52:47 +0000
Subject: [PATCH 3/3] clk: spacemit: k3: Add UFS refclk clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-06-clk-ufs-support-v1-3-cf7521d1d0fe@kernel.org>
References: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
In-Reply-To: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1218; i=dlan@kernel.org;
 h=from:subject:message-id; bh=cnv+dro6g/o2f7nGM4zI5C5UpZYNAQtm/R+vGOgu5mg=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBqQ7wsYcTfVh9d/UL94SxpyG3obN2aao1WIBGwj
 GtVg1z+n4KJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCakO8LBsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+2xxw//cr0AfxHPxyn4fD5bkV+IHBESEcc8l0lbe/ajtvkD0oRE38o9f9B9V
 MHYwIJjIS+wIJZBGdf5m07pXDtwf422sqPBJqH5qlz28FSxzYTCK9r2SndzUz0lEyf5mWnx/KH9
 2bUs3uTgeDiKv7rRcJBA8lyktZ583yfAsJTrjiaHodhbPTeUed+ICTmIPxs5L+owohoGHMRR5fv
 f49lQtt1sfkA1eKtHGWf76U//XLAam3wg7mGYeu+v5j1sXVGztcr2gHeF4J+/M28lH5DQUMa57K
 ngnS7Kt24jdzh98zuHvpgx0rfOnUzz+roi9HjlmamdwEHxauLgfR58ArrwZgL+AyHMQIpXersA9
 Qwmt9QKD1X9o4kMtckXiEMNGKAITWKWgXRq/l4vn2II5QfXBOqwIZp7wvc3W++dt2jWvVRw7VvG
 9TOksiiXMOAe8kpm9abAzf6S2G4mzIWs52PpfpIIlLk50TQsGr/sHbkRRC6/nu9SdLi30wB4LMx
 4h221xXKCMd7fX6K0oia+TyChOXJay0dpkzgEx7jwuiLc6wBt/gxIkh56CO+StB85s78/lRbNcA
 v6ske83tWiM79Yt75D7SO0tZpf3nFN9wIjKBt+dUa8nL2wxLc8T4gPE9snT9N5wNl6NCQGVRFnq
 /1hjg7bCkVWBO2s0m1MjhzLGJATnmY=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317767-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlan@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 208ED6E48C0

Add the UFS reference clock for SpacemiT K3 SoC.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/clk/spacemit/ccu-k3.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k3.c b/drivers/clk/spacemit/ccu-k3.c
index 42293a38b098..f47d26e1d642 100644
--- a/drivers/clk/spacemit/ccu-k3.c
+++ b/drivers/clk/spacemit/ccu-k3.c
@@ -934,6 +934,8 @@ static const struct clk_parent_data ufs_aclk_parents[] = {
 CCU_MUX_DIV_GATE_FC_DEFINE(ufs_aclk, ufs_aclk_parents, APMU_UFS_CLK_RES_CTRL, 5, 3, BIT(8),
 			   2, 3, BIT(1), 0);
 
+CCU_FACTOR_DEFINE(ufs_refclk, CCU_PARENT_HW(pll1_d64_38p4), 2, 1);
+
 static const struct clk_parent_data edp0_pclk_parents[] = {
 	CCU_PARENT_HW(lcd_pxclk),
 	CCU_PARENT_NAME(external_clk),
@@ -1391,6 +1393,7 @@ static struct clk_hw *k3_ccu_apmu_hws[] = {
 	[CLK_APMU_DSI4LN2_DPU_ACLK]	= &dsi4ln2_dpu_aclk.common.hw,
 	[CLK_APMU_DPU_ACLK]		= &dpu_aclk.common.hw,
 	[CLK_APMU_UFS_ACLK]		= &ufs_aclk.common.hw,
+	[CLK_APMU_UFS_REFCLK]		= &ufs_refclk.common.hw,
 	[CLK_APMU_EDP0_PXCLK]		= &edp0_pxclk.common.hw,
 	[CLK_APMU_EDP1_PXCLK]		= &edp1_pxclk.common.hw,
 	[CLK_APMU_PCIE_PORTA_MSTE]	= &pciea_mstr_clk.common.hw,

-- 
2.54.0


