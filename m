Return-Path: <devicetree+bounces-308767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 29A5GZnAJ2pA1gIAu9opvQ
	(envelope-from <devicetree+bounces-308767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:28:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D496465D300
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:28:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZrPSfkWw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308767-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308767-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF12830DD154
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71833CF1FE;
	Tue,  9 Jun 2026 07:23:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF3D38AC68
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:23:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780989802; cv=none; b=VxPza1cUAUyIxMUwMJLgBRDP+No22Wy03za+SbYUWbR1h6jfSkhtTHSh65XJQl1ZdWVPqnP2CYpGNfXGX+1/eiSxFHs4sm+ive5bwiMJ8s4B4abuCtUz1w7ehiNY5fAkwAYmMeDrtUD5KCxvVKgcM4GJYHQE+oWTf5loGUewids=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780989802; c=relaxed/simple;
	bh=zxJY5IonfXfu8tKSMwhdy5vQNg7ATQ4BXUtspsMMwVs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=flbnkVSRGGgEVB5/EwcidQneOC3BDekgEPxxDFoikhUFOmaLdc1LE5hQBe13gDEScqOqxcopruWKkM30liMGBcfMES/BofM2x3S0UzKWZE1GJsciMzV+4Fk0NyeYI2iDZIoAbgV4s7TGLG0ao/xKFYQqsA8fjk4DP4uZtkbI2cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZrPSfkWw; arc=none smtp.client-ip=209.85.210.174
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-842319576d5so2924904b3a.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 00:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780989800; x=1781594600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lVQHwWBDJB1LhCos/li6eb9i1MA5j3meRHtKF9Li0yA=;
        b=ZrPSfkWwCo0UDzzUB4ifHGbN97DafVog1wG2UNdFhMTAvwBuEP1GMYh06pAer1qZQw
         SGwEh+Rkt2l/grI/nAS6UPDrLCuZZVTBloVIZcPhpKN1IND/V7bBCDsuHTyIGWnPz/fQ
         SFuz73O9edo6EVgq35+n6Q7aMJXIJvJNX2SxBnj9/2qNnjyuXkBRrqfDS64rdHxQTuC2
         qrMCdIO9dUXNM+jacB92zaR1eSdVLVRNfcA1wAUhKeVSqoh+S0RNCFDWWG2x+SG3Yzny
         bNTLiMFXnBfKP9RHy7Er7DvImNqTJVq3erf/5lrjW0BrOjQ3Pkf8AZzsMgS5nI1+nJb4
         eHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780989800; x=1781594600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lVQHwWBDJB1LhCos/li6eb9i1MA5j3meRHtKF9Li0yA=;
        b=agc5eqK0p+WwaGR90Yj2lME0tgxLQwPx0mgqUQj0BdbcJtAjRgGOuHraLenC9kRb61
         X0P5QPkI5YlTAZdLdU5VfbYU3am7sH6Z0VX1+G8IOnYftqQV8ZoQSJ2FLRnPJgPYYGBn
         p5sIS37XG3u6J71C83mquKtIKGkLFznCoBvh6oxbs/bBVi6sgpQ52W3zh2Y0MvZrKb2a
         FIExlrQy1h7sYKiZgxX3F25OQ8BGt6e4pUR/uqy/hoDEx7PKNewwpGQMaNZL6Kh+qs9Q
         CIEC2EeLCkJiPUfexh6l0iHdpIRsGUMh2+MCwpJltIKzuC4isLmt+WewyLwWB/0w5iHK
         S2EA==
X-Forwarded-Encrypted: i=1; AFNElJ/DoQBkNp2Iajm1t6NNEBPAvOonrWOQMPNbGC/RHbp1dnFojYTjtKbGLdCt3wpmq+/0fhcWuZDAr4Pc@vger.kernel.org
X-Gm-Message-State: AOJu0YymxnCMLaG0HYP+ksbu28qhErDhmqjqx4QN1lJPydqRyCKT1XNi
	SlG6QkmM98/jFUrwVaAhx+bgdvpMOqvolL8hSuuN6BmIRT516SUXzVPb
X-Gm-Gg: Acq92OHGfcQyUr2VYDdpvZiVvLC3kwk0Yn3EAYupLSDy6v7J6y9oAJv20nz2FfLW5N8
	k1fWuWsU5E0nMoaWcFg2bLPZDPkGp4MLs/ziSHaVrvudxugTMdALO9SY9poy/AoKTenafd3Ss66
	avLoHpiV+KNGM8wjdagFk57r9S0A2yILroWMCyO8S2QOhwJybaDT6y6F61CMUtdjz9utw1nZ77I
	x92g/jD7TJmOhA/8BNsaVteRh+q2TQzOgR7VJKc6BxmXS960QyHeIq46rBPjG8BBm3Db7dWg/jG
	pHtZDCQ5OK2q9CfOzqH5UgUicY5YidVZZflazeAqQgpozYoCZm1DmpCSh8GcymbX/M00G/zSOxj
	GAVLEQECUKG1V3DpMh2hEONTe24MTxOfQSTqu/pSFZ8Jd+VMY6LpFjkUq4TdRhrsF/zxiNyE4p3
	Oirw3G8cHvwfOIT1rtH4BnMnAre+uzAjbf02HWrgWhc1oQaINbBjZExtD1DKK4fsdcbgU=
X-Received: by 2002:a05:6a00:3909:b0:842:614e:cc97 with SMTP id d2e1a72fcca58-8430a70f66cmr1936912b3a.23.1780989800251;
        Tue, 09 Jun 2026 00:23:20 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:c919:66b5:f0e5:3e9c:92e5:3878])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221671sm21702448b3a.4.2026.06.09.00.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 00:23:19 -0700 (PDT)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v5 3/3] hwmon:(pmbus/xdp720) Fix driver issues xdp720/730
