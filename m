Return-Path: <devicetree+bounces-277956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCTsL0M8vGlxvgIAu9opvQ
	(envelope-from <devicetree+bounces-277956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:11:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8972D09CF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F200305D6C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0363F23B9;
	Thu, 19 Mar 2026 17:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="alk1uNv1"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983733F167F;
	Thu, 19 Mar 2026 17:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773943173; cv=none; b=h0G174jlEtQzcHb4PN96qt7coxuJzDJdN95T8YYI+NkHIVgY3XZGaAZcH4+KB4UqepoKMdFFjvrL2Ejc9OtGp3YozeeQePNuWHoOeujn4WUP3Akiwz5CRRSlJkYtMnECSSqwlQOvPvBa2duWMZ6neCPyzll3US5jkSf5uSGvkKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773943173; c=relaxed/simple;
	bh=GwaO3Jgs7I+IjOxIFQXKkawzKx2llBDskSmUtS3EUww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zuh/4iqynyuIvkrG5gVZDvEgga0j3Jsx51nfa3UnnN3H1JCQYjsx0wTGBbtZIRraO1V6MZvkwyjS+OlenJ37VnJTmNLwnr6P7zud6/62IsQXcaEaVyINzaBO5RHtwrkuALTZfEcxKXn2lHf/L6NTgJ4R8FJGkazi+6Qqz3+5zDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=alk1uNv1; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3D94726946;
	Thu, 19 Mar 2026 18:59:31 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGxUr-uXI2OH; Thu, 19 Mar 2026 18:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1773943170; bh=GwaO3Jgs7I+IjOxIFQXKkawzKx2llBDskSmUtS3EUww=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=alk1uNv1fPIoB6AkjUMYziLqstL+IIiDNJUS7o69kRxOyMZb2y6yGn64U3WTr85d9
	 SH5xj66RDeAfpYwHobDZ7U8qOVyCxVRzyuz8GvZXwIvcsVUrUKR6bNTFXNGP1A1WrY
	 8kaTqpkzu/lGwfTH1XEs5WuFMuIUj9cjT0JVookYrR7vUnJq/ND/VLiueKJtmKF8ep
	 RqLpPRwdBQPedEAob5KK+D5avnHUB5GLsXSUt4EAfuDpJVsCvSR11t3ht1s8fYY8lX
	 A2M0E/KJx6P7fBRN3PdpM/YDs/MlUoBxPjL38grmfA4d1VR4He9hCdR2gpyjuBNtaC
	 bIzr5LXAfHqig==
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
Subject: [PATCH v2 3/8] i2c: rtl9300: introduce F_BUSY to the reg_fields struct
Date: Thu, 19 Mar 2026 22:57:48 +0500
Message-ID: <20260319175753.32338-4-adilov@disroot.org>
In-Reply-To: <20260319175753.32338-1-adilov@disroot.org>
References: <20260319175753.32338-1-adilov@disroot.org>
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
	TAGGED_FROM(0.00)[bounces-277956-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.879];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:dkim,disroot.org:email,disroot.org:mid,alliedtelesis.co.nz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C8972D09CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In RTL9607C i2c controller the busy check operation is done on the
separate bit of the command register as opposed to self clearing
command trigger bit on the rtl9300 and rtl9310 i2c controllers.

Introduce a new F_BUSY field to the reg_fields struct for that
and change the regmap read poll function to use F_BUSY
instead of I2C_TRIG.

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/i2c/busses/i2c-rtl9300.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index 2cada6038b44..e40b4692a3fa 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -53,6 +53,7 @@ enum rtl9300_i2c_reg_fields {
 	F_SCL_SEL,
 	F_SDA_OUT_SEL,
 	F_SDA_SEL,
+	F_BUSY,
 
 	/* keep last */
 	F_NUM_FIELDS
@@ -262,7 +263,7 @@ static int rtl9300_i2c_do_xfer(struct rtl9300_i2c *i2c, struct rtl9300_i2c_xfer
 	if (ret)
 		return ret;
 
-	ret = regmap_field_read_poll_timeout(i2c->fields[F_I2C_TRIG], val, !val, 100, 100000);
+	ret = regmap_field_read_poll_timeout(i2c->fields[F_BUSY], val, !val, 100, 100000);
 	if (ret)
 		return ret;
 
@@ -505,6 +506,7 @@ static const struct rtl9300_i2c_drv_data rtl9300_i2c_drv_data = {
 		[F_MEM_ADDR_WIDTH]	= MST_REG_FIELD(RTL9300_I2C_MST_CTRL2, 2, 3),
 		[F_SCL_FREQ]		= MST_REG_FIELD(RTL9300_I2C_MST_CTRL2, 0, 1),
 		[F_SDA_SEL]		= GLB_REG_FIELD(RTL9300_I2C_MST_GLB_CTRL, 0, 7),
+		[F_BUSY]		= MST_REG_FIELD(RTL9300_I2C_MST_CTRL1, 0, 0),
 	},
 	.select_scl = rtl9300_i2c_select_scl,
 	.rd_reg = RTL9300_I2C_MST_DATA_WORD0,
@@ -527,6 +529,7 @@ static const struct rtl9300_i2c_drv_data rtl9310_i2c_drv_data = {
 		[F_I2C_FAIL]		= MST_REG_FIELD(RTL9310_I2C_MST_CTRL, 1, 1),
 		[F_I2C_TRIG]		= MST_REG_FIELD(RTL9310_I2C_MST_CTRL, 0, 0),
 		[F_MEM_ADDR]		= MST_REG_FIELD(RTL9310_I2C_MST_MEMADDR_CTRL, 0, 23),
+		[F_BUSY]		= MST_REG_FIELD(RTL9310_I2C_MST_CTRL, 0, 0),
 	},
 	.select_scl = rtl9310_i2c_select_scl,
 	.rd_reg = RTL9310_I2C_MST_DATA_CTRL,
-- 
2.53.0


