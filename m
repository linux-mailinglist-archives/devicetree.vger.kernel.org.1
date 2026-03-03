Return-Path: <devicetree+bounces-270587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIB+OmL8pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 549A11F26F0
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD79A31940EE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55DC348AE3D;
	Tue,  3 Mar 2026 15:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LKYhEc6R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1B481A86
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550841; cv=none; b=Wm4r1gKaJmFDXvSRzT+KTeFsvSVloJN8zi4XZliQNkw06UqZr04Jiqly1ngsLRK0NvLC1XGpxdmsEhGH0dvjhsl1MAfQL9XWVWE77QhLJ+23oBQWRHdQHmqom/Ngy6yFR+CCRAXrakZdaEJhQbZGEEq7GOIwAeunORIHKED+SGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550841; c=relaxed/simple;
	bh=Z0hCS+H2IItocsB+jWcDutoPEuYwBwtSDmCeiRLXMdg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XM4uaOSIYl4/fVOoSxpvxTYPRbnmSOhdCkKOD5ZrG1S/YhkVS2T6CQITrxS1b4Fla1THlE6FCqXKqTovQfSqbgxIqtpZnwH2vwYS/Al0eVUbFD4+DoU5/56m8Yio6s1YToydF5gqOm6eR2WL7AyWeoOYIfXhhJ2rknvj9lSrOj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LKYhEc6R; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4837634de51so24413745e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550838; x=1773155638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8FTo5uT1h7nOZ7FtDex+0/FEIZ4xUi7xNVLguZff5jE=;
        b=LKYhEc6R5OWpDSo+H+386bB2Kb1OE/iOipn55BTNZs4QAxlMf6e574TB9LTBXK7fNU
         MiHEyV6OAK3Mm0oQYjco5DsNTL7Yb8+7PJlGe+W0uEqylL77rCgeZcjP0bHXWa+XXQOg
         Rb/NMYSQy8ENtRIClvVI1C3dWiQnpXJme4uZYHlr5avXDVv2kWM2YSrZh7j+6+Ov4qik
         TtWwULXXZK6eXM1Si+OmTH5gIOprJGjiAvW6UkMC0BQEKxytC0ng94bnFUMLBWsj4QdC
         BvKf6OOrV1ndVGIaF0tL7VZ7Ts8ogi0m7MLCyEElHVPWjt+wFQa5Xq/H7vtFFwIwcoHE
         FS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550839; x=1773155639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8FTo5uT1h7nOZ7FtDex+0/FEIZ4xUi7xNVLguZff5jE=;
        b=sSP+ZXPvUHEImPSdpm0Na6x7YXOTK7BPmF9LX2Px6W4LSvhmamRm6L4apNl+sQO2ZR
         dv7KlSsddtFV9tqLdH9g5YE15v1n2z0wdXtm+7cUP4yNVzoYhVzfUNpU9y8dSWaPXmwj
         EfYQhGEKgCuHmuknpwf6dhfBtNW2vdj0zNvccs0Z+md1Q4X581r3fwWQGyZftYRo1zxe
         uijbJYuFVM8+16KsfdBNgV932gZWm6MWzGHiKvCd0vECW7IvrDMmN/R/0lsgy27Z9Pbw
         932M02h5LE4HtXQPlTv1nQgbNJsEahKHhEcr4z3th66U0rag0fK/Qo8MUvK21JExR4Hk
         eBBw==
X-Forwarded-Encrypted: i=1; AJvYcCWeNy+EDDeU5M0Rl5zPw4vfHDBS+JSfBhuLWBNvKP/cIsdGmAqYo5GMYJEaPhV4rTS1cTewrEKcU1w9@vger.kernel.org
X-Gm-Message-State: AOJu0YxJxEF0oYd3KI432UxaRGIT/RyZ5g93mSEoYghOJVIT72FrwJPh
	8ehcF/empuu53y/hU19/aDIvhiOVuA6YVOfEZ2+LPUvC4R6n3CxBJR71sA9l//ewB1c=
X-Gm-Gg: ATEYQzwBcsoLVCMij2swuk/eTA+5uW3juRJoRpKa+/DWAz/Hy/l5wdqck0lp/bsBxld
	d4UNySOp7M5H8hR+ankz3SExBY/cFu235E9wNPFt4s4sjTxJv/up+UhrkYzBsWuXzqWznO0/bKU
	0lHDuybZqy9DidSFzMoajXo4D9HmnlJpcWSeAgGq0oZPtKU2XlLH0B3ORxKxyTUVKHgwvMxB4hB
	/jlprjGZizI+4aETKJVRawi8qqgIGMjvYzu0chqtk7L5EV9iDamxVNuWLJ2DX5TOHt62rwLuev7
	SB8oGjQnbfBm2k58fDYNdxm+43x2plZh/MzDwSrKi4W/eItd2wgcwEAtR510peOtiZ4CzipoQdY
	ESn2j5bjWEMtiAvhXN/xo/MzjYabwhU1hM95VpIHlj4kc+2hG7NSMKuCwGcEEKHd0iTArbx19xe
	JMPLZpjX9EYa2zWAxHWrUSRTWS0HJt2oE=
X-Received: by 2002:a05:600c:3110:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-483c9c23ffbmr281348625e9.24.1772550838544;
        Tue, 03 Mar 2026 07:13:58 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3ce8fsm357946955e9.4.2026.03.03.07.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:58 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 03 Mar 2026 16:13:04 +0100
Subject: [PATCH 6/6] arm64: dts: ti: k3-am62p5-sk: Add r5f nodes to pre-ram
 bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-6-12fe72bb40d2@baylibre.com>
References: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
In-Reply-To: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1183; i=msp@baylibre.com;
 h=from:subject:message-id; bh=Z0hCS+H2IItocsB+jWcDutoPEuYwBwtSDmCeiRLXMdg=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlv5b/TcnsfLZmYhPfvfsXtk8u7/qyr3NGqXKF8oOGW
 /eNTgls6yhlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJnD/C8D9q0TWey7Y+eqq8
 a94KvXN1bzjwOfrC1TOfHaVTmDVLOzMYGf5O0DPs/X3bY0qOy8+WSeI2FX5bpl44f28t20+u7xM
 CF3ECAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: 549A11F26F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,9ca08000:email,9ca09000:email,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action

For IO+DDR the wkup_r5fss0_core0 and the
wkup_r5fss0_core0_lpm_metadata_region need to be accessed before RAM
setup is done. These are used to read the lpm metadata region in which
data is stored to resume. This needs to be done before RAM is in use to
avoid overwriting data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 7fa4924ab52484c7ac4243a0cd6c0d7aacaf8b30..55e75e9946f75d4d787c933d1d87de6ea9670a13 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -71,6 +71,7 @@ wkup_r5fss0_core0_lpm_metadata_region: memory@9ca08000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9ca08000 0x00 0x1000>;
 			no-map;
+			bootph-pre-ram;
 		};
 
 		wkup_r5fss0_core0_lpm_rest_region: memory@9ca09000 {
@@ -868,4 +869,5 @@ &wkup_r5fss0_core0 {
 	memory-region-names = "dma", "ipc", "lpm-stub",
 			      "lpm-metadata", "lpm-context",
 			      "dm-firmware";
+	bootph-pre-ram;
 };

-- 
2.51.0


