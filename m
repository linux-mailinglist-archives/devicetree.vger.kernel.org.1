Return-Path: <devicetree+bounces-11784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 344677D694F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:45:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 310FC1C20E2F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0AE26E17;
	Wed, 25 Oct 2023 10:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nch1dGK9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6005715491
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:45:06 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF9391AA;
	Wed, 25 Oct 2023 03:45:02 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-53dd752685fso8623648a12.3;
        Wed, 25 Oct 2023 03:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698230701; x=1698835501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RnaK963hxwfVk8XsSeVFAewz/NSZrvVWgi/zhvvqbIQ=;
        b=Nch1dGK9EfE4SeAm74i8E52R+H1FsxeyUpp8G53yZ3fhld5EUD+dCTKQ+TuvarYNnk
         gXGyzlCw9kArYEePJWu7Q8fx0suYWC/9647261e8O5KUX8YuiZ0Cf+xe6/UyKh7aq4HU
         h8UeUnGBAz2flVSXd61D0yNk36GdHbf1uP7bsMmfrKasCe4+wmmCS0QBjg+jrzWd8XCx
         JhMwuZs1G/KN/Yz2i2bAIprIusCTKAUCrkHqauIsI6LuIB8cQtUG37uFKAC9PBi0UTMS
         O7/yLwFLR4scYvoae/3e4xJ8AGpnEVUvsWJLHsrAolUC4e++PLudqGpX3lYi2Ri0EDsj
         XN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698230701; x=1698835501;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnaK963hxwfVk8XsSeVFAewz/NSZrvVWgi/zhvvqbIQ=;
        b=D2j5W8kt/k24Z6FEc58bszYdcTVrWLGYdK8rIrXVUo4Uh9wjYmJ3TeBVxZucax+O8L
         DDY//cGsbJFprBMayFvZ30wMLdCE1CWZXoPEVaXsOxcFnvwiw/OmlyzWawq1ud9cAtCd
         ndZswE6tVO2gPXv3YzBs3bXu2GedID8ggv7sISF7d5qz/22ognihB0JOxLwvkgecDZ59
         5U8iwmOQtBXe2egbC925ysYb377R4iZaynulTUAf6hctCsX05/yhzEHwJVo1TllMZiFX
         k42f/EXRVDbioEWg/yModJeH4zAeFiLTgjzDlcxz96gChPlyqFsPgcjqK8z3OcGr8C5q
         ZCNA==
X-Gm-Message-State: AOJu0YxKChJc2rPfOqhx2r/1/rgCYReblRLwOB/hLsWRIqj94PrxUMNR
	53m6JAdApdcoFyYhKPRLC6c=
X-Google-Smtp-Source: AGHT+IGyY4iJniafG0vc/MzEsuH4vG/1+/GyQqBv+8LcWCzDCaT6FSGUJbeiCsvF3bbJ5WfbOTOFwA==
X-Received: by 2002:a17:907:6d14:b0:9be:2963:5669 with SMTP id sa20-20020a1709076d1400b009be29635669mr10663773ejc.68.1698230700509;
        Wed, 25 Oct 2023 03:45:00 -0700 (PDT)
Received: from fedora.. (dh207-97-46.xnet.hr. [88.207.97.46])
        by smtp.googlemail.com with ESMTPSA id t11-20020a1709066bcb00b009be14e5cd54sm9626292ejs.57.2023.10.25.03.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 03:44:59 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH 1/3] dt-bindings: clock: qcom: ipq6018: add USB GDSCs
Date: Wed, 25 Oct 2023 12:44:09 +0200
Message-ID: <20231025104457.628109-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the USB GDSCs found in IPQ6018 GCC.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 include/dt-bindings/clock/qcom,gcc-ipq6018.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-ipq6018.h b/include/dt-bindings/clock/qcom,gcc-ipq6018.h
index 6f4be3aa0acfc..bcd3823b74344 100644
--- a/include/dt-bindings/clock/qcom,gcc-ipq6018.h
+++ b/include/dt-bindings/clock/qcom,gcc-ipq6018.h
@@ -259,4 +259,7 @@
 #define QDSS_STM_CLK_SRC			250
 #define QDSS_TRACECLKIN_CLK_SRC			251
 #define GCC_NSSNOC_ATB_CLK			252
+
+#define USB0_GDSC				0
+#define USB1_GDSC				1
 #endif
-- 
2.41.0


