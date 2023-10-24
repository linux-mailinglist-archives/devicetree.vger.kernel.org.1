Return-Path: <devicetree+bounces-11440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FF47D5CA9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E89EC1F22286
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487D33B292;
	Tue, 24 Oct 2023 20:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="WCoRWT4B"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B440F241E1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:55:22 +0000 (UTC)
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [213.239.216.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D389210D7;
	Tue, 24 Oct 2023 13:55:20 -0700 (PDT)
From: Stefan Hansson <newbyte@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698180445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2OdQ5GqSAWQJfabwf32ex2Xwnux86T/w4ZDjxUpnHNM=;
	b=WCoRWT4BmQ5zuWe7d8yPsitO6p2sIjAykwvCLhbv1KmyaBEHwBDrlgvHxG67cjkoPHUljW
	D92qde9hN/oIv7g20w/jrUwnPYTCpqD4T6fe1GO7ajCkxsiCFmaGzGXgSKMHEj7Hn1Wj47
	dQWnVz7RmeaK3tGoA93daZ+E5r4tgKA=
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
Subject: [PATCH v2 0/4] Add samsung-matisselte and common matisse dtsi
Date: Tue, 24 Oct 2023 22:33:41 +0200
Message-ID: <20231024204505.125813-1-newbyte@postmarketos.org>
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

Stefan Hansson (4):
  ARM: dts: qcom: samsung-matisse-common: Add initial common device tree
  dt-bindings: arm: qcom: Add Samsung Galaxy Tab 4 10.1 LTE
  ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 10.1 LTE
    (SM-T535)
  ARM: dts: qcom: samsung-matisse-common: Add UART

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm/boot/dts/qcom/Makefile               |   1 +
 .../qcom-apq8026-samsung-matisse-wifi.dts     | 467 +----------------
 .../qcom-msm8226-samsung-matisse-common.dtsi  | 478 ++++++++++++++++++
 .../qcom/qcom-msm8926-samsung-matisselte.dts  |  36 ++
 5 files changed, 525 insertions(+), 458 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts

-- 
2.41.0


