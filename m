Return-Path: <devicetree+bounces-227152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC16BBDF1F1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00C101A60276
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF8B2D5C95;
	Wed, 15 Oct 2025 14:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GXfcbIxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58A22D543A
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539180; cv=none; b=eGMG4SASGuyA/vLf2eLXUHbSbQ4M0hXGs4f9U3z2UKGFbZssfFAXLaN3s/fd4Jd5Ec0wzJykeY+Lz24ConH60aoGRUpWdH7IH3xdsuCslPs96+B1DtxYWX/jmNRfkcqk5VxEmD50XvzegIl6l9rin6Tru+W0psKkz3jFxs0d+uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539180; c=relaxed/simple;
	bh=1Ae7pCJMeSen81U43oVm0cV86n05nI/vbEvamy+QB7A=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ni+sTlcF3VsB84MTYTbOauQjG4DzFIRDs+Jh7udQBx9gyoP8NT6qiBCdutS6MTTTx6pE/T1wuOIPjUqleUFmJb83grg7AREqvwQ3AT+UrJqAHBKZIOgFBRpKaLq+W17pjh8NhSmBgam+Zncog4Pp7/ERH4JDhMsQo95t8dEVMOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GXfcbIxn; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-271d1305ad7so104526665ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539178; x=1761143978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThMWJU9Zn2zc8Ri8nC2rLeAQ6V0FQ+wbPN7aWmFwPkY=;
        b=GXfcbIxnBH8x3Ta5T8jsLEFGZt2UfozF7LzeXxnJ/P3brUugPMkcfzBEgDRO9dTyer
         xVN9mQlWlblTUTvS46tOZ2FpVXgd0KQl4dK99PUJlKasZCNTLulmJcsnxUmOvvak+18M
         wiO3vGwvLSV2J7UvXWeoi3JIXVmr8JSITvMA3BM3gEZp8uJywt06qCohxDaiI3RgaPXh
         a7U6dWOyTDS6OaKujJDXzabnAnJ4YjqCH2umw81W6Z4gkZODiAV+hFu/aRD9vWg081/5
         lsFiIft1NKwbuNitcEctOu8UUbQ8tqFvQ7/hDYMVGloaWwUPRLmNht5EThp88gTRy1VH
         AxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539178; x=1761143978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ThMWJU9Zn2zc8Ri8nC2rLeAQ6V0FQ+wbPN7aWmFwPkY=;
        b=ZrD4oqC3nrYGodhYxklsApQb9/muffWdkcw/zRYFStz1Jskz0Pgdo9NOOg9LU2oB/9
         10EIIQb74CbofcyJi92WVzq7RacO3bQ9waMJKpSrs442llPmBMJNhbcgJ+tf3k2blLQj
         7niTBefwUf73X7s4RIxNX6byTh3BZsRuqui0fe8dU6ULmO50gk8hQjGFeTeYdxg7icdV
         rRJGhBv7Fit4Ym/Dlv8GrYFPBqnvIxWTj5QiQNM+PC2K+t8dOjVz5rjDzQf3JtUrSASW
         jGfFXBJRIs17sxwO79yO974jJjJvu5CfBFo9EzBy/ujyhdo5PFE1QpNxuH/7h8kx2XHQ
         W18w==
X-Forwarded-Encrypted: i=1; AJvYcCWEOt5zmeARRX1xwh0oU0f79RGpvTubnwRQLGe/LnxijcoWvJf4ofuwTOZO1cRElSA+L5KDIPGt8vU+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz2yOBthKYquUgK4D2k9OaTod/RcN2Z8ZAXRj+GZv3GcbIFQnY
	RdfWQpd0cZLAehGPCv5iXqGpOsn5yGriKSdusjzdg8JgowT2W99vsLeT
