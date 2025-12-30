Return-Path: <devicetree+bounces-250625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F01CEA7DA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A781303295E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F97B32F744;
	Tue, 30 Dec 2025 18:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="WSA19Vs6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AA132D43C;
	Tue, 30 Dec 2025 18:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767120108; cv=none; b=oNTfgJUJdQo0zm0qa3EPVFrOmCscKLGLBjPbbIg5A/0XHtFEw7gesxsYvgn4gcoZz43qiBdRC+x9HIeNAgIOTURyvi/EPxeZEu3RNLgrNVLcFxLpInNIXSgLZ/+k5X1IQKh3QCp/M3w/fmSod6vGq5AD30P/UgwVswKMvv8GV4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767120108; c=relaxed/simple;
	bh=v62Rqcn3SURsT6fqc7z5haDyy6//30+rVi+JRr1yBHo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uJ3naamHCLxBDBYyspOCLIM9PuyzUQufOb3PL9NhRp21xZ5bE4CYDIpXYBXKeZUWbcZz1/STCyfBjdoFI9xva7N7xQg7G3pqglVCUOuNhh1/OynRheyqy44bKVH2tsJpgzywJZtfaRJY5ygNU7wrN5kWsmgdm60bLHz01qE61n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=WSA19Vs6; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A029710CE13;
	Tue, 30 Dec 2025 19:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1767120103; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ngjw1jF8erWpjz+6ULQxjjXMMO7FjUsBIVdPNE+8b7w=;
	b=WSA19Vs6TrY67l2nJXHUmG3KWKYAQPv0UmXYR0BIoldSYxSUALHLVhxjQHXhogNvH42u2+
	5sBxqUtJGmVdQ6UGX/oPkcgQ2ZmucOiqbgafWuFvoRTGZg7+XnYfSc335bFD2BXnzcCPqq
	va1e9RC18TeUVXOYFXdACJ//yC4vghEEhxroJ944zzmT/+X8lRlCy0/xGH1JC+1RAZe03K
	/PZzCTXSzBqlZb1rvB1i2h4Bb3hrR7IW57HpVAU8pIkRfbN8z5biWuFCljM4HbFgn/+Jv8
	hapz14F0wrn+rGy66kt5TeOPD0Rzj+djVcMVeJYiBpyljhUjAt4JckMdazUqsg==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	Christian Eggers <ceggers@arri.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Markus Heidelberg <m.heidelberg@cab.de>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] arm64: dts: imx8mn: Add SNVS LPGPR
Date: Tue, 30 Dec 2025 19:41:00 +0100
Message-ID: <20251230184121.52635-3-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251230184121.52635-1-marex@nabladev.com>
References: <20251230184121.52635-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Add SNVS LPGPR bindings to MX8M Nano, the LPGPR is used to store
boot counter.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Christian Eggers <ceggers@arri.de>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Markus Heidelberg <m.heidelberg@cab.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
V2: New patch
V3: No change
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index b98b3d0ddf25a..3199bc0966b03 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -628,6 +628,11 @@ snvs_pwrkey: snvs-powerkey {
 					wakeup-source;
 					status = "disabled";
 				};
+
+				snvs_lpgpr: snvs-lpgpr {
+					compatible = "fsl,imx8mn-snvs-lpgpr",
+						     "fsl,imx7d-snvs-lpgpr";
+				};
 			};
 
 			clk: clock-controller@30380000 {
-- 
2.51.0


