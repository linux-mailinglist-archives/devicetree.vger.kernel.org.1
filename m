Return-Path: <devicetree+bounces-44826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 903FD85FAFA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 15:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1DF21C23401
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD321474DB;
	Thu, 22 Feb 2024 14:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="czOpi+Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB01149015
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 14:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708611594; cv=none; b=ZdoPp/pKHDtDqm1HM5B3dX0zUtej1/XVsmLQuWTNXh4gcYJmdvDnvKoq4uBF76h00JvOiTxOLCFVXUjVpjAZN1ibHJnpvHbwOS+28UQpS432Vqk1hChbTRIhkRDX/TmjNCV7WG8BB9gE+U60AXmL68SF8v5GeF1zrJ+6FTa/D4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708611594; c=relaxed/simple;
	bh=60Gndqbrtnm97w5mQMEh5gPv5N7WyZvnHD90ty6nNt0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JpiVhwoVRmQKxp1ecgjyB5B+CoOw9psai6lwQYrzUzbbLu6et/FtuqOhrxx6+oBJeD9aNJKMpyyxllylDl64S0gCahY3Wn2zRHZT3CyT7BGhSIqQ1PTUs34f4b983Aueg18slRuJ+UcbNmbagFOyQ/H7rMhtcfZwUaEVjm7RkjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=czOpi+Ik; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a3f4464c48dso225217866b.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 06:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708611581; x=1709216381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JksX+IKDkNdqLCYYO3e0buRv7x2Xlo7FHMMyk9/Vsso=;
        b=czOpi+Ikx42/Lw4CmCnbe25bjO5AKf/yXeB0kmaaNmUesrFJIIsPJhk65UTUZWOuP0
         LH90qh0P2ZLpIEF6OQEuXnMtUQMWXmbyeCpHCZooHTo75No0bvBHCSLa8lIowFIthiRm
         XzCciT/he6K1MAsD/X3X6UYyTBK+G3InJifto2qK4Tmq+jySF1/WqZKkz9hf2MlBQAG1
         S2Yq858BulBz+ZvJ32ukwzyheQBBcWsf5Q4MwGyahTltRGHk726htY2Ogfpld9sv2CUM
         GXftfrey2jXPvK96i5f+5Dhe3NwkLxQEVn9g9biGG25dJe2JW4vvPPSkFa/O+UlkHAxP
         1fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708611581; x=1709216381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JksX+IKDkNdqLCYYO3e0buRv7x2Xlo7FHMMyk9/Vsso=;
        b=YkUu2fkidvR5DMVLI3eH7pGfudbq+I/04bHRXczqrJn7LUg0AouJmhttE0bURLrLbV
         Zr35Aww+1nrwpPUQPvibzAFAX4QxGSmX7EeAbdn4hGqH9Hz/fkJNahlSR7XqOjtrZqcI
         GVeVZub/LZvW4wa9V7rQk/bTVmWxqU/bV2PvlQmttnVggNq8zp+VAa9jOtQzKA3XJf2J
         bEa7aQbJyhe3SVpxcYeYlHn9+9vwIcsqbSNHOZeTe+8GutZDouXZPrXHf4i4Xfsnyx86
         4rhXqIXayJH4/680R6TpDoK+R7wAlZMJaOCFBFnTy90aiYFnc1yUgqzHnJtSOk36sgWD
         cyGg==
X-Forwarded-Encrypted: i=1; AJvYcCVFz62OF1s0gWRzu33Qsn1zns5//qAAE+ZbSuuAP2UqR6XEkug/ZEapRp0vCQ9BHppaZ0Jrr45DhNj0FWA0MJ0UiOmE0SpCkTmI5w==
X-Gm-Message-State: AOJu0YwMhDhnw8rVF5hukIyluKkI6KK4ihlB1bEv/0IN/I+xw/U42TO3
	LMRC96NtgRtl4K8K+ZA24XMyQIJQ6RQx4IWnn8OotFdZs0Rb7ya/xpBMnWteZUA=
