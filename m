Return-Path: <devicetree+bounces-8397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC3C7C7FA7
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B38131C210D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9559E107B1;
	Fri, 13 Oct 2023 08:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="PNftcScR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678A7107A3
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:10:20 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 005AEE0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so3104258a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697184614; x=1697789414; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/XXmyKti81VH1ptNw2dE1ihFch8qRO8aJsAFTskBo0=;
        b=PNftcScRwB6nCWGZkNuk+Ig0IdH/zzXBfJXKzelFqHWHzAaewIxkEua2HMAJNp4BQd
         VSgIRueLCzI+Ab04UtrbcY3F4Phh3oH8aOgrlVWfSgphAauD0VmRd9q0OmcWsHfriA8v
         oVxZkMAl+LsI65Fz2/zcdngBag0fUqVW0vF6cU6YYKdNdDt3aQJhDk39eq7/3Z3fuirS
         /G5a7N4iF4SFw9U+wvHTuYNr20uAhFYdJad5VFY9DvFxHidMoopAAAzJzYqgsFIrflvg
         8XoN1hUZ7h/13AlbDpxA1du1NAmxuj2a8RWk6J7OcEX1JmRGJoNGQmnMsjC6yuTDmIWA
         1ZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184614; x=1697789414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I/XXmyKti81VH1ptNw2dE1ihFch8qRO8aJsAFTskBo0=;
        b=AMxhckc2J/dhZtXLQnDTZ2rg34vfTXScdPxciZQKUI15EF9P45tqRT2N8NyL91Qnh4
         zMaoykmieQbivzeOIIlERS3QaCouz+WJxS84Xb1OTqKcxv+rgniBUsFol0qUQt/vyTbL
         RlBymg+6G4StsBrmccGSz5Rf2hFhwNxEErxHLk46Wnl9l5jOJo5qJ/rx2rwmF2EmH8/u
         mzMHynlkhc1wVja2l7kWqCwwGBKhU+w6SwW4LiuIfe7ceD0dVdUyzLLDLr3RgaIdYxkA
         i8kiZHFyRRGpeIcA7CvltQQGmbdpm9IF61ym+iAcT5/dWuvB6PaIR7njrGU8XQxdjH0N
         V+FA==
X-Gm-Message-State: AOJu0YzjEx46uM1EkPWr+S1SqxHmeNQ7NcxL1UuyfUXYPkCb2TkCZIH7
	5YpnenlLa17Xide57Zc8WUbUpQ==
X-Google-Smtp-Source: AGHT+IGoWDADVMXWKr+jNxj7Wbo6DoL/2A7ROb+JP+5px1M2xbYi7735/jq101vucGRY54ky/ufEvQ==
X-Received: by 2002:a17:907:78a:b0:9bd:a662:c066 with SMTP id xd10-20020a170907078a00b009bda662c066mr603283ejb.76.1697184614461;
        Fri, 13 Oct 2023 01:10:14 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q14-20020a170906360e00b009a5f1d1564dsm11910761ejb.126.2023.10.13.01.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:10:14 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Oct 2023 10:09:53 +0200
