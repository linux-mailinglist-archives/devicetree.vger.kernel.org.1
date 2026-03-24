Return-Path: <devicetree+bounces-279970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHNIJMHCwmmjlQQAu9opvQ
	(envelope-from <devicetree+bounces-279970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:58:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B6531984F
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8937E3024413
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C84C3FE35D;
	Tue, 24 Mar 2026 16:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsClmxy4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B603FB7FF;
	Tue, 24 Mar 2026 16:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370643; cv=none; b=DKtydD3FEvIjEXgaTIWQC5lhTz9/XZ8DuhioPjLQMSKP21jZT945uqVh3Zwg81dB4+lKV/0l6EsoOLykDeVOd4mHay1d3jg/xUuuQaDz9eQ8KeriTDEsZlJ8jtJIBAX0Veg4uFaz8YIQT5HxrP6WDOH/RDJiqQMH8LeRDAVDi1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370643; c=relaxed/simple;
	bh=U61+dRHYuGxHw4u9pXFuFuZiDuMWELHNCtj0Nylxc0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R2bLbs3pYlhwuIzltLxbhFfJQtL8gUCkAYcdCkyApkzCW/CgHJr8AuTE+8ITSZC1Oh/vwO5sv8qWoIs1ui58Mr9arZp6BLfRYPIgqLqzx32gJBTvGh+O/IsLA195k5CIFVQ8Rx30lU/fiMuxpOSA8KlOna5AsmQuMXP/GwxeQqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsClmxy4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B35F7C2BCB2;
	Tue, 24 Mar 2026 16:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774370642;
	bh=U61+dRHYuGxHw4u9pXFuFuZiDuMWELHNCtj0Nylxc0Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tsClmxy4M9zi3pMxpUGq3hxYRSZ4og2rH3NnK9WSJE+kTch0rT9za2dEVurIEIHKq
	 VbX7Lb6/U1gjTqAUOzLAJOKbGEl69JQtOEyuJg62O46z9jRZA4yGmV6mb5c6CopUtO
	 mYbRbmqo3Jm59Mu89FgntzTfaQlsAhglopEXSBGMMI3V1cxL67L5otRhmiPjM2NiFE
	 FE0dskqUWWH2ldK948OprtoogAP3SfcBt9gArYdz5Tj3x3N3Ml5QdN5HzivawjxeGn
	 UzsM7Zap8uftLrLhLP2UMI8Cmh1MPWEs9Hai3MN+kBI6PylkgCfziMsYX7A94QbHK4
	 4tmrUMoYxNuvA==
Received: by wens.tw (Postfix, from userid 1000)
	id B0B825FFAB; Wed, 25 Mar 2026 00:44:00 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] soc: sunxi: sram: Const-ify sunxi_sram_func data and references
Date: Wed, 25 Mar 2026 00:43:51 +0800
Message-ID: <20260324164357.1607247-4-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260324164357.1607247-1-wens@kernel.org>
References: <20260324164357.1607247-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279970-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84B6531984F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

sunxi_sram_func contains value mapping that do not change at runtime.

Const-ify them.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 drivers/soc/sunxi/sunxi_sram.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/sunxi/sunxi_sram.c b/drivers/soc/sunxi/sunxi_sram.c
index 446b9fc1f175..5e8c80ae3509 100644
--- a/drivers/soc/sunxi/sunxi_sram.c
+++ b/drivers/soc/sunxi/sunxi_sram.c
@@ -29,11 +29,11 @@ struct sunxi_sram_func {
 };
 
 struct sunxi_sram_data {
-	char			*name;
-	u8			reg;
-	u8			offset;
-	u8			width;
-	struct sunxi_sram_func	*func;
+	char				*name;
+	u8				reg;
+	u8				offset;
+	u8				width;
+	const struct sunxi_sram_func	*func;
 };
 
 struct sunxi_sram_desc {
@@ -54,7 +54,7 @@ struct sunxi_sram_desc {
 		.reg = _reg,					\
 		.offset = _off,					\
 		.width = _width,				\
-		.func = (struct sunxi_sram_func[]){		\
+		.func = (const struct sunxi_sram_func[]){	\
 			__VA_ARGS__, { } },			\
 	}
 
@@ -111,7 +111,7 @@ static int sunxi_sram_show(struct seq_file *s, void *data)
 	struct device_node *sram_node, *section_node;
 	const struct sunxi_sram_data *sram_data;
 	const struct of_device_id *match;
-	struct sunxi_sram_func *func;
+	const struct sunxi_sram_func *func;
 	const __be32 *sram_addr_p, *section_addr_p;
 	u32 val;
 
@@ -169,7 +169,7 @@ static const struct sunxi_sram_data *sunxi_sram_of_parse(struct device_node *nod
 {
 	const struct of_device_id *match;
 	const struct sunxi_sram_data *data;
-	struct sunxi_sram_func *func;
+	const struct sunxi_sram_func *func;
 	struct of_phandle_args args;
 	u8 val;
 	int ret;
-- 
2.47.3


