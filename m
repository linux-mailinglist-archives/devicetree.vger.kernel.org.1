Return-Path: <devicetree+bounces-7003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 720807BE7E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A35261C20A0B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD1438BBD;
	Mon,  9 Oct 2023 17:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DzoTc7vz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AA41B264
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:27:25 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E07AB6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 10:27:20 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bffc55af02so56515271fa.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 10:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696872438; x=1697477238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2R4uCJ2+xyEcOVd7ZxW7I1CgwZZS79nX08oyF1QpfWo=;
        b=DzoTc7vzfbSV47KR128hqGljm8DC6Q2ir1oaxEHmRwbzuZR5gF87KSkuXNhWrpacxS
         Xkq1AFksl68+qI76DjZQ/bS5Skx74Swy6eJgLniqmHY79XMSzW/EEzaHte7YEViuOQWG
         bVyj4O5g9VQAhMwtWDsyKCwfN7TrgAewRaNyaaNr4kxTH8i9Ee946gRvhpbgiVQYHauY
         FHX2vPY+Fe4cGWodsEKp2KIXtsz8rq9WU3KILh2Kyz57ioIoplYaPiKLZvUPM49njUDh
         N2iz6vxJqc570FJywePIbMsisteS74AzsXMY4UJ2yc3siO8YWVgsmlLN6m/dojMgra6W
         BEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696872438; x=1697477238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2R4uCJ2+xyEcOVd7ZxW7I1CgwZZS79nX08oyF1QpfWo=;
        b=fspjHXseE6Pymz4WqFJ7cz0yH6/+88KhZyNNaB3P2d2ROAR0xdXaEIR2rP9tUOv9yD
         1bW3JyWD03h4f910kik0yhYsWm2M3lHeV46gcVp7G6TcqZHcfgmH4DEDgtAEAmBemD2S
         rhTseH3TZnE4U93ElZlWoio7P1NBWz2XiSw97b8iHxP+pSEu3t5DZdJgC7zeVbZbRxPU
         2/wk7z++WGW+dDUxjSb1xgLPYe5Ka72h3n7859DTWt/Rhnt54xkyXLrrYUAGOp8o0LLT
         ilzxx9mOYaeI/OyEQLnQQFRZn8VImvDQPmx/vwfoGoYTJ+pjpWs4fP1homu7YHfP38Y0
         8hjQ==
X-Gm-Message-State: AOJu0Yxan9Cch6GrXdSPjikWZ4NfqIXofIr9WxpKSoQF+dAwJD3M0YRI
	OgZ4pCsRhGsu0ZPTKstBdpHHaA==
X-Google-Smtp-Source: AGHT+IGxLCmHkuJUyDgOrSBrDUgDs0Vsq8PsfLRrNaRCnVKgY9jQ5J2OIFLW6zMIrKV6j2IxPYFT9A==
X-Received: by 2002:a2e:9650:0:b0:2c2:774b:3cd2 with SMTP id z16-20020a2e9650000000b002c2774b3cd2mr13953336ljh.21.1696872438564;
        Mon, 09 Oct 2023 10:27:18 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v10-20020a2e7a0a000000b002c27cd20711sm2105118ljc.3.2023.10.09.10.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 10:27:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: pad generated DTB files
Date: Mon,  9 Oct 2023 20:27:17 +0300
Message-Id: <20231009172717.2695854-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Qualcomm platforms the bootloader populates device tree with some
extra nodes / properties (like memory size, boot time, etc). Usually
default padding is enough for the bootloader. But in some cases the
board will fail to boot if there is not enough padding space.

Add `--pad 4096' to DTC_FLAGS so that all Qualcomm DTB files get this
extra padding space.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This is primarily necessary for SA8155P, but I have the feeling that it
might be better to be enabled on the global scale.

---
 arch/arm64/boot/dts/qcom/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index d6cb840b7050..8e9fa2539265 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -1,4 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# pad DT allowing bootloader to populate several extra nodes
+DTC_FLAGS += --pad 4096
+
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
 
 apq8016-sbc-usb-host-dtbs	:= apq8016-sbc.dtb apq8016-sbc-usb-host.dtbo
-- 
2.39.2


