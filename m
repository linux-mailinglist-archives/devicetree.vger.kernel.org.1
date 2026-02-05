Return-Path: <devicetree+bounces-263171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLHcKAIKhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:22:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F16D4F7975
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DAF3304D961
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCD0331216;
	Thu,  5 Feb 2026 21:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jAG+wxtW"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334FE330D5E;
	Thu,  5 Feb 2026 21:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326401; cv=none; b=MobnusEPyqSS6IGm0yWDZnncge65DeIuuseWuNnzXfFJEtjlbWwveUbeYbHf6f/aZfGrOflm4HIiiOd7dUaPgk4AwuPTmKeDlfMlIjWyCtpuP/Ecppz/xk9Wi8Xuuuh9ur5WIj5iMzVtf2PLN0cp4I1G6DVIcHEern7OdxHsmcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326401; c=relaxed/simple;
	bh=Iuv53CRpaLqRYXNF38cIvJAgFWKOVY3yrHfVv4fMM7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hn/JOiQDzGSXQsBED17ftBPWpcNVJMoxfypQGjNiQKaJw9cFvA9aDGnvt3+2c9i5eMpX8nvwN3hDJqQr8SkFVRymyXV93uhmdujrDltxpQnhKxO1alaeTVxjWo3kyk/soJFi4CMbqONgC5NJ+dcnE0liWulX5VefF5jxMzOqEzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jAG+wxtW; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=83LLaWI4nvP43ZuSD+xZcE4d6TH7dZSlprk9pVcO6SM=; b=jAG+wxtWyf/aIzCpe9BmYMSGMo
	YyQrSVg4rt3t2I3QEbgeE2od7J5aDY25Q1nnZAY4l8iaXezOGlEJMIx6L/souB2FEyXn5qgUvriEi
	VaZEfbRoaOsvnFwwmvfMxQA9nr7Ol+HEVxz8snH+IbYbhwpBQfbxNxn3wWGhJuBP9JOrZkXaaRd8d
	i17kk2gsFfvzgg8+A4UPq+6aAya2yUXsJnV3zqane9zyYCsFyXo/qk+P5Zv9Z4hxMgbrlVHcXLvNG
	3wRYS45lo4xENy/jYW9iRXG/EAiF2R0cWwawqdgSLlojyp4VZ98qmqMiS+CCCSUUUcM44UO2skBsw
	NF2AZeVQ==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lP-007GGK-9G; Thu, 05 Feb 2026 22:19:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kever.yang@rock-chips.com,
	finley.xiao@rock-chips.com,
	w@1wt.eu,
	jonas@kwiboo.se
Subject: [PATCH v4 4/6] nvmem: rockchip-otp: Add support for RK3568
Date: Thu,  5 Feb 2026 22:18:59 +0100
Message-ID: <20260205211901.490181-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260205211901.490181-1-heiko@sntech.de>
References: <20260205211901.490181-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263171-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email]
X-Rspamd-Queue-Id: F16D4F7975
X-Rspamd-Action: no action

From: Finley Xiao <finley.xiao@rock-chips.com>

This adds the necessary data for handling otp the rk3568.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 69 ++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 45bbb6147fb7..cfb69bc58869 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -27,6 +27,7 @@
 #define OTPC_USER_CTRL			0x0100
 #define OTPC_USER_ADDR			0x0104
 #define OTPC_USER_ENABLE		0x0108
+#define OTPC_USER_QP			0x0120
 #define OTPC_USER_Q			0x0124
 #define OTPC_INT_STATUS			0x0304
 #define OTPC_SBPI_CMD0_OFFSET		0x1000
@@ -184,6 +185,58 @@ static int px30_otp_read(void *context, unsigned int offset,
 	return ret;
 }
 
+static int rk3568_otp_read(void *context, unsigned int offset, void *val,
+			   size_t count)
+{
+	struct rockchip_otp *otp = context;
+	u16 *buf = val;
+	u32 otp_qp;
+	int ret;
+
+	ret = rockchip_otp_reset(otp);
+	if (ret) {
+		dev_err(otp->dev, "failed to reset otp phy\n");
+		return ret;
+	}
+
+	ret = rockchip_otp_ecc_enable(otp, true);
+	if (ret) {
+		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
+		return ret;
+	}
+
+	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+	udelay(5);
+
+	while (count--) {
+		writel(offset++ | OTPC_USER_ADDR_MASK,
+		       otp->base + OTPC_USER_ADDR);
+		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
+		       otp->base + OTPC_USER_ENABLE);
+
+		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS,
+					       OTPC_USER_DONE);
+		if (ret) {
+			dev_err(otp->dev, "timeout during read setup\n");
+			goto read_end;
+		}
+
+		otp_qp = readl(otp->base + OTPC_USER_QP);
+		if (((otp_qp & 0xc0) == 0xc0) || (otp_qp & 0x20)) {
+			ret = -EIO;
+			dev_err(otp->dev, "ecc check error during read setup\n");
+			goto read_end;
+		}
+
+		*buf++ = readl(otp->base + OTPC_USER_Q);
+	}
+
+read_end:
+	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+
+	return ret;
+}
+
 static int rk3588_otp_read(void *context, unsigned int offset,
 			   void *val, size_t count)
 {
@@ -280,6 +333,18 @@ static const struct rockchip_data px30_data = {
 	.reg_read = px30_otp_read,
 };
 
+static const char * const rk3568_otp_clocks[] = {
+	"otp", "apb_pclk", "phy", "sbpi",
+};
+
+static const struct rockchip_data rk3568_data = {
+	.size = 0x80,
+	.word_size = sizeof(u16),
+	.clks = rk3568_otp_clocks,
+	.num_clks = ARRAY_SIZE(rk3568_otp_clocks),
+	.reg_read = rk3568_otp_read,
+};
+
 static const struct rockchip_data rk3576_data = {
 	.size = 0x100,
 	.read_offset = 0x700,
@@ -311,6 +376,10 @@ static const struct of_device_id rockchip_otp_match[] = {
 		.compatible = "rockchip,rk3308-otp",
 		.data = &px30_data,
 	},
+	{
+		.compatible = "rockchip,rk3568-otp",
+		.data = &rk3568_data,
+	},
 	{
 		.compatible = "rockchip,rk3576-otp",
 		.data = &rk3576_data,
-- 
2.47.2


