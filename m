Return-Path: <devicetree+bounces-115348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF869AEF77
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 20:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 171B31F2107F
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7491FF020;
	Thu, 24 Oct 2024 18:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HLm7mNQ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29741FBF50
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 18:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729793661; cv=none; b=Jngxwdy4ILYaWvgJA0gBRjnoy+1EcIM0pUbBi0v82E7oMuqLQ9+dJ3VdUCCnY7H7idw8Aw0NJf/krqozwXW0MPThk/m8s5oORKZn8pDHPp2JKUcG1YJ4XKRh86pwttvXDi/buATsaEGLUTUZdOyOtdK6uANE8rF1l5wIrYvVU+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729793661; c=relaxed/simple;
	bh=b6bXM70L8ttQQAERg0pKOeOQ7SPw82oq1yMl/099naY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BaV0+g6YyFx7B7ZoFo39ua1FxQ9oHQTKUKlQOn215oeMhShtQ5H2GtLvQmlXzaxSPs1e4DWiYNz8jGZcXR+D44c1SZjKPwUDmde+VadvnZiQ5SJCeSMC1K7e7BVmm6vfIaz5PSJQJnOdV6BTDX72htgB1KH6nHkZCzbrkJjK7Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HLm7mNQ/; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7ea0ff74b15so749271a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 11:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729793659; x=1730398459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E2mRYwktrmZtlfT2nFMLWD2hPCZTt5hXE/NuFZYD1KE=;
        b=HLm7mNQ/PBdC0NEbCWvNA+3N9Hdb6VHK6oLU1bU5TdnK5zCGu9akf26hCeBSyQoSjs
         LPYYQTbzwOxZOoCA76ma6z7Hhnspn2jYsOr/rkk9Y47XI8JkUvItIQLv3B8s+x8gJ06z
         0BuYeaQhELlOytv+ACx6lISAci/NFrXkeEj6GeZJ9Eue0pXg2Wtx1yI0L3pnha57bEKS
         PswhkQDQZzJdpM5S74N+Vvwu9Q/i+peoUUCsqg7gJIiRsXUHhR09FW+ZbNAeAl6sPMWF
         1kdMtpOVj1aQPXgHC1dcZiHFqJQI9bkoJjxkVZNIvT11JTionKJjEmJNEUSB0efQfb8e
         /T/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729793659; x=1730398459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2mRYwktrmZtlfT2nFMLWD2hPCZTt5hXE/NuFZYD1KE=;
        b=Wup5McYl5SJKicdJ6mja8kyI8iB6SQaP+LbWv+Ikwn2P3V08UubwVECIBGk3DTf5YE
         2fctTsR5Q+QZx443vYsjdfrutwc+y7FpU9ltPkBnvrdJBWyg8U1CgPGFrmB7mfP2MbE1
         Gf184z/EhdmrjdUJ7+u4vJj7YgNMY/sgty01F7JXQIg1E66sg0s50348t6z2bInyNSiI
         sBS06TIP8uUhVbIxgvhJQEqOheyNXHg5PYwYeTUbLzHZzGUhn8ynNZeOY+pU4em1PraI
         /EEerTkTWcvbIEUk8ICimdxdb8QJRnJmNiAYDInEDEyZ2ikFAmh1T+oRmy79RAinD0R0
         6u6g==
X-Forwarded-Encrypted: i=1; AJvYcCWid/XVajEJGTfvzkMmDOXnofjb5inkeruryJrXh+r3jZbpxyIIeaKruUDmi3ePfBNNChLwalA/N/m9@vger.kernel.org
X-Gm-Message-State: AOJu0YxOWMwyRliFo8OshjDZzlkJ+eWowysgPRasi0MPrKBVHKIC2AzY
	YWcT3RiXRoMwANG/q8rHYwMa/GQhp/KVzIWjJ/Ags19ESw0dmmGB
X-Google-Smtp-Source: AGHT+IF15FANv02/HX5OJM9MTivD/8lQBJRNT9ZUddV/kotfU3iNdSgaePzvpQs3OCWOW5wJ1NIpAQ==
X-Received: by 2002:a05:6a20:43a7:b0:1d8:a3ab:7220 with SMTP id adf61e73a8af0-1d98976e70fmr3697478637.0.1729793658893;
        Thu, 24 Oct 2024 11:14:18 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b160:3edf:6e5d:8d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec13d74d9sm8208171b3a.133.2024.10.24.11.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 11:14:18 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	shengjiu.wang@nxp.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6sll: Fix the last SPDIF clock name
Date: Thu, 24 Oct 2024 15:14:09 -0300
Message-Id: <20241024181409.1461997-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The last SPDIF clock is IMX6SLL_CLK_SPBA, so change the last
clock-name entry to 'spba' as expected by fsl,spdif.yaml.

This fixes the following dt-schema warning:

spdif@2004000: clock-names:9: 'spba' was expected

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 85fe2a4ab97a..207b193db3ba 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -173,7 +173,7 @@ spdif: spdif@2004000 {
 						      "rxtx1", "rxtx2",
 						      "rxtx3", "rxtx4",
 						      "rxtx5", "rxtx6",
-						      "rxtx7", "dma";
+						      "rxtx7", "spba";
 					status = "disabled";
 				};
 
-- 
2.34.1


