Return-Path: <devicetree+bounces-249998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C04DCE57DD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97B7E3003056
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259242848BB;
	Sun, 28 Dec 2025 22:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4fdlwy5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0067D226CEB
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960367; cv=none; b=MIJ0YWLof2IjOvGCdiXNnoXANboLYp9tBgRaFnLQBb21F5LjJp1TkMyBqwb4074cm4cuPO8a4aHizZUNpjJFx4PS8ozFXt/kzxQhld3XpvOdRYnGirErZgYACLXdBpO8cDxlRw9Jbn/qAaLfODoKqzao38/Q5hmqA6pUUNZKAS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960367; c=relaxed/simple;
	bh=eS3PC4RwC1mIgCq73NQE9qsM4w42QsSL6BJNQwUuv20=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ryzuXG6wWC401LqKI141H940WCdx86bBqntGbPWbcaFtLLoCurj1xRKyGYf/DFdqjzL8mKQey3kcRougltuttwNAQVC6xxXG6tjN6NRR+NZ2McWjhaKFzFOIZpIHfXS+Zw32z9uBC3t15wqgRqTC/oi8P2xaV7vx7ACozV1tjwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4fdlwy5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2D27C16AAE;
	Sun, 28 Dec 2025 22:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960366;
	bh=eS3PC4RwC1mIgCq73NQE9qsM4w42QsSL6BJNQwUuv20=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n4fdlwy5gYQMVvVWHUEvnDgq+TbpbTqwChc33BSlrTg01Rpx8R610GEQ2IS2WXm86
	 o6nCJJltZAOeRJVgPQ9O0X3weLiO0odIrWtkbZ3WvLYcy6/v2jPOSSssa4yCVT/PHt
	 zz9Q4ZV3wYjAM3zSEgRIwTXYQVOBm0VTJUj2squuU4a2zNZ3XDlxhL08duCq+M++/1
	 QoixbFqU5+dKE12I3ogx2p6OJ6hHLPVp98TOBxv47cjFaWXENs26mItsO4A8orfqm9
	 BC7CC9mC4ZUyGh1w/T70y/q64flrP4dWq2gPyEIEwG4ZPj8AmNS6zz+vXc9DGvP3JD
	 IL+X9WSzUkoWA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: altera: document syscon as fallback for sys-mgr
Date: Sun, 28 Dec 2025 16:18:43 -0600
Message-ID: <20251228221846.863904-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251228221846.863904-1-dinguyen@kernel.org>
References: <20251228221846.863904-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For 32-bit Altera SoCFPGA parts, the sys-mgr uses the syscon mfd as a
fallback.

This change addresses this warning from dtbs_check:

sysmgr@ffd08000 (altr,sys-mgr): compatible: 'oneOf' conditional failed, one
must be fixed:
	['altr,sys-mgr', 'syscon'] is too long
	'altr,sys-mgr-s10' was expected
	'altr,sys-mgr' was expected
from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/soc/altera/altr,sys-mgr.yaml        | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
index d56ff4c05ae5..2dd3395f3f63 100644
--- a/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
+++ b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
@@ -13,7 +13,9 @@ properties:
   compatible:
     oneOf:
       - description: Cyclone5/Arria5/Arria10
-        const: altr,sys-mgr
+        items:
+          - const: altr,sys-mgr
+          - const: syscon
       - description: Stratix10 SoC
         items:
           - const: altr,sys-mgr-s10
@@ -45,7 +47,7 @@ additionalProperties: false
 examples:
   - |
     sysmgr@ffd08000 {
-      compatible = "altr,sys-mgr";
+      compatible = "altr,sys-mgr", "syscon";
       reg = <0xffd08000 0x1000>;
       cpu1-start-addr = <0xffd080c4>;
     };
-- 
2.42.0.411.g813d9a9188


