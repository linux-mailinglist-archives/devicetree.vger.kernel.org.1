Return-Path: <devicetree+bounces-13987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 069737E1BF1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37B7F1C209AC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1E61171E;
	Mon,  6 Nov 2023 08:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dG1jywWP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C94F111BB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:26:06 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3114FDB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:26:04 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40806e4106dso24763465e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259162; x=1699863962; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=if6qolERKDRlZ2lHCNBkMf8RqjbTLao5ax63V5uIiNM=;
        b=dG1jywWPCVniejmayc1Me4rAsnwjAkbEBnRoPQXma0G4JSTEVhQeNbdF3KpNGrS2w4
         HZrMqY/nANMzL/425W3P55kMuiYLu//KhTPws9G8sPWf8atLoO4yQ3Z7Lk8Z01FKv9cs
         KdI18sd2yHNPfbToj1PqGmIiU2ev0aKuh/nQ0y4JyiuXkqPEITJaR3B4zEsp2PpGs0uy
         PDdZCAHYvStshVOsxTm8CRz09nnLFTs9TnlNGJmzOUloVNJqJ/G3Cbw6kGzHk4lUq4HM
         ZmUP82kxF0KrsAJIOsQn9mpclokbC/swRl7aGluSl6UOuK7DDLPtDB/j1i0ki/sCDz8R
         EtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259162; x=1699863962;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=if6qolERKDRlZ2lHCNBkMf8RqjbTLao5ax63V5uIiNM=;
        b=GVVtpQetRBwmwJ7RnyIHtjJbxz2LMcP5TnvnMWN3XcXSgQ1FKteS36wXl1VLecv9VM
         N2ynomVM5PmuEFkIGDyrNSZ3Hpx3ywF+jaBDnLeHrq8dcSd99GtCIsJTMpN0nX270+8s
         tvwF+74bdtFUQYTI+ZxABHfmTyyCM9kkDlLMkwlz9aD9u3e/MRR0K8bPP3fKUzWB2uFg
         bTISnCMMgwXPniiSDRpSWbxIpNC5/SbKK1tolDcN/yvWQ5yqt/+wmx9p5C1CdnYzkMtW
         VXFuVrUP9RssbY/ZPnr8K3FDyO6S0NIQGJLHOEzOaPXpOqxgo7kmyrJSQfqGeGaBbefQ
         Bmmw==
X-Gm-Message-State: AOJu0YyB63nvQiQR7om44HMehqae0v+4mTvhhWjeaxrUtpLdxadGFEYz
	u3veBLfCscfx1rkORV+1nkocwg==
X-Google-Smtp-Source: AGHT+IGoewSpgpfYGOuG1F3O39aZrCrUUGfHp9tNc48cB4J0eQ+twis7a5wDYc/4CmrlDbV2wO+uew==
X-Received: by 2002:a05:600c:6018:b0:400:5962:6aa9 with SMTP id az24-20020a05600c601800b0040059626aa9mr11428778wmb.11.1699259162593;
        Mon, 06 Nov 2023 00:26:02 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id az25-20020a05600c601900b004095874f6d3sm11610663wmb.28.2023.11.06.00.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:26:02 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 00/11] clk: qcom: Introduce clocks drivers for SM8650
