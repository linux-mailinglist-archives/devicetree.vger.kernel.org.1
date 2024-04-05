Return-Path: <devicetree+bounces-56522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DD489982B
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:41:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71270281F31
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184C715FA83;
	Fri,  5 Apr 2024 08:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YvvbWPld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18648CF2
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 08:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712306498; cv=none; b=N8m/K+2NPvEjXoD/MG3GKICmzh8S+0D/lAGduPkxKmgZnBnYccyO0QgkOTU4QnAhd8JasdUKdJ/unpBvxsj1CVCYY1uobwvG7DcxJ+8mHmZQCGwpbjGBs5xmXhPZpHe8LIPjMLCWocB9QfD5GydDH5AKQPLJ5TJu6in3Z8tStnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712306498; c=relaxed/simple;
	bh=fEkXmy/4u1mgrjhH3SwUx8BWtxqc054U+RJQFBi63Y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HMj5SN6NAepoK706UlXD5BbSG3OU71slxRsaZ6MezWGurDBFAqEYh5DMJ2+R8IEtV60lwW1Gf2io02N/vzP+RJbidTZtaQNA59fQ7ExkEns8DezcN5ztGq8sGVWTN5RRAfLYPKZwHMJLRdZKPS8hRwUF2P48Fx/+DfTRvGg81uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YvvbWPld; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516d2600569so1122657e87.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 01:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712306494; x=1712911294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gSABBNNlKEhtSsrOAA7jkzf/IIG0fsXnntsFQ9SmQNk=;
        b=YvvbWPld8/6EBx3lX6105PDBoupyJh+Ov7uQdP+2zMiiU+s+AWW4e/GKuCanr+9fcv
         P+Mbi4vn9SvLZuyezH7eaU2IHWZK0CE7Y80yMIG8bct8T1hdH4Ogi1eWJvElywovp7s3
         KKJpdb5MUroykj7l2b4vaiaGRcaeQy3ezuV68uoewOb2IstzDbct1c/0JkuAhGuLY/d4
         JVWRs5y4AZofsNTOYhVz2FQzSn/5JmflcWgLG+TkASucATj/ashTNadaf8GsG4eBhnZB
         oVmpb9VlAuNcXCXm1mrXtjVD+oN5msSwG5ZWZM53i5HY5D6848ZbRH3rYR9PaMT2cgmL
         phpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712306494; x=1712911294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gSABBNNlKEhtSsrOAA7jkzf/IIG0fsXnntsFQ9SmQNk=;
        b=bPb0e+i4et/3GVCYuuylkiv8pphNmtRLbH6UPflI1neNUIAoBq1JkmrajYr3a9t+eC
         8fe7JiCg4gQVaPJBYK9bvaXv1smOAu2S+LgTN5l7SBAvTpq5uP5ovanw2TpEK+lj6uoo
         dCSWGX5jX8g49qNp0Z8hCmDwuGYBrk8Je55Iv6DWMthmuiRVo9rCuqxfgGXFAcwgc5/n
         F1YlfPLXPfmsQ0dagm/xNG2qlNN/246GbnKq4095xkCLlkwEoEy01kY2a6cHg8p75bQj
         rh+RHibfFv9+2VjfzKo7mXheYODPqInTBeLgfXOBNi8HyynW9dyu/Wu9MkVNjj4B7KU0
         Ri0A==
X-Forwarded-Encrypted: i=1; AJvYcCU549MaTFPs0ZMTlb4beNLTnlO2UmmCiDYJSdH4qwYlKlnL0etUBzpzhg4MDTRHtYD3+NiQpuApSWwIrZ3p9aaKQ6Me5I+pE2S1hw==
X-Gm-Message-State: AOJu0YyY6hPKcqaQluhQxCM6grDUP1jM/B8PssH0zE47CWxfIq5LI1Lz
	xr6/Jb9l5CgfbTAUkX7nOhLI6MKdajIiOhnlXQRFMLRYznqsS+on8V4MjWAY6Nk=
