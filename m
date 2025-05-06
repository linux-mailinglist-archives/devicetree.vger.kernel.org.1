Return-Path: <devicetree+bounces-174400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BB5AAD0F2
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 00:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D1A57B0028
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 22:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE20E1EE03D;
	Tue,  6 May 2025 22:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FrG2X5Jd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E9157A6B
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 22:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746570337; cv=none; b=K+7hAo8omSt0uuOr1Q2z8WKPY8fgFXCvETZ/BskOPCHUB0S/LHPU4aBn01XpNMHt7WEBQauKsucRQL6n5UM+gSKsS7nl96/lIhZ4AhxinMPJOWsSQm3SgDg7zIMiddOeCR+8d1TbHu6yAlozPlPVBFCp6zPw5wqgNhNiTUWYLMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746570337; c=relaxed/simple;
	bh=Xy15aZU9aIHbREjKdrMW0ZTPG2N1cjBK8BuxWOv0aIc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KOVtOsuSL7fdnBNpxMYt9yb3GWZ+z2Mi06cbsx+1xfx4UqGT/6YhryJ+7wlbZ7+fDIFWUmKMP1Fk217CwNVgsSH5E7sIV8BmJZHXcRUgaq6wWR2j5nla9VMjnZ8ZlXqxiGZb7GPXDvDz5pV/ayf1CktEUAZ0KntQ1q80HOvbPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FrG2X5Jd; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso29074935e9.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 15:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746570334; x=1747175134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gT+hqvYnvFoiGUuape8lhiuYp0FjZhhNlHilKAoqjy0=;
        b=FrG2X5JdFAxlESAejbkFdkXIArS5NM/N65PO9EpIEHahrc62ikokBXeLYSjqqhGJ5I
         kKDZCI/F8VrD0AQRXN1C+xZM4RVoVbFxFmgnVBN/yFJ0kOd0Q2G2x4vtpz4N/mE5U+FI
         qUKQoIwhS6dI0zy863g+l0S7PWk9IxFdO94Dh+5WErx5XJfl2m0oHeTC2EWh7xJVZjHr
         jBXEs9tl1fm9qoGMYQxsZOcCzuq2+In9jD8YwiNNh0Qqg+jGZMEQjSOli9J9JBxqIy8u
         TNM3EFovBNuBeIfAqFnOU6lcq1HxdnyumDGfQ6uJmaK3rz5Weq/rwwIWfRdKKQTdrc2k
         kudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746570334; x=1747175134;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gT+hqvYnvFoiGUuape8lhiuYp0FjZhhNlHilKAoqjy0=;
        b=Ze53AQCScBb5OMJ57qEmzOxaI2ry/D4qqfqEJyy+sGHMUaa9Zn67on4y1rNvlOjuL2
         IdY9x7U42EunhkDb9M5iMcDnP8GOqcJAAXmgzmOlwfWLI/zZAZ001iYDlIE/Ex8pXtBN
         an3I4YF8NDBm6VScnK2c34qkfVCDzOeze9jTiG61O+xUL6UiazjZUrbDoXBRvqDB6xNw
         HAIkBVctVymuPHwtRLLHw/LQe2p3PBCKMrnr5QfSTSe4+T7w8NAFvc8aFMGPLN+G+rRz
         Z6ODq/itHw+aBiy1NK2Cq4eehop5h6ySGTPI8c9NEFDiXSCRSfV79PgGg/bpFLFL8Bxh
         3KZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVKShmDFZ3FxtunQdTabRczBmLv7pLla/7R8jvFziwV0/SwPlOSC1BE+BeGyOaPRG6xKNdXdgn8UrD@vger.kernel.org
X-Gm-Message-State: AOJu0YzQIt8EIDqkvPsKDAGdhgfgjoc4zOK0nEB9LBuqEG9Yzj64xHos
	Y4e24DgTlLMR+oFCjQ2zZ1XVEjxydkiHrtyZfoWMJFKKPyXvdRGG
X-Gm-Gg: ASbGnctlDv02qMctgqmUtySJedP+kxh3tTUtu0rXU6bIUmOtlvKjb3FNi/lpgmrG1cx
	KjQ0ktv6svVgXYlCLgOmp+pTrHWIGmS5aHBZb71iFf5mDpfFY1QgPG7gcMzX0j1/Uaa5X+fST7j
	Tuy1DwFFJdFkgVj58nME+fiI64Jaq/STyPUYqpM1rN1b96DZlQ6R+frutCAQo3mlxzvaNcdCVxG
	bHWzTCdKSQdLjBev02v2XlIyPSLCfrkcrxCy7/jkTLsnB4DRLrenMtsHpiRVzNBzXOPWzC5lZQy
	Wh6aTOn9UtQNBwAqpUE9oNmEhFAxiehrcwRzi2AAplod8MCV0lZfIlnc66vJpD6tmV3nSWZcoDX
	hvgXMbBH5zQnwlYb9zpc/Y7ZUL2lkgUQIHX1yZ8c+4i5jsSIokTdQQooWLcn7v+ngx7uwNJuDLr
	A=
X-Google-Smtp-Source: AGHT+IGGW2UR02UyKr5m7oSO8uNudVCq7G0oipkdATajemKEbGILj6K3P8WqusgC9FWz3WuR33yVkQ==
X-Received: by 2002:a05:600c:c10:b0:43c:e70d:4504 with SMTP id 5b1f17b1804b1-441d44c7c36mr4619785e9.19.1746570334058;
        Tue, 06 May 2025 15:25:34 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-441d43cb59bsm8202305e9.2.2025.05.06.15.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 15:25:33 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
Date: Tue,  6 May 2025 23:25:28 +0100
Message-ID: <20250506222531.625157-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the 3.3v and 1.8v regulators that are connected to
the eMMC on the R5 series devices, as well as adding the
eMMC data strobe, and enable eMMC HS200 mode as the
Foresee FEMDNN0xxG-A3A55 modules support it.

Fixes: c8ec73b05a95d ("arm64: dts: rockchip: create common dtsi for NanoPi R5 series")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---

I had reports from some Fedora users that their eMMC didn't work
on the R5C and this fixes it, the schematic of the eMMC is the
same across all of the R5 series of devices.

 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index 00c479aa18711..a28b4af10d13a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -486,9 +486,12 @@ &saradc {
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
+	mmc-hs200-1_8v;
 	non-removable;
 	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
 };
 
-- 
2.49.0


