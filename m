Return-Path: <devicetree+bounces-64023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D948B7948
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 16:26:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBC8A1F20F1B
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 14:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB621C231B;
	Tue, 30 Apr 2024 14:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ssT1LAlo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990E91C0DDC
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 14:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714486498; cv=none; b=n0/Qa5ObSEb+UMyAQbJtpl7A5lvzZOFvvK5pPmJzyD17D9NNuWVN8kYRR1mexFlQke6sDcmaLU0CWU64Jmrn7CfhBZI+O7ygyBfYgPlmURUtnwVxPeJs33KWdDY9rEA04VfQLun4nQtLHkf6ur1Kt+3cdaWHZ5yxOAKCjmwgzao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714486498; c=relaxed/simple;
	bh=pkFIb3FDG8B1yKZvDPMPSs25XCmG50fSJJzLDH/FKL4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UwxU18d0PMPbFQYHiysMRXF4eW3Me42rDYHiBSVtxedHrtu4xaOLvqQb0ECsDxBDel92i5m1uiQmTDzG3nKhULW+3Lh5ItwzrDUT+PsBK3tr1FxxHZgGbPRIJA6n961ygHNq00Azde7ksgvy8yVB7Tkw7xEBABiN7sL8DJjV4f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ssT1LAlo; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41bab13ca4eso28451835e9.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 07:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714486495; x=1715091295; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x65fPwYANgCFWDNK0VDyK8NstKnfuDh5RJpIANjExWQ=;
        b=ssT1LAlowqqJj28xNSmdb0NEK+kwHvkAKKEaJmTXWbEAaU8WEAL6yH+7DHkkUvvLy/
         6d/9A1yyxFwD4XY5l4lDOlt8idfeg8aXqiTYHPfJ/CYg0az5ilHxZMA2OAdsaLUkzRE1
         c9awJLv5Lm8iE2sIW1XFa3xsI0tSpbPWLY33A3LFoA80i/UND+I0R5utu1BIGCwwJNNg
         JCEcRrhGqBzwIhgfX9OxeN9vJULCCKIFmeXwI4zv0KsBBe1mw7QzBZOtJODjJAZQh4lU
         NW7lfMyP8J8NtKQICh6genvSsR/9FFb/R89SPjvf95EgE/7wLjmECcDvHK6Pi5zhexsD
         Y5/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714486495; x=1715091295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x65fPwYANgCFWDNK0VDyK8NstKnfuDh5RJpIANjExWQ=;
        b=SLosYmDL/QSVCDtjUrv+fURy9/TqlGC08Jp+g2lVNKNdgY6oikXcvOTlwL59CdMieM
         xCdETa2tP9MWRz+vhyxju//oaYPooIijOP5NK7xKbpsNzs3Xb8flIQjaAdYFgtxX25OK
         sSszqeTF0gcNczcf9SJAlYZjqCxKgn1LbOMni011wywpL9qGBwMtVVlV4YDUPJXQW16+
         BfNnYGO3/bRZmsh83c5JsbZD0M1yxh9WkJtLJx+merKnQWE+zQRZTyOed3V1w1xgKjvY
         cjUa39eQ1r/O6JUDhO/tjpA6UccGX1I0R7hbIq1Hsc5w3luIdFgrrjnd9Vf3eO/+sM0u
         i1wQ==
X-Gm-Message-State: AOJu0Yy7xfPQFmzc8SA9MBKZXl+XGQClWkOhJmQyMUmkWaZSJuQy8HxZ
	E9OwqdyJua3qMip3NGZcIMy868b3xfd0USYxhgiNReoA+7RBJMrnpxzSgMkT8zs=
X-Google-Smtp-Source: AGHT+IF/C6xKXT9OI/M24N5gVv0f+4ykLc2iCPSOXKxix6F7pnEnrVgvyYM8sSJuFrCbRZB1ddaUbg==
X-Received: by 2002:a05:600c:4691:b0:418:f184:53f8 with SMTP id p17-20020a05600c469100b00418f18453f8mr8671504wmo.36.1714486495026;
        Tue, 30 Apr 2024 07:14:55 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:f162:7aca:a805:2c2f])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b0041bf3a716b9sm11593517wmo.34.2024.04.30.07.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 07:14:54 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v5 3/3] arm64: dts: exynos: gs101: enable ufs, phy on oriole & define ufs regulator
Date: Tue, 30 Apr 2024 15:14:45 +0100
Message-ID: <20240430141445.2688499-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.0.rc0.197.gbae5840b3b-goog
In-Reply-To: <20240430141445.2688499-1-peter.griffin@linaro.org>
References: <20240430141445.2688499-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable ufs & ufs phy nodes for Oriole. Also define the ufs regulator node.

ufs regulator is a stub until full s2mpg11 slave pmic support is added.
The gpio defined is for the BOOTLD0 (gs101) signal connected to
UFS_EN(s2mpg11) gpio enabled voltage rail for UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../boot/dts/exynos/google/gs101-oriole.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 03b2a6fdfdc4..5e8ffe065081 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -59,6 +59,15 @@ reg_placeholder: regulator-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "placeholder_reg";
 	};
+
+	/* TODO: Remove this once S2MPG11 slave PMIC is implemented  */
+	ufs_0_fixed_vcc_reg: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &ext_24_5m {
@@ -112,6 +121,15 @@ &serial_0 {
 	status = "okay";
 };
 
+&ufs_0 {
+	status = "okay";
+	vcc-supply = <&ufs_0_fixed_vcc_reg>;
+};
+
+&ufs_0_phy {
+	status = "okay";
+};
+
 &usbdrd31 {
 	status = "okay";
 	vdd10-supply = <&reg_placeholder>;
-- 
2.45.0.rc0.197.gbae5840b3b-goog


