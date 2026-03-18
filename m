Return-Path: <devicetree+bounces-277329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLJMKFfCumkGbgIAu9opvQ
	(envelope-from <devicetree+bounces-277329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4822BE0B1
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E53303085123
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6132E3DEAE0;
	Wed, 18 Mar 2026 15:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BmcDr2yz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CBF3E5570
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846864; cv=none; b=ocR8FGlsl5oQ7xchFrsCjZi12ZTzhqC4DvYNNpwSqQNxrKr7dReo0iltiX7nO+uVXnBSbGLc312AypBUiSE91Zkw0Zok9HzlU/ZlZC3fz7G/nDMFkK5puRqQDGV+0SXw57nTi0coQ/wiFjGUZCOhrdKA3PTrMqP2o9H1ZcS7eoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846864; c=relaxed/simple;
	bh=8u+OHH2OFtnrDqEIjHNZaX9z21vlFvfBncTMKuwpawg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LLGdO55mPkerBYjXQRZhJc3cY8SI3hW77QMoiTnLo1x6R6+U8lbU4Hlp9KHqjsjYkQ7igTUrQ1lc8piHeefr28XjkFOtdTJLQu+pTsqeqecSQfjP3FJ6RnJZqObxmJgDNy0pI44W97mNRxm7qiNUmfPMoKded5cT78DzycLn7Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BmcDr2yz; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso60096325e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846858; x=1774451658; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d6FKMrTLP+EgoNwLb1d4K/Z1ONjM0ZaJwdkY97QIcxI=;
        b=BmcDr2yzdSM5Tny+rm8768G+62jiM1jVGGtCCsEj2gd5bWRRN6Z2W/hoBZuV4NaXEo
         QYgMBkp6yvtIwLtWOsshCZr1gLpQRlQXX3MUl92etLphOX3kD8tF+qqs0qOmpTpJJgsX
         Ag0cXXZx8vaRRn56zA3pLHsiTzvw4uWbP8vfysXDhFYoQkBgMTo/6epnVJSk7JSAP6rE
         R7vUfcAkAajUgm1HDeqPsjJELFhFN2LaazpD7vsqFhMTehfChZR3Dg1smZ8t3VzZYUzH
         Lcfvi5+k0/x8TZTbJ9pkTLpx7uWlJzyI5UDLtqeJV4ppLv/6H3GV4V75IDB4GVj1+ia1
         jBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846858; x=1774451658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d6FKMrTLP+EgoNwLb1d4K/Z1ONjM0ZaJwdkY97QIcxI=;
        b=dULsEx9xxqQJwb85KjMHoCXv1cv1zaBOu1sk4yhuHmGHavetl81t0NETPs4Mqu2oHX
         kW6wsG/DN9UXUZ67sN3tYgSoveOsMfbbpDkjIbkVvaDUNshrRbWti6LjuQpfJnAGP/dN
         4zXO66smjQz5PenaCC87+hWWEWVP8gzTlWf663KupjZchFULXCPwVurrTGOEpCP0fw71
         22+9MClfe50Fp5uWvo+7dldQLafDj7izR1MmkhYdAf8tgzaZ7ki1wU/EUgA4EfY++IGw
         TAQvoi5p9lIQ9P+cpGLSQAFjwieoPDHSPrDYas2pB9tbYxJI0MKAV9GeU3eAX5+Ea21C
         NqWg==
X-Forwarded-Encrypted: i=1; AJvYcCVAlwk5YBG+1SKinB4rmUr5npcpwp3Ugy4gyAbbwIylLaRBXjYxRi02gSMYe4/qE9QdOkLwFsLEZ0qo@vger.kernel.org
X-Gm-Message-State: AOJu0YzqspFE280LSioq6OSu2+Co/1bIOHWqtlIhlvY4aMQCqNqejQIk
	JzQJPWXBBjhc0KHUy1SCfYHypiK7EL6iV/ncEGPyH6LywXAJHDStp19D0yxf51EuLmlF/IIA1DS
	99RCb
X-Gm-Gg: ATEYQzxK/Bj9L162iMykEhueSPTejiy/4wRPViZPfBtfAIgY5RLkjrcl4yJ9JsGMbYX
	vJ/daVtCa2ymKu3NZUKIhkRreHKjjL9hQyzoo2N2Vq28p/3Tg31msaB5R/rIdLXW4/8f72NcZQH
	So+DYTvMUVbPkP8A7iJONwKiKvQJhaI57Ut/aqkHMBWCWh48iiyZU2sCNhAKW+OK1m/6OedM+Ub
	khU3EeuRnDAr0r0JXVVp1hwWvg9MjqtsCzikRs2l4s/EAP5u+CFHlXtXJHJ+BCEK4GEFGOxjUm+
	V9N7AG2KC4KHIdpnAHwj8iF9GyVhLLZOvL8zkz4HxpMV0Flf/n7uIhd/hVZR4v5KcPhORmCwl7r
	phuakYAuGzQ9v6fx496mnhGXV1NlvL5jtOTfe8ZNocrF91VIjGXpQbPIloXzr7c3EI6E8Ug0Jcx
	5I3DqwPYmWvd23LBlt7rh6mR0o9IkrfWc=
X-Received: by 2002:a05:600c:1f10:b0:485:34b3:858a with SMTP id 5b1f17b1804b1-486f4429d04mr58038485e9.11.1773846858250;
        Wed, 18 Mar 2026 08:14:18 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bbe471sm22788945e9.27.2026.03.18.08.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:17 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:10 +0100
Subject: [PATCH v3 4/7] arm64: dts: ti: k3-am62a7-sk: Split r5f memory
 region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-4-c41473cb23c3@baylibre.com>
References: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
In-Reply-To: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
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
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdB1Vz/n1aOGmeiVvd0XeuFj/O1kyweeiZ7nNz+sbfB
 TmnGdxZOkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAiBX8ZGV5YbV5Z9Xf1fp/F
 i9IDzHYWB2kqen23CD0yV0phy1X2cBZGhn7fzJgl53sdSsTNtFov/RIT+KEj/tTXYoeyu0DYK34
 xZgA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277329-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,9ca09000:email,9c900000:email,9ca08000:email,9c800000:email,9caa0000:email]
X-Rspamd-Queue-Id: 1B4822BE0B1
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


