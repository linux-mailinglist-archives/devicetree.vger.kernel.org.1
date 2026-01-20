Return-Path: <devicetree+bounces-257405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEYLBQTcb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:48:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF224ABA9
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DC2386A8EC5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C48543900E;
	Tue, 20 Jan 2026 12:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OROD/HBG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E34218AD
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913568; cv=none; b=a6PMvDW469M7RpbQCBtcv9yurrO4anqz/tEGCofZKf/EGDL3MCCjkm1m2Jv87lHce+p4FbiEvCTtTELCImzP3OeMfQp8zkzpixfqp+LNisu7Bw/0bXYRNSxY3AcJWLC7cuS9P8C9gCos/ziaGQxfeByUTDvpBuOKqysFuKIbQxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913568; c=relaxed/simple;
	bh=izsX6CtnNHyR6i+t5+0Flk/d0jAFwDHEjNWCnwK2bs8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lj+p0Z03ThsyiO6L1qk1DQzdzLrNFhgsgMMTRdEvzW35CeX7s1ex3CpIRs3n0Med9bfRs7h/5owr+TVR2qPw421hTlaWmXGYnkB6ervtWlGI0LY+RJtpzJbyDy3NPRQS2oyV9yLwW5s4LYsNAuWOyWg1tmOMDSiFxg947TUCR2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OROD/HBG; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b876bf5277dso953849966b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913561; x=1769518361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PH5B0uMIT9kq/8OwAAqfy6tuQNPg7xcJJFrKzLoPvsk=;
        b=OROD/HBGqQI8hG9+clpFFYdl4wAtDbMpH0eKAdnKGSiYVoV4q8d0mjMUndLdTeRYTA
         R191b5rMbjyjTMm5tS2suzO35C76xHQ4kudN3tPVbURTwPUxGNsqLuwJ5INnVKVrMm1L
         KTiLYx0fhchXZk1pr5TJvQ3U4BeginFepwi8TDxlje4WnhLEOKNao8JAc/2L7d6vjoDP
         0ga2oM6ZR5x2L9iZQ3Av1YWNAVh4S8K/k2Akj1xmfZwJKgnZ8yy9FzRZS3ImYU+Vdust
         WUVOVJTojXhuW2LaMunnCEF51GnY2faxsm8WQx/voANtvnDUgH9ovJy64bju1vqqC08o
         cqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913561; x=1769518361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PH5B0uMIT9kq/8OwAAqfy6tuQNPg7xcJJFrKzLoPvsk=;
        b=QYpmCI09V7IuaJoVIhr2YlM3JBJauLwjZkrkjrC0ipMgt0H/J3rEmdInjiBVNS44NB
         GKoEGc2oFrV4FdnDkEq0AETU6nCJuIsCa2811QuotGDy18+JVtmXFZdVgTOx5i1ZSF0q
         hvYFkCUvsm1KiGm0uSDV20DjsF9NDc/kfiYJsf3fxKgRmVsBrYDQDeraGkviQXaxDYvd
         tS04e6UvCKH/62rEYgZ7wrsXYcb05k8v1VvuCBH0u2yu+CrNovDsT7ybfll8dvHu2EYr
         30HRYSnb9HWhm4ZhgHFTWTl0qgZ4BkFMia3gi9JWgQKJNPB5Zoh3MuAjK/b09PYyYh9S
         4T+g==
X-Forwarded-Encrypted: i=1; AJvYcCUfAPP5bDgJfRRKKdnkV7mkrEefCSdIFbATi9oJ+AWWz2QAfEZnZqK1gs0hGAHv5BRArc2KoTTaqRaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwWG+o063yf+acTWneewrIO6wOY5Or5qQZHgl3HlvMLOO00Avhb
	q9qCNQwrttMWxfYQDpCuvqTM4UkFz2H2VhAWsm/PaK+xGN3iOA4Aq7RR
X-Gm-Gg: AZuq6aKVMQuPiFitkjmnb9JbVVl+VDh+SE7yApJOenwoF0klSXym2qQ1PprII16icKj
	IZrRXyppcCSNya5FISOhahTLPlyzM1QZ6l4DtAzOz0KydTMbzVRyt6eUgy9Yu+TGAD6o+31fWX8
	CsdAX7Z5PNgWBZO2rP0fSSYcWb6dPTU7YMyrSBWMz/yy7ZeMQLFf9KemaQQvL+WeID9rYHETXYY
	lkkLraFc1nF0FvEXbB1NctM159Y8LIWPyuNROp+PvEejir8iC/xDVYea1lePg/AoUZZ9sK2B8iQ
	oPyMtIqVjb6nW17l+8TXFGhiAUan7OFEfURb345gy6zjxsTGtNOUn3YcMpLnm4k1/SH3urlkkhZ
	WOeuKuqbfydBwGT4R1b35SQIwvIpniqCoaFWWYQPZYGeHyBxylbdHq7PTUdxP0yHqncOK5tqAfK
	DH0P4u6f2Y6PRAvQyHUWSft90AGycec5hjgdIX7agm75xdIg==
X-Received: by 2002:a17:907:948d:b0:b3a:8070:e269 with SMTP id a640c23a62f3a-b879389056fmr1541252866b.14.1768913561315;
        Tue, 20 Jan 2026 04:52:41 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:41 -0800 (PST)
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
Subject: [PATCH 10/12] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Tue, 20 Jan 2026 12:52:21 +0000
Message-ID: <20260120125232.349708-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257405-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,2.220.108.0:email]
X-Rspamd-Queue-Id: AEF224ABA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7a3a2d4ab037
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
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


