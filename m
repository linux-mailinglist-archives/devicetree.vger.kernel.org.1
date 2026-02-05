Return-Path: <devicetree+bounces-263170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG9IG6AJhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF4F7921
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34078302C5E4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DDD33122D;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="eaSMbcqw"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F26633067C;
	Thu,  5 Feb 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326397; cv=none; b=k9Spo24N0ZeTebX8LEYL6ZdmBGr1BlbOy3+9q3c+ra8dMX0V82s2letNg9Hp453PTlzD+JbjUz7gPV0GvxPMLijqrQCqQbhRR5gT/bFwsg8hAxB9xVIwMTffQZwjp9fPnMMvgmF00d/00qeTXPQyhZgCtRTKIODnuvNTAPezhvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326397; c=relaxed/simple;
	bh=Xasw4d4mwXG93qD8usrdknc6eFJyRzwpsqBGaPXBE5c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MsbRR6CKPs6FP53HwkSlzA8fLmlLtxf/6ejP6UK0rntUqVXHWmmR22M0yX59HaR6d7xJNjF6DUs0pRC+TA0yo+tUjHdyYw07iDhVMkDTypc/+xF6nQ0Dbl/sLsKv65ij2A7ySDnuwfOoRkygEUKyeXGKDjXuP0Jo2CyYiYPu1oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=eaSMbcqw; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=ZOF//ASirxT4IYkkrfdpjk6ayaCFhALsQsVAb+Q9UIA=; b=eaSMbcqwVMt9yjzpsxTrnAkLIZ
	bS8/943Z8NMb4IKV652gDM6lHm9YRf7qhsIVdIo1DaFMH+gj1UASpJfuGXpYPz30y9dV3yUCDWBIU
	eJVE+tMqDYUgl+ctF7Pe4+haiBuiW7bXYAXN3VXBQOP+gWw2Osj7Wln+p9giBPJMPP7ceGwc8tViB
	1WzmqOf9yd2mtrJ/q+o7RoHvUprDjEjKZBox0lHdVLzL8PHgkKfxZsdqD0rWorZMiEzzM5qKWVkL8
	CWscPJlLnpayL/EDRM9xU6heCP6bb9TG0o4YBOxjURo4ZokEWF2YOrNgTjx/JnJaAlv5Bkkckojx4
	8FwiH1Vg==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vo6lO-007GGK-OW; Thu, 05 Feb 2026 22:19:47 +0100
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
Subject: [PATCH v4 3/6] nvmem: rockchip-otp: Handle internal word_size in main reg_read op
Date: Thu,  5 Feb 2026 22:18:58 +0100
Message-ID: <20260205211901.490181-4-heiko@sntech.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-263170-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim,sntech.de:mid,kwiboo.se:email,1wt.eu:email]
X-Rspamd-Queue-Id: DDBF4F7921
X-Rspamd-Action: no action

From: Jonas Karlman <jonas@kwiboo.se>

Rockchip SoCs RK3576 and RK3588 read data from the OTP using 32-bit
words instead of normal 8-bit bytes. Similar RK3506, RK3528, RK3562 and
RK3568 will read data from OTP using 16-bit words.

The nvmem core stride and word_size cannot fully be used as cells is not
always aligned. Continue to report a stride=1 and word_size=1 in
nvmem_config and instead handle use of SoC specific word_size internally
in the driver.

Move current SoC specific word_size handling from the RK3588 read_reg
operation to the main read_reg operation to help simplify the SoC
specific read_reg operation and allow code reuse in a future RK3568
reg_read operation.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Willy Tarreau <w@1wt.eu>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 72 ++++++++++++++++++++----------------
 1 file changed, 40 insertions(+), 32 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index d88f12c53242..45bbb6147fb7 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -59,7 +59,6 @@
 #define RK3588_OTPC_AUTO_EN		0x08
 #define RK3588_OTPC_INT_ST		0x84
 #define RK3588_OTPC_DOUT0		0x20
-#define RK3588_NBYTES			4
 #define RK3588_BURST_NUM		1
 #define RK3588_BURST_SHIFT		8
 #define RK3588_ADDR_SHIFT		16
