Return-Path: <devicetree+bounces-106613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CDE98AF5B
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:43:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C7554B23672
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A804183CD5;
	Mon, 30 Sep 2024 21:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="naDY9RbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715F2184528
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727732618; cv=none; b=VNMNYAyImAbUaGiOIYkDLcrUXQdEivWRo0mqqSCq2nVIx4WpLLtzduHZuQJkAigCbvpwjWeuzCQOeHgNiBQIpbIGPj4APKlEZUPwPWR3Fi+KBSCLccZH6jvoOk2cGqguxfrizq0KMUFVdeQSXFOi/eCe76CT9kWZDZrFDnPsosM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727732618; c=relaxed/simple;
	bh=B+m7C02YP6M9YecRyqG5zZCg8QLQiixcxyvZXx4oRcY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z1WjcX8rXr+hXn/rQ/YFMJOIv3TetCrVzC6S3RjBaDGysNqMnqym43Ql75gvAdM7Wsnn9o42w+KOD3zm+dJTvmNfU4v5sRE5Pn/zibr/oLl9Sax3RIknR1fDGgYiZJDtuXWhoVjS+S+cthLXgR6fVKZCMmEhPgDV6dp7xBUnwUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=naDY9RbT; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20b9b35c7c3so11109225ad.3
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 14:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1727732615; x=1728337415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ydPzfb5DeHISSXfUFCrECM1xCpvlr+Jls9YV1v8Jxsc=;
        b=naDY9RbTN22zzvZmyouVOPF48EC+NUJ3pAA5D6N6zq3RYwzyLSRI/xh+VdE61q4RwZ
         0Bwh+GQXXTA62dBOs516VnMm6sfUuXnKMzi3TjAwoOsaw6iL1gc8Avifc4zvWUmISGOk
         CAho1Pg3eli0W3MAp3BNYD1nPogzDDZeK7oEKjxfvRl9KWqXtx9BMlWe07y7YhA1Hfrk
         khUQ6W08Kj8CqRLyUGo9oHn9KQF9BaPKyyaHoQw+HCCpsSvZsTWvjnAHiKNJDKWmVHdC
         OA3qd38IHwXqTaQ3EZVdrvqR+xO5HoK/CRJroFI9jVaVuktLhDAFLrt79I/qf1rf2HO1
         ikdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727732615; x=1728337415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ydPzfb5DeHISSXfUFCrECM1xCpvlr+Jls9YV1v8Jxsc=;
        b=Md6f1Dz9nnwj8pYCaQrNY018R1ld0B/wNED7yrjUSxOkOSQ50CaWxrbYUDzlw1VZJs
         xA0bsOJYyQ20mYeQ9t2+zjwYovVYCkV5nFLBtSClWdp6j8cFJCdQtOlKWiVG4zepumWf
         a2HRnzUcAH38cTFdxidWn3nJYEhvrZ7grKjROnGenZ6JH2E/ncRmJRfN4+7xsGCPwQYE
         NsXhq1aU203WfeYcpOm/SbROsVjf8FfMBQT/E23ZnxkH+seL9rSf+3q7UXZA6TO7P0UD
         xnPqqGPrIqAScjVBIPGOIJckx9weD0KFZAqVaXzeB1sXIY7YtyxX9I2BeoItKoWLt82J
         FHdg==
X-Gm-Message-State: AOJu0Ywu6Qo4IPilyU4AMcirMeZ+ws+raZzOTX1DGX1uzAHHMcGyb7MH
	bP3D/+Gh1H0VeP82ixlqY2hQbqpyxwYJgbBkTeXDTyx4qC1UKBcoTndH6aWuNOw=
X-Google-Smtp-Source: AGHT+IEmb+72kgRf7HcU8I5c0RP/oklAv181w4ODjfHsVoM2/CkiBBOAe4P+s1sF3ivarmYuiVRCGg==
X-Received: by 2002:a17:903:18e:b0:20b:6c3c:d481 with SMTP id d9443c01a7336-20b6c3cd81cmr110417585ad.23.1727732615625;
        Mon, 30 Sep 2024 14:43:35 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2620:15c:2a3:200:8aa3:d4c6:5fe7:c47c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b37e539ccsm59050635ad.255.2024.09.30.14.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 14:43:34 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	"William A. Kennington III" <wak@google.com>
Subject: [PATCH] ARM: dts: nuvoton: Add OHCI node
Date: Mon, 30 Sep 2024 14:43:29 -0700
Message-ID: <20240930214329.192587-1-william@wkennington.com>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "William A. Kennington III" <wak@google.com>

The EHCI peripheral already exists in the devicetree, but the hardware
also supports a discrete OHCI unit on the same USB PHY. Generic OHCI
works fine for this device already and has been tested on real hardware.

Signed-off-by: William A. Kennington III <wak@google.com>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 358b52894ac0..5aeb5009a5d7 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -142,6 +142,13 @@ gmac0: eth@f0802000 {
 			status = "disabled";
 		};
 
+		ohci1: ohci@f0807000 {
+			compatible = "generic-ohci";
+			reg = <0xf0807000 0x1000>;
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		ehci1: usb@f0806000 {
 			compatible = "nuvoton,npcm750-ehci";
 			reg = <0xf0806000 0x1000>;
-- 
2.46.1.824.gd892dcdcdd-goog


