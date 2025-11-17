Return-Path: <devicetree+bounces-239389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D5839C6452E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:19:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 71D7B348A8A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF9432F74E;
	Mon, 17 Nov 2025 13:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Wa15qfqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay184-hz1.antispameurope.com (mx-relay184-hz1.antispameurope.com [94.100.133.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4653025F7A5
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763385007; cv=pass; b=L27ZbfkGeC15BF4Ol43LDULGhKu7IOwF1pEGHgQgnavqfPR8tIWL7I7CjeR+tUzOy1j4rUCLFXD6DOStC+ikpslc+dN40gb3OaGzxkJdtP9f+fdWCnLzCivWYto1/qSkbW8niEyB5YFcrYlGNOVdVKWi9ByDACgswIE89pftP68=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763385007; c=relaxed/simple;
	bh=7S1om9+suXBwGucmgeA10syG2yuj66RkQ/bxlFJO3Fs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F5ke1CljqrnMpnGUD4dr0hHOxTYFJM2b8J2dF+09iHRFCmqdvMSPBm8fFb9Vmwh1B/5Jy9xCxK9/ztVhOHs3We/Zivd5pEgbnUfC6Myxl2Cq5eD2O3qxYe4WUao8OXlTNoEq9vSGIiacmJ4QnMg8cJ2eKgQUQipV9C5r+GZgU7U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Wa15qfqz; arc=pass smtp.client-ip=94.100.133.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate184-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=PVQJHrJWhlagKeC9ETVwWymdf23EeXs9KXo4Z4TKE8M=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763384969;
 b=fbXIO6v8ZtXLmPy3YBm7omqEHVzFBRo8hXQRb7nWHBXLax8cYsOxgnlFZCsTcEIzWgjEGZkr
 JtP21c5SlA5FKrsipkvkziU9qiDC5rOqApzX7ctRMxLHMZ5FZTxLFz32X9LL1KzxA/V+U2owA9Z
 +C7PjFQaGCON5CftjfMBWWFtp+YHZFq7GzU8ARkSiQHYeca6C27W9CWeF0MAR/qcrJ34o53mJht
 VFlYi4uVPWni/sdNadTgMz6Nv0Go7qqes4LuywsCgKMdSbIugevX3KmNFLg5OZp5OSs0Tqshso7
 G3y8v9oqORRkFj8ap1GBKN+RPrQhkDQu2nioIr9+5ID+w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763384969;
 b=V6uNdrsXbwRrhJH9W1ImQRi5ERqoE/cGzInxRxuuZ8iIZl5vkk8EqVujSFKoK00u80yg23l6
 an7CwM/Cqza0eokACMjFYGQfAdC3kenoUgqQ5E97KYM5EYkrQFVEBGxGRVuEllp8LGBonwxLZ0U
 0+tEanNYzrOMjj1ZOquGgGmeJkxyPs8U7/JZ98Z96fqRR3igo1TIcv6MkfaIVwp2QLX+nxSQGU0
 irsA3gKq+w6oN/3jQYexWQaQ2tiZnAJKSn1ToOQWhT3K9U9X8YJ1Xa9smeQIqOsjrRKaH6i8FVv
 jZUOT8FccVBro0ag6F1n90RvNIJF6RgGWb3cnviGbZQ/A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay184-hz1.antispameurope.com;
 Mon, 17 Nov 2025 14:09:28 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8BF77220BD7;
	Mon, 17 Nov 2025 14:09:18 +0100 (CET)
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
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: fsl: add TQ-Systems boards MBLS1028A and MBLS1028A-IND
Date: Mon, 17 Nov 2025 14:09:12 +0100
Message-ID: <20251117130916.803047-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay184-hz1.antispameurope.com with 4d97PC2b7gzZcGt
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:e2915acad8a6ce551fcc14ba3130ca14
X-cloud-security:scantime:2.389
DKIM-Signature: a=rsa-sha256;
 bh=PVQJHrJWhlagKeC9ETVwWymdf23EeXs9KXo4Z4TKE8M=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763384968; v=1;
 b=Wa15qfqzy5NxuyxJp7X90GoIE/MvCuQtSJKraljGxQzthsthb0l2/+Djez+flhNESkPMQaUZ
 +aH95YzU9vHA2HV4HklIaQ+LIVC4in25ffA/m1vzobm/FnCogGA8sjR+YIHpb7m1PpdjU3OkDCD
 ph9uo481rFyj7bTJSMoxEBGNA05jKAXQc+Y05YI0DMIC9j8XOs0wXhJLUq1XvVkzbmN9vv1X2WO
 AXwR7w/b4g2zuqLgg5e5nzOk2uAMav0vHfFF7TjfuLStAH3E1mKzRxsWrKJsUza7VifMCRn3qY/
 a7k9QyilNGQz1/uGzfJ3Gxhc3b7RYvhkbm/e1H6bTpThg==

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

Add two mainboards for the TQ-Systems TQMLS1028A SoM, based on the NXP
Layerscape LS1028A.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v4:
* Add Conor's A-b

 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 34ae86d370f69..2288ce271c230 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1666,6 +1666,15 @@ properties:
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


