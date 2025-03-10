Return-Path: <devicetree+bounces-156174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1987FA59750
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75E4E3AC0B1
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9515C22D784;
	Mon, 10 Mar 2025 14:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TnDzu/4W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A243E22CBE9
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741616126; cv=none; b=PlHfCjKBYkvlzfhPNxmgBqzmnBsRxCY/4hXd6L+0FFf1X04RJt7RXx9INmGuFnjLxVZuPsF8V+0cms8fd/AW1g3EAkCzQudfulstgWpJMfMmwBy8/8M8lX1vezczJEVuVHjY1QsaCtS3yjpGKf/pgnGebW69ITktKfl4Fa0YzCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741616126; c=relaxed/simple;
	bh=fqTqMIhWNpfM5LYJZu3n6CNwSGS8W23mDWqQ26Vmdao=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fl8s2KvXGx6pFh1yo5fw5G2m7JJ3QCOEgpkJ1n5FbIvwRKAzxHITh9irKzji6WtBB0o0Wv+ULBmuPTto2uSu5dLgEdqaev0r6lSzCZnNAxqS3HOVFdEfH3NSu5rHy7wjbi0j/+ioo776su9H/EdyuQNif0UZumWhY2Xnjug0Q2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TnDzu/4W; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39149bccb69so949539f8f.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741616123; x=1742220923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmTqTAHRMrZdwKLgsfK2/thaztYYY0csGZPufN3JueY=;
        b=TnDzu/4WKNvtx/XtijuxPIJZZcLUWn+L6CKsnatweFO7z7Bmr4srqtWvqGoRRzWmBQ
         lFq3EX6s0dNQhzHtjH79RdRMtx3bgA4ARMT5lg+8M46CF7V7mvj7D4ygMzCV3C6cWhAt
         Ujuddxr5b/gTquY66kXK4CN5ko7prJeZVscs+Er9VY1HSIyhUsFeFwGm1SAUInpd5bwY
         +Dvt+9wO16srPLSn5Knu5CQ8Zt3nOIVNaJSWni5zyZ06oVIhedUPrT+vNSTWDqf1jq+x
         V1W4W7l2yz2GKqF/IvlKEHqeQQ7WLZW7IMNTWAkpI2mdDJWhQ1Qxd6x9NPJu5YCEdUd6
         Oa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741616123; x=1742220923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LmTqTAHRMrZdwKLgsfK2/thaztYYY0csGZPufN3JueY=;
        b=pV+DXwU+E1aHfVwYSRcA7PUOKfvwLMsARg35wC7Ya0hpV4rv3wbz5HfhoxSq17u9eR
         UsFcK/7U9tIY7mVrA1YVx8Y3R4dTORKJVWmgepx1DgyLwWU8GNlqFd5gRhT3kHsZ7816
         4fjHi9lBB+GHbOGgAJQHWaThMHgbgDP/hyFfTbGSrFcrQJnza7FA1UjJ16AwVhsQ+tz+
         HeEOlxz6pIYdqseVgxtVR4WkIpNTqpL/cKAj+ea0x2KuJpFYFp/vYEViK63codAWNl/j
         5igv/J/oHT1XE3j58LQEOYDnALu/sL5NbVWRYgCy++ZO4FHqnpgvrWQwO29a3yPT/uBw
         gofg==
X-Forwarded-Encrypted: i=1; AJvYcCW1isdeS9yfWGCZHkj2ZB4L6kiByWUpRpCGYtkKVarlQcRkVVbgygwnsVVaA6AT+Usm8vTUrT13XAiW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy3+3GM9bi8DOLWpM3rqWwE23ihJX/sxYESEgy2i0/Rm/urGN9
	uWY3gjDOJRVIb01rqSIWObaNraGml1xVex7L5ge5e+N+6yVO+ZS9/z1rrYLB1mE=
X-Gm-Gg: ASbGnctSd6gS1nOCAsYba6D+W+Ot+lCDQVLrOAazduxYnkGKFuIj/yJYn1a5am8baoa
	QnI5YOZcR/s70EdD4v4TinxI/g3l3D9yvdW3b4cYm++EJkUtieU4Awp5zYOqxmJdZJKjdDcEZOG
	bE2TFIOIcK131exlrUpMglPSkK/Ydt50KcE7JXC/XKIumLFatdwP1YBwRNod6hWoQgyRJ9rgyuC
	XY+nlFzVlJJEAgECUCIwW4AslY1/XbP0zT8+4HHMNoVZZEEYFQNMefHnQhEXrMkWtGeluGIgah0
	hlktlvqzTcw5ly4iKr8K7F92pmFSRjRadYr3Wou4ZCM=
X-Google-Smtp-Source: AGHT+IFGVt+pDHq6EUpM/aSC+I2TplLZ4xEg3fnnc4wQ8YzS/eyx+MSJesISoV8khPoQ4Ai4zCCC4g==
X-Received: by 2002:a5d:6d09:0:b0:38f:4d20:4a17 with SMTP id ffacd0b85a97d-39132d1f8acmr10073432f8f.13.1741616122894;
        Mon, 10 Mar 2025 07:15:22 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bdd8da097sm149824545e9.17.2025.03.10.07.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:15:22 -0700 (PDT)
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
	Sebastian Reichel <sre@kernel.org>
Subject: [PATCH v2 3/3] arm64: dts: qcom: x1e78100-t14s: Add OLED variant
Date: Mon, 10 Mar 2025 16:15:04 +0200
Message-Id: <20250310141504.3008517-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310141504.3008517-1-abel.vesa@linaro.org>
References: <20250310141504.3008517-1-abel.vesa@linaro.org>
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


