Return-Path: <devicetree+bounces-58304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CA38A1530
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 15:02:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD3A6B21DF4
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 13:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5AA145FFA;
	Thu, 11 Apr 2024 13:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajlmh5HC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DE6624
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 13:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712840522; cv=none; b=sICkKY/A0jOZwEt8FAIQhE6ZuEijqKaiVicKqzPxX5lHB3dJ49MhcOJsVeIfjz9HYv/pNWZdjbhW7WsOiphULG1bA4xz7jOlTeTIcxZJL84eKhD+ZkqU+TyvNyvsbafYYJp/tmYxnXTHtuLOpTvUlgp75IC8lmaFzZYZxbIUFA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712840522; c=relaxed/simple;
	bh=qArvCH0loValMvQRklgm8B3LhtKJu/iCEN816zFGIGc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NirY8ROcIFtxdFocI2gVDSn9sX3/SsWkF2xWCnqEbkUYa5aYD0v8nI6AfvYXIpdO/1PUhevEzY1lAkEai1d3gQk22Z5gCYhrFjflIM2ZXPpUszCJhDcGTXPnfyjAAL9rOSSg757ZttPMPXQysUQL1odXkyDVfp7k6YhCKrNKtvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajlmh5HC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CB70C43399;
	Thu, 11 Apr 2024 13:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840521;
	bh=qArvCH0loValMvQRklgm8B3LhtKJu/iCEN816zFGIGc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ajlmh5HCGLK6fVFUczGYBXA+AV9/+dY89VDGtD8yQgC+ZQ/W9G6u6nLshRRVtGbrF
	 IqDZ0GmrOuLgLdcC4yzzLHnefopsjLmOo7cNx0BVGZYvYL8+/Joj/CSPiskNY1376D
	 +1BRi4Rgr2wMImxCv+EjufVDqBsDeeCMr41PR0KRmyoQFoE4T8wnfiiAaxIxpD5iLO
	 qCdo7CSS3N3lBV3HPEXg6/6ikSVi9cUGg+54TjNrLqtU/X+oWQ8GwdTfpCGpC87Jmr
	 +5MSSKy+oN//PW5AYcPy+6zwi2EmF0dFW+6FhZdS2A9/6PPfd93clMwhVJEkIhe2wr
	 Nl6E4KjbZUxUA==
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
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
Date: Thu, 11 Apr 2024 15:01:47 +0200
Message-ID: <20240411130150.128107-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
References: <20240411130150.128107-1-cassel@kernel.org>
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


