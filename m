Return-Path: <devicetree+bounces-76900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3A190C78C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C792D1F21D0E
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BDA1A08A3;
	Tue, 18 Jun 2024 09:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l8CvjjAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20F15380C
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718701298; cv=none; b=I7MJFt7v90+B4aqjchnGYbGnC3gY3LR76MexkQT2V99sFqk4WqTDVKJ6t86JhnHxy1mdx75j7lB2QFEAOHIMxOyZ3cgqDHW9XLjrbPFPQlFMilGJXcCwGdb7bs+515RjVlpn5vDPtBYQOtskZGF0Ef3BsjyeiDTQ9SUbjaqMTV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718701298; c=relaxed/simple;
	bh=1ERlM9xbe+p9Wi478V8mqPsP/ZS3bIAAbT6Tpz8s6+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BQWsljuWZROFP4d9QLwy/LVkQ9QRx4uPA2U3zttoTaPgN4z/KlAi9uAf2iKlDuDq/LXYGNviFnp0OY3HhyUogqd8LgsoeEhRkaJhAsVp6gOJSiM7Em9v8Pb5hbF+Cump4rLmevRJw1aKvWLuOoG9Lx8mC8X4KeyroqLrXZAU3xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l8CvjjAJ; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6f1dc06298so619708866b.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 02:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718701295; x=1719306095; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TY5XZJXNokRJfFdx27EQvsooJR1M7d0Z/bZec752EIc=;
        b=l8CvjjAJYGg4o1HIuP6sM6Qj0j0DGc9P2C/OR+nqgUq9+9VoHfPDtUHDrpvB4a4Ri3
         4/OEO6GuDYrKKX9VPEFD/DC2IkbHphuXvTkPEc1WB7w3PKKgr0kzfXE5dKIU8doQoyKK
         4N95N2oubUy3DbpMd+X5MWMce+ZwljQJKmoDYKIUqXikqo/vVEdC2NP5Nf/h6kdRM2xN
         Utnu+NNrUBFAse0KDBXpk50pdsz4b0xcTCYqHRUyshOOMgUpiBSuYS+hg0eTNVhXQYrU
         YxAcUzcI1L39cA4GOk72fJx8Wxvcz+QSel7TmSNgbxmE6w0JQkO20PMr055ZzIEkWe6R
         Wl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718701295; x=1719306095;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TY5XZJXNokRJfFdx27EQvsooJR1M7d0Z/bZec752EIc=;
        b=TRcakJnM+5HEVt5qsymmdLULXg1e9TJir2A0beSEQWKbOVNvEP+zanhvb/+MoeZdz2
         OgDJAphEygFkxCOC78g9z9vwWfsjVfhtkOFNOqjlzIfnq8X/G9z5RTe0mWXl54WyLEDF
         wQ9+f/YFRJ2ELwaJuiDaDOIuL4MxgRXViXgPj/O2STdD4ekTZKVCTOclgmJZcs5LvJp7
         CTec+YqdsG4ysxDCD+eL7VxCgQhy0MrbnbRccg55SwtqHSr9jylnw1nbOF33P9/SyX9q
         bcD/dzGZpXfSkAm/LLIH1ClajMWMf5BKYcyu/iqn62aOL9l430v1NUwtm8VVo2XlqRnW
         hwcw==
X-Forwarded-Encrypted: i=1; AJvYcCVba9be0e5DkWaeyge2LuFHx8Ezov4bnPa8M6yo2vy7E/wUBaTKpalDvLA8CC+G/gGMvBSkx3i1sy7S0dvsz+Cbcw4PVSV5B/26rw==
X-Gm-Message-State: AOJu0YwI/TUtnSA/wX5B/l8J6eVjS50aIL7kphbhJoqgnJMoVwCHoYQD
	4xlggM1htZmO7rHsb+2XBslBOIOD9o6O7e9armSsoZeiRGe4YxG92jg8LSJ8YGk=
X-Google-Smtp-Source: AGHT+IEMfNh1NAwANZa+CTASxafBgLpH8LEwjMP1KkmOFsQGGuf85H4JncEgCzIOFHv4XwbkvI/p4Q==
X-Received: by 2002:a17:906:4a4f:b0:a6f:38:6968 with SMTP id a640c23a62f3a-a6f60d2bd3dmr727559366b.32.1718701294701;
        Tue, 18 Jun 2024 02:01:34 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8cc20663sm146355966b.190.2024.06.18.02.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 02:01:34 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 18 Jun 2024 10:01:33 +0100
Subject: [PATCH v3] arm64: dts: exynos: gs101-oriole: add placeholder
 regulators for USB phy
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240618-gs101-usb-regulators-in-dt-v3-1-6a749207052e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOxMcWYC/43NQQ6CMBCF4auQrh3TDhTRlfcwLloYShPSmhYaD
 eHuFla6MS7/l8k3C4sULEV2KRYWKNlovctRHgrWDsoZAtvlZsix4rU4gYmCC5ijhkBmHtXkQwT
 roJtAd1q3pFD2dGYZeATq7XPHb/fcg435+rX/SmJb/2KTAAGEWKGssJWiuY7WqeCPPhi2uQk/r
 eanhdlqZF0ir8/Ihf6y1nV9A9jfodoRAQAA
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

The USB phy requires various power supplies to work.

While we don't have a PMIC driver yet, the supplies should still be
added to the DT.

Add some placeholders, which will be replaced with the real ones once
we implement PMIC.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Note that this patch depends on the updated DT binding from
https://lore.kernel.org/r/20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org
---
Changes in v3:
- fix typo in commit message
- Link to v2: https://lore.kernel.org/r/20240618-gs101-usb-regulators-in-dt-v2-1-85632069201b@linaro.org

Changes in v2:
- update commit message to clarify that the regulators added here are
  temporary placeholders only (Krzysztof)
- use fixed placeholder regulators, not <0> (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20240617-gs101-usb-regulators-in-dt-v1-1-e2242542c518@linaro.org
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 5e8ffe065081..dec2c6d9619b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -145,6 +145,13 @@ &usbdrd31_dwc3 {
 };
 
 &usbdrd31_phy {
+	/* TODO: Update these once PMIC is implemented */
+	pll-supply = <&reg_placeholder>;
+	dvdd-usb20-supply = <&reg_placeholder>;
+	vddh-usb20-supply = <&reg_placeholder>;
+	vdd33-usb20-supply = <&reg_placeholder>;
+	vdda-usbdp-supply = <&reg_placeholder>;
+	vddh-usbdp-supply = <&reg_placeholder>;
 	status = "okay";
 };
 

---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240617-gs101-usb-regulators-in-dt-bdbbcea25fe9

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


