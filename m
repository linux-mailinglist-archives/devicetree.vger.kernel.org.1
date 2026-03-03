Return-Path: <devicetree+bounces-270584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMZBMNn8pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:23:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE791F2751
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E891317CFB6
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33648481AB1;
	Tue,  3 Mar 2026 15:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v4vqRcXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D63481ABA
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550838; cv=none; b=nFaroq5xQFmmjBH8SjRBkZv86jZM3JVbxzHgAx7h3xNXzG1B+OLD4kdgipPqmeDzDTov9kNB3UyDTtaEPVEh61nRtEaELMVWu+nQTttSsYmpDr0TRQLxVidchzimvFrzPdLbHM0DRLTnr20cw+hIlyu8s/4l4GS99DDG5ZbITo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550838; c=relaxed/simple;
	bh=8gzlbnd/lrhfH675InFOw6ENiznOrf5//f1/mKofVks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NTuDJ++NDZjRgKL9dUzgzeFvhmfFr/A19eTcCTHpdAogYHD3fzRLneeyx0DVk0fKpK6FNH8cxseO4rsDxPsQ5isi4ELInVj0c3C8RSC49MS3N/jcyrTli2L/aFCxGp6D4QUTxpB0DaPDrg/hJCIEJUggq4nRKV6XEUiUArUgivY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v4vqRcXU; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-483487335c2so48444855e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550835; x=1773155635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZfHnZo1dfLxFmlRErM/g2D0e3BjI58pYZzPrUU0N//E=;
        b=v4vqRcXUvfbaga6kNMZZd6P5BsjVYG+Jh2oByQqHKBcE+vCAeDrrlVsUvAxekSl/ln
         x/H3cYVtHd9ZNRTPy5BQS1H4dcUQIPIuIsIKu6C449yNHN/ZCGJq7Jp+9gP/GD4RkL/N
         XtvlDNzsqzWUNaMxA7QlWfh6Zhdnh91zhKd+xkmjGMO0i98cf5TdlQ0jCGoqCKYWHfGS
         ZA7ttslqBRj2Dr4qnMRSmj4W7J0S4LZc0bisqWPPLIJRWIw1kRJWfR19E/hbPlLESCR4
         MbcO3WTWAsdI2J/0lAQQe9sRGcqIgwMNwZKCA6eB1AT6+H92b4U31/FuKHfpFBCfh83E
         GmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550835; x=1773155635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZfHnZo1dfLxFmlRErM/g2D0e3BjI58pYZzPrUU0N//E=;
        b=Kio3bFRLeGaVj8U0LOiuRapENnqgpCvSEJyJmMgZtu8lMZdpZZmqC5CaAIrrb/UMnO
         BZfn3uRPTzSBqApyoXZdXxPXWGVdyaNI+mpqEwW1VoFDwqkM7Xiir5b9F6kKE5FieVRX
         fRNB+7fIczCDWivSomZcsqOBORY3W5WeJz4wv++Gv7989OBYXHqIp6eAJa7ULZqrc66o
         5ar0vUm5V3kFP2MI9841cnbnPX7YV+YcwN+6V1KgPKb1RkPibp+zPasukWaNfYZOcoue
         yflOYc4ta7hCSdl23Gm7wBjOnj/Zn1qN8MMpEe6uhJcUZjBq9wUUz+wKeda+2XlQkB0+
         CCfw==
X-Forwarded-Encrypted: i=1; AJvYcCXWOhHsRjbC4hGe72jMLuTUgRpHPYQm8ttZiFRaL6dB97WTrQJRmLkxqIlWZg6k+TynDC8HNU/bz5Gd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8yxjZKEfLiZbt6lvWn//Pl+/x/z7TkU3d3ENEBU6rkzYKOczd
	EfNpd7cvvy6dbc8u6E97dwz3+BT1gYoHyPbyMbWoufNemdIX/k3q8y5jLdcSHvZM5Vo=
