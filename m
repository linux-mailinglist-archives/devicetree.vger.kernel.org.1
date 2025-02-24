Return-Path: <devicetree+bounces-150329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 732CCA41BFE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 12:03:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21F5E7A535B
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CA525A33E;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NodWtQq5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736D425A2B5;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740394938; cv=none; b=AZl2L/eP3y/EoAsbgiju0oKZ+pmAOH8gHkPS46ibp5TVnGadZM0Td4sMGZuN+1TfZGU0NKtjF5d52q6b8o8fBDpL2vQcxBpu7lZjBgN8GTIa85dEjz3Dz5mc22bVzEYMalRwTBnty6nuZyo3GxmBBI+gNgMdowxsFCd4Vzdh7Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740394938; c=relaxed/simple;
	bh=8/hEhJaZgI5e+pZI8c7c4hVWCzOme2qSalVM52Cxp5s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hWRvQHpSLOVOrj1KeK6Fswg6QNPB9YV7nowsjsUgQQ5gLLEyLqUCeZqFKdN9t4bDRxbi2v/4liCipdS1nC8zPk/+45YvXFIqYF7HsY0lQaf+grw0PeMi3yFp1FFHlp/9sIZBtCXHk+0ZV9Abmtc3SLsOvY5KRTNVW1VRrGF7zhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NodWtQq5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E277C4CEE9;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740394938;
	bh=8/hEhJaZgI5e+pZI8c7c4hVWCzOme2qSalVM52Cxp5s=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=NodWtQq5w50QjanpsoNUbmq2Y/vHa9n4mMiylQkYuZmTmtw1ZrYqwkVqJgGvG3qzY
	 6R2hajLu2iby0tCI5IPaH4kNz19/ZGU2CydDRyu395ccQcPR5ibock8KH6go44560/
	 THJEWp8X8iN+tiQRtP4htxT6FGBK9Kh7KVlcpQn/mWwrRYHcttcUWm3hUYkb4bTsVA
	 umK8yE5x3UvuxirYUTrAm21Gkd+15ImlMcc5lT6JWDYf37wD3Hln2weQlxiJFiu/bg
	 sjYz9p01cR/4bvoqObPdOvpbsLdmpYn0wBPiFNdHzRVY+6j7vLTLjgGyauxpOl2itA
	 NHVC419TQRdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32971C021B5;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Subject: [PATCH v8 0/5] Driver for pre-DCP apple display controller.
Date: Mon, 24 Feb 2025 12:02:15 +0100
Message-Id: <20250224-adpdrm-v8-0-cccf96710f0f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALdRvGcC/2XPy2rDMBAF0F8JWtdFj9Erq/5H6UKPUSKo4yAX0
 xL875UDtYW6vMOcy8yDzFgyzuR8epCCS57zdKvBvJxIuLrbBYccayaccmCMw+DiPZZx4DIFFDE
 apxmpy/eCKX8/i94/ar7m+WsqP8/ehW3TfxULG+ggmGXRoEKw7u0yuvz5GqaRbBULb5naGa8sW
 ApGCqECtT0Tf0zS6nYmNqY0xMBscjr1DFp2HAmVofWSK+qETaxn8mCcyp3JygABg9XW+8R7plp
 2/Ka2I43zVoDx9cGe6YYxvTO9MccRwIugo2nZuq6/6novrOYBAAA=
X-Change-ID: 20241124-adpdrm-25fce3dd8a71
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
 Janne Grunau <j@jannau.net>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neal Gompa <neal@gompa.dev>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740394936; l=3003;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=8/hEhJaZgI5e+pZI8c7c4hVWCzOme2qSalVM52Cxp5s=;
 b=K/tTXT5sO8YIgAdYKQeBn9XpA5JTVbm86hgJ0mm1PtoAjIE6FjBzaPsMp+smYVMb2tvSSvQx2
 Od9Gj2M27UrAGu7AamUAVjsw0OYjTs9k7UmRiLoaXpJGySw552P7jtV
X-Developer-Key: i=fnkl.kernel@gmail.com; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Endpoint-Received: by B4 Relay for fnkl.kernel@gmail.com/20241124 with
 auth_id=283
X-Original-From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Reply-To: fnkl.kernel@gmail.com

Hi.

This patch series adds support for a secondary display controller
present on Apple M1/M2 chips and used to drive the display of the
"touchbar" touch panel present on those. 

Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
---
Changes in v8:
- Improved comment readability.
- Link to v7: https://lore.kernel.org/r/20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com

Changes in v7:
- No changes aside from adding r-b trailers, effectively a resend.
- Link to v6: https://lore.kernel.org/r/20250206-adpdrm-v6-0-c8ab9348b853@gmail.com

Changes in v6:
- Use the drm_connector_helper_get_modes_fixed helper.
- Split out into a separate MAINTAINERS entry
- Link to v5: https://lore.kernel.org/r/20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com

Changes in v5:
- Moved to using the component framework.
- Other lifetime fixes
- Link to v4: https://lore.kernel.org/r/20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com

Changes in v4:
- Fixed dt bindings.
- Link to v3: https://lore.kernel.org/r/20250112-adpdrm-v3-0-c674dc19fa7f@gmail.com

Changes in v3:
- Fixed building as module after splitting out mipi block
- Addressing the review feedback.
- Link to v2: https://lore.kernel.org/r/20241126-adpdrm-v2-0-c90485336c09@gmail.com

Changes in v2:
- Addressing the review feedback.
- Split out the mipi part of the display controller into a separate device
- Link to v1: https://lore.kernel.org/r/20241124-adpdrm-v1-0-3191d8e6e49a@gmail.com

---
Sasha Finkelstein (5):
      dt-bindings: display: Add Apple pre-DCP display controller
      drm: adp: Add Apple Display Pipe driver
      drm: panel: Add a panel driver for the Summit display
      arm64: dts: apple: Add touchbar screen nodes
      MAINTAINERS: Add entries for touchbar display driver

 .../display/apple,h7-display-pipe-mipi.yaml        |  83 +++
 .../bindings/display/apple,h7-display-pipe.yaml    |  88 +++
 .../bindings/display/panel/apple,summit.yaml       |  58 ++
 MAINTAINERS                                        |  16 +
 arch/arm64/boot/dts/apple/t8103-j293.dts           |  31 ++
 arch/arm64/boot/dts/apple/t8103.dtsi               |  61 ++
 arch/arm64/boot/dts/apple/t8112-j493.dts           |  31 ++
 arch/arm64/boot/dts/apple/t8112.dtsi               |  61 ++
 drivers/gpu/drm/Kconfig                            |   2 +
 drivers/gpu/drm/Makefile                           |   1 +
 drivers/gpu/drm/adp/Kconfig                        |  17 +
 drivers/gpu/drm/adp/Makefile                       |   5 +
 drivers/gpu/drm/adp/adp-mipi.c                     | 276 +++++++++
 drivers/gpu/drm/adp/adp_drv.c                      | 617 +++++++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-summit.c               | 132 +++++
 17 files changed, 1489 insertions(+)
---
base-commit: b62cef9a5c673f1b8083159f5dc03c1c5daced2f
change-id: 20241124-adpdrm-25fce3dd8a71



