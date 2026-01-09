Return-Path: <devicetree+bounces-253148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBE5D07FA0
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8F34301B756
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DBE352FA5;
	Fri,  9 Jan 2026 08:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3A3350A38
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767948748; cv=none; b=VWZ3tA3/p0urKCtz78Xz0KCu3QRMxU7I04dlWnprvbk/Z1YJFJK5XBkmYVRKw7osTElOusTmHyJzUqvyOCMsH3yijqKqv3lZsFdoosxpsml1imAk2adiYdv1pzBKk8QqoPAUuFiZsTElsQBJRyvZdpQaOhxEzP9O01tbWHhYUsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767948748; c=relaxed/simple;
	bh=+SxSqX8iBk5NY3QbNJLCv0OHtjFLU1cpUrCgcpHKzvM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZLzXZ0h8cYK3zFO/FaRIHcpSHr6J21In8a++PZmUMVYrWPScbmU2vbjQEKza8+UamkfltC3RsDORmv0l+aF5Ons3hl2cJoCz0niXS0tt4O/Idxnbn3jKpCO34bTQf8UAGCViGBD/+gR1RtW5JKEy30mWdsC6BSMPGFPGCUcK/WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.51 with ESMTP; 9 Jan 2026 17:22:18 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 9 Jan 2026 17:22:18 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Chanho Min <chanho.min@lge.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: lg: Add compatible for LG1215 SoC and reference board
Date: Fri,  9 Jan 2026 17:22:13 +0900
Message-Id: <20260109082214.1583961-2-chanho.min@lge.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109082214.1583961-1-chanho.min@lge.com>
References: <20260109082214.1583961-1-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible strings for the LG1215 SoC and its reference board
(lg,lg1215 and lg,lg1215-ref).

This SoC is the next SoC following the LG1313 series, developed
by LG Electronics.

v2:
 - Switched to "lg," prefix

Signed-off-by: Chanho Min <chanho.min@lge.com>
---
 Documentation/devicetree/bindings/arm/lge.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
index d983ef7fcbd6..0d0661470eaa 100644
--- a/Documentation/devicetree/bindings/arm/lge.yaml
+++ b/Documentation/devicetree/bindings/arm/lge.yaml
@@ -24,5 +24,10 @@ properties:
           - const: lge,lg1313-ref
           - const: lge,lg1313
 
+      - description: Boards with LG1215 SoC
+        items:
+          - const: lg,lg1215-ref
+          - const: lg,lg1215
+
 additionalProperties: true
 ...
-- 
2.34.1


