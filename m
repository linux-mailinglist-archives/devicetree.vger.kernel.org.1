Return-Path: <devicetree+bounces-128068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E87AF9E75F6
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C365616BE87
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26501F37CE;
	Fri,  6 Dec 2024 16:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AQVAlChR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BFE1F37AA
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 16:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733502665; cv=none; b=QLGEJMMgJdP4v/4+/25FfCSrDhTp0MBZ7D1MEjW7k820IGvLWU8qKiMUfUb2MdSG76CIbLQEKMuNtYtUCjCL9F0QgKO6r7VuPIu4fv6c42rsCAlhGFULeRe6puWQ+DjNmjxS4doMdp7S9r2l3lh8ud7WOH3YnKb6u8OtFLQ3GrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733502665; c=relaxed/simple;
	bh=4L1d1fZ/CUtuGNTGhkvnq4cl0ag43qy7j+Nalp/6Vps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kLtlmrdmOxS/XTeKlhI2AyG3v61qUHTf4S06jErsKITgI/646lB9RgbArwCm2mXQc4sU7U6PKRMQq7T4AukGTv34zrEqgw4gacIBs3ax7kGhnT5bVkFccZG/MgI3K4R3Cqb8gfQT3CygjhqhQMR9dXxyUwpzwVIrqH3EPFbDXik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AQVAlChR; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa63dbda904so178167066b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 08:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502662; x=1734107462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=AQVAlChRgXD256vithgfZdOWYax8BX5V6ttuMFd0svMxfupIL8hUbsKe5pH/bF/PTN
         GmDWI2tF3vIO2KUnw5zi+EJKApBEEH3XxGd1cZgpyLsrqcAAtYLyq36ai9JscBfTv9KD
         WxJ370dL4+vJ4jG2p1FGLVYLBShcxmiYA64OGsVII6pclhczSaerrSMUOAofSh7MVSUf
         1wtQ5NCXYkoox5e/yoiK8/ux6koy+ZsImkKFwlxej9GuO9tDYSagytJ1gCsBlfa96rlG
         3BhMOfBun0qYjCbYoUpycaO8WDFs/UEKF6BJMOLEAkayl4JrJO2N6Cua+G4Rcv6EAfUy
         xBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502662; x=1734107462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=X2S1K5Yuph0jlVWhJl9raZWVtVQB4LHZls4uR0E0LjpTxICcaXos9DOL+J9EXI5Jb5
         I6rOiTVpdaIey/mvWquz1tzoMxKoQDqlBTVM9GvmVAFLyYToz48N2VEFGDrIUnh5Ocpz
         iYHxDp26PPvhBNld1zcm3sIN5RLyzCZG+wH+sKBwUKC0bRgLbl0h5dwdIxjD4mT+D6p/
         vBg9NZHwFERNm82dD/NysB0HBu4H8IL/zV+xPlHugi3Rp+P+uDX+ddNYZPQhxGjyA33z
         vVSfWgmrRc+soXeHXcn4U5zZGp/M5GlAVksSyHhwnYzjsYT0QJBaax7IWQHNBtaZmVLn
         SMyA==
X-Forwarded-Encrypted: i=1; AJvYcCXaYPsTWbpApefxLq4o7/j0kaQNK4ORDMpbnDacSzTHZogsCgX903OyzTHt2JbnMK7DjNfx/Zg0T8NN@vger.kernel.org
X-Gm-Message-State: AOJu0YwHo6KYkroXAbTP8nrP+tiryI6WslMBQZAJUvN0aUc6o7mv8yQE
	Zm4na7ufNjVdMBQNccIPOUcOMEA4PVEdA3KzYumkIv4Xj6EEUlbbsi19i8s1MyvDBtksVGKEGZa
	aJjI=
X-Gm-Gg: ASbGnctgunhmpWCoTPhUeNg8j2NQS7LDAn4c4fDLah9CE9+16Nrx+eQm9Lfjyazs2GX
	IS9EbkrBxH8lVapBpHXHHFeIO/p9GjlsqsSJ7cEJ4MiCz3chWVZAM7LsAM9ucipCtuMAkFc2kAi
	MIRX5d/9EPPpiFgmAeo66y2PJEW9ALbyPmAgf8VUsjUY4z3ldHF7ByI3n/qSAWPI6P4ZoICU3G6
	Owh49ba7mzkOichCUJpEDDcSLbQQ1iZS66ptboXrQg+mzCEhcg1NVXkZYpjK27ZekfpHWRsmkwS
	JmLaTkRAISUIruC0TPuOhasM5qy3s5/waA==
X-Google-Smtp-Source: AGHT+IEYYMQ/h9d08asabi/0+odqzF/CyOlSqdYyLjSN9hUXcwqfK0GjZYzhh1sXE6LLkhg8iDS+AQ==
X-Received: by 2002:a17:907:9145:b0:aa5:1cdf:7c02 with SMTP id a640c23a62f3a-aa639fa52d3mr294338966b.3.1733502662183;
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:01 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:01 +0000
Subject: [PATCH v4 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add blank
 lines between DT properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-1-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

In [1], Rob pointed out that we should really be separating properties
with blank lines in between, which is universal style. Only where
properties are booleans, empty lines are not required.

Do so.

Link: https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.org/ [1]
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* update subject line (Rob)
* collect tags

v2:
* collect tags
---
 .../devicetree/bindings/phy/samsung,usb3-drd-phy.yaml     | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 16321cdd4919..1f8b35917b11 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -83,14 +83,19 @@ properties:
 
   pll-supply:
     description: Power supply for the USB PLL.
+
   dvdd-usb20-supply:
     description: DVDD power supply for the USB 2.0 phy.
+
   vddh-usb20-supply:
     description: VDDh power supply for the USB 2.0 phy.
+
   vdd33-usb20-supply:
     description: 3.3V power supply for the USB 2.0 phy.
+
   vdda-usbdp-supply:
     description: VDDa power supply for the USB DP phy.
+
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
@@ -117,6 +122,7 @@ allOf:
             - description: Gate of control interface AXI clock
             - description: Gate of control interface APB clock
             - description: Gate of SCL APB clock
+
         clock-names:
           items:
             - const: phy
@@ -124,10 +130,13 @@ allOf:
             - const: ctrl_aclk
             - const: ctrl_pclk
             - const: scl_pclk
+
         reg:
           minItems: 3
+
         reg-names:
           minItems: 3
+
       required:
         - reg-names
         - pll-supply
@@ -149,6 +158,7 @@ allOf:
         clocks:
           minItems: 5
           maxItems: 5
+
         clock-names:
           items:
             - const: phy
@@ -156,8 +166,10 @@ allOf:
             - const: phy_utmi
             - const: phy_pipe
             - const: itp
+
         reg:
           maxItems: 1
+
         reg-names:
           maxItems: 1
 
@@ -174,12 +186,15 @@ allOf:
         clocks:
           minItems: 2
           maxItems: 2
+
         clock-names:
           items:
             - const: phy
             - const: ref
+
         reg:
           maxItems: 1
+
         reg-names:
           maxItems: 1
 

-- 
2.47.0.338.g60cca15819-goog