X-Google-Smtp-Source: AGHT+IGElqD09S+bJG4HGQvHSKf6D8Gm7soI+u09xdQyhSPfpytTlYXflLgvpGmtQOzdAf/NVzT1EQ==
X-Received: by 2002:a2e:7d07:0:b0:2d8:3cd3:35d with SMTP id y7-20020a2e7d07000000b002d83cd3035dmr709319ljc.33.1712306494294;
        Fri, 05 Apr 2024 01:41:34 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-101.pol.akademiki.lublin.pl. [87.246.222.101])
        by smtp.gmail.com with ESMTPSA id y3-20020a05651c020300b002d429304a20sm116880ljn.8.2024.04.05.01.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 01:41:33 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 05 Apr 2024 10:41:29 +0200
Subject: [PATCH 1/6] soc: qcom: Move some socinfo defines to the header,
 expand them
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-topic-smem_speedbin-v1-1-ce2b864251b1@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
In-Reply-To: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

In preparation for parsing the chip "feature code" (FC) and "product
code" (PC) (essentially the parameters that let us conclusively
characterize the sillicon we're running on, including various speed
bins), move the socinfo version defines to the public header and
include some more FC/PC defines.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/soc/qcom/socinfo.c       |  8 --------
 include/linux/soc/qcom/socinfo.h | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 277c07a6603d..cf4616a468f2 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -21,14 +21,6 @@
 
 #include <dt-bindings/arm/qcom,ids.h>
 
-/*
- * SoC version type with major number in the upper 16 bits and minor
- * number in the lower 16 bits.
- */
-#define SOCINFO_MAJOR(ver) (((ver) >> 16) & 0xffff)
-#define SOCINFO_MINOR(ver) ((ver) & 0xffff)
-#define SOCINFO_VERSION(maj, min)  ((((maj) & 0xffff) << 16)|((min) & 0xffff))
-
 /* Helper macros to create soc_id table */
 #define qcom_board_id(id) QCOM_ID_ ## id, __stringify(id)
 #define qcom_board_id_named(id, name) QCOM_ID_ ## id, (name)
diff --git a/include/linux/soc/qcom/socinfo.h b/include/linux/soc/qcom/socinfo.h
index e78777bb0f4a..ba7f683bd32c 100644
--- a/include/linux/soc/qcom/socinfo.h
+++ b/include/linux/soc/qcom/socinfo.h
@@ -3,6 +3,8 @@
 #ifndef __QCOM_SOCINFO_H__
 #define __QCOM_SOCINFO_H__
 
+#include <linux/types.h>
+
 /*
  * SMEM item id, used to acquire handles to respective
  * SMEM region.
@@ -12,6 +14,14 @@
 #define SMEM_SOCINFO_BUILD_ID_LENGTH	32
 #define SMEM_SOCINFO_CHIP_ID_LENGTH	32
 
+/*
+ * SoC version type with major number in the upper 16 bits and minor
+ * number in the lower 16 bits.
+ */
+#define SOCINFO_MAJOR(ver) (((ver) >> 16) & 0xffff)
+#define SOCINFO_MINOR(ver) ((ver) & 0xffff)
+#define SOCINFO_VERSION(maj, min)  ((((maj) & 0xffff) << 16)|((min) & 0xffff))
+
 /* Socinfo SMEM item structure */
 struct socinfo {
 	__le32 fmt;
@@ -74,4 +84,30 @@ struct socinfo {
 	__le32 boot_core;
 };
 
+/* Internal feature codes */
+enum feature_code {
+	/* External feature codes */
+	SOCINFO_FC_UNKNOWN = 0x0,
+	SOCINFO_FC_AA,
+	SOCINFO_FC_AB,
+	SOCINFO_FC_AC,
+	SOCINFO_FC_AD,
+	SOCINFO_FC_AE,
+	SOCINFO_FC_AF,
+	SOCINFO_FC_AG,
+	SOCINFO_FC_AH,
+	SOCINFO_FC_EXT_RESERVE,
+};
+
+/* Internal feature codes */
+/* Valid values: 0 <= n <= 0xf */
+#define SOCINFO_FC_Yn(n)		(0xf1 + n)
+#define SOCINFO_FC_INT_RESERVE		SOCINFO_FC_Yn(0x10)
+
+/* Product codes */
+#define SOCINFO_PC_UNKNOWN		0
+/* Valid values: 0 <= n <= 8, the rest is reserved */
+#define SOCINFO_PCn(n)			(n + 1)
+#define SOCINFO_PC_RESERVE		(BIT(31) - 1)
+
 #endif

-- 
2.40.1


