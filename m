Return-Path: <devicetree+bounces-85468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2407D9301C3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 23:53:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA93328401F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 21:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8274F4F207;
	Fri, 12 Jul 2024 21:53:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5005645024
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 21:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720821207; cv=none; b=a92fifEjr9cuyrN5BJnVQlAgl2R7JO/4qhiWHAEDfwfZ1LPTRuLOBIqnKpP77uPq3vboXhyxtpNVM2H2ZbcncR5Ia5bit1ivihnC62rkBg2yP80I2gw2F7SIwbbEXp41MKv4LfKhgYC0igkF9LzcaKQwwMCh2KUP8m9v71tKKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720821207; c=relaxed/simple;
	bh=HNAaq/PaUPidnFtlUUo4KrxDJS2vH7FeKWlFrqCjp6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=un+hxadpFLWOgNToQ4VPAg9Xe+32RPKc02PpAD+nEUVc2AuFyO4Yf8laQxAOrtCy9gW+EcV6W10x6XvOuZf9q3QNxvxg04v9fLvxyqoNhjtQDhrpnuchMsGUslSpOmuKVAtZDrKOWU9WJFTaNkV1iLMag7gSm+qBT9lAeoG1XpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46CLr6Mh005680;
	Sat, 13 Jul 2024 06:53:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sat, 13 Jul 2024 06:52:59 +0900
Message-ID: <20240712215300.720113-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3328 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- fix typo in commit message
- add missing --- in commit message
- add new section instead of new item in rockchip.yaml
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..f1c5cb6cd2a7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -784,6 +784,11 @@ properties:
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