X-Gm-Gg: ASbGnctYzePuKHDv7ogoCca0r5wJG/DOYiQmx6ZTc7x51T3spIJA21vqZan6GuAUrmg
	rRn5mUVivaDI7oeGjyQ+iiwiBIkv2ujE3MyqXjdr8iqTQ5jC4dHitnw9RP0mvRqi1/E8+0eMZwL
	01OX2eK5JQF39e8Uil0/k98463RPsm+Xj4j6uCaCjgPs5fhLaJgwVPpG7DyHozKBtJp/r+2Uyx7
	lCY/aO9cpITUy9CMdtX7bo7r8YqNdx2bQVti14UUBYRd4VFwbVs6x0juzW5DuY4OkS3HpO2hUxf
	ky9GDFpFcNt/bBGKCNsbCXc6LLyLrXHXZEtOPn1WPUDJzhfHBV/gVCeYetgCpgACg6LW5o14HS3
	IcfYAeLI0pY/Fcupjv/y6N4umpKQs5BL/0aLsqp7JNmQxXVANGA/s34wDO+BJVKcxVBy0yqp1xN
	xoxpuak0oya0yc2fcftXxvEVNpfEyRTEe3NaGH9hII
X-Google-Smtp-Source: AGHT+IHXFYBxv1duy+NgjILQXBh6DIAOFdCHnmkFRStqTE9SSRyR15DtFXzEoOln24REjJhH1gcaGg==
X-Received: by 2002:a17:902:ecc9:b0:25b:a5fc:8664 with SMTP id d9443c01a7336-290273fff0dmr361423205ad.51.1760539178118;
        Wed, 15 Oct 2025 07:39:38 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:37 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/7] ARM: dts: aspeed: santabarbara: Add gpio line name
Date: Wed, 15 Oct 2025 22:39:01 +0800
Message-ID: <20251015143916.1850450-6-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add GPIO line name for userspace control or monitoring
- Add leak-related line names to report chassis leak event
- Add debug-card-mux to control debug card access
- Add FM_MAIN_PWREN_RMC_EN_ISO_R to receive RMC power control signal

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../aspeed-bmc-facebook-santabarbara.dts       | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index c0334abf9cda..3f36c8e03f48 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -208,7 +208,7 @@ &gpio0 {
 			"led-postcode-2","led-postcode-3",
 			"led-postcode-4","led-postcode-5",
 			"led-postcode-6","led-postcode-7",
-	/*O0-O7*/	"","","","","","","","",
+	/*O0-O7*/	"","","","","","","","debug-card-mux",
 	/*P0-P7*/	"power-button","","reset-button","",
 			"led-power","","","",
 	/*Q0-Q7*/	"","","","","","","","",
@@ -1744,7 +1744,9 @@ &sgpiom0 {
 	"FM_IOEXP_U541_INT_N","",
 	/*H4-H7 line 120-127*/
 	"FM_IOEXP_PDB2_U1003_INT_N","",
-	"","","","","","",
+	"","",
+	"","",
+	"FM_MAIN_PWREN_RMC_EN_ISO_R","",
 	/*I0-I3 line 128-135*/
 	"","","","",
 	"PDB_IRQ_PMBUS_ALERT_ISO_R_N","",
@@ -1804,11 +1806,17 @@ &sgpiom0 {
 	"PRSNT_LEAK_CABLE_1_R_N","",
 	"PRSNT_LEAK_CABLE_2_R_N","",
 	"PRSNT_HDT_N","",
-	"","",
+	"LEAK_SWB_COLDPLATE","",
 	/*P0-P3 line 240-247*/
-	"","","","","","","","",
+	"LEAK_R3_COLDPLATE","",
+	"LEAK_R2_COLDPLATE","",
+	"LEAK_R1_COLDPLATE","",
+	"LEAK_R0_COLDPLATE","",
 	/*P4-P7 line 248-255*/
-	"","","","","","","","";
+	"LEAK_MB_COLDPLATE","",
+	"LEAK_PDB1_RIGHT_MANIFOLD","",
+	"LEAK_PDB1_LEFT_MANIFOLD","",
+	"LEAK_MB_MANIFOLD","";
 	status = "okay";
 };
 
-- 
2.49.0


