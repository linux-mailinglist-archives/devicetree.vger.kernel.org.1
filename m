Return-Path: <devicetree+bounces-231485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69856C0D88B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4A82188C952
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0656301711;
	Mon, 27 Oct 2025 12:27:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF3F302759
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568060; cv=none; b=sJizYCTnX19xnTx7X3muQl73wa3yy7SS7zlJh72sIRs+/sB6iA9yPW0x3mky/FT7lbApTEaKBdPPEN4Pc0wiw7PYPLu0eGS4MZaWSoZn0vRNoGK5ZTvlxros2eJgzVjI7NU3nOj5bA2ZgWnQiNybKfMjKhPBX+8lqQlf3T7SdC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568060; c=relaxed/simple;
	bh=SSkT+sHjTlbcZViGlc2qvjpcldIS1ryreEu2GgQTR4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RJV5m6pPX5D5Xeb2keWBu1DqQ770KbGm8/zvK5Uc5kvdDaMYOHVt+9meXgjrdjLhnowDV1E2uqOXfBNoj2DEREiippJK5LKacZP2aePcXv/98ljIBVmhJUGQKG0nWkK4S4qOVF2/sDTpUH6dGdfcJ68zFHoRaSVr3fEgxUmJT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqc031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+
Date: Mon, 27 Oct 2025 12:26:41 +0000
Message-ID: <20251027122641.39396-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5 ITX+ is equivalent to the Radxa ROCK 5 ITX at the DTS
level. Therefore, we'll simply append the "ITX+" to the existing entry
for the Radxa ROCK 5 ITX.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eef2b8061101b..c51399470abea 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -960,7 +960,7 @@ properties:
           - const: radxa,rock-4se
           - const: rockchip,rk3399
 
-      - description: Radxa ROCK 5 ITX
+      - description: Radxa ROCK 5 ITX/ITX+
         items:
           - const: radxa,rock-5-itx
           - const: rockchip,rk3588
-- 
2.43.0


