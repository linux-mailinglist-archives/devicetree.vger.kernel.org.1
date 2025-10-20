Return-Path: <devicetree+bounces-228881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E15BF18FE
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 541054F513D
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D5F31A7F5;
	Mon, 20 Oct 2025 13:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Ib6cN3T7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay125-hz1.antispameurope.com (mx-relay125-hz1.antispameurope.com [94.100.132.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF80246768
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.191
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760967428; cv=pass; b=aIjqDvArYNE2T/DFm2Yq55cZxnOAwy4XD/7YGNf0rCH67BDDOA6GsgBmg5IJhwE5ECn5KwV4kQrMay1LeXmJjKs5yT0l2vZ0JL2xWIqoO1fNGz51g7C7ts5/kNSulzqLAGdrULrbPJoNq+iUsyvHPoysn2YjbQ3NXYo8gj+zp7k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760967428; c=relaxed/simple;
	bh=Ju0/wiKUvWYjWHdcAYDMANkjK3Cm/u3Wfd6p2jPfLqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NzQI537ehqV9Yf59zXhGmit9zm97NAq9XRq7D+YjwTZ3N8tIffcSqSe9Oe+3wyOjR2ZBvJBbqffgeieFFd9XuHxaNQdwb/UHfICvUk9nvE+aeDlLmp202mpjbBjKHKDhJOfxhph2OIp6ZFDmxwIXILNhIu+dgcyIkN3n6JSyhQI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Ib6cN3T7; arc=pass smtp.client-ip=94.100.132.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate125-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=1W2HGikbIJzfaYIFBM5i8Nyqmn5OY0xo3QvYrQaWSv4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1760967351;
 b=QjsvEsr4xcPki4qA64rxGys3bMb62JFj0NBXAKjJ3KGXjM8IY/8yC57T8zT6NSa50Cg5efG1
 7hNOaKxG7mbw364RBLvt4CgVLB/hCAlH8mpCRd1fjg4119tyoQtPr2kGOP9g+/vR9uifXZruri5
 EQyojBWai9CZw3GOrW8yO0rjHAFvlBmMjpDb9iX0yRnqdPqoVeS/igeEL2qSODJse6x3hRkiwMG
 V4uE6fJy+lTwoY60S726m3d/I5YrdXPPzxgYEIPHJKeXfXT5gbkvmETm1A80xK1QdndtZwf5BI4
 g5iN8OmMevIGwwNgzvyZcFdyKElkv/Fd3QnY5LvaRwcNQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1760967351;
 b=nvJMpvEmAulWs0cCIdVZ4f3TWaKEjChPkAmaMvu+gAHCPj/Js3qGG8pyczJREQwaZym09feU
 6Fm1f1IEpwqigs21JwdaeDVkiQktAbm+bJuFJFV5LyIE/9eARxbYjRNBVorCYvD1ozcBGqgonyf
 yqYKZkvBAkaGaCHKqBTFRmopxTYiCQtWcJcGlQZIMY4P7rLwSDuhkXibwK82eope+N6NRKYBydX
 JGDBx6YOBLk2fT4jZAa3BLx+a0Yy4Go1n9VnqCkORLE5/WNauldgCKU4NxEm1xd8EagUrhQnYhG
 H44EZKu8GytYSgdU+rRJFH0kWGkmUBjzYyxzYzoU2XTBA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay125-hz1.antispameurope.com;
 Mon, 20 Oct 2025 15:35:51 +0200
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 90AD3A41252;
	Mon, 20 Oct 2025 15:35:37 +0200 (CEST)
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
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: add TQ-Systems boards MBLS1028A and MBLS1028A-IND
Date: Mon, 20 Oct 2025 15:35:32 +0200
Message-ID: <20251020133536.303471-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay125-hz1.antispameurope.com with 4cqxJV37nmz3jhMp
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:130be11a8cc6b50305d6fbf7d7b2b905
X-cloud-security:scantime:3.047
DKIM-Signature: a=rsa-sha256;
 bh=1W2HGikbIJzfaYIFBM5i8Nyqmn5OY0xo3QvYrQaWSv4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1760967350; v=1;
 b=Ib6cN3T7dCCvD2Ou4GbfrIi0x0A646gii7JNDgWkdEl/aej/3AqJP8rMDSe3JI3T37zxfqpW
 Kt50y7nTEwoXl+B7Cv0wj3iFy594s3+Re+95SUnskPFBr/PhnXHfbfPYSfEMdUXPKRByFI65NIi
 o+/2Hef3Kjaqxg/Rez2xHmo5P+/i/n71Akx4DR3eiXuPZF5qqvBdkNBbzcD2WIEevEujYnMqA/Q
 iEsNrfOImwtXl8o1AY8Vxcdrj0bJhdBI06L6Y9dpQPcwYCetUL/59LLeUrye01N9IkRVvfqMB8v
 e1a3yOErRCc1CJjjTfDEuVI4wjnQ6lrr9u8fIfA2BA1vw==

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

Add two mainboards for the TQ-Systems TQMLS1028A SoM, based on the NXP
Layerscape LS1028A.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Fix indentation

 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 34c822a52a5e3..12bf25fb0a97a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1665,6 +1665,15 @@ properties:
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


