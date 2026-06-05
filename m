Return-Path: <devicetree+bounces-307292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0L3UCpmjImpdbQEAu9opvQ
	(envelope-from <devicetree+bounces-307292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:23:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE92647491
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:23:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=byFlq7bu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307292-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307292-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D06943055FD2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117E53F7877;
	Fri,  5 Jun 2026 10:09:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound11.mail.transip.nl (outbound11.mail.transip.nl [136.144.136.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36693F0ABF;
	Fri,  5 Jun 2026 10:08:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780654144; cv=none; b=H3eeQ5XuSCFvJFkp5/hejJRe3mwVRbBXAQv7gymry1TRTTANziYvjqkjszLZjrnwAsoiLfO/Wst8SxoOtg/HUYTg2xHkbNhMa+QiaPL+A6Dnl1pj4sFF2ID5434TmiH+iSwLCoABLlNc3CKOYESQnLX0+3OnBroBcrnZUCRMfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780654144; c=relaxed/simple;
	bh=sJxLEqKR9v8Hg0iJX3EyuPAsYh2VmANHcCjjQi9bWDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JfP74E2BolEFIpiU+mtXZapnjhfXW6r20CerjN5/CRpoK+ohzO45uE08WNXkPRL9DkM6J8LCnBrLe13yBnXgC0VLuOTEwqcSXtR5DQZzmWjCaRqK10AI500ZbdXf7sFm+49T76sSQDwl/tDE3nBpjGPNP5UJEW+HS9p0OkjWHmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=byFlq7bu; arc=none smtp.client-ip=136.144.136.18
Received: from submission4.mail.transip.nl (unknown [10.103.8.155])
	by outbound11.mail.transip.nl (Postfix) with ESMTP id 4gWxwZ6l8PzkQRYC;
	Fri,  5 Jun 2026 12:08:46 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission4.mail.transip.nl (Postfix) with ESMTPA id 4gWxwZ2780z3R3nyy;
	Fri,  5 Jun 2026 12:08:46 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: jic23@kernel.org,
	linusw@kernel.org,
	denis.ciocca@st.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	sanjayembeddedse@gmail.com,
	maudspierings@gocontroll.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH 3/3] iio: magnetometer: st_magn: honour st,fullscale-mg DT property
Date: Fri,  5 Jun 2026 12:08:43 +0200
Message-ID: <a8b63f5997700aba85883816a5d7520dcb28a96d.1780652883.git.github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1780652883.git.github.com@herrie.org>
References: <cover.1780652883.git.github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: ClueGetter at submission4.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780654126; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=xb/U3BDUqdxbY5zFe5F+I4YVsGUKm6tPSWQsBYhq7+g=;
 b=byFlq7buZZiGbj8oT1vpSjGMHfELTx2Vf5wd7t6PFvHF3uE+tmY65zIwcI/AABcpwFERgG
 W/QjEeXIef42HUPYcj+4864hYlh8vLptqA61re1wRsM0CYOojp6ffTgCw2R/7ghm91UP47
 QF9UhznJDHYdKjo+ohdQ/hmI5WCCnzcrrQtVe17mdJeHaOQ/mATX2rDuBHiJFUGGEqGIo2
 LaOBA+TZgvNhUa986AYLuEzyKDIGmivFsyce3zhtvIrHMOhj9evS2LUX2Yw5cDeqGKLslp
 RBqGj5RM8lcyFmtDcnkbxJANnNy8a+2zOHbMNj3HJ6SwCvVQFUOlo2PL5GdGtA==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307292-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:linusw@kernel.org,m:denis.ciocca@st.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:sanjayembeddedse@gmail.com,m:maudspierings@gocontroll.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:github.com@herrie.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[herrie.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,gocontroll.com,vger.kernel.org,herrie.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[herrie.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:mid,herrie.org:dkim,herrie.org:from_mime,herrie.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AE92647491

The ST magnetometer core's common probe hardcodes fs_avl[0] -- the
highest-sensitivity full-scale supported by the chip -- as the
starting range. For the LSM303DLH that is +/-1.3 G; for the
LSM303DLHC and LSM303DLM it is +/-2 G; for the LIS3MDL it is +/-4 G.

That is the right default for "minimal noise floor at a desk", but
it leaves no margin for boards that pick up appreciable DC bias from
nearby PCB structures. On the HP TouchPad (apq8060 / tenderloin) the
LSM303DLH magnetometer is mounted close enough to the surrounding
power planes that X reads back as the chip's 0xF000 overflow
sentinel (== -4096 raw, the value the chip publishes when the ADC
saturates) on every sample at the chip-default range, while Y and Z
fall well within the +/-1.3 G window.

Parse the st,fullscale-mg device-tree property (documented separately
in dt-bindings/iio/st,st-sensors.yaml) in the magnetometer common
probe to select the initial fs_avl entry by its mg value. The driver
tolerates an unknown / unsupported value by falling back to the chip
default and warning, so the property is purely additive -- existing
in-tree DTSes are unaffected.

Per-sensor mg ranges are listed in st_magn_sensors_settings[]. For
LSM303DLH the valid values are 1300, 1900, 2500, 4000, 4700, 5600
and 8100; for LSM303DLHC they are 1300, 1900, 2500, 4000, 4700, 5600,
8100 (same code path); for LIS3MDL they are 4000, 8000, 12000, 16000;
and so on. Sensors with a fixed full-scale (fs.addr == 0) simply
ignore the property.

Empirical scale sweep on the HP TouchPad confirmed that on this
board any fs_avl >= 1 produces non-saturated X readings:

    scale (0.001 G/LSB)  | X raw    Y raw    Z raw
    --------------------+-------------------------------
            1.100        | -4096    44       46    (X saturated)
            0.855        |  -547    37       37    (clean)
            0.670        |  -433    94      103    (clean)
            0.450        |  -266    44       71    (clean)
            0.400        |  -235    34       65    (clean)
            0.330        |  -196    27       56    (clean)
            0.230        |  -145    15       40    (clean)

2500 mg is the natural choice for tenderloin: comfortably outside
the saturation regime while keeping useful precision for compass
applications.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 drivers/iio/magnetometer/st_magn_core.c | 35 +++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/iio/magnetometer/st_magn_core.c b/drivers/iio/magnetometer/st_magn_core.c
index ef348d316c00..936253440856 100644
--- a/drivers/iio/magnetometer/st_magn_core.c
+++ b/drivers/iio/magnetometer/st_magn_core.c
@@ -10,6 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/property.h>
 #include <linux/sysfs.h>
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
@@ -628,6 +629,40 @@ int st_magn_common_probe(struct iio_dev *indio_dev)
 	mdata->current_fullscale = &mdata->sensor_settings->fs.fs_avl[0];
 	mdata->odr = mdata->sensor_settings->odr.odr_avl[0].hz;
 
+	/*
+	 * Allow the device tree to override the default full-scale. Hardware
+	 * such as the LSM303DLH magnetometer on the HP TouchPad picks up
+	 * enough DC bias from nearby PCB structures that the chip-default
+	 * highest-sensitivity range saturates the X axis to a sentinel
+	 * 0xF000 immediately at probe; selecting a less sensitive range via
+	 * st,fullscale-mg fixes that without requiring userspace to write
+	 * in_magn_*_scale at startup.
+	 */
+	{
+		u32 fs_mg;
+
+		if (!device_property_read_u32(parent, "st,fullscale-mg",
+					      &fs_mg)) {
+			struct st_sensor_fullscale *fs =
+				&mdata->sensor_settings->fs;
+			int i;
+
+			for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {
+				if (!fs->fs_avl[i].num)
+					break;
+				if (fs->fs_avl[i].num == fs_mg) {
+					mdata->current_fullscale =
+						&fs->fs_avl[i];
+					break;
+				}
+			}
+			if (mdata->current_fullscale->num != fs_mg)
+				dev_warn(parent,
+					 "st,fullscale-mg=%u not supported, using %u\n",
+					 fs_mg, mdata->current_fullscale->num);
+		}
+	}
+
 	if (!pdata)
 		pdata = (struct st_sensors_platform_data *)&default_magn_pdata;
 
-- 
2.43.0


