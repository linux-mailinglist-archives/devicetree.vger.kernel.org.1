Return-Path: <devicetree+bounces-11570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1392A7D62ED
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3086281C50
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80B71182BD;
	Wed, 25 Oct 2023 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GTL2SUzw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD6C18053
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:32:51 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B5B41BC7
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-313e742a787so294327f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219167; x=1698823967; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xq0cbI7ATIX2dCfVH1JmvlcYZDaKB44YRWErgjgISlc=;
        b=GTL2SUzwWY9+1BJa7I/mhby+w8Vz/veg08QNVmMSveGJJ83oNnkvBYRTKdJcyG8XUJ
         fOne39OLwJwILJ5OhusB5Z0IuHGz1KKtfOtiB972THgw0k7+oaccEN//l6Q/F+1DTqS1
         MVspuX1uUiEzQGrdyZbEwBAIraKZAtmotZpD0ZJ5SAuJkvcGPSnQsBjsGbsCIMiSIUM0
         gcRKJVOhtHKMuGxUdOReDpOd/OsJjBRuVxb9OCRpwPQNpLO9BnK5cIo1Gt0w50/wKiy2
         n192von+6wDZA8QZgMETafhVi9x1ACcL2jN4gzXQVEsREURgubxcnGFRf9QWSr+jTYNU
         ie0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219167; x=1698823967;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xq0cbI7ATIX2dCfVH1JmvlcYZDaKB44YRWErgjgISlc=;
        b=Q1X1zYsfHi44RoFnR+vneukx3tsdkVpM2k3HFLpwdXFHsLxQVFHxdkygAhQ+tJi8Zk
         EA1BgLvqU+0NbHAyBHwnMXs8qb+K08SF3DfbRIsfpakfMcW87ObMZLC8rVM0xuPGw9Da
         bMozEvNMoiFYBUB43eah61jOvX3h9TJN65wmm6HsChmWmYh2yfvm2s7XXC3p1O/c03RO
         z6ERGjKs5AbASEIMMrX7Gf2H0DQEUkB0YAwgYBhbJWPlBqAHqEqr9gfWdTZepOIxdZkn
         aWmUqXcDr+RarLU0kS/ljTLQjIFbs+8Dr2i36xx2CTiqjXflDK+BnDNcochJsxt+Fk0U
         6kZQ==
X-Gm-Message-State: AOJu0Yw/Qmq22jwWVRY2S+L2iowanhsZOgwhKk6ubHd0jlzmdJdGO+Xf
	q9U7s3E4F+J+nRosjZGkZjbxOw==
X-Google-Smtp-Source: AGHT+IEi6To7pOCtAJ8dkEof1rxKHQNZGTwOGSXRhefp44y3nyeEchnv1hoSnoqnduU1f1PjVtXvcA==
X-Received: by 2002:a5d:46c9:0:b0:32d:de87:1085 with SMTP id g9-20020a5d46c9000000b0032dde871085mr16172082wrs.10.1698219166620;
        Wed, 25 Oct 2023 00:32:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c15d200b004063d8b43e7sm18422239wmf.48.2023.10.25.00.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 00/10] clk: qcom: Introduce clocks drivers for SM8650
