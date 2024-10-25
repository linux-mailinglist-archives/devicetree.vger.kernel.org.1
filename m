Return-Path: <devicetree+bounces-115405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EE49AF669
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 03:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D20D1F221E1
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 01:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BF810A19;
	Fri, 25 Oct 2024 01:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dZOdpCRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EC92BD19
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729818566; cv=none; b=NBXUMiUBOFrWLeYy2m5g/HsIWP11yHuaBV6KUaiBeUrVOEW8Lw49JkBlF1C/isRY3bq+Iy4Nq6Uk86OThGOXBxWiToJFjOB3yZOUCaKtUwvKsrSxPvYctoi+cQTFCHIxACSMu1Tdkep7UH8iolLPIPASrIX2m4Jark2GBw8dddo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729818566; c=relaxed/simple;
	bh=H6EAbkPdNb30lIXnY3i51JLMKdSWy2MCsieDAd3AOvQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jkZrHD2EyOPROdg524f0etUlpZN8q8MH5i31lIUPsqLuQdDHrnczxEsUth9+DSJXR+mfmKBLw3+6W3qBPZZbtGgQheHb6L6QLaVgkzwjWmE33JT3PMfd/+elPi1xc+S4ChSOMYBOl0Xjfedw7RyURmYihCuq40Chjpwe9JNC1kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dZOdpCRb; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71e79f73aaeso1052863b3a.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 18:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729818564; x=1730423364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BZZZwz0qurP9at0y9Iwkn9okEEYxxIWrTa7jOw0qqL8=;
        b=dZOdpCRb5H2rOgkLozZ1SRYw1Q921YYBv7FrQtRTbJq5RWiZZsYEc9ayJbB+L8r48F
         a7Xl8O/m85BUK8yLb7L+0seqvrq2HXf4gGdnI/lj7pR2lYe9HAUtV95GdmvXdFq3mDCk
         QQXc7QhkimmzhRzhyC1Rta9zQJU1OLDsBL6rqd23L8ft8tUOOq7NSuTx/0AT7SAdNpHj
         GA8Gom1FwnL5Xwy+jYF/fIqe9nrds+YvdF2tmmoPWRS7njccHAUqMPpglhDFYtJBKdPH
         pVXN/7+5Ly207PqyrdGyfOG2Wfj0+yxSIBVE+hKWtJS6uzl1aBJDO8MSv4O2cXyItwHv
         hzVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729818564; x=1730423364;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZZZwz0qurP9at0y9Iwkn9okEEYxxIWrTa7jOw0qqL8=;
        b=UKR2HJBNSLkbzFn+Fp2kEvv6FOxVJBUtIZeGR/KG3yVUtuchwbGVKAYIpLZqoqdb6P
         suZXpEoQ4C+rsOkTihaX9t21VhXggDKISOGsJmeDJDQI22qVnIQW78OUMOhhgh7QZTqF
         iAm+OXO0L4QFitLzplxLTYh7CkNQwM8jGpbVW0rs2JVdh1ymTQPUEZnfxD8YNEOovz/j
         rWbkRvt3uXRxMj8zHgfw5oQa0GBKmMMlArysdMOIWASmr96RYcIczFuUB0hEPS4CCj1h
         ArDKwvfuoR+QOV+r1ZyUrPqP11hXQgn6CmybqvePXMPPU8OWrEza08grZiDljRebf4a9
         KTcg==
X-Forwarded-Encrypted: i=1; AJvYcCUDaZdDFdUiQQz25JyrPvrpfhy3gWgdFS2zt3TAx0+rr1yAYoqumAnrG/qinfSCh7q2NbCxl22I8SxC@vger.kernel.org
X-Gm-Message-State: AOJu0YyHxJ2ve6ApBjwsOd5EUAUYuEOlGCZyYT0hOEWgRNEeDpKJno+t
	Z0NZgq279QmFhBz1gUFDP0UTP2UzPURXgVEpdajaj5ZJvvVvYJ6WItyyQw==
X-Google-Smtp-Source: AGHT+IGSKlwpc9RSgZd1gLwMZJwlxrL+8JK1LO1Y3wo3SThclhiafbQHvDrAqcRAj0ItBTgz5ukhLQ==
X-Received: by 2002:a05:6a00:8d4:b0:71e:617:63c1 with SMTP id d2e1a72fcca58-72045fe2578mr4463593b3a.27.1729818564114;
        Thu, 24 Oct 2024 18:09:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b93csm52875b3a.137.2024.10.24.18.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 18:09:22 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] ARM: dts: imx6sll: Remove regulator-3p0 unit address
Date: Thu, 24 Oct 2024 22:08:53 -0300
Message-Id: <20241025010855.1593365-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to imx-thermal.yaml, the anatop regulators should not
contain unit-address/reg entries.

Change it accordingly.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 85fe2a4ab97a..0fc22c03ccea 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -507,12 +507,9 @@ anatop: anatop@20c8000 {
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
-				#address-cells = <1>;
-				#size-cells = <0>;
 
-				reg_3p0: regulator-3p0@20c8120 {
+				reg_3p0: regulator-3p0 {
 					compatible = "fsl,anatop-regulator";
-					reg = <0x20c8120>;
 					regulator-name = "vdd3p0";
 					regulator-min-microvolt = <2625000>;
 					regulator-max-microvolt = <3400000>;
-- 
2.34.1