Subject: [PATCH 1/4] iio: adc: Add PM7325 PMIC7 ADC bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-fp5-thermals-v1-1-f14df01922e6@fairphone.com>
References: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
In-Reply-To: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the defines for the ADC channels found on the PM7325. The list is
taken from downstream msm-5.4 and adjusted for mainline.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h | 69 +++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h b/include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h
new file mode 100644
index 000000000000..96908014e09e
--- /dev/null
+++ b/include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2020 The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_QCOM_SPMI_VADC_PM7325_H
+#define _DT_BINDINGS_QCOM_SPMI_VADC_PM7325_H
+
+#ifndef PM7325_SID
+#define PM7325_SID					1
+#endif
+
+#include <dt-bindings/iio/qcom,spmi-vadc.h>
+
+/* ADC channels for PM7325_ADC for PMIC7 */
+#define PM7325_ADC7_REF_GND			(PM7325_SID << 8 | ADC7_REF_GND)
+#define PM7325_ADC7_1P25VREF			(PM7325_SID << 8 | ADC7_1P25VREF)
+#define PM7325_ADC7_VREF_VADC			(PM7325_SID << 8 | ADC7_VREF_VADC)
+#define PM7325_ADC7_DIE_TEMP			(PM7325_SID << 8 | ADC7_DIE_TEMP)
+
+#define PM7325_ADC7_AMUX_THM1			(PM7325_SID << 8 | ADC7_AMUX_THM1)
+#define PM7325_ADC7_AMUX_THM2			(PM7325_SID << 8 | ADC7_AMUX_THM2)
+#define PM7325_ADC7_AMUX_THM3			(PM7325_SID << 8 | ADC7_AMUX_THM3)
+#define PM7325_ADC7_AMUX_THM4			(PM7325_SID << 8 | ADC7_AMUX_THM4)
+#define PM7325_ADC7_AMUX_THM5			(PM7325_SID << 8 | ADC7_AMUX_THM5)
+#define PM7325_ADC7_GPIO1			(PM7325_SID << 8 | ADC7_GPIO1)
+#define PM7325_ADC7_GPIO2			(PM7325_SID << 8 | ADC7_GPIO2)
+#define PM7325_ADC7_GPIO3			(PM7325_SID << 8 | ADC7_GPIO3)
+#define PM7325_ADC7_GPIO4			(PM7325_SID << 8 | ADC7_GPIO4)
+
+/* 30k pull-up1 */
+#define PM7325_ADC7_AMUX_THM1_30K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM1_30K_PU)
+#define PM7325_ADC7_AMUX_THM2_30K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM2_30K_PU)
+#define PM7325_ADC7_AMUX_THM3_30K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM3_30K_PU)
+#define PM7325_ADC7_AMUX_THM4_30K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM4_30K_PU)
+#define PM7325_ADC7_AMUX_THM5_30K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM5_30K_PU)
+#define PM7325_ADC7_GPIO1_30K_PU		(PM7325_SID << 8 | ADC7_GPIO1_30K_PU)
+#define PM7325_ADC7_GPIO2_30K_PU		(PM7325_SID << 8 | ADC7_GPIO2_30K_PU)
+#define PM7325_ADC7_GPIO3_30K_PU		(PM7325_SID << 8 | ADC7_GPIO3_30K_PU)
+#define PM7325_ADC7_GPIO4_30K_PU		(PM7325_SID << 8 | ADC7_GPIO4_30K_PU)
+
+/* 100k pull-up2 */
+#define PM7325_ADC7_AMUX_THM1_100K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM1_100K_PU)
+#define PM7325_ADC7_AMUX_THM2_100K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM2_100K_PU)
+#define PM7325_ADC7_AMUX_THM3_100K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM3_100K_PU)
+#define PM7325_ADC7_AMUX_THM4_100K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM4_100K_PU)
+#define PM7325_ADC7_AMUX_THM5_100K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM5_100K_PU)
+#define PM7325_ADC7_GPIO1_100K_PU		(PM7325_SID << 8 | ADC7_GPIO1_100K_PU)
+#define PM7325_ADC7_GPIO2_100K_PU		(PM7325_SID << 8 | ADC7_GPIO2_100K_PU)
+#define PM7325_ADC7_GPIO3_100K_PU		(PM7325_SID << 8 | ADC7_GPIO3_100K_PU)
+#define PM7325_ADC7_GPIO4_100K_PU		(PM7325_SID << 8 | ADC7_GPIO4_100K_PU)
+
+/* 400k pull-up3 */
+#define PM7325_ADC7_AMUX_THM1_400K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM1_400K_PU)
+#define PM7325_ADC7_AMUX_THM2_400K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM2_400K_PU)
+#define PM7325_ADC7_AMUX_THM3_400K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM3_400K_PU)
+#define PM7325_ADC7_AMUX_THM4_400K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM4_400K_PU)
+#define PM7325_ADC7_AMUX_THM5_400K_PU		(PM7325_SID << 8 | ADC7_AMUX_THM5_400K_PU)
+#define PM7325_ADC7_GPIO1_400K_PU		(PM7325_SID << 8 | ADC7_GPIO1_400K_PU)
+#define PM7325_ADC7_GPIO2_400K_PU		(PM7325_SID << 8 | ADC7_GPIO2_400K_PU)
+#define PM7325_ADC7_GPIO3_400K_PU		(PM7325_SID << 8 | ADC7_GPIO3_400K_PU)
+#define PM7325_ADC7_GPIO4_400K_PU		(PM7325_SID << 8 | ADC7_GPIO4_400K_PU)
+
+/* 1/3 Divider */
+#define PM7325_ADC7_GPIO4_DIV3			(PM7325_SID << 8 | ADC7_GPIO4_DIV3)
+
+#define PM7325_ADC7_VPH_PWR			(PM7325_SID << 8 | ADC7_VPH_PWR)
+
+#endif /* _DT_BINDINGS_QCOM_SPMI_VADC_PM7325_H */

-- 
2.42.0


