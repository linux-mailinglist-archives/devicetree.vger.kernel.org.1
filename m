Return-Path: <devicetree+bounces-291041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAewKbmb8GmGVwEAu9opvQ
	(envelope-from <devicetree+bounces-291041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 13:36:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A6108483EB4
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 13:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 72871308147B
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 11:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8811F3FA5C2;
	Tue, 28 Apr 2026 11:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aOOlag78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13673F7A88
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 11:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777374602; cv=none; b=sHK1B3y9V36D1+m5y9+pBJmoVX/Mfu4JacXpL6z38atxC+C7fSfWG161827PB6Ju/eTrIS4c0vGC8Nk8S+SmYIha6eAkVGNC8/rxQGbGDhLpN80wmM+P1iZQ7R02ZPPr9SaBJLa2ROoguOHIRg7LHLs27sq8Guxo4UVHY9m5Xkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777374602; c=relaxed/simple;
	bh=VUFpOgb6S22ZcG0ANMgf/zXh1YJTmhZ2B8aJFv/OheI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=E7Kg1sr+I4luk5CETwup6ut2DqzS3c7yw9jWfQx9gmwjM0Jm+yS+skCxfGJuG9DEuDdQWVZXvPeVvl8ThMDkLDVrv8OfUPUD2Nf6C4aKZjiVVMV1g5t/jIO+QjyDSzTjorXBmhzoIbrhxm3sfgDgiuoEO18xDLX/NLBaecipPoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aOOlag78; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2b24fdac394so107102125ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 04:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777374600; x=1777979400; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pef3OD46TxOIUwH98qFLaQm0kXcNlzkOoDkRUMv4zcQ=;
        b=aOOlag78cBE/biLGc4yEOR3pHWKcJxKnxZ26YL1Rhd/+CzuCHIFue1+Hv5fEozl7Lt
         dbLhXRKUPEiya5Kyfx3CV7w1V2/Yg+KTiaXszgtXv/56DW/JcGtEWWfaYBj/jMF+POu+
         A8at4KfwEjtoy+DpOdbCaYRm9KdJLjgJMJAQsSoIMi1hVy1mVO6kC03liKUNDVi2gIED
         KOLbuE7FLdxAXE+yrMsyOj/r9e2rSQ/xn1z/a5xQIXaK7eraYzxOODLQSUXAQ/ydMa5W
         Ev+NxdQn9QtQfo2dtApYRiJDFnR/kUssggPBm6FywLxnBqyd8I0qpiHyGuDvYnv2RrjA
         dTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777374600; x=1777979400;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pef3OD46TxOIUwH98qFLaQm0kXcNlzkOoDkRUMv4zcQ=;
        b=Fao3v1/mA0Boh60G+po/aB1CUUEQEd+uOGWvTrFWm/QluYaYDNTZrGXN88MWFEIcVm
         f1osCNKFY6+h93syuO4ONCODyxn+5Lhb+a4UjMuBxkmYyj1ZUbKUffUWD4nyHzXWFRiE
         cteCdnQzSAb9kQ43lWSm9mJ8bMs3NBBvlF2V1qr98Mi6FcKYtZ3+3kcqwj5Vz2blSu4H
         OiPEcpHMfjr/mK3GzeBsRcWm2XjYTFkRi9zOtZWFktR1hq0OooN58BwXxeE0/vx+SgPT
         lJFq2w7xt12pMtubuF2GMcAOTILZtnImXK3XfWPS5TDJRigcS2cuOWGUjSFzWlUg/ANF
         V50w==
X-Forwarded-Encrypted: i=1; AFNElJ8XdI1CRSDtiE7MlDoaawvNoYoKD3DuIdWeplZhnmQoPTfmXuRVLAhgaQHK2xpI7S09VH8c5fFObhku@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3pKFTAqqYm5ZalfadGuEC22PYc3Tje3bcBOGp9KdmxbSlOlGa
	Kds+lsAcw0LVFJgPz5zT7oZaG06ZnE0i6ZotPgppvK8wlhjKGPIS3STa
X-Gm-Gg: AeBDietiwLDsE8fuSHbqbekPffQpRCpFTAaM4HfDbpSuiiuw+ZM84B8pTZDGR4uGhwX
	3Kxie24zdpSfO4OQ8sPj0+mY4tkcfgvTzk92zMGWJ8ThD6Wvp110xhOPlqtIusCjKLR2Eo31iPj
	LMhT7eomIRfhhG/68WB2eb+/FGoLSldxhHGgCjqUFlBfMS/M+OAUCKxZaUNX/NzYlnkrr2Jso87
	7L5xe5CWlPSX2CCWttpiWI75JRtj9Q0AHtKXGfcmOCm4xE+2TB/kA8IcwqwllAJgBEnke/P8yNp
	WCGgvdZMtKEyeZ6//CWdy37iuSsmmKGYsn4zQJF2+bz3OIZ+2nU9x8mBoDklftgwGD5uD+Vwh3T
	BCH5y2J69Xsygs2BJ7P4f878uUOZUiNwq4fLBcyAvkw3hAa9+E7DT5vMlfwKhOqCAT6nabeRdv0
	TRwHgLrHi48zoa0EqKaA+20i/a2hhBRh7FR4eQ5WT5iohpYPkYdwZklCMyUMKQzS5lhYiO5+PvN
	g==
X-Received: by 2002:a17:903:4b0c:b0:2b7:9ed0:4f92 with SMTP id d9443c01a7336-2b97c4b78fcmr27558045ad.32.1777374599397;
        Tue, 28 Apr 2026 04:09:59 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b97aa93bd4sm22828885ad.23.2026.04.28.04.09.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2026 04:09:59 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v6 4/4] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Tue, 28 Apr 2026 19:09:29 +0800
Message-Id: <1777374569-59233-5-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1777374569-59233-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1777374569-59233-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A6108483EB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-291041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sensirion.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Add support for the GXCAS GXHT30 humidity and temperature sensor.
The GXHT30 is software compatible with the Sensirion SHT30.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 drivers/hwmon/sht3x.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hwmon/sht3x.c b/drivers/hwmon/sht3x.c
index 6437568aaf73..f52114c13edb 100644
--- a/drivers/hwmon/sht3x.c
+++ b/drivers/hwmon/sht3x.c
@@ -934,6 +934,7 @@ static const struct i2c_device_id sht3x_ids[] = {
 	{"sht3x", sht3x},
 	{"sts3x", sts3x},
 	{"sht85", sht3x},
+	{"gxht30", sht3x},
 	{}
 };
 
@@ -948,6 +949,7 @@ static const struct of_device_id sht3x_of_match[] = {
 	{ .compatible = "sensirion,sts31", .data = (void *)(uintptr_t)sts3x },
 	{ .compatible = "sensirion,sts32", .data = (void *)(uintptr_t)sts3x },
 	{ .compatible = "sensirion,sts35", .data = (void *)(uintptr_t)sts3x },
+	{ .compatible = "gxcas,gxht30", .data = (void *)(uintptr_t)sht3x },
 	{ }
 };
 
@@ -965,5 +967,6 @@ module_i2c_driver(sht3x_i2c_driver);
 
 MODULE_AUTHOR("David Frey <david.frey@sensirion.com>");
 MODULE_AUTHOR("Pascal Sachs <pascal.sachs@sensirion.com>");
+MODULE_AUTHOR("Zaixiang Xu <zaixiang.xu.dev@gmail.com>");
 MODULE_DESCRIPTION("Sensirion SHT3x humidity and temperature sensor driver");
 MODULE_LICENSE("GPL");
-- 
2.34.1


