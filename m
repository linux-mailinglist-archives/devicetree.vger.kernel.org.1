Return-Path: <devicetree+bounces-323656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fzr6GLWET2qUigIAu9opvQ
	(envelope-from <devicetree+bounces-323656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:23:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12628730433
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:23:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=L55aoCig;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323656-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323656-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6DCF306C4A4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B32F931ED83;
	Thu,  9 Jul 2026 11:20:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0608413254
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:20:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596024; cv=none; b=FLjc1PqPLzKhuIX6qRDqBDLPti2uxW+baDgPG2jspxetq44PSVCpUNINFmsoCWJIvysGS9Myu/G6VE8VFAwYqghrXb+qE9+2gJEX+Pj48Ns5URooHkGgH04CsshFbdoL4TMkM1j9PByxXCCeslLA5g/w5ividAff5+jWyjeI5YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596024; c=relaxed/simple;
	bh=Bc+3nUd8JHXptnb6yT5c8317T5N2BuIDDaHFmOya5rY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Omq1e8lbUU1BQGAW39gTCkDBvWyaGY9lIa3YBwRVTHnOyBaevhXnfq1Uwq+mV3/Fynk9kfsRHln+SG7eY/yjvlhxVHmWJo1IXkuu8yd3bJcwbjOrvOdsZsuLhjisn0m3AUvdWWvKeGc8YDRyl8z507Qr+A100IigCjxV2b4ul9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=L55aoCig; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493c83474ddso15456165e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 04:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783596020; x=1784200820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OGtUrkx/TpXSV9KyMxarboRJ5bR8WEDJ79N5wF/Lel0=;
        b=L55aoCigaDLtXTq5VLNvcmJIBthRvEJxwQGWw3V7LC83/1nidZMET1KRNtKFFSciBo
         1ud3KxJ/YvqVe+w7+n7Bs1e3w2BAHErMP+phfvXZ7ISLVCrxslEv6KNMgSZjDCaI2dRD
         Os2RXFzXdd/4egQjdjPCAAz6Wl7kKxOzz2o3SyHcAdwnrH/A9h9n1h9ilvh+9+AgMtVc
         TxG1OjwLz2bpdJiwReoEiCQqwpL99nVB2HA/hHDYgGlqJZV+yvmQOY83DD5NERx05MH5
         TB39ayq5nHVn6E+8qBp8T5KQb52A+XgMkELz9CRqTcSe4nmT87X0HJaxCC/4rhHxtrxx
         kRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783596020; x=1784200820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OGtUrkx/TpXSV9KyMxarboRJ5bR8WEDJ79N5wF/Lel0=;
        b=TiTWp1JwpjsKyAXSmxBzs85pFvqSpFB2/0ngHdx99/vMMyGk504bQt9cHHQfPWwi2z
         Kff/IyOA1oU+1k0dsebBQf3N8rU0d19uWYgWaQv6yCi9/yghS1MNGWvfkrnRCJJ0BMxW
         4jqFB+FmTrb9zNEaLuS63DaB6rCxhHBJEJaOZpWesWwQkuw/NUFWkRaw/HFdomC+XVot
         KlEqPFwCUv/K2zZvEKBgtOQn0tsCfk+IoVhPGsEv1ZSvQ6csE19FFlLjhT415nglL/Qc
         KesmMlH8ZGqTaudrtDKgcPUsdRGzRArv/vRqhsuoSAgKKLVA1o4+H+XvGnm+XWBtK7Rp
         6NRw==
X-Forwarded-Encrypted: i=1; AHgh+RroiW4Efil1dQyvEUeeBSi+mBCwu6FmFXJeo/uVaOR7nFMTY/0WzQ/wPB7zwuqeg+d5avFua2crTL9d@vger.kernel.org
X-Gm-Message-State: AOJu0YzBSGYbTmMlAtgkhDJlYPgE1gslC9QErfOGIIl7xbtZcSCP1/E6
	fakQSUYrDoBi1RkdD9qHL5E+80fB+MzBNH6yVTdJAPfZDHTzCYmym3vuLntrrDGcoGdJYIz0RLK
	yiTQn
X-Gm-Gg: AfdE7ckIX+uXmuzU2kjpXLBDeZEyt++RLPixRUhELQuEmrCraWd36K9nPqGuHiadCoo
	ATmaLGEuZBVBRWzDaAmurrr9nFFaBdkv0xl6/41Inq33WzuaLbiH6SmXnODwB5Uuq0qucFoHhiv
	S9AlkeYCaI12ly37vILG08oT2caN1vgeO5vgbQPFuS9mFvW3Uab7i7b2NdLXayXW/AHNed108DU
	bvm/406F8m6zz7qCpgunNOkPqw7oJFLpxpFFWbE/kr1MnA4C0GCTgzy2fIjsYwR3nqJA6qGXg+H
	TxmzUcHP+A9+dNqyhVZ3hLrqz3hao9St7PZIOC9Jgw+dZTd4WWr1C/aYuhXOj8CI8atZSj/7zJ2
	EgtfJSpGAcDoOQon7lf5AZ3RvLNGvdAvVWDFoViyhxrcsk9A+RZKzmg78eWoMfACn7cGrSvHZqW
	xMYEFh/E4uWyLXTTW/nSn0JgNlb4slNd/vIMiy5xCSSeXk/ENh4WAJQemqIegJ6Rg44nVWXcr75
	r/Tf42BylP+pRPtOlEA+A0bglp1GVjXJfYqCWQvRUQ=
X-Received: by 2002:a05:600c:34d3:b0:493:b4cf:d37f with SMTP id 5b1f17b1804b1-493e68c699bmr69231815e9.16.1783596020048;
        Thu, 09 Jul 2026 04:20:20 -0700 (PDT)
Received: from threadripper-fedora-workstation (dh207-15-57.xnet.hr. [88.207.15.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3c42sm53910475e9.1.2026.07.09.04.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 04:20:18 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	tudor.ambarus@linaro.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 2/5] spi: atmel-quadspi: add controller init callback
Date: Thu,  9 Jul 2026 13:19:08 +0200
Message-ID: <20260709112006.390742-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260709112006.390742-1-robert.marko@sartura.hr>
References: <20260709112006.390742-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-323656-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:tudor.ambarus@linaro.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:robert.marko@sartura.hr,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sartura.hr:from_mime,sartura.hr:email,sartura.hr:mid,sartura.hr:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12628730433

Allow controller variants to provide a custom initialization callback
through their capability data.

This prepares the driver for variants which require a different hardware
initialization sequence without adding SoC checks to the common path.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/spi/atmel-quadspi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index aaf7f4c46b22..62ea84d234d0 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -256,8 +256,11 @@ static const struct atmel_qspi_pcal pcal[ATMEL_QSPI_PCAL_ARRAY_SIZE] = {
 	{200000000, 7},
 };
 
+struct atmel_qspi;
+
 struct atmel_qspi_caps {
 	u32 max_speed_hz;
+	int (*init)(struct atmel_qspi *aq);
 	bool has_qspick;
 	bool has_gclk;
 	bool has_ricr;
@@ -1156,6 +1159,9 @@ static int atmel_qspi_sama7g5_setup(struct spi_device *spi)
 	/* The controller can communicate with a single peripheral device (target). */
 	aq->target_max_speed_hz = spi->max_speed_hz;
 
+	if (aq->caps->init)
+		return aq->caps->init(aq);
+
 	return atmel_qspi_sama7g5_init(aq);
 }
 
@@ -1570,6 +1576,9 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 		return ret;
 	}
 
+	if (aq->caps->init)
+		return aq->caps->init(aq);
+
 	if (aq->caps->has_gclk)
 		return atmel_qspi_sama7g5_init(aq);
 
-- 
2.55.0


