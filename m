Return-Path: <devicetree+bounces-20878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 205F0801369
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 20:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2730280DA9
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 19:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B454E60C;
	Fri,  1 Dec 2023 19:11:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A96998E
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 11:11:25 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r98v1-00023n-0A; Fri, 01 Dec 2023 20:11:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de
Subject: [PATCH 0/2] Theobroma-Systems Jaguar single board computer
Date: Fri,  1 Dec 2023 20:11:01 +0100
Message-Id: <20231201191103.343097-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the Jaguar SBC from Theobroma Systems.


Heiko Stuebner (2):
  dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
  arm64: dts: rockchip: add Theobroma Jaguar SBC

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts | 803 ++++++++++++++++++
 3 files changed, 809 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts

-- 
2.39.2


