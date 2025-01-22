Return-Path: <devicetree+bounces-140228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F15CA18EE6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B660C3A791A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2661421146B;
	Wed, 22 Jan 2025 09:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SNcJNGVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB8A211279
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539729; cv=none; b=JwpOJccqJik2iOs+EjXS3lkqz4e84KKAiwMHdT/jHTy5DuM1of4tJ+IxGjqstthmEJDLIX6/ieCCASJ5wEb0DIF5nopLwZfinI8jkeNJfJv0DO7l/vHME/RDA1QADgXvnFpiHqHCsmF8a+mQNXuT+cm6XowPMDz7yd3FcLDi510=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539729; c=relaxed/simple;
	bh=foP128Q0vaml+DKn9OpvbU52LDZNwWhrXWTRZEdqdvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jBbW/3TUBJOsLApQPbIiNgv88CzF51Ok4zX1OWIbjmQ57qP+lYEFDC6T2RGMlEC9KeZNSO8uZ6hm2tzpndnWxSAs9y5CFoC1EGzlGoRwv6oRhcBIER3pBeiaV8ImFHvSh0lAFhhT1Je27cwo5fDzewHgIgq86p5jTemIbs/jiTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SNcJNGVs; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385e1fcb0e1so3555513f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737539725; x=1738144525; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bkXU/mbXgXy1UAlTcrbRMbMvk4S34h1r27crXRO7sVE=;
        b=SNcJNGVsIhVK7xtdopK2M6L2tM1D0SK5rfWnst8O9MwrA9daG0hAAdrfuaWADMNswp
         x4f1EblSttHIwIRsfa1JZLteK5n5t1nUzic0gO04uk0oKrXNjRBzRKQopZJWsXZkMrJq
         kycpvssjQqhEj11ZKAjcI8IT+9HDFvKpGODFWEQAXRyjr3p4EHcVkXTuOaUNioQTc5JK
         dPVFsc8LNI+3fV+5spnpTFxcAMYTNKv1nkiwLoBNyXN2Qtu59P2urj0j/Z8hQQPHaKSX
         dPCVcoPzC3gtma9ThsHB+AYpRE0RMSCj/0V3OwZ/wILcCVXSFHrT1EM4FqHf0IbxaZJw
         b4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539725; x=1738144525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bkXU/mbXgXy1UAlTcrbRMbMvk4S34h1r27crXRO7sVE=;
        b=rKc3SzTZeUmLjxLzR3vHDJRTeVu8WeJfJwR9ThPme4OhyNvYhh0H5sTRhM+DIQ/7u6
         kwb5AHjbkfGf95weIRRT9xV4l7kaqgcfvYSojs+PSLv7CbktGH6kkUv5u6XsWVYuKp71
         lGEjp8X8p3LMu+J5joiDaHCW7CyKd0T9hn7bWWk3MUVu4Ch05RoXnhTLJsZSg7UtpMfx
         73SyL1pVTG07zCQ+LN+QMXHGMcOnw/MMpysM+4/c2kensLzggUZ8jbfj9N849N3YvlUU
         MNH0G3zQEPBm4lywm+3gXyfyn+4yDoGc0/qRsJGyuBemrK74VnmhPenuig9JtSnZ8m54
         axZA==
X-Forwarded-Encrypted: i=1; AJvYcCVqeBh5DCGbXbWMeiHO7rlYyYUB2PRggTJBiy52CzAyNbc6H/E5yt0uK5WYxbYHvPyip+sZAXH0rn3E@vger.kernel.org
X-Gm-Message-State: AOJu0YwK8zQ97mo1LFPNUQziVXPs6LwGoZk15HhT4aTMfAWDYZrUeVbt
	rlJPxTQHiURcqNdG1dHKoGbts2xhC4cE8R20CbdWaf7WqqTDCO5m/Mi6Nu+dQvg=
X-Gm-Gg: ASbGncs+PCvxUe7Y/8OF77fMC9GiXSHl8gsfrdNbueTJpkMG5Eqewf+8UkFXRDUCJYb
	xx0M8Ua4o27f7zizZS/7PQe21dBNjWXNjr6VCPeJJWbwj9++3rQqKMp/R+AO+mJzg2s7LZaxAZx
	QsXzgnN9qs1HzGpl6uJIBUQHM5umW9yQsWjik2R3uyo1A5sLjjDe5DtuJQKEu3JJOTQP//ct8D6
	YzOanlEOkFDVZLSWNzNPmzLn/HL71Jj+pq1QzxQ6h3CmbAukl74znUnivl9EJg8218=
X-Google-Smtp-Source: AGHT+IHi8wKxfGNlGgCMFVgEtLd+Q2y6RmCAks4ExEZmtnW1E5RNCntEk7piIjBdAlsaTXqPWamYWA==
X-Received: by 2002:adf:a113:0:b0:38a:8d4c:aad3 with SMTP id ffacd0b85a97d-38bf5664d6bmr14540191f8f.18.1737539725527;
        Wed, 22 Jan 2025 01:55:25 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b1cc8151sm16554205e9.1.2025.01.22.01.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:55:25 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 10:54:51 +0100
Subject: [PATCH 3/3] arm64: dts: ti: k3-am62p5-sk: Add r5fss memory region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-3-f74835b91da9@baylibre.com>
References: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
In-Reply-To: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1215; i=msp@baylibre.com;
 h=from:subject:message-id; bh=foP128Q0vaml+DKn9OpvbU52LDZNwWhrXWTRZEdqdvY=;
 b=kA0DAAgWJIy04tQVrj8ByyZiAGeQwIOg92yavyDfmN5jBj9NeidWAh9N6a221QeWlhy66MbzW
 4h1BAAWCAAdFiEE3fCh7n4e16BYruJBJIy04tQVrj8FAmeQwIMACgkQJIy04tQVrj9VYQEA8SoU
 V8IaIsZt1Mmz6nO9GOWRwd8gFaSembrqKQYowmgA/2jOBz8u7ih/J2T1iVQqe7465hlN8aZTD56
 KZnia46MK
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the dma memory region for r5fss and list it in the wkup_r5fss0_core0
as memory-region together with the other already present memory region.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 7f3dc39e12bc9ca4a746ff092f946b84a36404b3..cc695c9d662e6f2c41b73ddf4afe0e95888676e4 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -58,6 +58,12 @@ secure_ddr: optee@9e800000 {
 			no-map;
 		};
 
+		wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c800000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0x9c800000 0x00 0x100000>;
+			no-map;
+		};
+
 		wkup_r5fss0_core0_memory_region: r5f-dma-memory@9c900000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9c900000 0x00 0x01e00000>;
@@ -677,3 +683,8 @@ &mcu_gpio0 {
 &mcu_gpio_intr {
 	status = "reserved";
 };
+
+&wkup_r5fss0_core0 {
+	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
+			<&wkup_r5fss0_core0_memory_region>;
+};

-- 
2.47.1


