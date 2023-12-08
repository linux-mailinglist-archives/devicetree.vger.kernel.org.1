Return-Path: <devicetree+bounces-22984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBD0809CF7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 058F71C209BB
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B165F9D9;
	Fri,  8 Dec 2023 07:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTe+JZ0z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F424DF65
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:16:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E433BC433C8;
	Fri,  8 Dec 2023 07:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702019790;
	bh=x1LVuWnPlnaL4+2ytK6scMJJiGc0PC686IXbzerTiJw=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=rTe+JZ0zp4T5LGm27ilvRzON+mk5FlHVKXQJcllo9M0PActoOXd7UAMozvAlSqU/h
	 crjfKAq7bKOH7JH3RoZf9uVkZYmSDScuiHlq5loAD/Uy8Lwa/GEnbEhU5MdybkPipd
	 0nGrdnmb7E5/DRQ/XLSjoqsKgR7K/lWa6r7xNdxMvPVfNk7z1MhOiqMm0ro4ZIH5W2
	 aT1ybXcPoGAelDhD8YaItF2KVQF98lxlBSg2kmXkmPi885cFS8F9htZlu5YQheZ/IQ
	 JWKEezRxxHHPfcqw0aDgbf9+ft5qqoy0oWriqaP03RMTDYs+I5NlqeXqF7gXf62pcY
	 I1v4UJ5NSEzPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD23DC4167B;
	Fri,  8 Dec 2023 07:16:29 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH v2 0/2] Add some devices nodes for S4.
Date: Fri, 08 Dec 2023 15:16:25 +0800
Message-Id: <20231208-s4-dts-v2-0-5a93fa356c5d@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMnCcmUC/0XMQQ6CMBCF4auQWTuknVZCXXkP46LSASYRSlqiR
 MLdbdy4/JL/vR0yJ+EMl2qHxC/JEucCOlXQjX4eGCUUAykymlSL2WJYM5IN/AjNuSHloMRL4l6
 239HtXtynOOE6Jvb/uSanHDnratLKGNOixk38/GapP6OPVz894yBd3cUJjuMLP2hC5pwAAAA=
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1702019788; l=1074;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=x1LVuWnPlnaL4+2ytK6scMJJiGc0PC686IXbzerTiJw=;
 b=ec+Ua7KFxOXT8HGqxc1F4xX4Bxgl9cTzrFEJxXZPSLqxRST5tvzJdnm2ui19/ZBp6SAD0ck5l
 lZlTeCFIAC2BJ+NJl5bWz97x6ZiBFhzLebcuXOWgOFX6ZZnSMlCmcE4
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received:
 by B4 Relay for xianwei.zhao@amlogic.com/20231208 with auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: <xianwei.zhao@amlogic.com>

Add some device nodes for SoC S4, including periphs clock controller
node, PLL clock controller node, I2C nodes, SPICC node, NAND
controller node, Ethernet MAC and PHY node.

Add reserved memory for board AQ222 which is used by ATF.
Enable NAND, SPICC nodes for board AQ222.

---
Changes in v2:
- Separate and independent commit for dts file.
- Revision format error.
- Add comment for resered memory.
- Link to v1: https://lore.kernel.org/all/20231129092949.2103338-1-xianwei.zhao@amlogic.com/

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

---
Xianwei Zhao (2):
      arm64: dts: amlogic: add some device nodes for S4
      arm64: dts: amlogic: enable some nodes for board AQ222

 .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     |  56 ++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi          | 350 ++++++++++++++++++++-
 2 files changed, 405 insertions(+), 1 deletion(-)
---
base-commit: 093098370b4693b0da8b7fdf5fd212cb46705928
change-id: 20231208-s4-dts-24debd656209

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>


