Return-Path: <devicetree+bounces-239344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C880AC641E1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99087365123
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC3C32ED27;
	Mon, 17 Nov 2025 12:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="hBOK+QdE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay22-hz1.antispameurope.com (mx-relay22-hz1.antispameurope.com [94.100.132.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28F232E153
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.222
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383088; cv=pass; b=sy9YR2tcqr5D2tEVsqE3ssEnafFfWBhepv6z7TQZOQqinQqclw0irwEe8VFUId+70Q2gWbXE0y1zaolod93G4jW1uS/gHnY6J92YrVw2sDWhJ1UQJeCruVrJP8fwWZnBNrpYU2BAzepHqX+t1ciVY1+J3pAJsD8MZE1QeaHhQhs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383088; c=relaxed/simple;
	bh=jTsRwS42tI5mx4ug5QK2yMOBtfpB3rHUg4f6Us7SdHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mjaLeO2qnTXgXS6Tf9BSw2YRkXAcUwb5nql+iUfQvdY8gfHdIkLcX4HX3N2ydKF/q+LEAXez5mrdNFstiQfWmt9ti1ICFUDCu48L4wqENyu2eyw/ttMmlPRqVND5oLgpi9eIwExPa7vO8NlHTDnlhX3EMLWoo1n4nq+kC74cdFM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=hBOK+QdE; arc=pass smtp.client-ip=94.100.132.222
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate22-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9Tj97bgHVDN13VarG25MeBuEY3cF2iNUf5mx4TIglo0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383016;
 b=HI79P1X76MKu9v3qt92DvandJWc3ZkNvw+AgwyGdSrqgjn3LaXtMlruZGSqJEh7C+dioe3Vy
 /k/CjTWGSCHKiw1Kveiwd8jgczLTdF5Pp3ffvXjod+KAgVe409H2bIApN+F1tE37lyZtQqKItXR
 1ovGLyoWd+/pfk0WKNcpzhvSlkG6hlqoEDX0lz7IjOCZ6rj2FewmT4iHs+7P+1mmeor8lFmUlN+
 1x23FU5DK674p8mu4THbzVSJV7XIakzHrro4wkjKw99TQ2GdAZBOKhRZMyCX6pJ6yQZzCqD0xqC
 pkfTnmUu0tNYPx/J0vuDsLIDjgnX+OAA7Xy3jCD8McSgw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383016;
 b=UrdctWm1ML2W1In2UgItX7Jm0qqh+pjh3VGELb3pkR3F/oGT6X1A67H0Gjo0F0W0KWS8Zw3O
 qxbhM26zYJh6Yx14R27VyMMMJIrVFSDX7o1RhaAsuUtJxrr8BJAR5lsLBVJeWbcUsjG7of4B1mp
 g56POX1FLW2ifRAyrpkbESetdfYfqWPAFKTFI3poPr0X7RTODuL3daYEXGx55xTc2OIgVV+16BE
 yz8h4V7nGHRZBy5jjBeCBdDib4sRVzKcuSnyihOij+b5nePuqqpGhQf/OmnBpVSc1CTOgQlc5Hr
 m6yQ3eA2VZ+bB5LTrcqVBWEEUe+23C8oWpIpcvPkf+upQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay22-hz1.antispameurope.com;
 Mon, 17 Nov 2025 13:36:56 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C8BABCC0DD9;
	Mon, 17 Nov 2025 13:36:49 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] arm64: dts: tqma8mpql-mba8mpxl: Adjust copyright text format
Date: Mon, 17 Nov 2025 13:36:28 +0100
Message-ID: <20251117123643.711968-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay22-hz1.antispameurope.com with 4d96gk3DCkz2By2v
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:44583193c2954bed913768cd2e93b769
X-cloud-security:scantime:1.592
DKIM-Signature: a=rsa-sha256;
 bh=9Tj97bgHVDN13VarG25MeBuEY3cF2iNUf5mx4TIglo0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383016; v=1;
 b=hBOK+QdEakwfeoWYE1e3tvZQ/NqJvva1d/w0KVDGBQubYzxao3YEk3wwkJZCD4yj5dTrgWYu
 5W2SaEfNeXl5YnOVOENjx7C0da6I9zTaP/1d5qP4VdHJ8/vQ47sggB2tlJyojLkRzP4fh6MAFgI
 s53GimxcYlhANQ+HRGFPZFHQuSMC4vYunyatEZ3U0CX1CwL9dauq8kMPPyEqC+0gOMqCtbkzly6
 /crct2ar0ZGSZlGJZCNPQRodoP6c1/dMGchqiFVzXJlMx/7aEAQlmhg+TvcYDlsmnqeKq2+h/4y
 kyxfp894hQBEEkkQ1qMDuZOLNfSUY60djMXXy1NzWlFig==

Replace personal mail address by mailing list.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 59642a8a2c445..0605cf2faf83b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -1,7 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
- * Copyright 2021-2022 TQ-Systems GmbH
- * Author: Alexander Stein <alexander.stein@tq-group.com>
+ * Copyright 2021-2025 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
  */
 
 /dts-v1/;
-- 
2.43.0


