Return-Path: <devicetree+bounces-278870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HVMBbjpwGl6OQQAu9opvQ
	(envelope-from <devicetree+bounces-278870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:20:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 673072ED716
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E04FF303DD24
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 07:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6F135DA48;
	Mon, 23 Mar 2026 07:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="OnX3S6+B"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3535CB6F;
	Mon, 23 Mar 2026 07:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774250051; cv=none; b=l7mljSBtSHfW3QmCyJ0NyWPCai/w6C2EfSOhC7opzIVMHZpSafgUbOKPipHiTYrOrLqENGPDk/2H5mDFB97DcI69PGRyZ26o26EA0/6726FF6sNuI1vZZEhVTomo7JPhT6Fa6JwXxZTFeC+0Odlt8wkg7ajt3bGGxYqtQORrhLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774250051; c=relaxed/simple;
	bh=78qH5nIWIELIDV6PJGBxhJTVaTi35H4kfKGiY4tduC4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RoNyN3kvaaHScPlMtCGMwXcvQ3TANMnQ4P3F3k3RMeEYGWVs42FZ7wsH2+Xz63s3c/mi/edaSKpCRIVzyy1K8SsALt5+mIPMmkBslUzoGS+Yf4i1XB+0XMcQY536eV2PtJqSK4+WW3998DCCFthCu7veUJvfUEt2Jn4HUAnAas8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=OnX3S6+B; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C967526F37;
	Mon, 23 Mar 2026 08:14:08 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Rg9mkcuE9jR; Mon, 23 Mar 2026 08:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774250048; bh=78qH5nIWIELIDV6PJGBxhJTVaTi35H4kfKGiY4tduC4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=OnX3S6+BnP5VdU5Zh6cnnKuQR5p2Z9GUB3B27YwxEvHJnZTFtyHKYcmafeS5GrOPh
	 NY9XmR42k4JLtmtksExKQmUJ0fRNGxtMEQ9cbBaAWmTKE3nuUvlUIstSrg2iwFyRgu
	 ICnc9V+ugA0ILNCGHh2Xd8OAktxjUh/qRfGJqo3rATUR3hBGTfvS8GsrckO4fWJ7xO
	 aJfZnRUrR6Rth+mWCPRonx0vOgFFsO946zRCQ/VHTTRqEK4PBVOGNsqQZHMzM4MJMA
	 6XnC/pgTmblb27VdlxOoc7LCX5eOKmD5r56b4w6Flr7Ct1yWyI4x8K5dLE2yhwbyrj
	 mMeTr7/ro4wKw==
From: Rustam Adilov <adilov@disroot.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v4 2/8] i2c: rtl9300: introduce max length property to driver data
Date: Mon, 23 Mar 2026 12:13:31 +0500
Message-ID: <20260323071337.15410-3-adilov@disroot.org>
In-Reply-To: <20260323071337.15410-1-adilov@disroot.org>
References: <20260323071337.15410-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278870-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alliedtelesis.co.nz:email,disroot.org:dkim,disroot.org:email,disroot.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 673072ED716
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In RTL9607C i2c controller, theoretical maximum the data length
can be is 4 bytes as opposed to 16 bytes on rtl9300 and rtl9310.

Introduce a new property to the driver data struct for that.
Adjust if statement in prepare_xfer function to follow that new
property instead of the hardcoded value.

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/i2c/busses/i2c-rtl9300.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index 9bf4c6b08e05..2cada6038b44 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -64,11 +64,14 @@ struct rtl9300_i2c_drv_data {
 	u32 rd_reg;
 	u32 wd_reg;
 	u8 max_nchan;
+	u8 max_data_len;
 };
 
 #define RTL9300_I2C_MUX_NCHAN	8
 #define RTL9310_I2C_MUX_NCHAN	12
 
+#define RTL9300_I2C_MAX_DATA_LEN	16
+
 struct rtl9300_i2c {
 	struct regmap *regmap;
 	struct device *dev;
@@ -210,9 +213,11 @@ static int rtl9300_i2c_writel(struct rtl9300_i2c *i2c, u32 data)
 
 static int rtl9300_i2c_prepare_xfer(struct rtl9300_i2c *i2c, struct rtl9300_i2c_xfer *xfer)
 {
+	const struct rtl9300_i2c_drv_data *drv_data;
 	int ret;
 
-	if (xfer->data_len < 1 || xfer->data_len > 16)
+	drv_data = device_get_match_data(i2c->dev);
+	if (xfer->data_len < 1 || xfer->data_len > drv_data->max_data_len)
 		return -EINVAL;
 
 	ret = regmap_field_write(i2c->fields[F_DEV_ADDR], xfer->dev_addr);
@@ -505,6 +510,7 @@ static const struct rtl9300_i2c_drv_data rtl9300_i2c_drv_data = {
 	.rd_reg = RTL9300_I2C_MST_DATA_WORD0,
 	.wd_reg = RTL9300_I2C_MST_DATA_WORD0,
 	.max_nchan = RTL9300_I2C_MUX_NCHAN,
+	.max_data_len = RTL9300_I2C_MAX_DATA_LEN,
 };
 
 static const struct rtl9300_i2c_drv_data rtl9310_i2c_drv_data = {
@@ -526,6 +532,7 @@ static const struct rtl9300_i2c_drv_data rtl9310_i2c_drv_data = {
 	.rd_reg = RTL9310_I2C_MST_DATA_CTRL,
 	.wd_reg = RTL9310_I2C_MST_DATA_CTRL,
 	.max_nchan = RTL9310_I2C_MUX_NCHAN,
+	.max_data_len = RTL9300_I2C_MAX_DATA_LEN,
 };
 
 static const struct of_device_id i2c_rtl9300_dt_ids[] = {
-- 
2.53.0


