Return-Path: <devicetree+bounces-131614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4894F9F42DA
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 06:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8A9618877DF
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 05:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE8C155CBA;
	Tue, 17 Dec 2024 05:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="aWnuJW76"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECA18F77;
	Tue, 17 Dec 2024 05:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734413550; cv=none; b=TLRjXA2856IVfHYu4osylN2fY9ZoDcqo1TADYT/O39wL8CwaQYVWQxsCgShbgMAqIiwyuPwKJthcXtR35sPHKye1oA1qx6CEpZweRqp2u49Nr/8NALFbQCCNqS8NjXaw8VWatvObyaZ05YN4ykg9+/em8K+zEzESWRnyDIBExCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734413550; c=relaxed/simple;
	bh=HdtBvsbTGHsxmfWL54oA5X/bE+Zp9SwVPyMQpH8+GGQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GGhEIyC/N+4Vo9Cp2LxGig5clLG8uV5KXt0nPAjITYuSvMXKu/OEXxUMBp6j/01B9+IOU81hsSqYD6ZIoynUZq1Sk9wHI6/JaCPjl7p2EyPZuBtnJvD7V9QpOR5nlgaDdSrY/QlGnfNqsv3SWMSTbAO/qtEX4n8Q5WZ0FxwHjjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=aWnuJW76; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-157-155-49.elisa-laajakaista.fi [91.157.155.49])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C2AC03E;
	Tue, 17 Dec 2024 06:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1734413506;
	bh=HdtBvsbTGHsxmfWL54oA5X/bE+Zp9SwVPyMQpH8+GGQ=;
	h=From:Subject:Date:To:Cc:From;
	b=aWnuJW76Bslpm0CRI9Puy8pOfeOIFU9AICsC1IrjHHiKcd8d9/RG3FZ3LDiS81frU
	 Uf8WYTSDsGyfUL9iuW8qqfvflrGEIlt3/iSBAXc8torPfMufGjiq8BcP40mPFW+eIP
	 uKtDBXH1zUCxAMeFB56kzIvJhAByV38SC42NjXkQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v5 0/7] drm: Add DSI/DP support for Renesas r8a779h0 V4M
 and grey-hawk board
Date: Tue, 17 Dec 2024 07:31:34 +0200
Message-Id: <20241217-rcar-gh-dsi-v5-0-e77421093c05@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALcMYWcC/3XPQW7DIBCF4atErEPFjMEmWfUeVRcTGGIWMRFEV
 ivLdy9xN3YUL/8nzSfNJArnyEWcD5PIPMYS01DDHA/C9TRcWUZfW6BCDUpZmR1lee2lL1GenIJ
 gPDM5K+rFPXOIP4v29V27j+WR8u+Cj/Bc/x1UzcYZQSrZNZYY6GQ80mf0TCUNl0TZf7h0E09ux
 DVhtgRWQqPuwBrwwbY7RLMm2i3RVMJ32iG0bSAwO4ReEfDyiK5EsKxBo0HVXd4Q8zz/ARNwzt1
 2AQAA
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, LUU HOAI <hoai.luu.ub@renesas.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Biju Das <biju.das.jz@bp.renesas.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 linux-clk@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2782;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=HdtBvsbTGHsxmfWL54oA5X/bE+Zp9SwVPyMQpH8+GGQ=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBnYQze8lHfUWPEkg55zHzELzk2Y+Kopngu3clvr
 BGx5RyS2IWJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ2EM3gAKCRD6PaqMvJYe
 9TcvD/9IWDTL0RawT8b8w4CDfMh2GBDFPB6y9Dv0SJZeXO0+Mjg7x43rOKzHK+UdlGyjIXvPzZn
 LZL4NmlaqIABCQWcA0lo4BZG3GH19FUxLLCTLuDsQ0nn4m9HNYUlm7HPATcblCF91fdD7yU3Khs
 X7hgvlVOvqc1Ktt5k0IeysjfOp5bBMcrak4+HhYCSJlMiTo4UoFKiXOzdVi4NZyOegOYx6ikM+7
 PgGUkucTma3HwsaKF+MvHE8Wkvl9LpCoiuB2y58QqO5AgP9J6Dsdhdvspvpd3rY5vOUjuhoH/7m
 DpGKmMG6AX4tyX3Ol5WRKC555A2o0tHQawcpWT1Hd3+KxpvMgtzG0Hj2GNxds2b9fNrmdx2nqQB
 w3vGBI1VHL3RBu736tOpg0qrSxCOwBbLXf08Su6dq+Ad0eezYkmeSRcvqvOxuUlL4ocyyyvs9zg
 CU4sNKb/QKjwxdcUFmQwlqPIT0+JxSL9RAWCvHDxp8/D0BTQmKsbZe8F8gz3w89yeSUKLzDcuCA
 KOhfWTcMLsktR7X0Ni2jru5BP/FaoHs2Y9ize+lG1tuJG2dWE7qOnEllrTIXdpejetlMTITqX5i
 w22UmWZB9Uokpc2zNJymaOo8Dwxm0XC/0usNSNwqdH5UKWEzZmFUVXccr5ICn5JNi9sYdHCwNiH
 WCUj6pI5kLm58VQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5

