Return-Path: <devicetree+bounces-246068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A562ECB859E
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1E9E3026ACE
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC0E30F922;
	Fri, 12 Dec 2025 09:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="hsW5++jm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay10-hz2.antispameurope.com (mx-relay10-hz2.antispameurope.com [83.246.65.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B139930E854
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 09:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765530008; cv=pass; b=Mr9teIAzy7mlja/or4lYlWavUTkIxw5lOFBfY2h20cdJ3AkdUxzQTj6JTHn9I75+k2pg9F+JN6yEf6U/WsN/8+Hono0KgZHBrxQ1BMLh0CXf5wja1KbAcZGrqgnQbqi2Ubdv12jE89PfIbsrZkCMlbt40GGKHrQ2DeDE/KkzaaU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765530008; c=relaxed/simple;
	bh=WKBInquyslnsVUJK3IFncVat4T55trFVNhoPBVSI2Jk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TvONDmRJiOOMe3wombpE/8s5/PVWdOcKrF7q+1+bDP3nnrkI+WhrHAuVzEOXCuySqcQigj8rCRZhs1sJJD5DXnj1BB5+3Sv3rzviM7fb0u4Uw9RrDYminpg9O0IHVDLp95SVqj9ElZFvoeH71jz2EUPSOPLceXISK3f8YK0Czy0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=hsW5++jm; arc=pass smtp.client-ip=83.246.65.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate10-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=84P47lxHC3BLIWqL12zvfUpIKwtTk6oo/ph1IGpKWdI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765529965;
 b=OvqG29koEV9d9YJKnv/ff1GBUoKDmH4pT3lXbDJe7EP/OTcq+P9VU/8W5kAjurd8FRq2jBek
 HoqrwjaMGzeB5kUvnlnDskP+oTEAx6z0sZTuKFQVe04bFcG08QkOxfH5TGqOL5TVMIspKwMj9pk
 f6RLuoNG9t2TU6uUBetc0KyAGEhCc00lWiK+Og6JK7918EfRgHmQV1GWX94Gg1B9anqNgqXRAFR
 3I7557zqyB1tddAV3nveTUtqI9z+4JW+YCK28nrOMnZQ8+9hnqshRU1J1r7TlEcAw/EnFYhpwrx
 AeQBokJHZLSu4dKKEbVvfiQ15F7LNXeXLKqXhj5ftuFxg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765529965;
 b=BJtSxIX5pTwt+ch56Z5gR6qEh3O9mir/TNosfBcSnIhHxQAyCHgg/WfM+RMSDwhiFECZrZE/
 7hjY9aPLAH7iLsCS4YlDjMlxnB+4qND152hMZej4usBHWfG6aXIaDzNjyHW54manV7Qn0A+X5lh
 8nEpzuI0Qb2ij4ccGJ3QlO8bQEYiQJJhldsn/EQSLi8lg/A2nhR2xiFo4OT28qDkFIxbDOVGfYy
 6XIYLwmPS7fnfgYYKbT3IKcPfxHrcpFO5Yf78FA+PudKu7Ytfkzoj6cyiCUx3pX7A6bV9Abqn9j
 IX3qoVx1WhY/zPmUrtjwRsFgKaNwQFngQzvooyUSIBjXA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay10-hz2.antispameurope.com;
 Fri, 12 Dec 2025 09:59:24 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 69CACCC0CCB;
	Fri, 12 Dec 2025 09:59:11 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx6qdl: Add default GIC address cells
Date: Fri, 12 Dec 2025 09:59:00 +0100
Message-ID: <20251212085902.103507-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251212085902.103507-1-alexander.stein@ew.tq-group.com>
References: <20251212085902.103507-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay10-hz2.antispameurope.com with 4dSNg41V2Cz4FKLF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:bb4a7dffaef21819fc1d7783b77528b3
X-cloud-security:scantime:3.879
DKIM-Signature: a=rsa-sha256;
 bh=84P47lxHC3BLIWqL12zvfUpIKwtTk6oo/ph1IGpKWdI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765529964; v=1;
 b=hsW5++jmMX/i6kwcEyVF7Dpjwy+Js1COrnlq04y3qFO2bvNdTV4RTc8q4I/vr6nb92Ppc+dv
 dsBVhW1rJP97rQoAOQYwWiWTeKXtWDoGacRwPCxocmjh12VtUnjrE/WgsPbL93pbd+QI1AHcEEj
 voQbuFO+5yIHr3sF6aORK1EQU7fryCDILMGIYVbcYY/WPIMmBH4JmOuocSi6UqoDdwBdbsO0PHn
 mIWiJucUrX1M/nlfglUXxf+wsLGLm+JncQB6waG/9ac+FLkMPU2bXBsGVtvFnPRPBoCgmqtGEcB
 5bZCsMuU5WQiewZUZy61cgrxMiift6Pjn0vVjutIXYDYA==

Add missing address-cells 0 to GPC interrupt node to silence W=1
warning:

  imx6qdl.dtsi:281.4-284.29: Warning (interrupt_map): /soc/pcie@1ffc000:interrupt-map:
    Missing property '#address-cells' in node /soc/bus@2000000/gpc@20dc000, using 0 as fallback

Value '0' is correct because:
1. GPC interrupt controller children are only power domains,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This is based on commit faf183a02ed6b ("arm64: dts: imx8mp: Add default GIC
address cells")

 arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
index 45bcfd7faf9db..9793feee63947 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
@@ -875,6 +875,7 @@ src: reset-controller@20d8000 {
 			gpc: gpc@20dc000 {
 				compatible = "fsl,imx6q-gpc";
 				reg = <0x020dc000 0x4000>;
+				#address-cells = <0>;
 				interrupt-controller;
 				#interrupt-cells = <3>;
 				interrupts = <0 89 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.43.0