Date: Mon, 06 Nov 2023 09:25:53 +0100
Message-Id: <20231106-topic-sm8650-upstream-clocks-v3-0-761a6fadb4c0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABGjSGUC/4XNvQ6CMBiF4Vsxnf1M/6VO3odxKKVAI1DSYqMh3
 LuFOOii43uG58wo2uBsRKfdjIJNLjo/5GD7HTKtHhoLrsqNKKaMYCJh8qMzEPtCCgz3MU7B6h5
 M580tAjNY1Vzy8lhxlIkx2No9Nv5yzd26OPnw3N4SWdc3TMVvOBHAYApVCiUUN7o+d27QwR98a
 NAqJ/qhMfxHo1kjnDPGLC6kpl/asiwvMPzBAhcBAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3521;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=n1x1A4l5a3TzTcBOdL2gpqxBXZBR3YZ05pgwIPX8rnw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKMU1yB7vwtW4qGuLEUeXtoPZmqMCf7hy1Q3aT+j
 uFjLwnSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUijFAAKCRB33NvayMhJ0V6/D/
 4k7yaz9OISRJMUqcfQxwVnNNHN+W8/55rjiXQR5lBMw4yP3AdnoVfAbj/Fj+3rV2f8jJjrpsnriQ5g
 p6/Iqt7xZiG8YqfRm4OqxROxKI55bfCepxQBjSKhy1m2iPHX+FXmOUUXxsTCBVuvrkiA16HYTjllCf
 4MG9TS9cv2i8m+yVnc1pryghpALopI+adtmBiZ1z7igc/TiYD0zLJFpwZPBSlSb7Me+v900RlJnz08
 mzeasdU3hFT7vzlLuKihx2fA6iyAPQj0TMsopDnDvsTKAKqEDXuS2PR1Co3BGeY0kqq3iUBZMJcCoO
 AtTYl90Tq+tzrt7gCpGk+TaCOIOdaQJNIzam5lMel/Opk8x6qH0Yy+3HQI5KXuBqypL1M3vrQJ8boZ
 IHem7qwVrjhugH/R6oXP67SSfwPt2bPPpBV2aKP6PXFk04n0DbZj3aDJnffog5/yFqCGVPaCKxmTkO
 TwFej7/k/a9RifYkOMV5eK60H4jj6Scy0H3+9WxtZ+Z4y36XWMgVKjOk0dBu6YtuVftyJsb6Tj1KG9
 Vdf2UWNw0ZBMLRkR8lf2EWGJvGdu0sAtF9BX5HjhejpJ87DexyxeJNTBLPc04u9deAOd3SX7MI0AOr
 RuQ9p2KCCccI1WZbzr3tT7iaXycHuBRRxqEBG+kGCKqRGCeHp9MjmOwGGzqA==
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
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Use sm8550 tcsr bindings instead of a new one
- split GCC driver in 2 to pass the mailinig lists 100k chars limit, no code change
- collected review tags
- Link to v2: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org

Changes in v2:
- Fix Copyright headers
- Fix include in all c files
- Use "select GCC" instead of "depends on GCC"
- GCC:
  - remove UBWCP clocks until we know how to use them
  - switch to clk_rcg2_shared_ops when needed
  - use RETAIN_FF_ENABLE and/or VOTABLE GDSC flasgs when needed
  - add GDSC collapse_ctrl/mask when needed
  - fix "Keep the critical clock always-On" comments
- TCRSCC: use qcom_cc_probe()
- DISPCC: fix runtime_pm_sync on error
- rpmh: expand comment on clk3a
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org

---
Neil Armstrong (11):
      dt-bindings: clock: qcom: document the SM8650 TCSR Clock Controller
      dt-bindings: clock: qcom: document the SM8650 General Clock Controller
      dt-bindings: clock: qcom: document the SM8650 Display Clock Controller
      dt-bindings: clock: qcom: document the SM8650 GPU Clock Controller
      dt-bindings: clock: qcom-rpmhcc: document the SM8650 RPMH Clock Controller
      clk: qcom: add the SM8650 Global Clock Controller driver, part 1
      clk: qcom: add the SM8650 Global Clock Controller driver, part 2
      clk: qcom: add the SM8650 TCSR Clock Controller driver
      clk: qcom: add the SM8650 Display Clock Controller driver
      clk: qcom: add the SM8650 GPU Clock Controller driver
      clk: qcom: rpmh: add clocks for SM8650

 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |    2 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |    8 +-
 .../bindings/clock/qcom,sm8650-dispcc.yaml         |  106 +
 .../devicetree/bindings/clock/qcom,sm8650-gcc.yaml |   65 +
 drivers/clk/qcom/Kconfig                           |   35 +
 drivers/clk/qcom/Makefile                          |    4 +
 drivers/clk/qcom/clk-rpmh.c                        |   34 +
 drivers/clk/qcom/dispcc-sm8650.c                   | 1810 +++++++++
 drivers/clk/qcom/gcc-sm8650.c                      | 3849 ++++++++++++++++++++
 drivers/clk/qcom/gpucc-sm8650.c                    |  661 ++++
 drivers/clk/qcom/tcsrcc-sm8650.c                   |  182 +
 include/dt-bindings/clock/qcom,sm8650-dispcc.h     |  102 +
 include/dt-bindings/clock/qcom,sm8650-gcc.h        |  254 ++
 include/dt-bindings/clock/qcom,sm8650-gpucc.h      |   43 +
 include/dt-bindings/clock/qcom,sm8650-tcsr.h       |   18 +
 include/dt-bindings/reset/qcom,sm8650-gpucc.h      |   20 +
 17 files changed, 7192 insertions(+), 2 deletions(-)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-clocks-3c09f464b7d4

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


