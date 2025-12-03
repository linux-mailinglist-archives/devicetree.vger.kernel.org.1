Return-Path: <devicetree+bounces-244009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E61C9EFAA
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 13:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C647734955C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 12:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B4B2F6902;
	Wed,  3 Dec 2025 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="aXR/u6Qo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8DE2F5A30
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 12:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764764617; cv=none; b=WJ01xtmnlHEahjmoCb3ZzRs0c7E1x3PmWRq4yKcN8BSsTeUFzG8nyEzoIW+kVwOIzhXorMPVXg7O4GOdBlQ1m493ywLiUcIpBGsDVCx4cWal12PMibjNgKb3te/v2RrekxU1lhHNjtImVH9wSTe/9U8A1vE094aiC4Aj6CEVH2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764764617; c=relaxed/simple;
	bh=aFoi0NuQ+lB9Ye74XELf1AnWh2+qjp+R7DoiDLL8MZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iaOjSkEPywAaacJPUQU9isivlDTmJeQBg5DYXxwcsHXektA31XH7ZP/d/mu9hmnvmvwZaYPJllc5JkwekW94ND7j1J7nuzDfYklNdW3CeOa5gOOWsj4GHclYnli0eYtVAR5denA2nIxgiCwreMRtbiA6Wyt0TN575q+0u17et/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=aXR/u6Qo; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-880503ab181so70046196d6.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 04:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1764764614; x=1765369414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=satbyq+rTzhiXazZpyBeA4DvXCVBPZa0t059tdqKGwg=;
        b=aXR/u6QoSVAXoDtPg1SZn5DuIYVDJOD8NfZajgF29huhn4oWybIDInNk3bT1a1bUEE
         F8LSDxthFep+D1XwgTsTD3792q+OAL2Oc953BIZ3i7dew2cym8jEck3Wg5NgqwbUkKdr
         zmE5uDd4gFftoBtuTAB19qiXec+6zz9xRHWPFTubqYWbZkbkrimoGVL5iM1dJxwFKkZS
         dkP/bR7JwFdZ1lts1+6CoK1CSRzH6MVFnYkZn48yRySGHDKWqWLXWaVH+5VMMZNNvZZM
         jIgFr0rX28VQ7VD2b7tGniKbXgtqsxNJjWc+bykcVBIFlVVYfMLVNCPSgBsiTl1Qja4s
         egFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764764614; x=1765369414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=satbyq+rTzhiXazZpyBeA4DvXCVBPZa0t059tdqKGwg=;
        b=h8WI084DSqvPVx52KR8vvuEIzWZI49r4R10mkAyWoBuWAeJ309EElOb9z+kEJzGGvn
         AI0NOCn4U1/H1I6m2gnUe98a8k9JVGhvhVcktF+/KACWKXEC419tlw6co0YNFfHYokl5
         NWyFyZgT4ebB8wINUy7BLAtGRlyXNZds5Ktg4xgRLFGATdvljWl+cMPqsensTNt6g3+R
         6NXTQ76Xh9TAucXKKnKZ75nA9R5TR9llgdkcXVQDnfR4u6erWimnqChGNSnuTUzU7S2c
         whfrm7L6Ihsvw4BxFXL8QRWklhfZsnlbd/Cy0suPZqorf/ZH7vO3xtNK8KxXsrClCmHC
         FRKg==
X-Forwarded-Encrypted: i=1; AJvYcCU2VSGIDXGbpbrOoY8Wm2ptDn8Y/zdj09xSodK5T9uT65tedPX6w+Vu+c1mqrsBzM3rc8dq+KyUx2av@vger.kernel.org
X-Gm-Message-State: AOJu0Yya5rDEPXxZzgTtQ7eXdul/CUs7+YOIGbvS/DZkIUNnr8pxYaNe
	WOrVI8aZsIOq90ceiknt2hCvZRPDDfIbGCKicejIG7jLD7sRGO8GT6LN8IXzHYd1cZs=
X-Gm-Gg: ASbGncv7PpN1fUh/VNtqfCbbrS2cZjpf04WTzp29AIuu92Qaqv22B4m3tbhHCHVGx8f
	JysDdYglmhdBngsC6OmfPR4nhT9OEgqDrgPH76UkqVcuN+MW1o7rDpqEFdrURZO7+UgE2WknhrJ
	oeQ2z1PTzoXFxUl9bYz6Z+9alcYYOFem6oJbDOISHsD1Eampu6qLWrlH2gOsr8FDvlokXEiXL09
	zkE85+Gvog0lGxkVnxE3n11y9HHr9ftAoGz0uzuiAgW7zwS96+NTBccVvTCK0gUx1jXESRUz20A
	XsA7MS4WBuddWte+X1vtD0Bwj3xiRaFRqeaqWdjQKbv4alKQ/ozhMW0j7dQB6KmtNi7KVB7LqZO
	xpGDoFZnFPS0Za+bYbabE30SsWKpfkaT3FovX+sXxlTnCo/3ZKve0ZhhE5ScL8zYKT/Da8y/Mt5
	A2KULVbQjVNrgl/EQGMbf0H5MGEW0TNeGVusliYSaFr93E
X-Google-Smtp-Source: AGHT+IFl3TKNz+YdngGiL3n7sUr4ySdTN/WzLz6DBC6FFCPdIEUd90ZIj3x8M5TK77zgmChu8AVP7A==
X-Received: by 2002:a05:6214:ac7:b0:876:403e:a15d with SMTP id 6a1803df08f44-888194e5b42mr27914966d6.26.1764764614078;
        Wed, 03 Dec 2025 04:23:34 -0800 (PST)
Received: from fedora (cpezg-94-253-146-247-cbl.xnet.hr. [94.253.146.247])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4efd2f9a755sm115214351cf.3.2025.12.03.04.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 04:23:33 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	richardcochran@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 3/4] include: dt-bindings: add LAN969x clock bindings
Date: Wed,  3 Dec 2025 13:21:31 +0100
Message-ID: <20251203122313.1287950-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251203122313.1287950-1-robert.marko@sartura.hr>
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the required LAN969x clock bindings.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 include/dt-bindings/clock/microchip,lan969x.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 include/dt-bindings/clock/microchip,lan969x.h

diff --git a/include/dt-bindings/clock/microchip,lan969x.h b/include/dt-bindings/clock/microchip,lan969x.h
new file mode 100644
index 000000000000..5a9c8bf7824a
--- /dev/null
+++ b/include/dt-bindings/clock/microchip,lan969x.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DT_BINDINGS_CLK_LAN969X_H
+#define _DT_BINDINGS_CLK_LAN969X_H
+
+#define GCK_ID_QSPI0		0
+#define GCK_ID_QSPI2		1
+#define GCK_ID_SDMMC0		2
+#define GCK_ID_SDMMC1		3
+#define GCK_ID_MCAN0		4
+#define GCK_ID_MCAN1		5
+#define GCK_ID_FLEXCOM0		6
+#define GCK_ID_FLEXCOM1		7
+#define GCK_ID_FLEXCOM2		8
+#define GCK_ID_FLEXCOM3		9
+#define GCK_ID_TIMER		10
+#define GCK_ID_USB_REFCLK	11
+
+/* Gate clocks */
+#define GCK_GATE_USB_DRD	12
+#define GCK_GATE_MCRAMC		13
+#define GCK_GATE_HMATRIX	14
+
+#endif
-- 
2.52.0