Date: Tue,  9 Jun 2026 12:52:31 +0530
Message-Id: <20260609072231.15486-4-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260609072231.15486-1-Ashish.Yadav@infineon.com>
References: <20260609072231.15486-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308767-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ashish.yadav@infineon.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:mid,infineon.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D496465D300

From: Ashish Yadav <ashish.yadav@infineon.com>

Fix driver issues:
- Adds the missing regulator and property files in include
- Declares XDP720_DEFAULT_RIMON as unsigned constant
- Declares struct pmbus_driver_info xdp720_info as constant

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
---
 drivers/hwmon/pmbus/xdp720.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwmon/pmbus/xdp720.c b/drivers/hwmon/pmbus/xdp720.c
index 0f106c13e7ca..b273e53a01f3 100644
--- a/drivers/hwmon/pmbus/xdp720.c
+++ b/drivers/hwmon/pmbus/xdp720.c
@@ -17,13 +17,15 @@
 #include <linux/of_device.h>
 #include <linux/bitops.h>
 #include <linux/math64.h>
+#include <linux/property.h>
+#include <linux/regulator/consumer.h>
 #include "pmbus.h"
 
 /*
  * The IMON resistor required to generate the system overcurrent protection.
  * Arbitrary default Rimon value: 2k Ohm
  */
-#define XDP720_DEFAULT_RIMON 2000000000 /* 2k ohm */
+#define XDP720_DEFAULT_RIMON 2000000000U /* 2k ohm */
 #define XDP720_TELEMETRY_AVG 0xE9
 #define XDP720_TELEMETRY_AVG_GIMON BIT(10) /* high/low GIMON select */
 
@@ -38,7 +40,7 @@ struct xdp720_data {
 	struct pmbus_driver_info info;
 };
 
-static struct pmbus_driver_info xdp720_info = {
+static const struct pmbus_driver_info xdp720_info = {
 	.pages = 1,
 	.format[PSC_VOLTAGE_IN] = direct,
 	.format[PSC_VOLTAGE_OUT] = direct,
-- 
2.39.5


