Return-Path: <devicetree+bounces-102058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E5B97555E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB4CC1F279A7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5FA1A3A8E;
	Wed, 11 Sep 2024 14:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="j8yIS7IQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E41A38F4
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726064934; cv=none; b=eoBnL21hBqwzWfAPH/HPZU1Em53lKEvqDmG5kl3UIOfD8aod68fG3a6H3XSlfvWRBdzwZpOqy75FNwBroXIqaZ2TxzSnNiJFJ++2kr6nY/Wq+tpb2Yik/Ayi9ykl8CDdv94l14ClFKpG4Ka4cVVEMz9WtbUS66Qpavf8T2AAanw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726064934; c=relaxed/simple;
	bh=6ykOJfpeTHedYDARjIqLwnX8MngyM5nQD4/lHx8a04o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PUCLkWKNHS8xPgarYbOHj6x5SLPfNuHVLW3MrH2A6qcBaKeX32QSwhjT00dRSBqYkym9jWowI29+pknpJIYf03Ejn11pCxw6zH42ylAf0xaFKIeyqtclGeVmsl/elCMDtHhsd2ID2gp0r+AcybvWNtCqYXE+FWFevo507bUOgcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=j8yIS7IQ; arc=none smtp.client-ip=209.85.216.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-2da4ea59658so5010535a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726064932; x=1726669732; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bUJux209baesVSAFFfQq0X1RKUEyIgNPRXttfQkrVp4=;
        b=j8yIS7IQ0toma1FJP9a/+UsYGF4x2LHB2tK2jz/KFTkvI+KjynPkaQeIRoUEyeHoTE
         m5EsDWffw4HhCuyQKWttqy2q+mmNYaR+wONzkSfeE5r/OuqmXkUaPBud3Ns4UpddFI8d
         kpM0HL2in+/+CTOo1lL8mCSD3VBCfCT7/dQifl1eOW7bfrJ4A9DQEYsER3LnKOyCsHEE
         CS4hY/ctO3APP25Dn0bm1i7lsH6Yaj0kfbjPp3PHklmxpWTTdgXczZ4Y+geM9y+9wnIr
         3eDX5oUpRppN936DPbSARxT/V3tBJkJEmjj4qNYhq2DpDqm3DKNvGDrUSh7CfF0S0a4c
         IxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726064932; x=1726669732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bUJux209baesVSAFFfQq0X1RKUEyIgNPRXttfQkrVp4=;
        b=P4dQLcJblph7ResdjRGLnK/nUZUH9t0Uv22a8f30RCsPjKzN5ZIKzeZPbLqeyFl6MH
         a7bcC+2m8DpLbdijTPQnaQ98YvHI4U4XC06MYMy5bbVw9FU7mmnyR0YcUpHJ7bhxFe8O
         Z/2AuEvm1UHHsg/PjhEcpZ7/Uq33OhY32/ccUg5WqM/lipENxoSy95deXpnKq5DR+l9r
         wIidkSio0Vm+wfNoFHuIfaBC0oS1UgV7+S3e4Z+QwFqlRGl0RU3lpddgpRNmXQp+kovH
         hHJhhN/AMDrqe5yuvk8/v4mipKV9ZQFpLyZmLbC6e60mMH58LvOEpWEvRUpReX7pLA3R
         LlaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFURFKmHZNu5a8ASu1P8NmYqOEho5r9Ru0B/kFXoWdEB36TzrY4sYn+mN3/FjcR9qCoPRYlRuEpigK@vger.kernel.org
X-Gm-Message-State: AOJu0YwCtMdB1qAV23pl1sz126uVBbANtEjXpzI8IE6A31dxRHRhfJXq
	WeTm5+w8YmsK3rx9TEnYe6u3n/jwW+DHh3fffi71rn4DRy2sEbD0yN/B5iNrWA==
X-Google-Smtp-Source: AGHT+IFVqR77ZETMOL3Ycph5fasQwi8N19Yt6tsRUByhDMgLOhcuLftvCvaT9AZPOu3f6sAF/CSzHQ==
X-Received: by 2002:a17:90a:ee91:b0:2d8:7182:8704 with SMTP id 98e67ed59e1d1-2dad50cb7e9mr19402868a91.31.1726064932543;
        Wed, 11 Sep 2024 07:28:52 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadbfe46c9sm10639116a91.11.2024.09.11.07.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:28:52 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Wed, 11 Sep 2024 19:57:24 +0530