Date: Wed, 25 Oct 2023 09:32:37 +0200
Message-Id: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJXEOGUC/x3MwQqDMAwA0F+RnA202nWbvyIeNMYtbNrSqAjiv
 6/s+C7vBOUkrNAUJyTeRSUsGbYsgN798mKUMRsqU9XWWI9riEKo88PfDG5R18T9jPQN9FGsyTw
 n591wHx3kIiae5Pj3bXddPzlO1o9uAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2528;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bP16mZ4/DuDRAzR3CIC1ABEU1UBCMAoiO2clbM/lJeg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMSYh/zAXdQqUhu/yl8Yk6Qi0ckNxzSLU6MF9v1n
 tKQrIbqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEmAAKCRB33NvayMhJ0SCxD/
 9hpldl/uLaOjQQzplSi8bHtiz4nsUxnoyazeyf4a/SZT+Fqp5E4zzkyCBFYjp7g+pKX1KAK22aabXi
 QJ1DZaPltQ3eOzstw8a6F0NpVG2X1qPTdsZ1h84bBq51p13hQ3hNo1gDotF7DLq1w446IxM9tM7R7Z
 1rFYY/dsM8///Nx0Vb7saacVKOyORsCXI0a9dBFDeAbhnYvOer5wht2N/3VkW4DMeot3lS04kE4SR+
 JKxt0HaGO1oOgl1qhJPvDQhatXW5nJSl0xMvnwNL1RkU+hmK1fpR3FYA870u36VTKUTT6OMIk3RsxI
 X/tDKPR9cJCNjK95lxvarnOLudrRD+T/0XYAmbE22nQQJ0oFzpYS2LJwy22JKpYKPrHBkbs0Ii1anl
 s4zIsLETffIiTzD+sXMM1bw920bZAH8tOT80ul/RVTY0ImipYZ4vg8yDlDQUjn+CmCUXEdQnkpNhK1
 96vTyOVFVtVFT5UE9Uo9Md071g8ktkQEAgySbDPzfKQ58Th2XNcJj5RJk2RxOxagcz23fACB8KQ9/j
 y+ZFlum9t8oVSy85XmIf3ztoov8ge5Jzk6iOgHMTdMMm4ycz/wP1YoWTlnqiPVJQFHW4/yv9BqqLXT
 uQ287LU20rCNIrJ7rXIJA0B7jhntvrTeBa7qbikKREy8/eWWuDVnXv7iQ92A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This patchset introduces the following SM8650 Clock drivers:
- GCC: Global Clock Controller
- DISPCC: Display Clock Controller
- TCSR Clock Controller
- GPUCC: GPU Clock Controller driver
- rpmh clocks

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (10):
      dt-bindings: clock: qcom: document the SM8650 TCSR Clock Controller
      dt-bindings: clock: qcom: document the SM8650 General Clock Controller
      dt-bindings: clock: qcom: document the SM8650 Display Clock Controller
      dt-bindings: clock: qcom: document the SM8650 GPU Clock Controller
      dt-bindings: clock: qcom-rpmhcc: document the SM8650 RPMH Clock Controller
      clk: qcom: add the SM8650 Global Clock Controller driver
      clk: qcom: add the SM8650 TCSR Clock Controller driver
      clk: qcom: add the SM8650 Display Clock Controller driver
      clk: qcom: add the SM8650 GPU Clock Controller driver
      clk: qcom: rpmh: add clocks for SM8650

 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |    2 +
 .../bindings/clock/qcom,sm8650-dispcc.yaml         |  106 +
 .../devicetree/bindings/clock/qcom,sm8650-gcc.yaml |   65 +
 .../bindings/clock/qcom,sm8650-tcsr.yaml           |   55 +
 drivers/clk/qcom/Kconfig                           |   32 +
 drivers/clk/qcom/Makefile                          |    4 +
 drivers/clk/qcom/clk-rpmh.c                        |   29 +
 drivers/clk/qcom/dispcc-sm8650.c                   | 1806 +++++++++
 drivers/clk/qcom/gcc-sm8650.c                      | 3931 ++++++++++++++++++++
 drivers/clk/qcom/gpucc-sm8650.c                    |  660 ++++
 drivers/clk/qcom/tcsrcc-sm8650.c                   |  192 +
 include/dt-bindings/clock/qcom,sm8650-dispcc.h     |  101 +
 include/dt-bindings/clock/qcom,sm8650-gcc.h        |  257 ++
 include/dt-bindings/clock/qcom,sm8650-gpucc.h      |   43 +
 include/dt-bindings/clock/qcom,sm8650-tcsr.h       |   18 +
 include/dt-bindings/reset/qcom,sm8650-gpucc.h      |   20 +
 17 files changed, 7322 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-clocks-3c09f464b7d4

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


