Return-Path: <devicetree+bounces-247899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DBACCCFCF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6C7B30539BF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DCB3557E6;
	Thu, 18 Dec 2025 15:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HRu2IHcD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay71-hz1.antispameurope.com (mx-relay71-hz1.antispameurope.com [94.100.132.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD0F355033
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766071326; cv=pass; b=ZeLeWwcwLe4pWXDWTXnsEByAReafQva7wjQf6F4s0NWcnLtf1mSYQfvteyJYWU/YkfpBzcjKPpFO4PMdjggiHQgPNqtGPmx+ntN9Isr4pu8D9WMlGumaUpOc5PHwgCOjF/xEhy6Pq1BtScL1Cc6xuBo5zCwk5V09Nke/sZDbPs4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766071326; c=relaxed/simple;
	bh=0QtQfNoo5zcJjIoBusJcUUqMqAgbQeNJiAM30UXwxcU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IuizQ2boxI7JReklTm07cRU68BRPAcbe3/pmOpfUkPKjar19XCic00OInxCl/77j8PkefSep7Vd5wunlRlwsRelmltqUOgxvm4Rswei3tufSL/WD4zHSMtcn2H9IEl5Vi+4I4M04mcm6gycZA8KDIgjrak+x4OkQOnoPE0rnoHw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HRu2IHcD; arc=pass smtp.client-ip=94.100.132.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate71-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=as5iP/T6QACE/WGZ2DiCfgIsqDrXsPJYZSNB5TgsWqQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766071279;
 b=qEJDT+5DigtJGvEZGyhQRq0A1OBhnbphYmJeRU8ymy8vzRxX+c7lV48OevxT2H2o6uXEC+Rp
 UJ6/psCUIh4qfk7qrntDE/hPj7uM2NOHVcGGFdIoY0wwyrzpYRI8lBpT/r90bjY/3KWIQCKEsuv
 OAJ15Y+O7lzoJc+JbH/htqup4ZsaINplEt8Q/ZC1E5xttyJItzdoeCRz63IBU7+RGWbUIG4+m15
 Ecf7wpGqDCwo2EUOjy7bw6CWG6NK9OcYcm0uYQD6KugWtDpkx+EnutH7MNjZfkm55wYT8aNpNSc
 NOX+DKeQtbHzWAbHxmBR0xkkFrzAco/6xjlfwr7X3jAdQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766071279;
 b=iDXJHcP6h7i9tMt6cc9m45UBJM1IgKkJ6TCNZMJlMnX6YrIvTEr/p079JC0zdjPM/e/K+WUl
 SKyunBmpUzgLeIZTOjI1bTZHUcW+RCIAZ2QOo+L4AZsN/msOPAh6P5AaUDg0FAHbUcEa33ZAcwi
 f4fLEI48vH/9BbtqBNjP3Xn6R8dnzAhUncdDTXJY6JnZu96fKYxAdpnMAowR+mnoWfBpBM8kvKX
 BrfF79tTgoSZj+Mc2Wr2IRH8fXQf5UD6PVyYwcSDkPzdtFcNfY/1jilNXAp1nTNFVdkTukGYWFi
 kf0ktDLSzCkz3LZc+7Jo0IfyHvMhWSZ1yP6v2LcQZc1xg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay71-hz1.antispameurope.com;
 Thu, 18 Dec 2025 16:21:19 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6B138CC0D7B;
	Thu, 18 Dec 2025 16:21:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH 4/6] dt-bindings: arm: fsl: add bindings for TQMa8x
Date: Thu, 18 Dec 2025 16:20:51 +0100
Message-ID: <20251218152058.1521806-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay71-hz1.antispameurope.com with 4dXDs34QP3z3fwGG
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:66d9300a35196336384c9a16144f2bee
X-cloud-security:scantime:2.419
DKIM-Signature: a=rsa-sha256;
 bh=as5iP/T6QACE/WGZ2DiCfgIsqDrXsPJYZSNB5TgsWqQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766071279; v=1;
 b=HRu2IHcDzPSnynZW0KxEookJfNO3sSbBl1Cl4ZFlh+jD8tqk9TFlzYji78EDgQeehRHECarA
 D30yv+kC6gEopYmBcJ7xqSr/XH3yECMMg18mtRmdUmhyzgjV4v4ky7g7n1gZ0y4x3WTknvMX2pj
 KUtcpGAwUURxPK7z83ld7QhQFZ+01yupzokjZO1wTPWgbiQa6SPWXUrPuVmwY30kB/po3oY28Nx
 mHyz/7GQYGEM36NZPBOTShASH2Rrjpk7WYfDUfZFak3SYmndCQ5t6b9M+kgbZ7135+ehrMySyc6
 K3hYCG/Oe0FUxfHwa8hrsm4k4p1ocsWUEVxq0NgxL4OpA==

TQMa8x is a SOM family using NXP i.MX8QM CPU family
MBa8x is an evaluation mainboard for this SOM.

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index dfe9fa5c4dbc4..6384b36b6f385 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1401,6 +1401,16 @@ properties:
               - const: tq,imx8dxp-tqma8xdps         # TQ-Systems GmbH TQMa8XDPS SOM
               - const: fsl,imx8dxp
 
+      - description:
+          TQMa8x is a series of SOM featuring NXP i.MX8 system-on-chip
+          variants. It is designed to be clicked on different carrier boards
+          MBa8x is the starterkit
+        items:
+          - enum:
+              - tq,imx8qm-tqma8qm-mba8x   # TQ-Systems GmbH TQMa8QM SOM on MBa8x
+          - const: tq,imx8qm-tqma8qm      # TQ-Systems GmbH TQMa8QM SOM
+          - const: fsl,imx8qm
+
       - description: i.MX8ULP based Boards
         items:
           - enum:
-- 
2.43.0


