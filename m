Return-Path: <devicetree+bounces-246375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B12CBC4C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 04:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2AFD301130E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 03:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE31D315D2C;
	Mon, 15 Dec 2025 03:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Ras3GtXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E2E212574
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765768482; cv=none; b=HUhEQ5d1yJn/MIYPcnQMsTFOfUDNiORA+w1FFT2nQIlU02apqmW33dJPadvEj5m7M//utZ7z3cZ44u6Dr4M7i23BGNmGPeu9mpws3rx75dl+1Z0QMKkFyiggnCUO8zyDx5pNKlCWnlkiTctVlJp5KEG/wslcy5vcsficiyBDo3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765768482; c=relaxed/simple;
	bh=GNYL6QZ5xNkcpeB2+bTp+lhafP4URx1eMIV4vWPy0qw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=izz7A2McMQIix2uzGIH+NYqXNGKIwvgwdvJo3FYOLm9OOGRB3JJdpoThiJrK84BehH6rVoSjTXtCiCyDjRyrYIRcZgoHv4WD6UZAsZBwt3mkuxJLUHHB4oZJjaiocinf/yWAuK7XEkwxDXdyLXEyWr+kfF+dP+PUdgtbjQ3FlSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Ras3GtXs; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=RyG7Bn3JigcydcRNxFWILlVlWR9CBF/Mrqm70Rw6Mb8=; b=Ras3Gt
	XsOUt62BDX7C+D4b4y9M6/Yijr/YjpKhPi451tV52GZa6Tg2V6EQMCOIjL936fmw
	fzkEsBCV/VqyQzJaGKUEv/h6RVdcYs+cJ3wbFxDF8Z32Hk7R+dCZhaxdAmpsWMeD
	FOzwzAkQTc3CN4OSTpTZrXULVpxC2DH1oezBSbaEDqG8oxJTteyjZpCYr46lgaIz
	c96eMi9q8LUpwoBdIdZk9koNxm4vpuJdoQkCQfwYZSHwJsRnBXhuDsJ00JyrMwp4
	v2uKgP2blybNZ4LU2Y0ABlokS1Q3q/mHEf+/BqUrMjQMDJz+LEdSCIcsBw/GZgMR
	TRoGLXhpqL6mshUQ==
Received: (qmail 801879 invoked from network); 15 Dec 2025 04:14:36 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 15 Dec 2025 04:14:36 +0100
X-UD-Smtp-Session: l3s3148p1@T3pMAvVFOpLN3IHs
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: renesas: v3h: mark SWDT as reserved
Date: Mon, 15 Dec 2025 12:13:19 +0900
Message-ID: <20251215031318.2219-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215031318.2219-4-wsa+renesas@sang-engineering.com>
References: <20251215031318.2219-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This watchdog can't be used with Linux because the firmware needs it on
V3H boards. Sadly, it doesn't mark the node as reserved, so this is
added manually here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/condor-common.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/condor-common.dtsi b/arch/arm64/boot/dts/renesas/condor-common.dtsi
index 9fe9c722187d..38d486e7b8c3 100644
--- a/arch/arm64/boot/dts/renesas/condor-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/condor-common.dtsi
@@ -554,3 +554,8 @@ &scif0 {
 &scif_clk {
 	clock-frequency = <14745600>;
 };
+
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
diff --git a/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts b/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
index 2da63b4daa0a..87a9bb44cad6 100644
--- a/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts
@@ -289,3 +289,8 @@ &scif0 {
 &scif_clk {
 	clock-frequency = <14745600>;
 };
+
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
-- 
2.47.3


