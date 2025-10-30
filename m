Return-Path: <devicetree+bounces-233274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE28EC206EE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01BA3188AD07
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C9E264F99;
	Thu, 30 Oct 2025 13:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="AOHyzUkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay13-hz2.antispameurope.com (mx-relay13-hz2.antispameurope.com [83.246.65.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30622A80D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832448; cv=pass; b=IomANm5nNn0A9zAqZ/2lGsoKMShIw/lmd8TQGk0gEfJrl9ZLrMPh939AVhap3eT9J5pbRfYqHmFyTEKfvmRNSVqfOD+RK8twRNlY3AkQj7o1H7Reg+hPcUfe9dDLOdKMV7wEUckzstXFjlYTm/pwaHq4kjxeeuggFrihZ3qHljY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832448; c=relaxed/simple;
	bh=+sePMg1ADt1lzpdhzp3d8sszHWrpZkkDSdH4qWD+amU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=er4yQX8N2LzXHrSS+hef5LMtsLfx09pVvQ5JKsfo+EkHNo1sZ3xm00IP0CdbJXCYw4q2YVq4HdgRKNDJkGIxRs7SIl53ho6vdFN/6iJgaPlehkff4c5C1gDJo5qbb190zl3iqb9XRpFp2zX5waSZYB6ZYLKBihy8wnWOM2aQ6Js=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=AOHyzUkL; arc=pass smtp.client-ip=83.246.65.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate13-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Q/J0eJNHpyNTzgYF4P4yNw/ejnkLZX/hDBoKw5OjID4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832418;
 b=nKsodXoF1nnPmrmsD/I//y+/SMfE7zI4hc8PPVAaTGOfwOb1Xzt8mcMUYr4vrQY9K6/1wnva
 DWF8ArNjsw9++kKcbJdA+mD/nEX4BnyqpfzjGTvK2aB05KRL0UKgV+8iD9YRLH3y1TfOFaQO58Y
 Z1sBDM8LLjAHfjaRFmwhGAGc143yqL/Yze/Nrk9fdtJ+7RWwATYmtqYjaabHypGaOrSigejxu7t
 i9ufUB/g1kpLswcyaEiVoGoevT3xy59NaWIuskQy7Nd//3RiL4WpJBmckPCiNvXYl7sQ/Bo4Uc5
 q94l8BcMtNSKv+m5DQ87WRTQnITokDdE1Tm9lc4yCX5Mw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832418;
 b=Q6dD4KKqc5WvPnvL5bXS6JAOGysJxs2uqyY45P5fDooCiq6jn7rXkeBwtt7fbBD0NUngHaWx
 9JCGPdeOIfUaycvP7e0LRNU+huXEXEoZejc0iDYUBWvNIQATvr11pYl4X2jR4Ep1LTqE9Bb6y2U
 PQwIN4oNFTkeRQU8At6FBLkxGgwxG0oeZdDqmbKcOseBQT8O4G3U6xrZlLNTt9ArIUSOBAGGpST
 DxQgc/hY9qCKUgpOZB5fDNXOrVjfBLF5skQ7xuL/BtdTwGHhAIaqZ/8sKHZi6x/+eGNR6URryKa
 3kh27Anah9GV0yvrQ99HyE8LivT/IrF5PwHngLJ5N9khQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay13-hz2.antispameurope.com;
 Thu, 30 Oct 2025 14:53:37 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 108875A0B13;
	Thu, 30 Oct 2025 14:53:19 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 18/19] arm64: dts: imx95-tqma9596sa-mb-smarc-2: remove superfluous line
Date: Thu, 30 Oct 2025 14:53:00 +0100
Message-ID: <20251030135306.1421154-8-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay13-hz2.antispameurope.com with 4cy5DV6fJtz3svlF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:813d6957f8f6d1a248c870b46880b697
X-cloud-security:scantime:1.840
DKIM-Signature: a=rsa-sha256;
 bh=Q/J0eJNHpyNTzgYF4P4yNw/ejnkLZX/hDBoKw5OjID4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832417; v=1;
 b=AOHyzUkLrKhlNfDdDjd5RSatc2+emRDO4oknXZm7g26oWYOu8jkoUpaovvGrlvGoZ7NmbozH
 eCsnxXYhrxWSqDIO3H8w3FjNfl47VOOXfvv0kxhJrqS4HheOdF2NS5OQKQTUDApI/Husdx+GCAx
 s0wCMEfzJBq6UtDTIMfiJ6DpFtu3f85zqcqh6ClA6bhQBMnhmZjM1wgcfAOPsPlgG8iyfAwBUvM
 ZL7O6YpFyZr8F5Ki4Sh99lR2Q6Mmz9xWHxPEKS1sGcDve+8qBjCipqK1Y2j3HBcpVNnlpquepFq
 0K7/KS2zL6V76VfCzO4n18HJt+/mOpPlFdnvNsXgck6xQ==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Remove empty line, no functional changes.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 15d117d785445..d3a9360b8c548 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -259,7 +259,6 @@ &usb2 {
 	status = "okay";
 };
 
-
 /* X16 */
 &usdhc2 {
 	no-mmc;
-- 
2.43.0


