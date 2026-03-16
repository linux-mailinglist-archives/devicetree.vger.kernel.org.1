Return-Path: <devicetree+bounces-276339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBLmF509uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:27:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E415629E30A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B49E630A87FC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33C1E3D5667;
	Mon, 16 Mar 2026 17:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="goVsI22c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F139C3D5242
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681603; cv=none; b=MHnYQwC4zIoiPfNoKE4LegzXDsZZnoIe0KW6oBkS+hxNgcvePbyoTeJu+JwyJ/zmHY6GEoxcXU49h6/lfm+1SqRjJYBAcgCFTKira17aNTA1Aay2pPvbvD0sgj/0IyZm+wuqOpr+NuGe0ho3Uq43VdHGzcyjDkyuYDJKijUY3Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681603; c=relaxed/simple;
	bh=IU0IBscarTUHstHmwSwIa08PL60ws1VZKbiLKVlW0Jc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TM6y01JE4h2LjzM38k03aGjmKHbc35dJ4x7fCNGnk4bCQZkfm8cRU3Xx4oKy0Ycpb7Z14NrksVfTuzEga8UScVPmmSZ2yjVXAGdjcU0+RtY4bn6ptWs5UPZRDdGgM2mnzxcKiDt+M2cTSRIb72RAeKbWfDP/E6zKfdDgVY12tak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=goVsI22c; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b94358796a1so693306966b.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681599; x=1774286399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LvZUSKnnGPiJWJPl2Ub4VP/4FdncxUtageJMqGG/QlU=;
        b=goVsI22cRBccBY1QhKM3ZgHopz2avwnvc6FgW70gB9AewxC9933tQbDjq4q/p7JGkV
         Aku/W6wDs+iJcapBKHozLHDIqFCLneLT+W0sQuf1GhPYEaJbeyX8wy1ZqXVU4pp14v8R
         vzwSsww5144oJi38W/n0xjg/2J5/nuHsrVw7DLplJdQ+ujCfTBc4mFBc6421iO6elFI/
         D7O/1U28rKrit68DA981T1xPM78M/AR228laQcKIoXPqhg2ahSyCWnbQDC3QzBEbc+jJ
         KEHLadNU2MuHr4XlFN8aF56wQBxvNqhXzX0xkmqGCnHEpB7M9IDN1S3WbvcBStvDlS/b
         fuAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681599; x=1774286399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LvZUSKnnGPiJWJPl2Ub4VP/4FdncxUtageJMqGG/QlU=;
        b=BEj0FcLed0Kuxa2sXRSibtXOeVqmLN001QMLpKwszL6swg1gggzc7+xsWXi8ELHljz
         Ai+T3rQeoHZnuYQKTYH/8D6SKj1Q08HIpX/mb7etEC1sAK68UJMY7OZoQlKLVGLliz3D
         5hQH9A8RCCOO6xm4Wj/GTrBEPp7vCGjo7XRntOpaPZA7Y4HKkek/eB1/GSU/MbPhJmfn
         UC/Pk6fWRC898hObppNQDd433YFV1GvIhwGdbHzm07PDwwNGrE1moPgThh2TSXiCs5q4
         SoROMTYDoU8n13odEs10syTGW4FyhakHybzDltN1V+sNXYql9paOvj+2S5TBifxJcJUC
         tQVg==
X-Forwarded-Encrypted: i=1; AJvYcCU36VnLrvWfEwJxupvo2/8ww4LB8nV4wdXcSvqIx9YEpNwHB+bk1euTMZ5CRHRRjmeWSaGXOoMvlPy7@vger.kernel.org
X-Gm-Message-State: AOJu0YwMB+oJKGCS4ggZb37pUfD6T3q1Jxykx1i3T/p1oJT5ncj0npNk
	ZgFYby2fKnFx/oBymFps7gOHg5Ocvr//uwXg5/c96l0m9HqwCSiSr9KU
X-Gm-Gg: ATEYQzyfv0q8UA2xHFywo+BxGjv0aVBPg7TEFsH1JWkDYMiTZB5EEJA2xRqgY1sZbMO
	iz7S5jAN5iHunqGF8vVHOZBpDXMIR4sJYFDFPYywBAx7JzJpD0NXC4E6KktqmC1aNPDXxYq2IXg
	nBA4/p2NmXlAm06X/A+CUnDbr/7NxN+Q7Q0hxNgOUps+vGEbZoq4v0OjUUMu4Ia0/tc+jaxqZL5
	KrqcHWo/477/byuTx/QaE4i+KridYhI7F8dBpdPZyqkkuU8URJtRBsXWoYuHQlGjH9MEXFcnPlR
	DDKiesimMxjI24/DHNtUPZiH++SqJhgsDmG10vsh/FV8zp0w/IaKv5+6i+tfBgdfrSAD9yg99UB
	blJ1LKE2hROXiTDiwdvKNOcP74Q+5+KjkkWAJmPclBzx/XA/C3sp4mXTSrsoMzDliru2h3iBrlm
	QVoBR1UUsXloDvsGJiHIYVSmQefA==
X-Received: by 2002:a17:907:d2e1:b0:b93:56a4:d6bc with SMTP id a640c23a62f3a-b976537e217mr764917466b.49.1773681599374;
        Mon, 16 Mar 2026 10:19:59 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:59 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:51 +0200
Subject: [PATCH v4 7/7] iio: light: vcnl4000: add support for regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-7-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	TAGGED_FROM(0.00)[bounces-276339-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E415629E30A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.

Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 0a4d82679cfe..5d1408aca562 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -24,6 +24,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>
@@ -1985,6 +1986,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vddio", "vled" };
 	struct device *dev = &client->dev;
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
@@ -2000,6 +2002,11 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
+	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(regulator_names),
+					     regulator_names);
+	if (ret)
+		return ret;
+
 	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
 	if (ret)
 		return ret;

-- 
2.53.0


