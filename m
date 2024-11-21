Return-Path: <devicetree+bounces-123428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A949D4813
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 269E41F21F5F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 07:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2781C8FD3;
	Thu, 21 Nov 2024 07:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="nPnFPFsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABA01547EF
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 07:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732173213; cv=none; b=GS828cyMdq/4C0NesmX8HMQyaS3WRr+0rwX5LVexgBcacVKM97J3bAoJ8i06mbtWf2D1P5NwOUSBl1MO6u5/vmdnwBMtWPt8uGYC9l2ZGG8U6eERuFonuQgFxZNB+yX6A3q/NcwPkPv9y4X2zLrRGkdhNKE175JmqGmUp6W8Vz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732173213; c=relaxed/simple;
	bh=EJF/0GRK8gCHAuxzBGfX3/SDOj+YnZQWV+rfBX8YA5o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k2cNByx0VwsOpXFqe5b9Q/BJJI/AKVJQkDONVH3VEK+XUKwtuqz5bnDn6vt4vNISABSRlc4ODXrYqcfoLzDrs2p8vG+pQ/DIxQTDA8ZS/D+/yFTTOXhD14yWjUVCy2VWJLVsn81YC0zn9v1oJMgcUAbqk+6kbKXY4zay69T2BYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=nPnFPFsC; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-212583bd467so4998535ad.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 23:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1732173209; x=1732778009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LFNrZw48YC7Nd4NK6Qt7/KlvAITIs4SoN8m0X5EQI9c=;
        b=nPnFPFsC+J/+hF4W+Ru3h7KjpefhxfDMNTwHu5V9v1RCK0piQ5jpRsTb/lva8JqZal
         3aMuggZHm/XNwjj2Fs/QaLjV68Z7TqyMIzMUIlDjMEfGCNm+twoxwiTpT1D3iFI91p8W
         3117VlGLI7jfHBT4MDPmopG0RGnTzsi8jQTTc+Lf8tuFAI5sdGS3fETWSsC3UjcuoeEP
         V8goeAmZ9MlB/4Tpjw5wovJ/feYLml4AQc7/rKMW5NjuASl2BWEEB+cziRfBWuporld4
         /Cj3rwNm2GvSyGwVpjZYjb7kEtVk6Ilfem94BakfOXpC9udtXC+McmaH/Bn4WKffvB69
         jYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732173209; x=1732778009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFNrZw48YC7Nd4NK6Qt7/KlvAITIs4SoN8m0X5EQI9c=;
        b=UJFB8aAz+uSMoREhMdgxwfACGQwz7OYIjURxYE1cJVQ8rID2aF7wfg7npTUrgCqtDz
         Df8Qb1kC6DCKoWmB/4ch1elz7/PKCkAL+XPxN3QUGUWjUZs8z61tu1wEhDIC+KDsfc+V
         0XT+CEt63de8HJ/fDk8BxCS2+/hGniQmnjBlxfNP71EFn2XIqsiyKHdkgMTwG4tKr2VM
         /NWms1vq5hF32zPSr7FqdE9piZEyM7PHirtaCPUpy1R3O/CbvphoHOOAgNbXbg2HHGjy
         m/dHTkXvjc/aQdzuC0SjMCaytRghOv6D9Bet6XWw8f03aGwnmuwz0s46fZkjYyrqMMho
         0X4A==
X-Forwarded-Encrypted: i=1; AJvYcCXoqhC0QxakNm/0R2wEPswaQOkPWd+w6vdEFj3rMyFZ4HORPDnocecoqTMSWi7VZuodLpsPAfSo5HqE@vger.kernel.org
X-Gm-Message-State: AOJu0YzufV7gVO+35esPKP+N9Jw/2dhLyBGQxHsraoDkoRYg6YVmBLSb
	abUXKF/LDmkk+qczYBVjc9FPU1DsZYBNcT0njBO4WkvLeoE0U2Zlk1/NODQW
X-Gm-Gg: ASbGncvhZbHbGFcdvLJAaZy0jbiTmIs6bJdhTb2NRWmHptVVGNosqRP1Nuo79tboahP
	OrjrMNOyI7wX0EE/qR0jnTKDZrRyjFpvj+dG4dLR6wa5ra3ZsG/qH2lJEh6lKE9vRHjEBXdT93Q
	tgbImTy9U64D3Bo86iuV4JwQGZ68/p76XtdKsuOWZ7atlOSeHj13466MF9bj9SFRYp+x0UaefUy
	7qSrQ/SUqjCMf7SmsBOLYRvlZXVJ0BNTuNFLiBbHKDeSH5K8Ds=
X-Google-Smtp-Source: AGHT+IGLelbtxaQE3NcbOHx4mUq3l9XVdB1+aGkET78P0R+07B/6hdLZ5zog+84Wtv0TlE5OHYP81g==
X-Received: by 2002:a17:902:f707:b0:20c:5b80:930f with SMTP id d9443c01a7336-2126c0b946bmr72891265ad.12.1732173209619;
        Wed, 20 Nov 2024 23:13:29 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:b535:6545:798f:8db5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-212883fee10sm6709725ad.264.2024.11.20.23.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 23:13:29 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY address
Date: Thu, 21 Nov 2024 16:13:25 +0900
Message-ID: <20241121071325.2148854-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On SoCFPGA/Sodia board, mdio bus cannot be probed, so the PHY cannot be
found and the network device does not work.

```
stmmaceth ff702000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
```

To probe the mdio bus, add "snps,dwmac-mdio" as compatible string of the
mdio bus. Also the PHY address connected to this board is 4. Therefore,
change to 4.

Cc: stable@vger.kernel.org # 6.3+
Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 v2: Update commit message from 'ID' to 'address'.
     Drop Fixes tag, because that commit is not the cause.

 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
index ce0d6514eeb571..e4794ccb8e413f 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
@@ -66,8 +66,10 @@ &gmac1 {
 	mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		phy0: ethernet-phy@0 {
-			reg = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy0: ethernet-phy@4 {
+			reg = <4>;
 			rxd0-skew-ps = <0>;
 			rxd1-skew-ps = <0>;
 			rxd2-skew-ps = <0>;
-- 
2.45.2


