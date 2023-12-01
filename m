Return-Path: <devicetree+bounces-20589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0385800465
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FC6281645
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EDE125A8;
	Fri,  1 Dec 2023 07:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fUvDD4rz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9031BC0
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:55 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5c1f8b0c149so164332a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 23:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701414475; x=1702019275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eaC0buh7aEVblHqvJfrsnZTUVZcIwutzgrSrvSUna1w=;
        b=fUvDD4rz8CslmK5eHEUGTZzX+fbbYy1V54JONtRotWeHBEnJnGRI/O1Iy9eDOcKw5z
         +4jJ2tDcgAkRPG1hImwF1REq69VNfJYLfpqXsviMLEu6F0qPsYcDfptCiLQ75u9fRX9S
         xJzhLCirkB2nOg7skUB40YEiibdN4I2wkPYe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701414475; x=1702019275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eaC0buh7aEVblHqvJfrsnZTUVZcIwutzgrSrvSUna1w=;
        b=xE91bSu0mkdfApElRtpP5mpOLkOTTr4Zpj9JrWBNnFI+9hAW60Th4KRrWrDDRoGgk4
         Ny6KkJpglRDYhB6GR1y/sf/SCi2HmdOe7HVzoB/WRVJ1vKecVBb5P9vUZoDSiouO3p0c
         pYHvSsEIcbg0aStDkc8X4q7V4ExI54eJxL8tfHLP2CHaWgufLi+SDTn8FbUf2ZKM7TK+
         frstOOSUGk9FLJnHflruWmn2ZYSchuWstVoxsrl5HOGR1RNa1g8YgBwADbqPjODE8r5b
         ZtX7ToUlp+zdfARTJnqIeuhcIjXZIM2VNM33jSOw8rrz2gHqSKl0jOKNlsDowFM0T2+d
         J+yg==
X-Gm-Message-State: AOJu0YxtEmFzxA2V5rEgZp6uWq88of+KQJHConf1KFD3eWMDChGm1i3Y
	2PoVMvLsqP/eAXxjuAxGtvMk3w==
X-Google-Smtp-Source: AGHT+IHT4YSH9zK0GVooFrGQk5IfvBVb8uWpQf447as3BXXX4IM+f8biPC8Li1pf69Fd6heoaLDsFA==
X-Received: by 2002:a17:90b:1e4f:b0:285:a65c:64e7 with SMTP id pi15-20020a17090b1e4f00b00285a65c64e7mr18456103pjb.18.1701414474776;
        Thu, 30 Nov 2023 23:07:54 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:720a:d435:c253:2402])
        by smtp.gmail.com with ESMTPSA id y10-20020a1709027c8a00b001cfa0c04553sm2558684pll.116.2023.11.30.23.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 23:07:54 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/9] arm64: dts: mediatek: Add MT8186 Steelix platform based Rusty
Date: Fri,  1 Dec 2023 15:07:12 +0800
Message-ID: <20231201070719.1229447-9-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231201070719.1229447-1-wenst@chromium.org>
References: <20231201070719.1229447-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MT8186 Rusty, otherwise known as the Lenovo 100e Chromebook Gen 4, is an
MT8186 based laptop. It is based on the "Steelix" design. Being a laptop
instead of a convertible device, there is no touchscreen or stylus.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Reorder SKU numbers in descending order.
- Mark missing components as disabled instead of deleting the node

 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../mt8186-corsola-rusty-sku196608.dts        | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-rusty-sku196608.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 7bd9471b89f9..6b05f1f2e645 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -43,6 +43,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku32.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-krane-sku176.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-pumpkin.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-rusty-sku196608.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131072.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131073.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacool-sku327681.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-rusty-sku196608.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-rusty-sku196608.dts
new file mode 100644
index 000000000000..731b0d60228d
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-rusty-sku196608.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2022 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-steelix.dtsi"
+
+/ {
+	model = "Google Rusty board";
+	compatible = "google,steelix-sku196609", "google,steelix-sku196608",
+		     "google,steelix", "mediatek,mt8186";
+	chassis-type = "laptop";
+};
+
+&gpio_keys {
+	status = "disabled";
+};
+
+&i2c1 {
+	status = "disabled";
+};
+
+&touchscreen {
+	status = "disabled";
+};
-- 
2.43.0.rc2.451.g8631bc7472-goog


