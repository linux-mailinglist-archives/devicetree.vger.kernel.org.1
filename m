Return-Path: <devicetree+bounces-4911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19D7B4474
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 00:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 73B45B20A09
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 22:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0E3199A9;
	Sat, 30 Sep 2023 22:19:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBBF199A6
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 22:19:35 +0000 (UTC)
Received: from out-195.mta0.migadu.com (out-195.mta0.migadu.com [IPv6:2001:41d0:1004:224b::c3])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03243100
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:19:31 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ansari.sh; s=key1;
	t=1696112012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IQtLpN/lGvFKa62keccBQlCiMRFzl9uuLDsEFrnDd3s=;
	b=R/rzKaAGKHI13R/ACYAWNSpDaCIxlVN3yCK/AWg7Y3mhDof1UybCwE/7sFWBx3TYKFjHqh
	w05svhyspJx5LKV7dnrFtA4Ey+0WNKOFf6KPmyEiUekmHQwHCCoWwKt9O/Z1jrLx8L7zXz
	H5AUzwk5ZNT+CL7H8hbGWu4CeqL93lI=
From: Rayyan Ansari <rayyan@ansari.sh>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	Rayyan Ansari <rayyan@ansari.sh>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/6] Initial support for MSM8x26 Lumias
Date: Sat, 30 Sep 2023 23:07:55 +0100
Message-ID: <20230930221323.101289-1-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

The following patches: 
- Add device tree files for Nokia/Microsoft Lumia phones based around
  the MSM8x26 family of Qualcomm chipsets, utilising a common tree 
- Document this support

v1: https://lore.kernel.org/linux-arm-msm/20230811213728.23726-1-rayyan@ansari.sh/
v2: https://lore.kernel.org/linux-arm-msm/20230813152623.64989-1-rayyan@ansari.sh/

Changes in v2:
- Fix style issues and CHECK_DTBS warnings
- Squash common dt commit with a device commit
- Use both msm8926 and msm8226 compatibles for msm8926 devices

Changes in v3:
- Fix commit tags
- More style fixes
- Delete by label instead of path

Rayyan Ansari (6):
  dt-bindings: arm: qcom: Document MSM8x26-based Lumia phones
  ARM: dts: qcom: add common dt for MSM8x26 Lumias along with Nokia
    Lumia 630
  ARM: dts: qcom: add device tree for Microsoft Lumia 640
  ARM: dts: qcom: add device tree for Microsoft Lumia 640 XL
  ARM: dts: qcom: add device tree for Nokia Lumia 735
  ARM: dts: qcom: add device tree for Nokia Lumia 830

 .../devicetree/bindings/arm/qcom.yaml         |  10 +
 arch/arm/boot/dts/qcom/Makefile               |   5 +
 .../qcom/qcom-msm8226-microsoft-common.dtsi   | 327 ++++++++++++++++++
 .../qcom/qcom-msm8226-microsoft-dempsey.dts   |  17 +
 .../qcom/qcom-msm8226-microsoft-makepeace.dts |  17 +
 .../qcom-msm8226-microsoft-moneypenny.dts     |  23 ++
 .../qcom-msm8926-microsoft-superman-lte.dts   |  53 +++
 .../dts/qcom/qcom-msm8926-microsoft-tesla.dts |  67 ++++
 8 files changed, 519 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-common.dtsi
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-dempsey.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-makepeace.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-moneypenny.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-tesla.dts

-- 
2.42.0


