Return-Path: <devicetree+bounces-127651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2473E9E5DD6
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8008286F8D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69681229B06;
	Thu,  5 Dec 2024 18:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Us+U91RC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6B6226ED3
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421729; cv=none; b=rqCSHxIP8tP24xQC8LL7jeUx0sXX3u6CL61CTAMgjGnLyyazie01VyTM94Zay+1k3WqP0OyrGIJNavXiS2vVp0fi4yRTsnFHI19zC5WPOfH5EiO3P2GYXQX8T5Z/Dxccw3TpyuM7UwztnRqpQsLMtewagnMvTwG/FXaJXefoHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421729; c=relaxed/simple;
	bh=nTCkQn59kD1+YTP/O+jZqWcGW57TZWMWdFPzGNuprc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BDNOp6YRWYBXsRFqVrOJCPaAugBkTagmY8J1Y1qv4RoaK6oA7ib1mCNgh5UsOEoUMxg6+5kUUQgEHevmOJlKFd0PS1xw177SdY9Bml0FAtWKrCu1U76KSVcD9hfpY4LD3s2Xtpy/t7K2zpNa6xU663R/nCvobixkLhvI646qwa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Us+U91RC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434a90fed23so8697345e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421726; x=1734026526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPhM//wJrXG51ke59zvjjRItTECJ1az2JzHOCc8Yads=;
        b=Us+U91RC/tIYwFlVSiEVCkjLupmul78ifiCAt0lVxnisEPHCzyWNFjQRO+u/IJ1g17
         2w0X2AHDSJMBiDkBUl+HPqAFfJ3XTULUzcjfmu+ygxQFMPs5nbFxuDV0ay9O9hIczmnZ
         WdGqAdR6BIXHPcpvA4WcMsWuQhW0y56BQJev0MMmW2POTeZlmSwoIlWN3xmGoIEHq+0F
         c/56ckhI9b1f+CZoafsGhzzNrAASQ1PJlIb7mkIL/7Zynlgs0BsMmEnewQ2eDXg4nrzI
         aXEbgV7ecCayeulfXP//Ygc+5sC2teoIxt0u7mMS+fUGkjwfv6dSCR0SkLrxesMTEgye
         sAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421726; x=1734026526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPhM//wJrXG51ke59zvjjRItTECJ1az2JzHOCc8Yads=;
        b=dhEmFlEMhAHUTF3EIHBDq+JjUubA5JJb37xi5fP+gzZNChYJNZusLNu1N3zAEqlWTo
         R7sFw9jcBPmo6C687wcHAkPk0ywWyAzd+eWmIsQDmSZSu4viEUG3PJkiSHUmljq07c52
         DH3zRxseO3UEutTZIpfsCqOjzPq2TYquXjHaPOcaP+SF8J9xOB56p2uCGHNXi/0EOOWr
         seRjb6wj87AAsTy4b1p0RNVO/omUaM1MfC0UTj6qEGkeQ4XjDSTTS+qkh4Kjr4at1lAk
         3Z+f6tGJIi9D5TDm4WxOkEEsY/+QVCVWEOuAS2RpLKFH0uhLRNLxySMdLd6Yh+bHn1el
         MgCg==
X-Forwarded-Encrypted: i=1; AJvYcCUg1OqkX9qn6Gy/K6dCjDtEO1NMVmuhQ9AzqSDOHVZqn0WIRY7V8mtpYqj1GLzgx8o0zaxASPHotnwI@vger.kernel.org
X-Gm-Message-State: AOJu0YyTRR6iX4jxAJiBINWdEw2x0RnraqC9DoIerPBwlkER5aEcKs1r
	5C/pfhM9SeAEH/hCP3LQ4/o+gdTAJCYVtvqySmEsVXh3T7TBcFFDwUz6AtuBbbcuDaVAkKWd5Nz
	Yrxs=
X-Gm-Gg: ASbGncuWdaBNZRS4Gbtj8L9Dk3hjEbnBK8/XGpBDLsJfWWCIeo60e0mPHNHEltwEX4a
	41tMdiPX1rdQnnsyLVAajVauY50cAgeDGNcqR2pSlN46gpCDaExxpvVVow0y4amJ+kg0QAVpibx
	2GnYQ6p8C4WBDNyVvvxBo6meDyybm6AUKMstVCkjv8imgng1gFHsMFOCIjOm3G6OuhnYw/6eGMu
	MiL+wMb+J2oI0mG6h9w7aHL9RNzbu5QFAMFxkgEPvmi/lsBq2AH8wRo9d8KzMD+8Il5cmGkO2Ot
	EfEUiMFmCWMacjCL4OBz0D0a2ldHe7UE
X-Google-Smtp-Source: AGHT+IHxrmKnYhkbCeS29d3k6ksOUL+fr3q/QtXJQ6fFRSknvcyUZjZ0xuVckzybtdhQNCwqXZo+yA==
X-Received: by 2002:a05:600c:4fd6:b0:434:a9a8:ad1d with SMTP id 5b1f17b1804b1-434ddea64a2mr2257205e9.7.1733421725765;
        Thu, 05 Dec 2024 10:02:05 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098d3sm2618228f8f.70.2024.12.05.10.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:02:05 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 3/4] arm64: dts: exynos: gs101: add ACPM protocol node
Date: Thu,  5 Dec 2024 18:01:59 +0000
Message-ID: <20241205180200.203146-4-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205180200.203146-1-tudor.ambarus@linaro.org>
References: <20241205180200.203146-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the ACPM protocol node. ACPM protocol provides interface for all
the client drivers making use of the features offered by the
Active Power Management (APM) module.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 0970f6fc1ef5..ed9815194f65 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -277,6 +277,29 @@ apm_sram: sram@2039000 {
 		ranges = <0x0 0x0 0x2039000 0x40000>;
 	};
 
+	firmware {
+		acpm_ipc: acpm_ipc {
+			compatible = "google,gs101-acpm-ipc";
+			mboxes = <&ap2apm_mailbox 0
+				  &ap2apm_mailbox 1
+				  &ap2apm_mailbox 2
+				  &ap2apm_mailbox 3
+				  &ap2apm_mailbox 4
+				  &ap2apm_mailbox 5
+				  &ap2apm_mailbox 6
+				  &ap2apm_mailbox 7
+				  &ap2apm_mailbox 8
+				  &ap2apm_mailbox 9
+				  &ap2apm_mailbox 10
+				  &ap2apm_mailbox 11
+				  &ap2apm_mailbox 12
+				  &ap2apm_mailbox 13
+				  &ap2apm_mailbox 14>;
+			shmem = <&apm_sram>;
+			initdata-base = <0xa000>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.47.0.338.g60cca15819-goog