Subject: [PATCH 7/8] addon_boards: mikrobus: Add Weather Click
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-mikrobus-dt-v1-7-3ded4dc879e7@beagleboard.org>
References: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
In-Reply-To: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
To: fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org, 
 jkridner@beagleboard.org, robertcnelson@beagleboard.org, 
 Andrew Davis <afd@ti.com>, Miguel Ojeda <ojeda@kernel.org>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1489; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=6ykOJfpeTHedYDARjIqLwnX8MngyM5nQD4/lHx8a04o=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBm4ajWFp0VSRIR7zV/zdAtrA/0zb8cZC/VMz1D0
 h+qmzLqTbSJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZuGo1gAKCRAFzvXHieVa
 dHc+EADEx6fwsxyM8cZ/VtliN6O/gG4ACga6aqpNaebLkblrTWKjIQogsAXkI6nxDlnn7AjYw4R
 cSTPGP+e2cK+Lv7lkIEK43rZVjkUOlk5UM4cBNm6bX7MtX2JurOi8piKbuu0Nw84H85RwheosaU
 OS+PP1wSvk4idx7eFwY8Jot5gBEhpdJTNbpnrtQpRUb2z/j7MDa6Z7sVv5uiCPjvZolD9BUXhp/
 mnWagHJGD1nYN9pQRARaZ2orDnEJmuXKgMahZLZec64kSfir9cVj2WbkEMdhgChs4Ii6syY3XdX
 KYcGu8jIhmeKtURXqIt8iI0sPggjGpwRdmXLAfW1O95wNYwITRmwZBA5oTMgrobnaJ1GXiNFg16
 9SHsQEEqerVxJ1z2A7mvVDbBR/F6ewD37goj/kqn90Rx0tSF75nGzYY+9X9TBue6nn/O/GnYRQw
 xb4Iaat/s4YFTcEKSAkvN2o5bdy/AZkHnkF2AfvVFfpVbJPV0hKRmzPtms4J+I/F08c/yoVdxP1
 besqOz7JBuWVAhwxEBZKi9iy2RgJSuSGwntPKsd7Ve1t/VI3cQ07DEMMFi8FbL8GTLvVmlggbXP
 wKXrDc8Xm9L8fq7EuABI7Ddk39zEowS9RBeKzUJvERkw3E49oUo5eGksxwXmh7SFOy26WvTHeqS
 QJ7SBrMKwv1vQjw==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

An I2C MikroBUS addon board containing BME280 sensor.

The same board also optionally supports SPI. Hence the i2c suffix.

Link: https://www.mikroe.com/weather-click Weather Click

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 addon_boards/mikrobus/Makefile             |  2 ++
 addon_boards/mikrobus/mikroe-5761-i2c.dtso | 28 ++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/addon_boards/mikrobus/Makefile b/addon_boards/mikrobus/Makefile
index f66554cd5c45..4c7a68ea9504 100644
--- a/addon_boards/mikrobus/Makefile
+++ b/addon_boards/mikrobus/Makefile
@@ -1 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
+
+dtb-y += mikroe-5761-i2c.dtbo
diff --git a/addon_boards/mikrobus/mikroe-5761-i2c.dtso b/addon_boards/mikrobus/mikroe-5761-i2c.dtso
new file mode 100644
index 000000000000..1111d3f7147f
--- /dev/null
+++ b/addon_boards/mikrobus/mikroe-5761-i2c.dtso
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/**
+ * MikroBUS - Weather Click I2C
+ *
+ * https://www.mikroe.com/weather-click
+ *
+ * Copyright (C) 2024 Ayush Singh <ayush@beagleboard.org>
+ */
+
+/dts-v1/;
+/plugin/;
+
+&MIKROBUS_CONNECTOR {
+	status = "okay";
+};
+
+&MIKROBUS_SCL_I2C {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&MIKROBUS_SDA_MUX_I2C_SDA>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	bme280@76 {
+		compatible = "bosch,bme280";
+		reg = <0x76>;
+	};
+};

-- 
2.46.0