@@ -69,6 +68,7 @@
 struct rockchip_data {
 	int size;
 	int read_offset;
+	int word_size;
 	const char * const *clks;
 	int num_clks;
 	nvmem_reg_read_t reg_read;
@@ -185,48 +185,28 @@ static int px30_otp_read(void *context, unsigned int offset,
 }
 
 static int rk3588_otp_read(void *context, unsigned int offset,
-			   void *val, size_t bytes)
+			   void *val, size_t count)
 {
 	struct rockchip_otp *otp = context;
-	unsigned int addr_start, addr_end, addr_len;
-	int ret, i = 0;
-	u32 data;
-	u8 *buf;
-
-	addr_start = round_down(offset, RK3588_NBYTES) / RK3588_NBYTES;
-	addr_end = round_up(offset + bytes, RK3588_NBYTES) / RK3588_NBYTES;
-	addr_len = addr_end - addr_start;
-	addr_start += otp->data->read_offset / RK3588_NBYTES;
-
-	buf = kzalloc(array_size(addr_len, RK3588_NBYTES), GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
+	u32 *buf = val;
+	int ret;
 
-	while (addr_len--) {
-		writel((addr_start << RK3588_ADDR_SHIFT) |
+	while (count--) {
+		writel((offset++ << RK3588_ADDR_SHIFT) |
 		       (RK3588_BURST_NUM << RK3588_BURST_SHIFT),
 		       otp->base + RK3588_OTPC_AUTO_CTRL);
 		writel(RK3588_AUTO_EN, otp->base + RK3588_OTPC_AUTO_EN);
 
 		ret = rockchip_otp_wait_status(otp, RK3588_OTPC_INT_ST,
 					       RK3588_RD_DONE);
-		if (ret < 0) {
+		if (ret) {
 			dev_err(otp->dev, "timeout during read setup\n");
-			goto read_end;
+			return ret;
 		}
 
-		data = readl(otp->base + RK3588_OTPC_DOUT0);
-		memcpy(&buf[i], &data, RK3588_NBYTES);
-
-		i += RK3588_NBYTES;
-		addr_start++;
+		*buf++ = readl(otp->base + RK3588_OTPC_DOUT0);
 	}
 
-	memcpy(val, buf + offset % RK3588_NBYTES, bytes);
-
-read_end:
-	kfree(buf);
-
 	return ret;
 }
 
@@ -234,7 +214,7 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 			     void *val, size_t bytes)
 {
 	struct rockchip_otp *otp = context;
-	int ret;
+	int ret, word_size;
 
 	if (!otp->data || !otp->data->reg_read)
 		return -EINVAL;
@@ -245,8 +225,34 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 		return ret;
 	}
 
-	ret = otp->data->reg_read(context, offset, val, bytes);
+	offset += otp->data->read_offset;
+	word_size = otp->data->word_size;
+
+	if (word_size > 1) {
+		unsigned int addr_start, addr_end;
+		size_t count;
+		u8 *buf;
+
+		addr_start = offset / word_size;
+		addr_end = DIV_ROUND_UP(offset + bytes, word_size);
+		count = addr_end - addr_start;
+
+		buf = kzalloc(array_size(count, word_size), GFP_KERNEL);
+		if (!buf) {
+			ret = -ENOMEM;
+			goto err;
+		}
+
+		ret = otp->data->reg_read(context, addr_start, buf, count);
+		if (!ret)
+			memcpy(val, buf + (offset % word_size), bytes);
+
+		kfree(buf);
+	} else {
+		ret = otp->data->reg_read(context, offset, val, bytes);
+	}
 
+err:
 	clk_bulk_disable_unprepare(otp->data->num_clks, otp->clks);
 
 	return ret;
@@ -259,7 +265,7 @@ static struct nvmem_config otp_config = {
 	.type = NVMEM_TYPE_OTP,
 	.read_only = true,
 	.stride = 1,
-	.word_size = 1,
+	.word_size = sizeof(u8),
 	.reg_read = rockchip_otp_read,
 };
 
@@ -277,6 +283,7 @@ static const struct rockchip_data px30_data = {
 static const struct rockchip_data rk3576_data = {
 	.size = 0x100,
 	.read_offset = 0x700,
+	.word_size = sizeof(u32),
 	.clks = px30_otp_clocks,
 	.num_clks = ARRAY_SIZE(px30_otp_clocks),
 	.reg_read = rk3588_otp_read,
@@ -289,6 +296,7 @@ static const char * const rk3588_otp_clocks[] = {
 static const struct rockchip_data rk3588_data = {
 	.size = 0x400,
 	.read_offset = 0xc00,
+	.word_size = sizeof(u32),
 	.clks = rk3588_otp_clocks,
 	.num_clks = ARRAY_SIZE(rk3588_otp_clocks),
 	.reg_read = rk3588_otp_read,
-- 
2.47.2