X-Gm-Gg: ATEYQzwUvmpCtyj65sM0sISAYCQ+dstabs1Tj4bTzy+Yydx2iY0xz8mWnHOhLHqPHb8
	ybTJC3392+i1etxC7S6P+1gkAZ3UVgc6ppNgKzwe4cCtMR6o8RcYYRWnMOOGbOjO1VSWMCrpnmo
	qOGP+oKQdkALzQtM3FZnRyyIJxJ0O2AJBUOf0dR+a/ATihjjtMIrKRtF04Rwspw/Ljrm6h6YA5e
	MQeGA7vAfGdZrbSjRAKYhUo41JoQggyuOHU8R0K/nq2TaZXUGhovlHVoaPOuoQyWaUI48a8Mu42
	doG7X9JDnFJJoUA7TPPORENOcJZkKBRu3+oW6FmPNdtsEo4dto0UOqg63zZTSDJTn9m6ngCu+ya
	wGcUzTpUDVjLYHq0+4dDKkxapf8clIQFa6GYIFHoT8N0SMd+k81YmVmct0ZCmevBklC3s8Mg7Cm
	vUNYhxZB9PMmdvj6JO7OcKRsTP1ZwHY0s=
X-Received: by 2002:a05:600c:190c:b0:480:5951:fc1e with SMTP id 5b1f17b1804b1-483c9ba7fd9mr278150565e9.11.1772550835019;
        Tue, 03 Mar 2026 07:13:55 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48516f74a1dsm10515885e9.2.2026.03.03.07.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:54 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 03 Mar 2026 16:13:01 +0100
Subject: [PATCH 3/6] arm64: dts: ti: k3-am62a7-sk: Split r5f memory region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-3-12fe72bb40d2@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2273; i=msp@baylibre.com;
 h=from:subject:message-id; bh=8gzlbnd/lrhfH675InFOw6ENiznOrf5//f1/mKofVks=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlv2YuYdvkp1713/DdRHeX0qL0Pae9jt4V1d4dlrROO
 VhBg/FfRykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAExEbRXD/+LSPTkWFQmhnucO
 f2P4/i+mozWU7+B2pgPaPv4RzWen+TIy9C1g+7HIde2CuaW27mfFfSU5VxyYXBIp0RJ/Wufqi9k
 LmAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: DBE791F2751
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270584-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca00000:email,9c800000:email,9ca08000:email,9caa0000:email,9ca09000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

Split the firmware memory region in more specific parts so it is better
described where to find which information. Specifically the LPM metadata
region is important as bootloader software like U-Boot has to know where
that data is to be able to read that data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 40 +++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..c381cc33064ec427751a9ac5bcdff745a9559a89 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -59,9 +59,33 @@ wkup_r5fss0_core0_dma_memory_region: memory@9c800000 {
 			no-map;
 		};
 
-		wkup_r5fss0_core0_memory_region: memory@9c900000 {
+		wkup_r5fss0_core0_ipc_region: memory@9c900000 {
 			compatible = "shared-dma-pool";
-			reg = <0x00 0x9c900000 0x00 0xf00000>;
+			reg = <0x00 0x9c900000 0x00 0x100000>;
+			no-map;
+		};
+
+		wkup_r5fss0_core0_lpm_fs_stub_region: memory@9ca00000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9ca00000 0x00 0x8000>;
+			no-map;
+		};
+
+		wkup_r5fss0_core0_lpm_metadata_region: memory@9ca08000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9ca08000 0x00 0x1000>;
+			no-map;
+		};
+
+		wkup_r5fss0_core0_lpm_rest_region: memory@9ca09000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9ca09000 0x00 0x97000>;
+			no-map;
+		};
+
+		wkup_r5fss0_core0_dm_region: memory@9caa0000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9caa0000 0x00 0xd60000>;
 			no-map;
 		};
 
@@ -922,3 +946,15 @@ &mcu_uart0 {
 };
 
 #include "k3-am62a-ti-ipc-firmware.dtsi"
+
+&wkup_r5fss0_core0 {
+	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
+			<&wkup_r5fss0_core0_ipc_region>,
+			<&wkup_r5fss0_core0_lpm_fs_stub_region>,
+			<&wkup_r5fss0_core0_lpm_metadata_region>,
+			<&wkup_r5fss0_core0_lpm_rest_region>,
+			<&wkup_r5fss0_core0_dm_region>;
+	memory-region-names = "dma", "ipc", "lpm-stub",
+			      "lpm-metadata", "lpm-context",
+			      "dm-firmware";
+};

-- 
2.51.0


