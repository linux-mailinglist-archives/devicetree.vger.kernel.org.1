Return-Path: <devicetree+bounces-18917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 650BB7F90F3
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 03:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96D201C20A40
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 02:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF10D1392;
	Sun, 26 Nov 2023 02:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UyPRp5Rd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A18FE;
	Sat, 25 Nov 2023 18:29:00 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6cb66fbc63dso2139339b3a.0;
        Sat, 25 Nov 2023 18:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700965740; x=1701570540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hG3ipdLv3/wO1bTYNyUfdq//qPItjs43V53NHywBAQ8=;
        b=UyPRp5Rdp75ikpmdRdG1CawhfArNkj3B/ETWBSNXR3fEgTad9d1XPDcqs/ZrEiWbmN
         Sz9kKlqRV79u/GDi1bJaTP/KvGoIybbb4a4om4f5q4/5XfhebXcLa+vhWvFw7bxamZI8
         oh7Tj0lEwCN5MqKvYYZtBS1uRIlJPDysDmDrkTX2j4k4ET4ugvKwXcj2CWRp+pIWI3WC
         YV2KmQPXiWUmyqAD77oEMzQOG6KYa4xse+c6uUV2iKQBGG69sulPjXdFpossTxpF1Wvz
         SkVmcUiw7Wm3lYMv6EtjedpVoJhdUxS2D71jO77vYZlz39kMS141mbbBOq/oncnOtEcI
         3NHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700965740; x=1701570540;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hG3ipdLv3/wO1bTYNyUfdq//qPItjs43V53NHywBAQ8=;
        b=J2fbWIZEyixmkqM8vUi7wLZQmHNJulTuRAcTz7gF2KADzkvjxGjDIPshvzjPEFl3Vl
         8O9NVA/YYeLqBgXNTjFMuarNcJqO+KHrlIa3qA0EfA4ZciWfcrfopqsXjuKLKFoB05/E
         T0Pr+xxXSaQeMFQT8Y6SkcMq2fZriDc2zAn2StE6WzdjAgB6au7HwILoCtah1MC1wUvB
         WuxHL7nf7aRvjvnURQALWFRo92inTlJVdrI60rDBDescbKQtf/UQs2BgW1hGtSgicSk2
         4moaWzelF3yeUW5vAt2OcIpV9bHT+neZ/d9l1Au8t+8E7iBIeNJIeYogiO/q7lOR497o
         D/SA==
X-Gm-Message-State: AOJu0YxArkVcX8w+dLXoamEVvAETM96ugxfVXLG2hstcIAMgzCGRpCNc
	nUG1wUIiEwiwW0cHTLvCjIM=
X-Google-Smtp-Source: AGHT+IH2DY6zKNFVPQuWjOOZ1g52/xBEPT/okDXOij5i1dggz1QYAjb9c1rJKtoP32Yj3jzLO1IqIQ==
X-Received: by 2002:a05:6a00:14c8:b0:68f:c078:b0c9 with SMTP id w8-20020a056a0014c800b0068fc078b0c9mr10404207pfu.11.1700965739582;
        Sat, 25 Nov 2023 18:28:59 -0800 (PST)
Received: from localhost.localdomain ([192.166.114.90])
        by smtp.gmail.com with ESMTPSA id x18-20020aa793b2000000b00688435a9915sm4961821pff.189.2023.11.25.18.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 18:28:58 -0800 (PST)
From: Jianhua Lu <lujianhua000@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Jianhua Lu <lujianhua000@gmail.com>
Subject: [PATCH v3 1/2] arm64: dts: qcom: sm8250-xiaomi-elish: Fix typos
Date: Sun, 26 Nov 2023 10:28:48 +0800
Message-ID: <20231126022849.14273-1-lujianhua000@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two typos in this dtsi, so fix it.
  classis -> chassis.
  80700000 -> 80600000

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
---
No Changes in v3.

No Changes in v2.

 arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
index 85e5cf3dc91e..3d4ea428e4cb 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
@@ -23,7 +23,7 @@
 /delete-node/ &xbl_aop_mem;
 
 / {
-	classis-type = "tablet";
+	chassis-type = "tablet";
 
 	/* required for bootloader to select correct board */
 	qcom,msm-id = <QCOM_ID_SM8250 0x20001>; /* SM8250 v2.1 */
@@ -114,7 +114,7 @@ vreg_s6c_0p88: smpc6-regulator {
 	};
 
 	reserved-memory {
-		xbl_aop_mem: xbl-aop@80700000 {
+		xbl_aop_mem: xbl-aop@80600000 {
 			reg = <0x0 0x80600000 0x0 0x260000>;
 			no-map;
 		};
-- 
2.41.0


