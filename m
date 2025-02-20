Return-Path: <devicetree+bounces-148907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EA0A3DB60
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 472C03BD062
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D5EF1F942D;
	Thu, 20 Feb 2025 13:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HHU7AuF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3DA1F76B6
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740058341; cv=none; b=g86wVLrsR5+hWd4tUNXAADOt4cghX+8lhiCJRy+Mdv+u+Hx7eo+QfPj7UTJEHaIJE4cVIPp5dKOeBcHAhF0NotxNvlcI/ZE65DgIYCJPOtJ8MBCRRyW9yrKs++B2+tYz9yG+IrFFsCQV7M6Q1OykB5n+FFYphm59RrxqByBYCh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740058341; c=relaxed/simple;
	bh=oaDP2imnhoyLR9hvvcJo2p/IUgRz7k0O3YOX8Qsl4M0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JTW5/w+onjkb15Hxmq908C0ulnAncYxEvM13tqa+QmN1hPcujmjT9LwAhtUcl+eKQgotKsURy70dQQgTqfv4dhDqRciApYjjt4kFClVBuGKEljTakxj0k6zaRGcjxMgi4qBL6CVxm8yfL6nPodbMvjTni6BIG37S0KAgmSuyqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HHU7AuF0; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-220d28c215eso13706315ad.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 05:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740058339; x=1740663139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SpXiomrxwgWW3KAymUxQ3eb5HkNF3o9XdspgzGz33ek=;
        b=HHU7AuF0Cexn8L05Z3aGrpUc/G0dPEipAbXdzNwhfrLQ28257uS2HxA6igjKkfNC5V
         AUfFPdOFeTSf9Noh5PIQqcIgj0cN3t546BUyEvrus/YALgUFh50+1fyOL08qg3lR2D2q
         s9Np9yxi249FrX/HChRULuv76tS7vU6d5yqAdHG4VSiMVpFIdtcSUANREmn6B0snfz5T
         m1BBP7pLmP1HtUyGgIc+MwZh11TuM39Yyi3H9iUB2W75lESc8FVeVvvsqOb0KaBum1Gg
         UrEt8Rn0PrzWQ514iWvhmX6zHgver3lGtoSFO3wFM+p6c8ANxzZkwNu47JGbibskWdWA
         h0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740058339; x=1740663139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SpXiomrxwgWW3KAymUxQ3eb5HkNF3o9XdspgzGz33ek=;
        b=iGABTE82UTiNGe9Te0nPV+gUWUo6S+R7bLl82CvvBo1xXiN/TICkKP28GRPB75zWhs
         2aLexO2jPHEjiltUuhefRUvd/BL1CdlmrRU4wHM5ze6lKHYdPkEXl8odkKL5enIUMPzW
         9apRML8k3i5QFQ2bW0Q63rCWNCvU7+T7QiBDJwk/2VLnoCqLybXMcLTtHkXO4fF1zJqy
         mt9sj9J7jEpyYS0c7huD1Qq71qzTtKAb9si3VFD1ZqFt7nVxPXdNj9XlunlgcEtjN5vx
         cXkfgtYieJBkQU0tBaEYdESUL2qAwG8f1H+hS85J63EhP1FA2iN5JPpd8nIEsKnY9l2T
         8xXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkiwrtZ2vGdaERIDuQN0/IppN0fpalmc4x1tU2lldNyKtGcFFwPa/BLXeJF3SAXnC1Jl9t8d3qGvUy@vger.kernel.org
X-Gm-Message-State: AOJu0YxgH4BoThd3SDjB9lLrbhmhG23Yw+xSmYVezD75wSJTnpbRwIAF
	r1KCg+22PV4vQwW5cXwsh0fItLnNbGx8+UWG85ke0NEV+9+xdcCx
X-Gm-Gg: ASbGnctgnIjIUcjiI6yzWZLkZA4SgNRVGCWO12zgUmhAEOpub4HU0iysCUeIXh7lar1
	8I9rZc6hT+80n4IS11v6AL/GzjSg6rRpN6VXb3CGM/xfkTzdjSkdeqAvpFGQtLDPJPbxDOBK9aQ
	sPMDU1DAJtzup15KpCp02QBJ8PRYjEz3oEn325nUu5g+ZlVE6+3Kqv8JuqF71s/Dpw2PJWsk9Yq
	zErao9R0+C7amDT4nMxjk5M93fyiHGKAJgT19v27CiXcOMAjGF9vYB1Vwe0FWwr2crbWVo8tW0h
	9qNVJPrMBLko+8MYB+VG7S4Wn4rUHQ==
X-Google-Smtp-Source: AGHT+IHeohGecc2Js/AYhxoI/ybnQzHGzwv8VB9CIjxIesLUIcECJnkFGTZ3JbjElCkZJmca2HnQYw==
X-Received: by 2002:a05:6a00:1707:b0:72d:3b2e:fef9 with SMTP id d2e1a72fcca58-732618fff8fmr36874772b3a.20.1740058339287;
        Thu, 20 Feb 2025 05:32:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9a27:2e77:89d4:5724])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7325953a4a9sm11605770b3a.82.2025.02.20.05.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 05:32:17 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx53-mba53: Fix the PCA9554 compatible
Date: Thu, 20 Feb 2025 10:31:53 -0300
Message-Id: <20250220133153.2380248-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

gpio-pca95xx.yaml documents 'nxp,pca9554', so use this compatible
to fix the following dt-schema warning:

failed to match any schema with compatible: ['pca9554']

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx53-mba53.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts b/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts
index c14eb7280f09..3cdb87ac1d7c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts
@@ -162,7 +162,7 @@ codec: sgtl5000@a {
 	};
 
 	expander: pca9554@20 {
-		compatible = "pca9554";
+		compatible = "nxp,pca9554";
 		reg = <0x20>;
 		interrupts = <109>;
 		#gpio-cells = <2>;
-- 
2.34.1


