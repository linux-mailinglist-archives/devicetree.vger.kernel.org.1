Return-Path: <devicetree+bounces-251304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B6CF129F
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 18:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABD793004216
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 17:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876011E1E00;
	Sun,  4 Jan 2026 17:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Sd0A3O0t"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965748F7D;
	Sun,  4 Jan 2026 17:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767548002; cv=none; b=Nmiri4HuIizfadVOLME3alJ1h6SgFkVd3UqEtbEZe9a+KdNvEqpHNFSwmTBQDB7PX/Z6XEe6SxRdeuKK5aokltAxtEQkGRlvXxUYo3Fvk+dnBVNm5Dod8fR8/J0gFgbBOoZLQbiKitdz0PnOahURMEARyODH3oki+IdDAP3Y7wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767548002; c=relaxed/simple;
	bh=6+aEdJU1NH/ANJOqdFSg8R+PiSzgV2DhFeo0YyL3bqM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QSkOMJJAo/N9pNoqliWvic0beaSSWB+uforQ+g7x7hBJNOrjmlrSOOOEVy+vJyJ66U/J+7S8/f6/ikHv6wig1UuBRK10UpVuIrW6saOlqsc0qWlDAoo8becxlQQhgfPriv10WcFoRMG+Rz7S6LfoUj78cq/nDJsTE9/U2TueJP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Sd0A3O0t; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=0DP+1yGPBBVMcr2TC+yz8B4QYdC8bgtcz7KVzCDiW/s=; b=Sd0A3O0tA9EOYvRSFLfQEavMrY
	iNGZ2iFX49M2/EG0VfPqkUw6EeXYY3EBwbznR24jZr02DqJNUeh1SguI9kxjvt/heD2aEoyArMTK9
	JVE/ntDnUdaVtmtZxxkSI+pdp/0dI9mjgh+RiTRZbpMwlDFZ4m/NRtbTl0/hxXA8RsmlLI4P5CXba
	Gj5ljq7KgVmC4EGk58Nuq5putjR6JfMjLXsGIJMq/NOcec5n3RzE0wOfQyWLz/09S1vYWL0/+zMCx
	bnijMH+JMMkHq8T2Iibs6Zip2yJqPx7CM9HAXuv1ZprZx4sJzsn7ox2oG71yMw5jFtFSJDcDIIHW9
	IFGtUoNQ==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcRya-00123u-P3; Sun, 04 Jan 2026 18:33:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: mfd: qnap,ts433-mcu: Add qnap,ts133-mcu compatible
Date: Sun,  4 Jan 2026 18:33:09 +0100
Message-ID: <20260104173310.2685852-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104173310.2685852-1-heiko@sntech.de>
References: <20260104173310.2685852-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The same MCU is used on a number of devices, each with a slightly
different set of features, like the number of LEDs.

Add a compatible for the MCU used in the TS133 variant.
This is the 1-disk consumer variant of the RK356x-based family.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
index 5454d9403cad..12e738b1270a 100644
--- a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qnap,ts133-mcu
       - qnap,ts233-mcu
       - qnap,ts433-mcu
 
-- 
2.47.2


