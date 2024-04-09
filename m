Return-Path: <devicetree+bounces-57605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB7D89E0D6
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 18:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 092F71C227A8
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 16:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CF9153809;
	Tue,  9 Apr 2024 16:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="DpYmHGPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB013A267
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 16:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712681624; cv=none; b=B7E9DsregRRaeH33M1DCHLc5jgdNQ4orhO9TiO9p0UOSPNSDAweR0Pp12r1MFJBfEVD2ekqvn+dR94KGS/7W7E8YvoxrNAyt2sszrd12BRtYhKeZRc3o16YrmGUVRsKvFEwwLoDoKFL3wnmmtMAeaWsVpCYUml7WjKT/3p4sCps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712681624; c=relaxed/simple;
	bh=jjqoTvxbB3CmcDxdxeGRXL5YHdukuMwZ9jPJ9dBCqas=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GyxuMjLFVubesnglMLueyL6wU56tYgM5oCWBYxpuVj2c1yF7utBcaZrJGhusFe4NmTuWQBZR50boFf8vHkxLk6lJlqlFZ/uMk902ahP2EFDOMseWoa4BSLx1q9bPI8XXAcgIannzp2ySv4ml5f+i5tt+pqrIHWhG1ggh8PjCxHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=DpYmHGPr; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240409164329d6a96d92e886871ff4
        for <devicetree@vger.kernel.org>;
        Tue, 09 Apr 2024 18:43:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=xw+poDxsql1XeHyN2qonEufALyjEJo1ofchmylGmT0M=;
 b=DpYmHGPrVi7cijL645BA9nR6ZxvkNkLkoBNxynJFRCxskkl9nFEakgyOZrt/sODqf+6837
 a73TmY8xe5wQak4/hTSs/g2z067MkvC9B+h9TGqVrw8UzYJeh1p5vNZ2O/u8gEkW4J/NHabm
 PeiQ7jk4f8jvC9u0CzLLeEu+d2H04=;
From: Diogo Ivo <diogo.ivo@siemens.com>
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jan Kiszka <jan.kiszka@siemens.com>,
	diogo.ivo@siemens.com
Subject: [PATCH] arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG1 devices
Date: Tue,  9 Apr 2024 17:43:14 +0100
Message-ID: <20240409164314.157602-1-diogo.ivo@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Add the required nodes to enable ICSSG SR1.0 based prueth networking.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
---
 .../dts/ti/k3-am65-iot2050-common-pg1.dtsi    | 32 ++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg1.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg1.dtsi
index c50a585dd638..ef7897763ef8 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg1.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg1.dtsi
@@ -43,9 +43,33 @@ &tx_pru2_1 {
 };
 
 &icssg0_eth {
-	status = "disabled";
-};
+	compatible = "ti,am654-sr1-icssg-prueth";
 
-&icssg0_mdio {
-	status = "disabled";
+	ti,prus = <&pru0_0>, <&rtu0_0>, <&pru0_1>, <&rtu0_1>;
+	firmware-name = "ti-pruss/am65x-pru0-prueth-fw.elf",
+			"ti-pruss/am65x-rtu0-prueth-fw.elf",
+			"ti-pruss/am65x-pru1-prueth-fw.elf",
+			"ti-pruss/am65x-rtu1-prueth-fw.elf";
+
+	ti,pruss-gp-mux-sel = <2>,      /* MII mode */
+			      <2>,
+			      <2>,      /* MII mode */
+			      <2>;
+
+	dmas = <&main_udmap 0xc100>, /* egress slice 0 */
+	       <&main_udmap 0xc101>, /* egress slice 0 */
+	       <&main_udmap 0xc102>, /* egress slice 0 */
+	       <&main_udmap 0xc103>, /* egress slice 0 */
+	       <&main_udmap 0xc104>, /* egress slice 1 */
+	       <&main_udmap 0xc105>, /* egress slice 1 */
+	       <&main_udmap 0xc106>, /* egress slice 1 */
+	       <&main_udmap 0xc107>, /* egress slice 1 */
+	       <&main_udmap 0x4100>, /* ingress slice 0 */
+	       <&main_udmap 0x4101>, /* ingress slice 1 */
+	       <&main_udmap 0x4102>, /* mgmnt rsp slice 0 */
+	       <&main_udmap 0x4103>; /* mgmnt rsp slice 1 */
+	dma-names = "tx0-0", "tx0-1", "tx0-2", "tx0-3",
+		    "tx1-0", "tx1-1", "tx1-2", "tx1-3",
+		    "rx0", "rx1",
+		    "rxmgm0", "rxmgm1";
 };
-- 
2.44.0


