Return-Path: <devicetree+bounces-157574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC3A6134B
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 15:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E4683BD8C2
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639021FFC7F;
	Fri, 14 Mar 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qeP7m0F8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B4F1FFC7A
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741961033; cv=none; b=gyrexowUIHGCLn3pno9/u6BMGEwo0DPJLx7DqXje5LrN1osRV06pTuttdzvhJSJu2SpQ/lewuH0RELTsYrAZcR1Zpls1ReMvCU/jwD2auPYu9nMcr0tj9aOFsSheL2Ey73qJZ225fNfiKYaBRiOmuz6EmWEgvRaWv3yfaSI45I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741961033; c=relaxed/simple;
	bh=BixFMmu9sTqy8BJKh8iJ1ywxzjkEJgvwb4uK0rEz9Qs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qhiE8sKYU9ZxRJ60ctzmxPcTw6uh06qTdmfN0luKUZOyH3OnLsHtQq8JWO+hPhxRYvnEG+8IXkkF371XRhSWhTpURPgCmspjqdOelPIkEYshC/mjtAJwaFCgH+HsHXCYtLxbM4sduHtviKE/afvXeUPW2NdsA7LnRyEDr905Snk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qeP7m0F8; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43bb6b0b898so20427475e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 07:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741961030; x=1742565830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DDupoB9dBc8DfN6WTesxBF7iIJOj9N8IoeENJse5v8Q=;
        b=qeP7m0F89nY48CDaXhm6SB0ydRZt4Q5kurjKi3qRCTfuGBWzP5C5KvekpcI8f8LmoV
         XNBee6tGtooWr4hpgS/rHDi1wBZZtg4CzP80oB2wzAWeGdJ7YBY+cwG5f3/WV6s6cn6R
         ysg85bEvliXLc1ma4NblLevAxFva7S1H4mG4++T5nBy+YM9GZV0GcRnaaFoJh0xU2QcN
         wobsagaE/qJLKMMR+g3l64zg5WL+ylG6z0VtQ3BMlwTvSODlg4nP6NozKU3wziT1wErH
         YW+Knz2zNZyxRCe5EnHb5xxlgcU+oX7gr0nmO2Pq+3tcxz7bJFaRGekG+wu91symVLfA
         +5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961030; x=1742565830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDupoB9dBc8DfN6WTesxBF7iIJOj9N8IoeENJse5v8Q=;
        b=KD/KjVDjES7dW/RldpKCcsZ4iOXjSePAUp9EF0PpBSiSMPxnaoWv58iT8+WMYoZfZf
         1Db0bgF6YBY6Z7relV4R6I6QWyx9ShfAVYdhssNR+xhNt9+jTdL9xG5t6T/i9kEKCu1D
         Tfkjwwkps+oCNtii4+zyL6tamZ+1fLKx17QKUuPuWsU+MmlHJukRWN7PtpZ/UzZEp02X
         g2d6cMPGYM/X5WwLE04I7PsxupEC3cN24apuadQjor5vX78al4TqgUSyUbynihkwlFXv
         XJYgeIWybc0HuJForZLJH0inkYQO32zLHOAeieF5FzQyIlGvFlLfMjxhQtte2nog9whX
         qKDg==
X-Forwarded-Encrypted: i=1; AJvYcCVDr9xhThvyQS4kJTeyyNsAuImnmJygwjQ9sar5/cVj1eYGcHEqKM+TxSdOpFYEXXXdbd8esvi5skxR@vger.kernel.org
X-Gm-Message-State: AOJu0YwZfCLFaIa8RQwqtU9+iy712BOrskaRR84NWJBgePT/YbBwb7nc
	I6gmnr/am//V/q07ru2qXAqBikxWMMRQJu9yInkR32nSAuoW+dvYm+/lVC29V/M=
X-Gm-Gg: ASbGncv54TyN+1qywRQAZ5F6kCr/zkQMJ11gm66w08FYD0e1F+TOrLRtVORYMMZo4xl
	SZjjRa9tzfE4YzxT5JxH8WsrKO+QlvT48qouF0EueLPlpz8Sp+TayHQ8PPyc3Sjo8Pw3keSTswc
	anAM9TFt+EYDJWO6fmuRsEAaLEggJCBA3urZjN5ckQjLMa5EJfFOFGinVDWW7GQwtDOASm28eGT
	bQDD/Gq6ZWpMwgGVGp6SGcyop5hDE6amGdXVy03NtXzceKPNOS9Ftm0MuZFQuxSSjy6yCwAcB0w
	Gq3oDqlfqs7eLpTQ7l6Qo+6xBa+i35da+TudgWUkE1Q=
X-Google-Smtp-Source: AGHT+IHgPJJb1obTrSTys3+K62ZDhJF/Fy0GpflFQd0zruZg8pn82tMFCsUAsrtNCKhRbgLv89dzDQ==
X-Received: by 2002:a05:600c:1910:b0:43b:cbe2:ec03 with SMTP id 5b1f17b1804b1-43d1ecd93aemr31086405e9.27.1741961029562;
        Fri, 14 Mar 2025 07:03:49 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d200fae32sm18156455e9.31.2025.03.14.07.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:03:48 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/3] arm64: dts: qcom: x1e78100-t14s: Add OLED variant
Date: Fri, 14 Mar 2025 16:03:25 +0200
Message-Id: <20250314140325.4143779-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250314140325.4143779-1-abel.vesa@linaro.org>
References: <20250314140325.4143779-1-abel.vesa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the Lenovo Thinkpad T14s Gen6 is available with an OLED, add
dedicated a dedicated dts for it.

This is needed because the backlight is handled differently for OLED
panels when compared to LCD ones.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile                    |  1 +
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts  | 12 ++++++++++++
 2 files changed, 13 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index b54f45b3bec8..df8d63560d06 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -290,6 +290,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s-oled.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-dell-xps13-9345.dtb
diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
new file mode 100644
index 000000000000..be65fafafa73
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2025, Linaro Limited
+ */
+
+#include "x1e78100-lenovo-thinkpad-t14s.dtsi"
+
+/ {
+	model = "Lenovo ThinkPad T14s Gen 6 (OLED)";
+	compatible = "lenovo,thinkpad-t14s-oled", "lenovo,thinkpad-t14s",
+		     "qcom,x1e78100", "qcom,x1e80100";
+};
-- 
2.34.1


