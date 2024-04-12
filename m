Return-Path: <devicetree+bounces-58740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2905F8A2EB2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FF561C21BE9
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 12:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6B259176;
	Fri, 12 Apr 2024 12:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFv7JIo6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5928859165
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 12:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712926716; cv=none; b=XyzgOU8AYE7POMG3Uxb+dbZBk88U8cmMlNXe7C33YJfquQfORNZ5HDqnR0XG3wV/KL7Qy7vh/qs0AGmne3ZBYcHw7yaEqgUg+A2HOXEeoF0WUAQOXhamMFGoAcltV3DZ7Epqeofp7dGLsHmtKnpaFEMhwmdXutRlxa9MwyPxfZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712926716; c=relaxed/simple;
	bh=RTnOOyhSSzq7yOOQdouJl7Zn9C8MsF7x+mJejs6MMtg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HxYaFTGHsmSMnvx/F3Ur/RtVyoGdrS05gy3K6Pso/iRUbVswDUrimxqpZCiJe9kZ5725AlV8icjBXDe+nJXoheBewSlJRyb0lPFnwNEsixrGkb5/PZqLnPaVwSl/jmdAzR5uQWrS7JqqfH8NY/bGMxYXC/WMcluac06tvdSg2Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFv7JIo6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E58C113CD;
	Fri, 12 Apr 2024 12:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926716;
	bh=RTnOOyhSSzq7yOOQdouJl7Zn9C8MsF7x+mJejs6MMtg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XFv7JIo6qB7IV01Vby8IqkFwg3gi+jNgorUQEf2tSsWJLOBtcu1zsgh4WIhAoGkfT
	 b6ajXQ4oacIqpKvhOJPbMOkPAeqFhx3qFUecWqii6jqazMLlgKil/2KJQvJ4DGcULp
	 G048C8ZKA0eyGMZEFlObS5ynoNYjcuR/2uBsq9l9cVT/BRaYhzlnMD74N2SyK3eZVs
	 Vvrf3pAlxVxWp+OLhXxhGoBS1sAEt8on1N7SugZwbDzoMW2gzT3WgJRx7mDn/FA3yO
	 zXY/ScCxZBBfB92zRbcwU6LDSQow2oKq6X2h1Fo3T5NbioTjONbNyJZ15lykJeblq8
	 URuz7B6AHjZQA==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
Date: Fri, 12 Apr 2024 14:58:15 +0200
Message-ID: <20240412125818.17052-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412125818.17052-1-cassel@kernel.org>
References: <20240412125818.17052-1-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From the RK3588 Technical Reference Manual, Part1,
section 6.19 PCIe3PHY_GRF Register Description:
"rxX_cmn_refclk_mode"
RX common reference clock mode for lane X. This mode should be enabled
only when the far-end and near-end devices are running with a common
reference clock.

The hardware reset value for this field is 0x1 (enabled).
Note that this register field is only available on RK3588, not on RK3568.

The link training either fails or is highly unstable (link state will jump
continuously between L0 and recovery) when this mode is enabled while
using an endpoint running in Separate Reference Clock with No SSC (SRNS)
mode or Separate Reference Clock with SSC (SRIS) mode.
(Which is usually the case when using a real SoC as endpoint, e.g. the
RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)

Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
per lane. (Since this PHY supports bifurcation.)

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index c4fbffcde6e4..ba67dca5a446 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -54,6 +54,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to the syscon managing the pipe "general register files"
 
+  rockchip,rx-common-refclk-mode:
+    description: which lanes (by position) should be configured to run in
+      RX common reference clock mode. 0 means disabled, 1 means enabled.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 16
+    items:
+      minimum: 0
+      maximum: 1
+
 required:
   - compatible
   - reg
-- 
2.44.0


