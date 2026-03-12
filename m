Return-Path: <devicetree+bounces-274686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MKMKizhsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 376AB274EA3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3512A3078395
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BFBB3F0AB2;
	Thu, 12 Mar 2026 15:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tvqASqT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BFE3C9447
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330617; cv=none; b=qfTMntAQPnS4AUo5Kzoc4B5vMm+e+v5ysUUk6VpQpXAFPx9mCYmJf2wH4xwErgPolF3y32Ok86MQSHXvIWlVy5cwbl33Y3eLJqvIPPE90AM8/OUlignbxucNeud9QqNKU+mrUNAruNn+yEAKio5/Ye2TsVPT99o4gbJJAqWvlQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330617; c=relaxed/simple;
	bh=XPX0yeV9y6Q1/hILfx/rQYzRxhs7KMWJhy8D6EKmBWY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YaQUyvAzUwML6ILPfRT9Jn7KFx03LisT5Q1vTANXyS8jWwodI5QJ3oEVwEFPJUzupDGGHjHHuVt8fnZN97Is4Zbg5h/vYD6IM1x0kxT6szz/Dc7pArV05D8tXLOK6RlHKRDvWnGREtdg3HTYslPU8xRsYkXFimPvuoKWDz1Q+aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tvqASqT6; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so13648495e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330611; x=1773935411; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J7J/XuAEJGTEZtvWSSq3yXfnStm9aseiZmgqCqYghcM=;
        b=tvqASqT63FS1pHGj/3Tdxxc9JUz3ao58hjbk9Tbkjag/1SflVHaPuBfEDwJWKY6kBQ
         a3Yxd42tdBOU0PXVISTJcTKV0X5ZUUaEsQ63zRYc+paQ6Ks5C38uGgyeqi0R1sM4odJ7
         xnMT7GCMsi4HhBYV5re+YRFeQ42n0r8tiraT01oEQFkIDbIWQHGNPSJaZu/qmr9OpJJS
         KKmVpmWBP2986LbhL1JbrU2JolxXjEb77EVOFZ7wwoMsgmMu/JRY0phreXGb/0pzRXNf
         sNBX5f8Uy302top2/8NlKW+PZulTv5FeINZrsY1iMWfhsJHzoASENQ/r7DWfmUWLj4VT
         cHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330611; x=1773935411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J7J/XuAEJGTEZtvWSSq3yXfnStm9aseiZmgqCqYghcM=;
        b=s8LLiUbXBDor4iXJtLigxEM51a5bqTUEoFS1eW/CL0Jgi7tkVfcuZu2h5AOQRT9yem
         dHqn88U3WHvvFPFwOW9pDJPGvhEBFP+Ctwramj5knQbEL74NTbspvZb265H4aYKO0Gpt
         GXNXzVMT/3yu2lWc9NSzCUn5nY5WAgnstjtEYxSAZezq9HxcSR768dLRLeEQUMkgrESG
         Euq3pCoevXrJ6MkVhi2slmxbAQczrw8hAa+tOTIykmJBAlAjFeBDMAljER411gcX1mHo
         HXbo78VLd2eGYmFYn8JPQEI8crqa5RRMs/MZgeiieyS0WDZL06umAq/drlo2y0+jT1oK
         aRMw==
X-Forwarded-Encrypted: i=1; AJvYcCWy/NW16eFOM2qA63byFz0IL/5Ip1wsM0WXMam6PtVXePdPITC22VGqTCbd6aNOj0IokXKlYFMY88cs@vger.kernel.org
X-Gm-Message-State: AOJu0YzNaH/xWhHzhC3ElfhRBmRzrHskY0ah4zDuq5gqx4f6ACpowXvy
	b004/oAupmFKJzvJkWuIp1N4xSBvS3Lwcwnp1JpCeSOQZ/jsmtmycI5RKG11z2UwTjQ=
X-Gm-Gg: ATEYQzxaW3CUZQ9vb6QYIUwMMKzT908pYs/H9rkqJdgYSzTv1PfOlDps4VHozgujWc+
	dAFnrdaFYNTwRGehOIgjx/50yUZi6MWjQCZ7eFwAmof5S3GS1K0Gf2qixRM0YGXETl+hK+gC72D
	TlY3umDqWu9pzJTr+QAeflatQnyIj7PkGHWWj/C9yUmvra4JHxc3a10DYOQD673IfRSfLlgTCJt
	fiGL/0J0e3dv6hhxfCFHMC6KBLe9Y8OSCrBY+zYCDnRrDdJgov22BENndNkum92t+pWL+MWLN64
	hjv6Yk8ox9F5nGUj/KV7LNjY09E7kJBHvNdQDQ1jgTfLw5ZJ8F0ZQQJBKaoEh4RlLXMQSyaSd+a
	CfRoiAc2uAGxF0u0xV3AbDdgsUDufqwyFXPo8YNFY06GcXr3C78NL9JirWQ11WsSGpbE4fliicx
	My+SitTmFLLPiCa8VyiLQo
X-Received: by 2002:a05:600c:4452:b0:485:40a4:364 with SMTP id 5b1f17b1804b1-4854b145513mr120904965e9.26.1773330611284;
        Thu, 12 Mar 2026 08:50:11 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e912fsm361176715e9.2.2026.03.12.08.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:10 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:48:58 +0100
Subject: [PATCH v2 4/8] arm64: dts: ti: k3-am62p5-sk: Split r5f memory
 region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-4-37cb7ceec658@baylibre.com>
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
 h=from:subject:message-id; bh=XPX0yeV9y6Q1/hILfx/rQYzRxhs7KMWJhy8D6EKmBWY=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxND9qjCuYpaXHGajomCN3XOFP9ii0gP7hyWXZj+YZba
 ivXGH/pKGVhEONikBVTZOlMDE37L7/zWPKiZZth5rAygQxh4OIUgIksMWT4Z7ZCuP/ymmNx6s4z
 Uw+ULmXXvWVpMr1zV4zKBHWNrxnSDxkZvrqxHl9wZVa/C8M052kTH0Q5Vh48VHVeYFqQ+e9fZUc
 NmAE=
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
	TAGGED_FROM(0.00)[bounces-274686-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca00000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,9caa0000:email,9ca08000:email,9c900000:email,9c800000:email,9ca09000:email]
X-Rspamd-Queue-Id: 376AB274EA3
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


