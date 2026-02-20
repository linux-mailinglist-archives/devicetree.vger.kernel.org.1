Return-Path: <devicetree+bounces-266811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNzKJgP+l2lN/AIAu9opvQ
	(envelope-from <devicetree+bounces-266811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:24:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4FB164F1D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:24:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D176930432DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B0833122D;
	Fri, 20 Feb 2026 06:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B+SGphOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F19132E6AB
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568592; cv=none; b=anqRtZMNwzWF/1/FC/IA9H4RYrsENAX7l/1+g9jTV9ybw2scpUnSRmBrJA33mcXkh4emkBq14ySDGggD8fT/L4XjPlrFwmLfA2iePfIMrFYWOCmnH4wOekcFSbO8IaE4U9K/qncXXUfFn5nqnEQFj0M34x1KQ1jBjHUQr3Oc+PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568592; c=relaxed/simple;
	bh=N+heUpUpHRoLlSYpeT0QKAiwnnPwr/kVMMau4CF1jBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lq4AG+ycie7WCl9kbBmlF5VL9yv2WNBjh5ld1FuwMXqw2q03h0YU14otfHL4yTPi/GFVFxQPmWSXOZ9M2XlJHm3rNnJrK3QI3PaW3mcwKWTNWMJf2LSerslNXVHrK+BODHNH/NPe9/z/3uFHZL+J9hU+/juStIiQ1oaKQRpfRQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B+SGphOl; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-8966bd9da41so17394236d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771568590; x=1772173390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r4pFsMe3WWbMxm2HgYQHGTzj5G++S8g06QTHlbIujGQ=;
        b=B+SGphOloC1am7LeplFYR0ar1WZARYtvYPXkthG3E3bbl0CQfkbwZKdyprUJTycGfW
         SYXF0gtwjM6UR/Rtq9LZXWvxhmEyVPnXuC+6SHIvfP7Ne17n4xgjHvJqhyUTQAJtBMG6
         WsDnTJ7Kcv00DvfoKdxtB98hW/YIE1imQISk0sVr05U+P1W+X4pnutRM8Sxt6SZrWc9y
         Vg52QEHdxj23+rnPk76tF/+f3lbRrNCeJTQOrP+Iz7z1/hhGIAUSKBr9hu/F+QdR1BmS
         2W1Y0KOdN0LhKr4vkmrBODY558Rveh9y3oaGx70BUyt3nrjizzJy7nF4I5XCI4buSYSG
         WzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771568590; x=1772173390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r4pFsMe3WWbMxm2HgYQHGTzj5G++S8g06QTHlbIujGQ=;
        b=aSOnZiHHHMpde/lUSrQ8wNxUudFTmJ79qpsnbTkM0hi21ClsS6qEP6n/yEesIt9UhV
         jOCe4Ty/A4oFOsauyLhIQFWRx3iDQUGJf2ycZRU0mtHY3Lf/wRgyNCAZLB0eDrNYoj2W
         qEIsmcIsvXlyi2PfNcdI+INiT9lsWK3EvQiS07w23DR8Ba99wy+7nLiMtQy3tqIpxo3V
         lAPPDy+ZeWwJ+/9igor4ZaimbqMHwpdQFnsO8DqrSVJPa+/klr5rBUkHwN7cocutLkGu
         J9qFPbAhlcUNX+GyAkltUUcrDc4175Uh3MgE6P/kcr6yBlwF8Ub4vm/067FpKSCvycwj
         Lbuw==
X-Forwarded-Encrypted: i=1; AJvYcCVCVtXnZIe/mfSJB1DlXJ1VG0JoQ4Ff8lSMjPGcvvz2lntNlf/2ynIlDf+jcHokA3YikKWEhyJHMfsF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1pZhbpbPvusa8Znp+iTM9IrWpeKIET4FJnzBgH8TJ1FI9EsiX
	cc/uf1AJC1j87TKP5VMLzjQZNV6baEsdMTg/hqsoklQbOEFWttWJciXi
X-Gm-Gg: AZuq6aIL3sbo7QZgwKYx0Aqfm/sNl9mVBwKN/xXGLHCIqwmmsiV5CmdemaHBaecJb04
	/4CHhmzaNpoHmR8Sn1pBMwtoxrclDfSlPZW0meQX6kfWQ3pG7lxiKcnEOOURwlme948QYDjj9OR
	V+cllifN630Ux2AyBo3ZK1aFw56iqhHiZLOdNKyncZuHZtCP98TwuzHu0R3/Mlnw2WCOq1WLeQV
	Hpku7czIWW8GM0tU4NDo9HTqJlXYV2MtnQucMft0hcPYdPqN/ZnOQANVheMXRXByZ50bbERQRxq
	ED0o/VzlnI4AyfnAjJvX0SgYVvDRUHCvYTpUPJUU3p6e7y9zNgBcDqelOcCkf/SC2DUpEi4sfX0
	uyBiBWMv4NqghO+iiLBiDwbldenjuSMGYvaZJCcJJzoTBpHOi1glIKaL+ejNRo00yrsryfZYcJh
	QX2R7vo4k5507Xus63vFmKLz+0ddA=
X-Received: by 2002:a05:6214:1d08:b0:894:7c5e:3368 with SMTP id 6a1803df08f44-897402d8d03mr299450516d6.4.1771568590006;
        Thu, 19 Feb 2026 22:23:10 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cd8a5ccsm234206306d6.25.2026.02.19.22.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 22:23:09 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Fri, 20 Feb 2026 06:22:41 +0000
Subject: [PATCH v3 2/2] usb: typec: tcpm: Add vid and chip info for Etek
 ET7304
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-et7304-v3-2-ede2d9634957@gmail.com>
References: <20260220-et7304-v3-0-ede2d9634957@gmail.com>
In-Reply-To: <20260220-et7304-v3-0-ede2d9634957@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266811-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F4FB164F1D
X-Rspamd-Action: no action

Move VID field to chip info to accommodate different VIDs.
Add chip info for Etek Micro ET7304. ET7304 is functionally
identical to the Richtek RT1715, with the only difference
being the VID.

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 drivers/usb/typec/tcpm/tcpci_rt1711h.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_rt1711h.c b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
index 88c50b984e8a..37cf55ad74f8 100644
--- a/drivers/usb/typec/tcpm/tcpci_rt1711h.c
+++ b/drivers/usb/typec/tcpm/tcpci_rt1711h.c
@@ -19,9 +19,11 @@
 #include <linux/regulator/consumer.h>
 
 #define RT1711H_VID		0x29CF
+#define ET7304_VID		0x6DCF
 #define RT1711H_PID		0x1711
 #define RT1711H_DID		0x2171
 #define RT1715_DID		0x2173
+#define ET7304_DID		0x2173
 
 #define RT1711H_PHYCTRL1	0x80
 #define RT1711H_PHYCTRL2	0x81
@@ -55,6 +57,7 @@
 
 struct rt1711h_chip_info {
 	u32 rxdz_sel;
+	u16 vid;
 	u16 did;
 	bool enable_pd30_extended_message;
 };
@@ -308,7 +311,7 @@ static int rt1711h_check_revision(struct i2c_client *i2c, struct rt1711h_chip *c
 	ret = i2c_smbus_read_word_data(i2c, TCPC_VENDOR_ID);
 	if (ret < 0)
 		return ret;
-	if (ret != RT1711H_VID) {
+	if (ret != chip->info->vid) {
 		dev_err(&i2c->dev, "vid is not correct, 0x%04x\n", ret);
 		return -ENODEV;
 	}
@@ -405,17 +408,27 @@ static void rt1711h_remove(struct i2c_client *client)
 	tcpci_unregister_port(chip->tcpci);
 }
 
+static const struct rt1711h_chip_info et7304 = {
+	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
+	.vid = ET7304_VID,
+	.did = ET7304_DID,
+	.enable_pd30_extended_message = true,
+};
+
 static const struct rt1711h_chip_info rt1711h = {
+	.vid = RT1711H_VID,
 	.did = RT1711H_DID,
 };
 
 static const struct rt1711h_chip_info rt1715 = {
 	.rxdz_sel = RT1711H_BMCIO_RXDZSEL,
+	.vid = RT1711H_VID,
 	.did = RT1715_DID,
 	.enable_pd30_extended_message = true,
 };
 
 static const struct i2c_device_id rt1711h_id[] = {
+	{ "et7304", (kernel_ulong_t)&et7304 },
 	{ "rt1711h", (kernel_ulong_t)&rt1711h },
 	{ "rt1715", (kernel_ulong_t)&rt1715 },
 	{}
@@ -423,6 +436,7 @@ static const struct i2c_device_id rt1711h_id[] = {
 MODULE_DEVICE_TABLE(i2c, rt1711h_id);
 
 static const struct of_device_id rt1711h_of_match[] = {
+	{ .compatible = "etekmicro,et7304", .data = &et7304 },
 	{ .compatible = "richtek,rt1711h", .data = &rt1711h },
 	{ .compatible = "richtek,rt1715", .data = &rt1715 },
 	{}

-- 
2.53.0


