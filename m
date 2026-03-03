Return-Path: <devicetree+bounces-270585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hmynJ/D8pmkKcAAAu9opvQ
	(envelope-from <devicetree+bounces-270585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:23:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B55231F277E
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 137DF301E3C0
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA62481FD0;
	Tue,  3 Mar 2026 15:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3F32+mpU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F4481FA3
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550839; cv=none; b=rYBR/+n3o6vExSpSBa0bCvrH+I1m1FWN8FEHgqKfc2UIGp0BtUhtOvr4HTDZ/+6rmOKqgUV/iPCaDgtthNsCNvCJ3KhWFzFmuMVwOBC5fdAThDX0OScIYjJdhW62ZVZnS183I3AlZnP40V5uxj4V1tf8tDI/eVgj0MGJAcVMDqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550839; c=relaxed/simple;
	bh=WyT89chcbmYqJC7DKZPxjAVElAXe9OzF+0pwJ2S76L8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=riYHQnQpl3zhlATK4CdgvziJ6Exvk4N5jys1gNaIhlkkGM4wFm8tOzyQVM5FcoUaqLxnWtv8qmMaQNwVeszoJF/7ZlStzLC4qR2VIl4IXwXWZ2sjjFiOQVFyhsMqRYKy111QqC2MphE6I+kl6ggUcKdruV4x92BW9PqMQrnBxOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3F32+mpU; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4837907f535so50947825e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550836; x=1773155636; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WbJgbWAnfu0WdyiSKYKXFL9ucpwnq0NwS8nZPGPTy/I=;
        b=3F32+mpUjDmlo5xUCJc5IFw5viCYRuVuLyjx7nOqKENRbZJqYD8WTdIIrUYEuYa43F
         +9bLu8g+rVBhodMgE2dQDgSHe074KeYgnObUoqZsBGRoDuwTOUujzyvHkVYM5LRnRIGf
         fpyqG8/ofkxJTPsaWpCgw1n2ApLr2dMevuMtaqBQ5NzZmRydOGZfdzDyN/sAh6jJNt32
         JBcfyqIHJPrsKyj+ffVsYIJu9nZUfNFhLaoC8+SBZ/FlrjRr1tCwdeSey57ItHNr2FJ8
         6ARJYU9LvnBwl0ZJ6Z+/lRFXnAfhzykymCMlz5YyyoUzCFsEBPzKIx2v0nVCkS/k/lpz
         MHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550836; x=1773155636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WbJgbWAnfu0WdyiSKYKXFL9ucpwnq0NwS8nZPGPTy/I=;
        b=MPWoW4Mg+hmAXMyvqxO80JIvW7Q5zdpSc4y3TOWHxHgm40cfLHrDryd52xX3Ovf/ze
         zQsJayPI1GPZIWzsiju2ToUuwDctABD7iUrV7DiHqztZmqdodMvsrjHAC08LPgSUCww1
         wd8pNhFbHyKZ32SUxKU/9HVnje/ZWyr2FZxlsyr5TCzr6Y0ljSQlRbq43SKChEuai3fp
         wm5oPcsywdU+dEboMFJcK7mUE479rLbNanwumHz1ahmFssx7Yq4FDaIyyp6XQCXGssNd
         F+3f0RCo3Q+ZvmObVN/04Gtp+fYwmA0FM+erMO8ceEKLlv3U9C717igllkPIoXb6k/7h
         q0Mg==
X-Forwarded-Encrypted: i=1; AJvYcCW5g7UlGyALfEJKnRqCUehvpBIDg678YBTsb6q32dkbyAC+L/5kCGn2+fKCtCT6+TzpO2x57NSOia9D@vger.kernel.org
X-Gm-Message-State: AOJu0YwiGjstSZlNyhBrk5rf+xFOJBLYLEBRl8WIyz14hejLrJnBOcCD
	UyVsMI5Ng9P1s3amhemK8edG/XjIAXOy8JRBWYUuDlrc765wh3gPvMgGLMwyvBJcGG8=
X-Gm-Gg: ATEYQzwKhGNsfOLAnh0IxWhrpMgqOjxYwwx0Tm4jcAtQb7rbygsmJku/Dsq+uPvYzwz
	Vbj1tdEQhwgg9XZNkSOGKP4ig40zF/pIwcdGtt4bZRCFxFCy0u95pwlARFtW8TdlTtByvA4fupl
	4CI+ytfwJCUdtRylNMSZIPS5loUQChsvzQ+d/7hQyf3u4pM6QUsqrfZ0Zkifbj4DnrblDR6Z2x5
	lDsiZVBl6NRBBwBDLiJC853VinZv/SxdqxX8R5b73/vTAVGpW+yvzuXc483+HcmOZQU5liGrOYG
	I/niTZBo9fZ/kOd0cM4QR5e2ouHlt2uo2YizYTyhBFuRnkNc9f95OEkaMKO9MumfyA/OPTlCYp8
	3sb/PStmclzfnarvN6XwOodUV/FHfuYT6U4lab+OPjSy4kcugKFKWZ7JfF+RCkEjbPe+3GSjBxQ
	vnxEPSGbew8ZAZfEqIG+QnJ4qnexXWvVA=
X-Received: by 2002:a05:600c:818e:b0:480:1b65:b741 with SMTP id 5b1f17b1804b1-483c9ba3aadmr304376075e9.15.1772550836189;
        Tue, 03 Mar 2026 07:13:56 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd75df9fsm574690085e9.13.2026.03.03.07.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:55 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 03 Mar 2026 16:13:02 +0100
Subject: [PATCH 4/6] arm64: dts: ti: k3-am62p5-sk: Split r5f memory region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-4-12fe72bb40d2@baylibre.com>
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
 h=from:subject:message-id; bh=WyT89chcbmYqJC7DKZPxjAVElAXe9OzF+0pwJ2S76L8=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlv+btWXQucSrb6dTV7a27za4J5sbas02ezip+R3/2A
 7fzjq2uHaUsDGJcDLJiiiydiaFp/+V3HktetGwzzBxWJpAhDFycAjCRkk5Ghl3TlqVpXM37a2Jd
 t3PdtwfL6jIO1/o6rW3+n2czMX6b2klGhr/eO05bXw0pktcycVlyVmXemfhN8m3PFgtUvK3eWqH
 8jRUA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: B55231F277E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270585-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[9caa0000:email,9ca09000:email,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,9ca08000:email,9ca00000:email,9c800000:email]
X-Rspamd-Action: no action

Split the firmware memory region in more specific parts so it is better
described where to find which information. Specifically the LPM metadata
region is important as bootloader software like U-Boot has to know where
that data is to be able to read that data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 40 +++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 4f7f6f95b02ef94a140edcef595ad8f6cc4b4113..7fa4924ab52484c7ac4243a0cd6c0d7aacaf8b30 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -55,9 +55,33 @@ wkup_r5fss0_core0_dma_memory_region: memory@9c800000 {
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
 
@@ -833,3 +857,15 @@ &mcu_uart0 {
 };
 
 #include "k3-am62p-ti-ipc-firmware.dtsi"
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


