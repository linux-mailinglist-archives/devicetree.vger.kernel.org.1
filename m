Return-Path: <devicetree+bounces-155494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 260D5A56E9C
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 18:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5426188F6F4
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 17:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B2323F419;
	Fri,  7 Mar 2025 17:03:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4BD23FC52;
	Fri,  7 Mar 2025 17:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741367032; cv=none; b=E3uJknFZ+IzXCUiD5l4NLOW4QZ6smAAN3CZqlBydtv7NuMU33gwjtido1pHQLeMR8lxOMwtcasCVQPFPP4lAmh+kEj7AygdhwDt1phqppeX/h/xQDzMOLDDM6OQRGMpKmwbJY9QBBzGs3oQQWUJkhFfRYvEny1yhyCwDXONlT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741367032; c=relaxed/simple;
	bh=0gs2EjB/nbZxycGjZyEkh7hCYFV8rncXhR3RY01GQ4w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PMBFhjK8HpkCkKU5d0aU3UfCSKYr2Uqeo6+iulK1Bdh9iujY3qp5YtqBP+HFo86fUOCHhAf1ufAISdSl0DvFiehNfyrVtmahUcWpnZikKdkObv3Gbg8+fvoZTV7YEP9qZsX4JuiBtc9rB4m8L4+MDLxEINDyPrvk8kycD/lpjIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: 6wUSQbF2RzGRgNBSS/Wixw==
X-CSE-MsgGUID: aPww6nVKRdCFEVCgHkih0w==
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 08 Mar 2025 02:03:43 +0900
Received: from localhost.localdomain (unknown [10.226.93.104])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 3CBE94039B15;
	Sat,  8 Mar 2025 02:03:37 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Simon Horman <horms@kernel.org>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: can: renesas,rcar-canfd: Fix typo in pattern properties for R-Car V4M
Date: Fri,  7 Mar 2025 17:03:26 +0000
Message-ID: <20250307170330.173425-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307170330.173425-1-biju.das.jz@bp.renesas.com>
References: <20250307170330.173425-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Renesas R-Car V4M(R8A779H0) SoC, supports up to four channels.
Fix the typo 5->4 in pattern properties.

Fixes: ced52c6ed257 ("dt-bindings: can: renesas,rcar-canfd: Document R-Car V4M support")
Cc: stable@vger.kernel.org
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * Collected tags.
v1->v2:
 * Added Rb tag from Geert
 * Added the tag Cc:stable@vger.kernel.org
---
 .../devicetree/bindings/net/can/renesas,rcar-canfd.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index 7c5ac5d2e880..f6884f6e59e7 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -170,7 +170,7 @@ allOf:
             const: renesas,r8a779h0-canfd
     then:
       patternProperties:
-        "^channel[5-7]$": false
+        "^channel[4-7]$": false
     else:
       if:
         not:
-- 
2.43.0


