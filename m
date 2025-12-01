Return-Path: <devicetree+bounces-243252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 372B2C95F12
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 08:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D5655342B0E
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 07:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25BD22882B2;
	Mon,  1 Dec 2025 07:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="PS9A6E3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68082877ED
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 07:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764572644; cv=pass; b=hHR1zj8mmiuEx6/8/wee/KkzsKx+JV+H/mGFy4Mpcunm+wCoawAoMCO/WwO0mQLgk9bwAL5lFaC/M6qx+8KrO6xaOR+TrKh3UNLvLiYY5LhYi4RZ1swbQS8sPzBTS6RCT2B6Rc+zoVlyntndybMy+Usq3DSqFcNSyW7rt+9SrDo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764572644; c=relaxed/simple;
	bh=UMhzuNfvydVugU4W9lTaLztLosrpgEBM+5LJjylVI4s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ewqAWafNj+vY8YXYKeb4vnTXd1UIEyl2P9pvBfxS/Pc9d/ZFs+OHJkiZr6vTUFVXd9liDqeTnwyNPonV8EV+md60qybu9CTo3KBkkSggB/sZxa0zCqh3XpG2ciC1YXU4v4ja2AX7692Jx1RqRKBx7/Vw8BkKwdFaLDPDuHhpDao=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=PS9A6E3I; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=8uu3W2YJze2SaGK3W7DnErUCDkMNYh/ZOhlBJ1JYC+Q=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764572624;
 b=UBAwraNKczepWsASSIym4cVqnwvVGtZO0h2W5qPyyEMD+/sLOYLDAQJhrugj06f1u4K2+mOu
 EeCJ50di3XpsAuev+vw4BhPpsjoeBenW7iNPXFJe2Gyl4gbCoh7AHThu/MPYQ1/Fl2aRvD3Q0AJ
 iJT+pfDHcSn52fPuAlWKIKMzejzLTCIXG4RcXsmpBXtxrsv6zCNvr23ZcEZQpMFZa4DgrSD8ZXH
 hj3iSbGHL6rwYiJWWUbWTp0G/eIY42Nfpkakpwn3fg8Xdubmlra/mt04Ex63vnK7nLGX3ER6r42
 ZHW4KlCEk+cmuqzEpkS5kPKQBOvTqME7eFwDtVrZ4jLmg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764572624;
 b=Sj8RkwdX8zykODqwSS997MRy8KDqGB1TS5BWCPiqbsZzLn8hVfHjDrPNyjeo8uYVyeZMq0uq
 odEIHKUydJ5eJBLEerKT3t3UYCC9QG6srYWvhSG5DQTBG2uKhopRMTbo7RZxY3II1T6W8rJORp6
 O2TIdUiRHZ/bkT6e4cvOcB2l2Wvp0ZJvHxMMPTKhWredmLopVgfGn2Ax+VdABjhPyPjwsdAnAYS
 y1gCYojIyaXlthOMhFYa7vGdVl6orzhFaCugc06+yu4OexgnIqv62ijaflUpw5RdfKHpLso/qZc
 9yBXWSdeaGKm2+HVKqm+yMhTvtEC/2usL+xgdnaJm0zyA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Mon, 01 Dec 2025 08:03:43 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6CB295A0FC3;
	Mon,  1 Dec 2025 08:03:36 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: tqmls1046a: Move BMAN/QMAN buffers to DRAM1 area
Date: Mon,  1 Dec 2025 08:03:33 +0100
Message-ID: <20251201070333.6804-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dKZcn0Fpfz1kR2J8
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:70198ad446e01807b4973f99df72bd9d
X-cloud-security:scantime:1.869
DKIM-Signature: a=rsa-sha256;
 bh=8uu3W2YJze2SaGK3W7DnErUCDkMNYh/ZOhlBJ1JYC+Q=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764572623; v=1;
 b=PS9A6E3IiFC6eX3u+Ln8c+qsOA0Yvj+z2+/ggbkv2W2hxoDDoJagKv4+FcXFDtsvO4zVJ1AB
 gfrFBgSQ09Avv81oThkpJ4iU6AE7iuSx5RgoDAxvwZEslOiM0cmqoYLOe88RMkx/C5y61q1N3zh
 am0+5UzVOq1aZf3E2A5qE9W/ESFuoU8SkoqCOdZPA36uG7ntQE3E8HLEEUrmnohtHuxaArfz9W7
 1Mht5eBAToanLc0FDv9Ra/Zx6PlgcQYn1KG9CfZpZFgiigoTent31s3F9i4h+/zro/ByiHKWjVE
 dLoalWZ4Lr9HXHLqxtfONOiaQYnsRa6PxD3CwrKfBxo4w==

DRAM1 is only 2GiB in size (0x00_8000_0000 - 0x01_0000_0000) which is
already used by Linux kernel, etc. Move the allocation area of BMAN and
QMAN to DRAM1 region. This frees the complete DRAM2 area for e.g. CMA.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
There is a project which needs the upper 2GiB as CMA memory, so these
buffers needs to move. This range also works for 1GiB RAM module
variants.

 .../boot/dts/freescale/fsl-ls1046a-tqmls1046a.dtsi   | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-tqmls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a-tqmls1046a.dtsi
index fa543db99def6..7059ab8bc9d46 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-tqmls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-tqmls1046a.dtsi
@@ -10,6 +10,18 @@
 #include "fsl-ls1046a.dtsi"
 #include "tqmls10xxa.dtsi"
 
+&bman_fbpr {
+	alloc-ranges = <0 0x88000000 1 0x00000000>;
+};
+
+&qman_fqd {
+	alloc-ranges = <0 0x88000000 1 0x00000000>;
+};
+
+&qman_pfdr {
+	alloc-ranges = <0 0x88000000 1 0x00000000>;
+};
+
 &qspi {
 	num-cs = <2>;
 	status = "okay";
-- 
2.43.0


