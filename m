Return-Path: <devicetree+bounces-277332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFWfJXjCumkGbgIAu9opvQ
	(envelope-from <devicetree+bounces-277332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:19:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B4D2BE0FE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6304302C761
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEE63EBF1A;
	Wed, 18 Mar 2026 15:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Dl226U51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B5B3E5EEF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846869; cv=none; b=KpsaP1Zwht/JRt86ao9EcuEdKsSOtjWbRP4ab1MDEvO4hm59kUvDM1tE3Dg95k7sjtRKimQGTaWvd6gaWQTU/xyo2paDICTGPfzFSqfmY1WjdQv4vKbxSNhXV7q04bHlngIovTXjeWo/M8ACPJktcGQ/MeQisBBYelEj+hORobs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846869; c=relaxed/simple;
	bh=XPX0yeV9y6Q1/hILfx/rQYzRxhs7KMWJhy8D6EKmBWY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bxcXwV9vmjg84FAEfb6lWNO2WP1h1XmhRb47VdOhmw2BhpmGlP/dAQZA5BJUV9VjENMKUUZ8x9UJoQaIV33krAHfUinLN+gLz5H1Bveh6gWpsWOlYwAvF780zeJw/dP+INmSgXYZ+HgWbJnEeoLQiB202etOHCFSG3QlWPpJPpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Dl226U51; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so6967129f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846861; x=1774451661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J7J/XuAEJGTEZtvWSSq3yXfnStm9aseiZmgqCqYghcM=;
        b=Dl226U51c6Z+Uec3GTkhhCGJKDJf7hkEJ/T0iYaorcDl8n+h0mW+BQ3bluFPSlbEkr
         TjS/zGNBJRS6bldbJAjsApMPl/SyxqykaiV9Vbi/xmbmY1l6t+iICGlyP7BSUd/6xLtm
         AstVo/rX1KfF9OTWuQIzcEn3CW7tFIpGIITUh6ySeJchrJdV+AVqnQHb7GaCHtywaOo4
         AB9Yx1r1teAKkSi5L5nxQVExGF3ptEM1yPjvXTYjEZ9hvSEHqaov/tD0BlB8zGRPxgm1
         nOHgvOIUv0uaGSU5qQsZ1jibbvQHEVsyLN3jGKeIXWbpwEAYBUMaG4N0PpRNTW1Wt9OC
         JHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846861; x=1774451661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J7J/XuAEJGTEZtvWSSq3yXfnStm9aseiZmgqCqYghcM=;
        b=h6RoxkYLtc26N6OE/7Ud+eA+zW4IMzC+lvkwqRUBJI8xfLllMb+9oLQ6USwyMHXELy
         aJ2xOlgFQaD3wdgf48yB0qYt2FRERXaPFhou/TujRicckMsqWH38YVHsO+AZaG9Lepm4
         KCXZbRctNu5DKR5e5yXGI1iB01xxgPLcTjE4/MUehHR1upxOZndiyhDdwMz6Vr/4GE5c
         W2g9nCWw2INLWrnsGNeEaNUEc3aDNPxCmV0TucSBYL4PyCOXAA5ecJuhvedZoyIkINuW
         Ep/xC4OJcXsjuBCmMznWvNODwsL4eTYlLvEylWf4cWeQzIkwZ0h9g0oUN7YmMVmZAsKv
         fI/g==
X-Forwarded-Encrypted: i=1; AJvYcCWDPUhHv66byXf94ThAed1/EI9UodJMoLh9ZbEWs6FMLZeb6DlEtKBx80XRMf8WHBx0CVmurPJwT6CE@vger.kernel.org
X-Gm-Message-State: AOJu0YwaonIqbFPYLAGQwFfuZT0LDlnhRoGIoHLhjCvLdSUn8JvxjCAr
	axl6bChFArMofYdUSDk9B54NOrnNLqmxMZiqP4F6Wfn7eA9g8q26fgapwZ75F1BJ5nA=
X-Gm-Gg: ATEYQzxxLmS0AtY0G/FudAG2VOpudSojYKEujTaFZwfRk5/t/a3l6dQ4UqM1aEwaXfM
	Rtg0Ow/Is8QbxK9z4gLAuVAgrMuerf1cctykQZKy/jIMS58OAvrvFifrvkyx97CQffn9yhnMgcK
	43g/OEtFsC5R5/f3vLRmiRbEpy7hS8R6vGYQ/hk7UKlX5C+mjRoGkTZYLz5kx+WVma811EEez9B
	db17t1UsEViH4xKs6iSBk5PWar5h1rshfNozfQhtJX1fUG0ih8AySvYG+U27MSjfPzqxaOPKDkA
	aZgFbB3+VLUnbiMpzh6eZGu4tCkvYEphfpEpOHQ4NPbOhTHaJqrFWr/QGZOIA0Uxi4kTu+AclFK
	/Y74TOVzUomSvs/YktIOVZhhEk3HyExWUeJBgKm71EDQUKs5DKTQnoaoYLwXw62iOL8GtcbszpQ
	8Iddh18r43Wi2wxbIimpHa
X-Received: by 2002:a05:6000:608:b0:439:b858:1d28 with SMTP id ffacd0b85a97d-43b527c429cmr6235032f8f.26.1773846859401;
        Wed, 18 Mar 2026 08:14:19 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892290sm8063440f8f.20.2026.03.18.08.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:19 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:11 +0100
Subject: [PATCH v3 5/7] arm64: dts: ti: k3-am62p5-sk: Split r5f memory
 region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-5-c41473cb23c3@baylibre.com>
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
 h=from:subject:message-id; bh=XPX0yeV9y6Q1/hILfx/rQYzRxhs7KMWJhy8D6EKmBWY=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdB3V2ZCVcX7v3SmPaKv6pV+bsuL0mR8HO9Vl7AV9gt
 PnGo188O0pZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAisXKMDM/3O8zdU5XYcGoN
 w0qV9funcVevuKr08a1G6HHGmJPqxx8z/E+ekj6jXfL2iQX6wqL8H3/M0KufrLN7ocWrxN2f169
 s2sYMAA==
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
	TAGGED_FROM(0.00)[bounces-277332-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca08000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,9c900000:email,9ca09000:email,baylibre.com:email,baylibre.com:mid,9ca00000:email,9caa0000:email,9c800000:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 32B4D2BE0FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
2.53.0