Add everything needed to support the DSI output on Renesas r8a779h0
(V4M) SoC, and the DP output (via sn65dsi86 DSI to DP bridge) on the
Renesas grey-hawk board.

Overall the DSI and the board design is almost identical to Renesas
r8a779g0 and white-hawk board.

Note: the v4 no longer has the dts and the clk patches, as those have
been merged to renesas-devel.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
---
Changes in v5:
- Add minItems/maxItems to the top level cmms & vsps properties
- Drop "minItems: 1" when not needed
- Link to v4: https://lore.kernel.org/r/20241213-rcar-gh-dsi-v4-0-f8e41425207b@ideasonboard.com

Changes in v4:
- Dropped patches merged to renesas-devel
- Added new patch "dt-bindings: display: renesas,du: Add missing
  maxItems" to fix the bindings
- Add the missing maxItems to "dt-bindings: display: renesas,du: Add
  r8a779h0"
- Link to v3: https://lore.kernel.org/r/20241206-rcar-gh-dsi-v3-0-d74c2166fa15@ideasonboard.com

Changes in v3:
- Update "Write DPTSR only if there are more than one crtc" patch to
  "Write DPTSR only if the second source exists"
- Add Laurent's Rb
- Link to v2: https://lore.kernel.org/r/20241205-rcar-gh-dsi-v2-0-42471851df86@ideasonboard.com

Changes in v2:
- Add the DT binding with a new conditional block, so that we can set
  only the port@0 as required
- Drop port@1 from r8a779h0.dtsi (there's no port@1)
- Add a new patch to write DPTSR only if num_crtcs > 1
- Drop RCAR_DU_FEATURE_NO_DPTSR (not needed anymore)
- Add Cc: stable to the fix, and move it as first patch
- Added the tags from reviews
- Link to v1: https://lore.kernel.org/r/20241203-rcar-gh-dsi-v1-0-738ae1a95d2a@ideasonboard.com

---
Tomi Valkeinen (7):
      drm/rcar-du: dsi: Fix PHY lock bit check
      drm/rcar-du: Write DPTSR only if the second source exists
      dt-bindings: display: renesas,du: Add missing constraints
      dt-bindings: display: renesas,du: Add r8a779h0
      dt-bindings: display: bridge: renesas,dsi-csi2-tx: Add r8a779h0
      drm/rcar-du: dsi: Add r8a779h0 support
      drm/rcar-du: Add support for r8a779h0

 .../display/bridge/renesas,dsi-csi2-tx.yaml        |  1 +
 .../devicetree/bindings/display/renesas,du.yaml    | 67 ++++++++++++++++++++--
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.c      | 18 ++++++
 drivers/gpu/drm/renesas/rcar-du/rcar_du_group.c    | 24 ++++++--
 drivers/gpu/drm/renesas/rcar-du/rcar_mipi_dsi.c    |  4 +-
 .../gpu/drm/renesas/rcar-du/rcar_mipi_dsi_regs.h   |  1 -
 6 files changed, 102 insertions(+), 13 deletions(-)
---
base-commit: adc218676eef25575469234709c2d87185ca223a
change-id: 20241008-rcar-gh-dsi-9c01f5deeac8

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


