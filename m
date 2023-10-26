Return-Path: <devicetree+bounces-12169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D27D8384
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 598941C208EA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CAD2DF97;
	Thu, 26 Oct 2023 13:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="z5HDzmjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02692D787
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:27:29 +0000 (UTC)
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [213.239.216.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 05DE3AB;
	Thu, 26 Oct 2023 06:27:27 -0700 (PDT)
From: Stefan Hansson <newbyte@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698326847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=s8F4XHnf3tGxinF8AVFI1KGKOgFvNYjjrwZV1fgHERE=;
	b=z5HDzmjQ1aqCEbNnhVBUGdvjNSpt0gSQHxF+k6HC2zbjW8e2kWD5qVaa1QZDZzckYlm0/h
	bxbGkaEpLq6Br1xbSuogLoeIPXV7KuISIfzQ4sAFVTgnyWU0ITh76rNciqct2wM5cjVk53
	HEdIkcMHd8uKPj5895NyI3fvU/LN9FA=
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Stefan Hansson <newbyte@postmarketos.org>
Subject: [PATCH v4 0/4] Add samsung-matisselte and common matisse dtsi
Date: Thu, 26 Oct 2023 15:24:05 +0200
Message-ID: <20231026132521.38575-1-newbyte@postmarketos.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds a common samsung-matisse dtsi and reworks
samsung-matisse-wifi to use it, and introduces samsung-matisselte. I
choose matisselte over matisse-lte as this is how most other devices
(klte, s3ve3g) do it and it is the codename that Samsung gave the
device. See individual commits for more information.

---
Changes since v1:

 - Rebased on latest linux-next
 - Added qcom,msm8226 compatible to matisselte inspired by recent Lumia
   830 patch. This is done as in v1, the patch was rejected because I
   included the msm8226 dtsi despite not marking matisselte as
   compatible with msm8226, and I was not sure how to resolve that. As
   such, I'm copying what was done in the Lumia 830 (microsoft-tesla)
   patch given that it was accepted.

Changes since v2:

 - Updated commit message for UART patch to explain why it was added.
 - Gave more flags to git to provide a hopefully more readable patch.

Changes since v3:

 - Collect tags.
 - Remove spurious copyright notice.
 - Miscellaneous fixes following review feedback.

Stefan Hansson (4):
  ARM: dts: qcom: samsung-matisse-common: Add initial common device tree
  dt-bindings: arm: qcom: Add Samsung Galaxy Tab 4 10.1 LTE
  ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 10.1 LTE
    (SM-T535)
  ARM: dts: qcom: samsung-matisse-common: Add UART

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm/boot/dts/qcom/Makefile               |   1 +
 .../qcom-apq8026-samsung-matisse-wifi.dts     | 603 +++---------------
 ... qcom-msm8226-samsung-matisse-common.dtsi} |  68 +-
 .../qcom/qcom-msm8926-samsung-matisselte.dts  |  42 ++
 5 files changed, 131 insertions(+), 584 deletions(-)
 rewrite arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts (85%)
 copy arch/arm/boot/dts/qcom/{qcom-apq8026-samsung-matisse-wifi.dts => qcom-msm8226-samsung-matisse-common.dtsi} (86%)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts

-- 
2.41.0


