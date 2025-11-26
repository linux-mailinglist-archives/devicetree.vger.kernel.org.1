Return-Path: <devicetree+bounces-242186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E87C87AE4
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 617FB4E2184
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EF42F746F;
	Wed, 26 Nov 2025 01:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D06r/qKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A382B2F6586
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120057; cv=none; b=cf3EDogCnZGayqVQoenYpNSwTQ+NeyTs7SMT+RCPVBp7YBwamGjQRxO0rlMWwhfCYXVopgGzBtGZrL8tulM1iMFfyoqMB4wE3Q8Wd6QhaLqzDRJgDVrp6uzSAYrf6ZrFOlcx3tx6qwjOaRqMhi01MHOfxXU2MjxCrj6aOrk+x7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120057; c=relaxed/simple;
	bh=O5AYm8UgXFda5Rhv6hRjYkriPGhENALejT5nZbIUKY8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nFc6Bz0k7/8GEP4x0R+Tnp3NauIIkPYyKCGNReAVZ2EGVD5Wfhqlkcl7AaQ73IhdMsq9UxZ37dV0GgjSMBCik1Os/HHBU20IUzrT8veY2Ayk79vg4m/kfPy8v0sEqt3l94kk46XjSMyHkfFXWCFsV85x1hmpuZM1QWb+FQqW/7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D06r/qKM; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59304084e17so847932e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764120054; x=1764724854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHYSN5gCmUewuhOTm/qYl1OCkfyvY1/sIo5yqUViP30=;
        b=D06r/qKMMoA8rw1IueWiA3vpB//jBV6hOzPvbz0yNPC3o5qd+5aCMUHkWigDVJ5SfB
         juKBES67tGLHzAO/Pj1Bzx0unXrFKSaiwZdXcCCGYyiAxM4QpeeTWSdRrUGJqGKM5nM4
         BsD78K1fsda9FmdLkIOyUERuKle9z8SeNt9v7vI+PAYXcDogbe2gn3geQy0FfvqlEiYp
         bNGWHOPHO35RfNPn+U+dosf5wHf2Lchdq8c1VyhZoKe3z86ALMjpL4GKeJW2RNtT4AzP
         2/L7ITLSGGhYeal9BGTlVQ4cNYLwlk8dnIrO5yaP9l8carzlWvxcwbQEOvAOoUVlAbBD
         rUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764120054; x=1764724854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uHYSN5gCmUewuhOTm/qYl1OCkfyvY1/sIo5yqUViP30=;
        b=qAFeB29mVCzlYDaPd/WaObEQoYcqo6V4QK8zkwlypXmj2BHp004KtpyWDTNO/TDiKe
         hnkzeXJOjt1Nwz3IUq4YXEy/ppsJcs42/uc3Y4PuHedo4MI327G1cETcMmqpFu2AdjBq
         Nc3umc5k8RZCFU8FtX1us1FU4zctwa84ymyKOhFJn/K3HbqCStT4g0+HxEY6CPpfpbB0
         ep4zgBhVhKXAaJmgR1WnAcnJcvHDJfRBjsB6f+mRloYt3jvUPPkWz25FzpjRG72Bb3H4
         6ZzG8mPkmxL2Y0vYobmjMR3/9ceLPEHC4X9pIliwWy3yGPi7n23HtXevetEDBEuiCcda
         jtFw==
X-Forwarded-Encrypted: i=1; AJvYcCV7xYJ12bu5QSTFIP5t4N9L2c3GVt6oUPaGqa85EZ/Rs9/K2SO5eE65i3psmF2pNpYZB4C9NnXjE6Be@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg/SoHZsgI09n7h84iL3YUitBSRGNFosKv0fJtnywSJtkHjVqM
	AYOGhmECwO8LP3bwHEDciQd++PvwDp5DyYMwLLsq8QgwEFn3CGzVpCoBojGW+aex8Sc=
X-Gm-Gg: ASbGncuM0JPNks/XE1XqyR19c73WBXVtxApJRY+C1HYZTCw1h9sZ7iuXaVTY4e4tvh9
	4GlMQRi+nD3WEKVCzDUOyW4ZVtRD/98Ewy+4g8LVuXV262s7eRiYCmegrGKeQ91weC0tiuGQEgF
	YKS5O758n1kih80KVgEKnBpiU9uJIhD5AjGtErr+BKWo5pimok5x3f9R3svbhKHFDGBQsBlcS1A
	AIqt4PTDoHVInSGn8oFGQvi7qT8h0/tjPfHhV9EMYlB7513GTaVOACHIYYzObxd2tMOvLb5CW95
	mqLdkjluTplyf+R9OvbBIi3LxusjshBnyVVwf1+r+8/r0iSLRaNl710udcNhOjTSNaRj5rPpwJZ
	FfH5qW3lqcKBhwv24CXvcmQ6az5msF3LZA48IlSFoNCp9MwfxWylm79I6LyiRsUXzLGfuSG9h+Z
	NMvpFknpO7sy4KlZARwyF8HlHl77eEF7NVpNyX2h1Ik3lRWSaa8CXsEg==
X-Google-Smtp-Source: AGHT+IFvDf+hOYvfYaVau59nov8KjsBa8sI18PblnT8lAfg1M6hf2k8V1G+kWd7f2epYCUshI61v7Q==
X-Received: by 2002:a05:6512:23a9:b0:594:2a33:ac17 with SMTP id 2adb3069b0e04-596a3e979ebmr3200758e87.2.1764120053800;
        Tue, 25 Nov 2025 17:20:53 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc597bsm5584426e87.69.2025.11.25.17.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 17:20:52 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Wed, 26 Nov 2025 03:20:42 +0200
Message-ID: <20251126012043.3764567-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The restriction on UHS-I speed modes was added to all SM8550 platforms
by copying it from SM8450 dtsi file, and due to the overclocking of SD
cards it was an actually reproducible problem. Since the latter issue
has been fixed, UHS-I speed modes are working fine on SM8550 boards,
below is the test performed on SM8550-HDK:

SDR50 speed mode:

    mmc0: new UHS-I speed SDR50 SDHC card at address 0001
    mmcblk0: mmc0:0001 00000 14.6 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 23.5468 s, 45.6 MB/s

SDR104 speed mode:

    mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
    mmcblk0: mmc0:59b4 USDU1 28.3 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 11.9819 s, 89.6 MB/s

Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
file, there is no indication that the SDHC controller is broken.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 7724dba75db7..7f5a8574059f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3191,9 +3191,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			bus-width = <4>;
 			dma-coherent;
 
-			/* Forbid SDR104/SDR50 - broken hw! */
-			sdhci-caps-mask = <0x3 0>;
-
 			status = "disabled";
 
 			sdhc2_opp_table: opp-table {
-- 
2.49.0


