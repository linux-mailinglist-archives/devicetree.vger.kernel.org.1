Return-Path: <devicetree+bounces-274685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMoHJxjhsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:51:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 328F8274E8B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64E613038168
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4AA3F0A8E;
	Thu, 12 Mar 2026 15:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="thh6PbWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21B3CAE61
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330616; cv=none; b=J7ZiIXk6TxvQpdZmnQ+rolAnW6i5i5Wrup8k8NE4PX0DRzxJ46xz2j9eE51DcuTWbUDHqJgCiykzi1tUFKOZNXZFmGYXnE9/o5XY2O44365dMKGuIioJD1sddGePAmxshpP9hQ6YHGDjEOWs6n36sXV4CD7La9Uv3ODT6Z5HjW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330616; c=relaxed/simple;
	bh=8u+OHH2OFtnrDqEIjHNZaX9z21vlFvfBncTMKuwpawg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y51Pd5I/VWVbwzBPEloN2Uxc9L3yf4TvAxxX55f7cYvGKaMMFQZ4p575Pa2RlTMSK7cbL5HyiEP6jrtUj9TPtsV9aV3m3vU3pGLJvCBQinPAuJuUIm6F+I6Vl2hDQolfrFpLeW8+3i8ZZl+l8bQoUd7XPDDmrmT/CmBZT3AGKDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=thh6PbWu; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439b97a8a8cso1209756f8f.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330610; x=1773935410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d6FKMrTLP+EgoNwLb1d4K/Z1ONjM0ZaJwdkY97QIcxI=;
        b=thh6PbWu7KwZTHAYwy6TDj606OkJXtfOuw6q5GzdOZh6d0wS8jxILjJkYiWsF8tP6P
         KtMjHXlUd9dIH1fTMMH787wh3xEnxFfSVSPA5m6g9HzDJPcXwvH4ZC+SbgTHNyGVpJ8o
         nH2ZUB1k6EkaPyftinwASy4wcwldav/6Tkam/+RKVPepeq+0rZkavHgu2ltLXB0N9Xgw
         o0IYhBSPxaVCs19q4Grt+oXvor5F4pEA8nOjjzZD3MBIRIs9hPhMs00NUuZB8rW/ifod
         TT+uiKbXMO/nU1dJkY0+y3XvGQCrHAieJknYFrcviCVLS4jiOdkBK6wFz0hoZm31Xrun
         LNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330610; x=1773935410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d6FKMrTLP+EgoNwLb1d4K/Z1ONjM0ZaJwdkY97QIcxI=;
        b=R1561jrk1yJhp02MGHeSfs+XuxMtktyFLihpRrCqr+vGiwWQrFTWFrC/Uiyvba74sc
         +JdMDOpeA+xfsqpx1vlF1g1D+EriMeRy3G1fnLrFijVClJ8NvxNigvdJcJw65bDEifou
         CSw2wlMIvrIlWx/mmgPdAeAF4PphwO0K64yEower8mpE5Mrit70SAspAdC3yRI6OGWWU
         4sAxylptPewLfF43iPWMfPgsjXoVEOsN7Mm+SW2uCFYYMgmSf8blMkCQoVnu9m549hhI
         H/qo4a+SABx8K8WIM1FuHgHm/k7zzTabIC7XholOCclFat1yjRRmQtLsTpZ+ege3YcYe
         TUQw==
X-Forwarded-Encrypted: i=1; AJvYcCVdSTRgkI2DbZtP16vgeiz3MuD7PHJJPDo66W9T0URcezNEyVmEVMJUb7AwJvlqVsfuqpQRZZ2AAIWO@vger.kernel.org
X-Gm-Message-State: AOJu0YznIeiUVgmvgh6r57bG4501X4PWhwr+Qhex9pMAAhTPHqoDLtzy
	4nVnBwglxT3TbGswTXl3Sh/zu5/ZpBY/ODuV2j5UQ2zvJr29b4xrI42tXOvWBShnwnA=
X-Gm-Gg: ATEYQzw/jqELnhiaueQDv0mgnr5kOqmIQ14cf6BPHGmkmt4ecdQIrGEcOLMi52jZxJK
	tDSj3rZy+sOa3dPqmSPp2Y2qwYeOPMfqxhogx2MZsyD5viPe1CmYIRevsmEliQ/f0nmDsEcVWvs
	6YsFJjUMJUr8K1aA0iHdQSuha1AWu4FYZtLn/RNnCuOiSeXsyKX7Q0oAJjE6cNY4XdsueAEFVje
	Q8zBV4oDinXb32qRvefrubg9b4Vr2Ga0apiiOM95q5U0aafISp/k0ze2zSP7W29/YBC30enyO8R
	uJHLt5FU9q/IiPNZcDSU3bl/jWvGp1FJoSJnmzdHomAEIxB5mxzrk8+c/dnyatdgujiq2AIBgE1
	objI40rg4Uu0bLSm8EBcMHEkF+IOgNrRATfryBg/Du2Hej/Nrf3JuFowfj09LFZj/Aq2Ma3jLRm
	o9DX7ST0Yh9ipeYa5a6keo
X-Received: by 2002:a05:600c:8b65:b0:483:6d42:25c6 with SMTP id 5b1f17b1804b1-4854b10f1ffmr118612015e9.23.1773330610261;
        Thu, 12 Mar 2026 08:50:10 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b7f255sm243387035e9.12.2026.03.12.08.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:09 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:48:57 +0100
Subject: [PATCH v2 3/8] arm64: dts: ti: k3-am62a7-sk: Split r5f memory
 region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-3-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
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
 h=from:subject:message-id; bh=8u+OHH2OFtnrDqEIjHNZaX9z21vlFvfBncTMKuwpawg=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxND+o1FzUcigo7+OpmvYqcxAYzR/kPvRz7+D8z9j068
 FqQJ/57RykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAExkCS8jw77vIdWHvxouk/9g
 d/ibcr/UIfXw6bL/6xmfl6854S1tdJHhn1lYe4xq+UpF+Q3/YtVyFrn03Gh8UduyOuD33prpncn
 ujAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274685-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca08000:email,9caa0000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,9c900000:email,baylibre-com.20230601.gappssmtp.com:dkim,9ca00000:email,baylibre.com:email,baylibre.com:mid,9c800000:email]
X-Rspamd-Queue-Id: 328F8274E8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
2.53.0


