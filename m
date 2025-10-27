Return-Path: <devicetree+bounces-231425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 95969C0D11C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DCC3D4F4914
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABF12FBDEA;
	Mon, 27 Oct 2025 11:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="FNP9fheK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay170-hz1.antispameurope.com (mx-relay170-hz1.antispameurope.com [94.100.132.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4D12FB0A6
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.162
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761563168; cv=pass; b=tnXc7QphOW88WOHWhOlRoqgDXi+2TVFCSZjwsagpY+7UgXZf1xpmhctSnhUow66WBsCp9nbqH5PBbVMcnLvIFHEqXrIz8/KC/fY8eiTw6mIza0m1NKIv/9L33r7Vn95BzM4KIxNFuzCn0jyhDi3JciOnqKe0kJfY01xvu44fB+o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761563168; c=relaxed/simple;
	bh=YZGQd8jI9Vellkzt/s6sS4bgFKhEBKH1fIQjG2qUnFM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rSDNGefN4xgzDAbI4YJ5j4vyaORVDAVk/1zbApG2g3JWGH2GYpFT1z0CN1ROUqgT5xVgxJl1aXIFwGvrt3fz8wrDIKEh0CQbTZ3aXpV8ZtFWGzvsnwoWIN4c0x0bynFuohuqgdPdAu07DQmew0ZrqT51Eq2U8Jxhw+UpKkC2yY4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=FNP9fheK; arc=pass smtp.client-ip=94.100.132.162
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate170-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=87X5R6vjtDdJY60KYPFY+Q7PYLNtQIh/pXfTLhBqd68=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761563120;
 b=fl1XqGgRdzT0daWPnmbRdIqFK/i9Iv9qtvCtVtlSkFXcRJDj8Q9fSEWQhjB7HN6jmyXY2y/K
 a8IJtSbBKSNaohmnKJKuLx4+hH2VxS6jxQMC1D64L3rFS5Der++qF/7LrMxtIakr0wnJwAH6h71
 lzH6qD+5dXxZ5PQ4SH5an0ClD8CFDWYQGrrNdRzbxph3a8JHJOMzMLvOmNZ9H3AMkQVHderhO8w
 TqXjeM3hJWWzycBsF8St9WKd0woy2ijaUwTLpxnzkd/Z4rWloowFW0ZlNOPkW03OuQk2f2j7kOg
 czLNUL54q39n/G8bP7DPagd5j5VWNrXWZkjUoqMMDwF7Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761563120;
 b=OCwDjzR+Ta666uqC4pPbr6B4qJz5MM25mAywFWKyU6YC8HRsUVJTu1qnuPukgfIKd5ylxxCs
 8sHXGcgIxwZxO5ZHMXRrxrud6B8+/xieU5K7rnqni9f3+XMLyENUzWH8CVOUWxkaL7DdmVdW8Xr
 Volz3POMEbFnDbeN1acQhAMw3UkBGOUW9Yo2hF/SbPgBzWd8l0M2/USw+RzLcAyFR3E3qfzkATE
 PVty4RHX7+gxjSuAHln6OPoYDG1CZu+BWC+9PGET/U1oB64ca8fYnLGckV/mcLhZH1E1gc/awVH
 3dYqlXyrN1WR19SgxCZzjg5ZZiZQT2Xi4zU37dxBwXFqQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay170-hz1.antispameurope.com;
 Mon, 27 Oct 2025 12:05:20 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5FCB6A4127F;
	Mon, 27 Oct 2025 12:05:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Frank Li <Frank.Li@nxp.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: fsl: add TQ-Systems boards MBLS1028A and MBLS1028A-IND
Date: Mon, 27 Oct 2025 12:04:55 +0100
Message-ID: <20251027110459.420857-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay170-hz1.antispameurope.com with 4cw9dg19t5z3WpYc
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f3fe413255b5fec6c4a2399235bbca65
X-cloud-security:scantime:2.082
DKIM-Signature: a=rsa-sha256;
 bh=87X5R6vjtDdJY60KYPFY+Q7PYLNtQIh/pXfTLhBqd68=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761563119; v=1;
 b=FNP9fheKIDGZX2R3qKJnMrjAttlrnZnSpeDB61ON+GYZNs0NrY1CMIEZYP/eEt2gLhP9Tv8J
 t4K9VPKtzBBE/bElu1cqVnkl9cfxqkhAXdBO7nXkR4gP9phqrZ7i2mKMYYm4Ij0n5OacqnXYlQT
 vcIiCkTCkucymA7FmW6K0yN9EYI5IE6JNaBwwbzGCgEfbBqysQY33EGlOuq89Yy3RUXssxKmM/Z
 x5ogVgOmbLK4edV21AYqNgM+e5dMZPHaUrCx+EDzT5brmwHWFZ6QzyoRhVrlaWjrWrEuj4qKFhU
 fdBiRXAOjRwCPT59UdmYmhfgt8qn43R/6ZmL/J/vQZGkg==

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

Add two mainboards for the TQ-Systems TQMLS1028A SoM, based on the NXP
Layerscape LS1028A.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* Add Frank's R-b

Changes in v2:
* Fix indentation

 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index c5d81e3f8bd17..fbffb1a536ba3 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1656,6 +1656,15 @@ properties:
           - const: kontron,sl28
           - const: fsl,ls1028a
 
+      - description:
+          TQ-Systems TQMLS1028A SoM on MBLS1028A/MBLS1028A-IND board
+        items:
+          - enum:
+              - tq,ls1028a-tqmls1028a-mbls1028a
+              - tq,ls1028a-tqmls1028a-mbls1028a-ind
+          - const: tq,ls1028a-tqmls1028a
+          - const: fsl,ls1028a
+
       - description: LS1043A based Boards
         items:
           - enum:
-- 
2.43.0


