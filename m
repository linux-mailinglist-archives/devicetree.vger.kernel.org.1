Return-Path: <devicetree+bounces-78925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A12CC913A8F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A1FB1F2063A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576DE18130C;
	Sun, 23 Jun 2024 12:27:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5912E1DC
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145649; cv=none; b=nJe0nYiFKHhkQVN9oPKI2zbAnq8rEzhGg26QR8spfGtRilFAULYCg8HYlbOMSxeO3bvqXIqhumLFxu+melM6k4kOGwce9CmyMY5zNjuOtWIwd4ZO6ypS8ITjxIVAzzCHY6ePUHlMNFmdMS5nLnANCIY5wB3YYmks2TJaaSqv4WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145649; c=relaxed/simple;
	bh=LsUNuSG3yq0lIvP446LC37jc8WuwYl3wnM8xZObBp+A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pZH/We9Gp7btUJ3kghyt4IJtYEzKpWe9SvwibfTBSLfaakqz5+8XuUCbCSGOQH8wJ90cfB1lXPuCGwcZFILKgCsBHec+1ta3a7y3JRqT16ggc7NhEpMtokeFCLZ6dcpfgSdakRHcDY+KIQW/yd4r+mRz3DI9TjXAEm9Y4WWlRU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NCNik3006105;
	Sun, 23 Jun 2024 21:23:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:23:35 +0900
Message-ID: <20240623122337.91914-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Radxa ROCK Pi E v3.0 board.

Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
RK3328 SoC with a compact form factor.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..53ca61c47b76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -779,6 +779,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


