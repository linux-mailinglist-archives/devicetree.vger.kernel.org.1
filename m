Return-Path: <devicetree+bounces-260360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BmVOgj1eWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:37:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7A5A093B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 53A9F303B972
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9BA352C3B;
	Wed, 28 Jan 2026 11:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g6txWxaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A8350287
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599848; cv=none; b=BOIi5v88Yo2/qUY/QEBgJNLoqjudswPy3k4WBEOHj6tKpK/mNfsrnZsbcKuHPve3tiojskqg8nVGhf5C2fUV0nQI8wNrzJ5qbntXytA3zkx0KoDHnXthFdLK06ZrbN6iXcjTmXrAwuLLICrhzFTsLJkan9Es47S8UJdYebLijgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599848; c=relaxed/simple;
	bh=pMM/PndJtcrqNunXCRWuR89rswO75KmhN6AkztYIrOc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ebMcPmBGWztAMIVVMgSB8lXfDfPqS7Udl1J2RbEn7NK/Dwu+ZSo++yO+xgCroTrFQWpEdERTauNf8JYC7hQ/iIVGqXkvTPdhRm2rS1oc7s0X3fRWZrcc5oHdefNc048EQZa02qc6GAPD6yxFbbZ0pDD8hLvmay56SCgEZhxKKZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g6txWxaO; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b885e8c6727so161299566b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599842; x=1770204642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RALgE69HGcRAQ0rk+8jn5LPohv4Ds7E1fy+PhYoqtBE=;
        b=g6txWxaOv5UL6bcgTVPB4l31O/gDIMiqHWf8aSaeuzV/HVP8GYCb3uXcSOXMH1ce9W
         j9oI7QLKZDefDhG2f1UbcWaOBbcmsmD+1aiRxWQdwmnDTdkZPI31q0xzsG4LY7mq0+an
         F6O919NBxyYm4J/8pJEx6u8xAXQjDWrdk54zeqHptzWVqC56w2Y0IcSJEXAoGxlgKbLJ
         Lx9koNaUAC9Wqb5DXSpEw+0QFs3Wqe4TMfhVBWSBQCDSR3CAMvf+JDaC+bxCchOCcy38
         2JDrdg6/R8E88lihDNEwHEoTUx8F0V01HGFw9Q7JxwBzAUlykaPiAbM7ULZF9FRnqOys
         HfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599842; x=1770204642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RALgE69HGcRAQ0rk+8jn5LPohv4Ds7E1fy+PhYoqtBE=;
        b=orO0Ez84Zm5ZrC3sEfXSqy2OfhQTchCanvzjrIcb30xIJm6oPFjO6m25uRcqLuInF3
         Wp+j8mDj2doff+AFKyQ2U95k3bGr7iPnRJoqDBN6KA4P3hiE5sJhAOC4yye+zcjDcS6h
         LTTP51v9rWOUWvgYo3TOFkEQYhYhnDGmkurKRFQJSzJIQ0gK35FuyNLHGNRDJ452M39x
         KAmNqKm69wGX7asUb9mUI2pLCgJzcZcSNzLccoQjXHy00jqGT9JWfdtfQv3IuODD9X+B
         bHne1lU3m7NXUgX1mIHiSTW1FGmBLR5bo88Zmia28gfktize2YuKtaR0MmNLh9Y481JA
         xXFw==
X-Forwarded-Encrypted: i=1; AJvYcCVlhH+FGRF0etSeXmHtFwZx3LZi+XwYFyx4PuZ7uJAVvRIsCBYjZRzuFWu2SEc+HL7dzqXDP8B8RAE2@vger.kernel.org
X-Gm-Message-State: AOJu0YyaHQ+12hpQO7pvLbMJQQufVNP9uSNvvb7Z1Nw3907cIg/xzaUd
	in5Y+nJR0+6ZXWr2VuxW5OWV4dd9s8NkXUlBiMJ3mLkOYYN5d3GuGcqK
X-Gm-Gg: AZuq6aJP231zGq/YJz9uVDCVFco16iHOIgKISdgqetkrdnywl3WChx6NWgyGRPh8F74
	OVLIZcUDeEyXRkJRlKPIG6vFBBv1ALfQ9qs2y35+b1ZZ5nFLRBGZG3ogrFSA1k//D5mTS+RH7aK
	i4ctWeSo/X7jkkMZMpHs2pNIDlDRZNfoYrauiWTk87zed8USQW/ARyk/jTMXWi1OQdsXFXc/+1d
	6DWO4Lzi4qO6+CMGRV+oMMteD0coCkPvOsBNp7bNQKPGa4BN0coTiBCo9ZwkBbZ+8YgQD5Uepzm
	hWTJGvRs69SJxTc4HWisXRV7B2zynmJmxgKgRDpc6fIsdqOjU51azkAoJPt/FWsCFavBT56liup
	E6KHsqMabTE7P1yBXZdQHFy5MZGwPAissAK44R04TDwZb89C0ciI85rm+XIQMw8hsyQiI6WWSbF
	IghqU3/UbbnqsP1HcEFp+YdiEfKSxlVHKV/aXM+QBsOmLwLg==
X-Received: by 2002:a17:907:1c90:b0:b88:1e2:ed49 with SMTP id a640c23a62f3a-b8dac996f5bmr347803566b.8.1769599841956;
        Wed, 28 Jan 2026 03:30:41 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:41 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 08/10] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Wed, 28 Jan 2026 11:30:27 +0000
Message-ID: <20260128113032.337231-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260360-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.220.108.0:email];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F7A5A093B
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


