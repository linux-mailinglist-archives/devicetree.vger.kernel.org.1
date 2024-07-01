Return-Path: <devicetree+bounces-82183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5891EB45
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 01:12:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D95E1C211D6
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 23:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E2A171E61;
	Mon,  1 Jul 2024 23:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LHW12FDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C424779E
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 23:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719875568; cv=none; b=Y7Mm680Rk7cFBlUgnlwoW0HDMQTuTaQavfAv72c/lZwvptgEPFNxmxRtfoxzPZ+456qzZ8mcAuIoZotjZVIzbZ5HdlNYbrRzB79H7JKaSpcInPqoiyzWRju3h+0MJjfQQOJdcy3X7fWY5G3VkdCHuBHV3gnUoGDgYBwlUBwMFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719875568; c=relaxed/simple;
	bh=6IIMcKo/2WzQF4DmE4OHfwx8r6CPYJ/+nrQrMupWvRw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kqwmJA0Atl0t9kvy+zO7ZRQdeqI72HsMom4qp02OvY7FeVE2UobVvfZbvNf22NFmj/CjG4ZGYzTkbWEXH9jLnozI5jP0W3gApnQTlTbvPOSx3O/UBi55r/CSZPN4UBMxGdaKHzxM1M1flhqqFyo1rtYZrLmeAf5D07AgNSBoD98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LHW12FDG; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2c7cd2f077fso640795a91.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 16:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719875566; x=1720480366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m84Bngbzs4y2EXo9C11boGHuVUhuCwhpSPDLynkxAZI=;
        b=LHW12FDGvUe5knIfSNjHrLrSia2DJj4CT0UMPF9PQXWJNb4x/CVMp+XUzLnGiJeYoR
         rEdaA/+qAR9827FkGXanWixFnGRSnX7ZQpqRiAp2jLG/6mWiRfAkzaqGwoVefhp30EUd
         2Ar0x/DQz5ERKKe4DWTQIzkIGt7aBSl5EUj/1L0cpMzTJBcMlSOo8MJnaZFLyKFLVZMr
         nt9iZZhbHyN+Os35kG8EOKun9VImqCsgoa7N8dls2NE5I1W6r+FqkjVwU3OUtaRlL4Is
         u5FnWVlBAYj68qttMzmQk0r+Np85WfgqCroX+e1WL0g4nphUhdjTtFyc2e4yo+mIj2Qd
         HZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719875566; x=1720480366;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m84Bngbzs4y2EXo9C11boGHuVUhuCwhpSPDLynkxAZI=;
        b=Ikdk6Y772nOliQT03h2zLMXCDouzVA9eT9OUZBDgBtkp9+vA5siQUrrjoAZX5ufSGl
         PkkLswAk2nDMJaonXHKoASb6ogi66EErbi+IrqvgQpfdD2LeCly5+gNvIdW/fU1IQIWt
         /ixiHQcMibqqpWv5UJmMufWHg5c79s7T6Z8jsbrJq5dv9J8BTonNc7SVD0EUuVEaVyhR
         Ojbcwdp823+bo0drMHehGbr6dL/FwkkDaZqRNUUMFa74UgL+IzghAhpZsbdXMENuXZk3
         2fAdHywSc63yYc6eH0qhXhX1K9yQRvpLrIRqEdGCykFSFaylaztl5OLafaSHaJMTy9PE
         TdLA==
X-Forwarded-Encrypted: i=1; AJvYcCUGwvZU0MgCW1xqXfp6O08yIi7J8Fu6n8zxNajhjQfxvQhDlxaYJ9/wKYeNV+03aQxNUXf3QYp/CyO5+kzA8csaMOc1EaDrnm8Hmw==
X-Gm-Message-State: AOJu0Ywc4CGUsQq2+e/nu69BSa9i6Vba1fQm7+Ri4A3QW79+InvBjTL2
	BJxjRr/Z/nU6jaQPrAyRvXRzONNSISPyJtl7VPW96S/gUPOk7nWlF4m8XA==
X-Google-Smtp-Source: AGHT+IHTaN6O0WG3rWCiw9I7m5zxmIlKJooUDRwYjI9Q6GcIneWGfuZWchrqNVaq4J+W4mLLtZBATg==
X-Received: by 2002:a17:90a:f182:b0:2c2:204d:6c2 with SMTP id 98e67ed59e1d1-2c93d766ba7mr7365539a91.2.1719875566101;
        Mon, 01 Jul 2024 16:12:46 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:27dc:3453:bfb9:bce5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c91ce17d00sm7368589a91.10.2024.07.01.16.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 16:12:45 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tharvey@gateworks.com,
	parthiban@linumiz.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] arm64: dts: imx8mm-phygate-tauri-l: Remove compatible from dtso
Date: Mon,  1 Jul 2024 20:12:28 -0300
Message-Id: <20240701231229.197614-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

There is no need to describe the compatible string inside
a dtso file.

dt-schema produces super verbose warnings about that.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso   | 5 -----
 .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso   | 5 -----
 .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso | 6 ------
 3 files changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
index bf3e04651ba0..9dd070342363 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
@@ -14,11 +14,6 @@
 /dts-v1/;
 /plugin/;
 
-&{/} {
-	compatible = "phytec,imx8mm-phygate-tauri-l";
-
-};
-
 &gpio3 {
 	pinctrl-names = "default";
 	pinctrcl-0 = <&pinctrl_gpio3_hog>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
index f4448cde0407..045cd8082781 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
@@ -15,11 +15,6 @@
 /dts-v1/;
 /plugin/;
 
-&{/} {
-	compatible = "phytec,imx8mm-phygate-tauri-l";
-
-};
-
 &gpio3 {
 	pinctrl-names = "default";
 	pinctrcl-0 = <&pinctrl_gpio3_hog>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
index 107f743fbb1c..4719f5fbad03 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
@@ -14,12 +14,6 @@
 /dts-v1/;
 /plugin/;
 
-
-&{/} {
-	compatible = "phytec,imx8mm-phygate-tauri-l";
-
-};
-
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
-- 
2.34.1


