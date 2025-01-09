Return-Path: <devicetree+bounces-136890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF0A06C29
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AD2C166F49
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D14718C01D;
	Thu,  9 Jan 2025 03:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="hBwe5bFq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m118216.qiye.163.com (mail-m118216.qiye.163.com [115.236.118.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D9E1632FE;
	Thu,  9 Jan 2025 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393306; cv=none; b=JG1GPTiGEIRXD5xPi2It6bCKSs07dq57UDZX1VfHeEe7XQ+BnQLcoMLChKxxFi3tREd2xDT95EujsOZ/puStRwOD6brSwmTJC3k9xy2/XyPp8JuJ5zcC9pJHgB86XoKsfchMwZf8AtbpEsaoeMI6Hnd418HtKWq1kfiDEUwlj48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393306; c=relaxed/simple;
	bh=C56MrLlhWcU08ZYkafZUUuJbyZi0cMLonjZabttx9/Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HVnjLM/G4ZUcCBx3UgBedIkFbPUWN3S0KfAhV7P3LVGg15yWjjZCJeO/ifckT/g2SCsNIS72engloekpFeQv1ifdTe4r9huTwmy2HBfdD+f3dfx8RvbcmRERNQlxVoWE6rbykmU2qxngLYOKWyZuCVPVddc8jrVc7PH7SdReGDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=hBwe5bFq; arc=none smtp.client-ip=115.236.118.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a65;
	Thu, 9 Jan 2025 11:28:14 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 09/20] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
Date: Thu,  9 Jan 2025 11:27:14 +0800
Message-Id: <20250109032725.1102465-10-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1IGVYfTU8ZQhhLH01OT05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491b01c703a3kunm82c01a65
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KyI6Lyo*MTISORQ0LEoYQzMN
	DEoKCglVSlVKTEhNSEJISUJNSUtDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSkpINwY+
DKIM-Signature:a=rsa-sha256;
	b=hBwe5bFqhmyiBuiStz5GydvTTqtTTQlYlRjmsqkt7Twl/ptz2MGXOmWa3RheT3pN9YbPd4AJ8zoj+GxhKdKmJXDGow1L0U3YNJD+rg/tBhXNlHnE+1nJ7N61H8MvmHNdpjGusiUw8Pyx0Eek0sbVKLDYDYId5aCUJF9SkNr08/A=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=MCo0uAKS6QHvo55swHDZpLkV/TNxwwhILy3rryJVjxs=;
	h=date:mime-version:subject:message-id:from;

According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
it is a good way to get panel through the DP AUX bus.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Move the dt-bindings commit before related driver commits

Changes in v5:
- Remove the unexpected change logs in commit message
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 60dedf9b2be7..eaf4e67e232e 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -41,6 +41,9 @@ properties:
     description:
       This SoC makes use of GRF regs.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
 required:
   - compatible
   - clocks
-- 
2.34.1