X-Google-Smtp-Source: AGHT+IFLLQ5n4tIoJzrhuucSsLFTGKUUA0NBZdJjqAYabV3MFAvlNZ03Dg3u5ipj/+vSoYqNRjR8Ng==
X-Received: by 2002:a17:906:2c0c:b0:a3e:4704:d57 with SMTP id e12-20020a1709062c0c00b00a3e47040d57mr12658592ejh.14.1708611581639;
        Thu, 22 Feb 2024 06:19:41 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id lj7-20020a170907188700b00a3daf530fd8sm5992588ejc.210.2024.02.22.06.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 06:19:41 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 22 Feb 2024 16:19:20 +0200
Subject: [PATCH v3 2/4] arm64: dts: qcom: x1e80100: Add dedicated pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240222-x1e80100-dts-smb2360-v3-2-85a691d4f68a@linaro.org>
References: <20240222-x1e80100-dts-smb2360-v3-0-85a691d4f68a@linaro.org>
In-Reply-To: <20240222-x1e80100-dts-smb2360-v3-0-85a691d4f68a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1670; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=60Gndqbrtnm97w5mQMEh5gPv5N7WyZvnHD90ty6nNt0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl11f2syHXvemFtyFo2//Ya4E/ACXEE8kK9R9Yz
 53foJ2KrlKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZddX9gAKCRAbX0TJAJUV
 VtuZD/0WoKB+XjbLzbFxnvxrczAteezkLutisD5tF4Bz8NBWhxgN+KTeqz1eUD3uKpVmHZ6n2tP
 e1+HYJgstZU7xZngIXm1eOp5PVclimHRyfBS5ZSg5U3ztTJERPp65XQTjTnmkdGdZV+bUb3CfJw
 41cq2JvyS2yW1JU2SXjwndsqq68Om6uMRCNfgAAqeXkuB827WI+n1YQzWg3faSjQ6qM7bhG6Qet
 NGdppqNJ3VmWDUKE+P4iZG9xK3hucTjj+gtzGiVLNhwkl/eSCYgckEkAAKiEt925aMMHFGJ9QWi
 LxUe0U7mV6CNlZM5iPe7ilGhoLEMuu66hnaW1HJ7fMLkXprquJ9EuolJz1fKr+gsIdaMOhnyQ/T
 VV9GfveVnk1SopDbkvsZ5cwB43gbykRtcfZUJ0u44cIzH6983OHRZcLpFITkHwx56mNj1deGVRM
 uAQTfVYDstNmq2lbAU0wJVGiGZ/7i69c0frmWGJGfVHCujanOCgn7OMZ3E7Uka/PyQS7uSTUId1
 ef9elfOwjupFZwawekvBpZrQdboayt7MiosUO6sW7fOZb4FbPG7NJqKzO2l988ZNG+OpCrBKRzL
 GaRR1secLlNM5NBZen1VEMW2PHH7pICOMP8Fd8Fd2NWo90THQYUldQv1uJj3qTkpISdxaMb930b
 vuqbC9LKmDn3bvQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add dedicated file for x1e80100 PMICs, add the all 3 smb2360 PMIC nodes
with the eUSB2 repeater nodes.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
new file mode 100644
index 000000000000..04301f772fbd
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+/ {
+};
+
+&spmi_bus1 {
+	smb2360_0: pmic@7 {
+		compatible = "qcom,smb2360", "qcom,spmi-pmic";
+		reg = <0x7 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2360_0_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2360-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+
+	smb2360_1: pmic@a {
+		compatible = "qcom,smb2360", "qcom,spmi-pmic";
+		reg = <0xa SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2360_1_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2360-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+
+	smb2360_2: pmic@b {
+		compatible = "qcom,smb2360", "qcom,spmi-pmic";
+		reg = <0xb SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2360_2_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2360-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+};

-- 
2.34.1


