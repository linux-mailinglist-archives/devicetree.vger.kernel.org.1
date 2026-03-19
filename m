Return-Path: <devicetree+bounces-277737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B3xLxniu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:46:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5732CA8EA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBB473234EEA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4B938F22A;
	Thu, 19 Mar 2026 11:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NpbluQ7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C187338BF61
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920354; cv=none; b=T/mjsU8uKpQF7GkSKYwEInphery4sS4Kcs5tvo+CjHSD74Dn2R/vz95Z8w9t/6EVoTZWGO8ennWutcu/SlRbT/MiEzFjuNUfLHcxSy3gnzr75NYvbZJ9F8ePyDbu0/tqMIxVyFsKsWRCP7hE8Z75AeGHcErW9xlzUgC+5AbZZjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920354; c=relaxed/simple;
	bh=zt337e4gTE9xXxNQMH3ePobVgbsbexBH0pn/bLfRr+I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=lUCTkwsMEmC4fg0ReMYKq5OQ3XsywQitUnzTCju/DkzD0pY7n1c1xAUQKAkLAXYcc7J00YJ4cVdz60E9oPewvcyTnRhBl1UCP7PUy8QGAipMOBit+2haXBmdn3WCRdv2ru9i4dVL7j3B8nrsAoRvwOo8jgVRDhaTYnUnS6otTuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NpbluQ7i; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c648bc907ebso474264a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773920349; x=1774525149; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QlMf/4RiPeA+AQtQ02sHnl1xehVwZOmS485+huZWyf4=;
        b=NpbluQ7itxUFdZXq23w+CnloX2SqOAckAjzutOa7R1rAK78DD03JZ5JkOYZHYjXIbC
         A/VYQEoVt0YaecvqKjjX520UyA71inXv1p5ou18p/hxqDcgOgHtHeeC2khRXtu9utqG/
         ++O1MC3fZIZReKTzSnCzlp/g8C7Cab/Ox3Om7Mj4Mj7ZIiKr9aYa89fXRIrSZ4+KyppG
         kYlAM7qN/QrZ+QvtnoGW1PrtLPohuSJCOrMgEL9b7C+EEhXN6sJcy8oDCfWq8KM9JIhD
         FwobhcDgtiEafSR6/d2BWosydhEsmv6ymz7+OHh1QULJIpB8SbPRDWQS6HyJd3h0FHIW
         k6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773920349; x=1774525149;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QlMf/4RiPeA+AQtQ02sHnl1xehVwZOmS485+huZWyf4=;
        b=ry0DgIbZI4qtqKhkP9rJeytUF0kBCUEJyJmmjBLMs0aBTPpSQL1H6qNQ8bl6yZgPFJ
         8ED1dBPkxODCLMvIKvkUSybNWX5tdUV5cHCFd6krisgP+KlZg527srDlCx2gwXfzogVD
         qf6yB8GrcLZTXHqjWUkNmjDOX+2ngFOqZInWkApUeyYpxIpX62mJwA/mDrn4Fggznmxg
         j3Gly+6pWApRl4+ybEZEoM7iyJGdRwzPB6qtwmFcB/wZmv4BmHQdeZHenoptjzfhJqzH
         oYh1NBtTqvGQOK2H/4ZPdXELsCXgVllHmQQpyRtQNeasmBOmRDV3K63JI6b2fwn5L3UC
         Oq5A==
X-Forwarded-Encrypted: i=1; AJvYcCWj4gGyX/dWrQZA81lb9kodT1k0p+6RCk6Oka8Tmq9WwOrYILdUCeTfa68MIuKVpdkrkv+h/hfATfWm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1bGJA2bKX51wdl8KQwXj2kOhOgKcRD6n0pVKwFYgHYhOEJwlV
	FSU+OHlSOT/4+otijLZwjhGUggnxiKRhARBbvJOS0YeXEXToLKXtDaY7
X-Gm-Gg: ATEYQzye2KuoVwVqO7gX0S3nlQPI+CzTtRU/1n8Cr+I5FXmt9r98fyJdGW6wyUDrwUR
	ZSj7hbY/KIIFCiuMn20dh4/YWld5WR4rL1pncXHhly24etL+hyArmTbdObMZUOGjuH3d0cQ00tb
	qVT4C/YugxKav8MMasVKYU3VQ4gNJE1JtH2h2PidnA//Y+A67LoIrTSxKrX/PsxMayWJcLKLevB
	SSxEYKCVdUpzyqDXCBPGTwwZPbbnG7lyDySfUlrNRlNCKVRE5wjVocjiBbfJd/Iug4/kxH2sR5M
	RDTBF+j7kkLHCAGSsxVg4TNMOozbaNPZ3YvLXFdxzyr6o7xu0orgK93+gq7uEYK1pleN3aOXCgf
	cgReVrbRFf+h0IHzVBgLZVX1IO2Kdqrg9ob0AoXY2MYzbpKQbGsTAmz96j92Ytmwi87wqHQX/np
	FZoHwdtS4GkVfNyFyUYaKPltrfOMJGGVxF3PRdbmVEH2wM6+9wC1e+
X-Received: by 2002:a05:6a20:2d27:b0:398:8766:4d0a with SMTP id adf61e73a8af0-39b99d6c765mr6443580637.19.1773920348953;
        Thu, 19 Mar 2026 04:39:08 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e545d38sm4985706a12.19.2026.03.19.04.39.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:39:08 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v2 3/3] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:38:34 +0800
Message-Id: <1773920314-17755-4-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773920314-17755-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1773920314-17755-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277737-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sensirion.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6B5732CA8EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for GXCAS GXHT30 sensor to the sht3x driver. The GXHT30 is software compatible with the Sensirion SHT3x series.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 drivers/hwmon/sht3x.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/sht3x.c b/drivers/hwmon/sht3x.c
index 08306ccb6d0b..4384c18115e9 100644
--- a/drivers/hwmon/sht3x.c
+++ b/drivers/hwmon/sht3x.c
@@ -934,13 +934,26 @@ static const struct i2c_device_id sht3x_ids[] = {
 	{"sht3x", sht3x},
 	{"sts3x", sts3x},
 	{"sht85", sht3x},
+	{"gxht30", sht3x},
 	{}
 };
 
 MODULE_DEVICE_TABLE(i2c, sht3x_ids);
 
+static const struct of_device_id sht3x_of_match[] = {
+	{ .compatible = "sensirion,sht3x" },
+	{ .compatible = "sensirion,sts3x" },
+	{ .compatible = "sensirion,sht85" },
+	{ .compatible = "gxcas,gxht30" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sht3x_of_match);
+
 static struct i2c_driver sht3x_i2c_driver = {
-	.driver.name = "sht3x",
+	.driver = {
+		.name = "sht3x",
+		.of_match_table = sht3x_of_match,
+	},
 	.probe       = sht3x_probe,
 	.id_table    = sht3x_ids,
 };
@@ -948,5 +961,6 @@ module_i2c_driver(sht3x_i2c_driver);
 
 MODULE_AUTHOR("David Frey <david.frey@sensirion.com>");
 MODULE_AUTHOR("Pascal Sachs <pascal.sachs@sensirion.com>");
+MODULE_AUTHOR("Zaixiang Xu <zaixiang.xu.dev@gmail.com>");
 MODULE_DESCRIPTION("Sensirion SHT3x humidity and temperature sensor driver");
 MODULE_LICENSE("GPL");
-- 
2.34.1


