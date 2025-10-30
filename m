Return-Path: <devicetree+bounces-233271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B41D8C206CA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D151A1A63DB3
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9A924C076;
	Thu, 30 Oct 2025 13:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="WQtWWqM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay73-hz1.antispameurope.com (mx-relay73-hz1.antispameurope.com [94.100.132.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480B32222BA
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832437; cv=pass; b=a6i2D2gGioYettfXBmqLCvApgBaPJoqMLEBuAYt4IgdkEuFEQ0s06in8+nufGACjnVErYkY+vfIuxE4dZvw/bKfrWuIoa9iOxf2hrjpZymDJYNbPr7X9x4qw131NI2/GGfa7XWPMjGvjDiY9FIKDGvcqnAFKdIcig7j50WPCNWY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832437; c=relaxed/simple;
	bh=tJrQacF40a7gkfl20Qlli9OSH8A6qFFlTzAw0DY/ick=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KNpQscOOuSMyGgSg44k1adZfeevTizi0DPgB0kfKRs6ev1xjb0nWo4tCPwtU2eq4m0uRXJuZyhTlwqzhAjDTS9r+qpx4VKstczSoIq+8zxdiR8a3A/Yni2tBtebDqJQNSQlyGVSjKgfQxOYLS1YpBs9+VH5k/UHVsbH0AO7U9+w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=WQtWWqM7; arc=pass smtp.client-ip=94.100.132.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate73-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=WrjQJJxL5a0An32raO9r8CtscWfKA5mlsUuQyxrLoQk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832417;
 b=UUXfDoSMdxwwNpqXu9RirNchbJf4aCEQv/dCB2u5HbUx6iTv8+AlBvFy7J8rpB9yO8zqG4gg
 xgUfQ3ZDGrIJeM1v/GIfAF6AAM6NfoLYeQiggsjjRqQReqmeo+SxF/BDkAUzxUpGl00u/VjrfNg
 ywPqm2Znjd6yEI2K+BLTfFuyJzZHN3V2Y2bF3pHQtcE7P55bEJ/x2x0cN/8Ncz5IK4oWkDGqk1I
 8qTyfzGOJu1JdI6uIA4TpGaSKM4tXgU0f5acTAlI8y+ZugEAU0B63GlEjaRUY1+RLIqmr9o/Hja
 aTrA9hM5jt4co0VhEsHFJyr5Hd0ZeF0ktHWriA4aqOxAQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832417;
 b=mnRAzIRDSNMd448r7Zm66U22UYKUQp7sa3ZXUhzGsrT/HYbxGpfmEDkxP+Oasy9apbFHtFUt
 kGkZkcM5w7F9Ck/0F5TcbhSRNpQbhVwPRIdW39/4B3ujqreNLgCYhQ4Kgf9aGqz4nqwIM+NYewG
 x8cE6jyF07ILWbVBHv1P21FRPHQVhjJ4OP+XEW5V2kmj3/Xyuh6aAaiMoYA2XCIzwi8zsEz/Bu0
 9gGZVpO3XgBpHjPaZOIvt8QJLCp40qMc6P0w1+8Dw2jEX+O2wDAFQxpXdZQXylrN9w9wjemqS+1
 dw+5i5E2wwaI16Q8RQv+D+f2SfH9QMql9brmRAXEeTzTg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay73-hz1.antispameurope.com;
 Thu, 30 Oct 2025 14:53:37 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id CE8195A0AF8;
	Thu, 30 Oct 2025 14:53:17 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 17/19] arm64: dts: imx95-tqma9596sa-mb-smarc-2: mark LPUART1 as reserved
Date: Thu, 30 Oct 2025 14:52:59 +0100
Message-ID: <20251030135306.1421154-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
 <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay73-hz1.antispameurope.com with 4cy5DV2Rr7z14YKb
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:adb5c744a6af74ddd2c8a6726a431f2a
X-cloud-security:scantime:1.676
DKIM-Signature: a=rsa-sha256;
 bh=WrjQJJxL5a0An32raO9r8CtscWfKA5mlsUuQyxrLoQk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832417; v=1;
 b=WQtWWqM7bNpfTu1DLzL0wK+dMunvL/5Q071JrlmLOYPWsnm3kR79bfyCOSg7aC/LBOBvqBiA
 joF1GzwpiyfuRlp1UC4zcfe4FerpaAy9AththCsysU+tza6ai2vNORZc55dt458CpXCLE3tc0a/
 qr8z1u9BlLuuuHvi6J/YQpJnlAOlFI/F8vXvzjzU5IYy1w/T0wBKBNJ+mkNBCkegjRYaMY6S0rA
 ssZVf5if2rTfLsjA38dYC4QZMBFJhr4gpVeoCStCwBzVvlvQ1MF+nwUG2w4PpReArZQ8CJHbC35
 8r1de75AdV1cHem+SIlZu9LWGw6sq5YenQlw4XNbuUUJg==

LPUART1 is not disabled, but used by system manager (SM) and should not
be used by Linux.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index d1c3d55b14469..15d117d785445 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -212,7 +212,7 @@ &lpspi3 {
 
 /* SER0 */
 &lpuart1 {
-	status = "disabled";
+	status = "reserved";
 };
 
 /* SER3 */
-- 
2.43.0


