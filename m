Return-Path: <devicetree+bounces-243621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD54C9ABD7
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 28DE7346567
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07036305969;
	Tue,  2 Dec 2025 08:45:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22033054FB
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764665155; cv=none; b=k7Xt7bR0OfkgMyUeEwS2Si9jm4B9elnNonkUP5DiY/IMZEraqK04pVOU2uITlT6KCaRg2aCV8h031ptmVuptBPuOCE3ejNfqilNBZLtQNaWGxMIRNBPkumwa+5W9k/5aY4H5gRDSvfDkUCAUug76LsmyKs7jPc69cLXyyOGvvX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764665155; c=relaxed/simple;
	bh=AkphStGF/OxnGzx0ohEPPZ4GOu7jItVaBDOf+c6gk1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZjxzTgkFfUEIrH1+LF8S7U6bVVJOk/KjxQyxXEpR2R1ArBrxtUtoz8k9Du6zaglUCy2fklGEjjlu5clSEY/E/t3nMFxUGYBSliUiU8p+/UMmfDYq4NJIm0UKoAaHY30jajpUuZSauRZFrsvtjoegumGHSvSPKqjxBOm2lxoT/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B28ewPd008611;
	Tue, 2 Dec 2025 17:41:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
        kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        dsimic@manjaro.org, pbrobinson@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND2 PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Date: Tue,  2 Dec 2025 08:40:49 +0000
Message-ID: <20251202084052.1517-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202084052.1517-1-naoki@radxa.com>
References: <20251202084052.1517-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joseph Kogut <joseph.kogut@gmail.com>

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..79e99694577e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -907,6 +907,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.43.0


