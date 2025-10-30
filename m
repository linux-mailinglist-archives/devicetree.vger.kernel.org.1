Return-Path: <devicetree+bounces-233277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC0BC206C4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:59:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 623D93B866D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57AB6267AF2;
	Thu, 30 Oct 2025 13:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="EqrdQvhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay100-hz2.antispameurope.com (mx-relay100-hz2.antispameurope.com [94.100.136.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13552261B9A
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.201
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832506; cv=pass; b=D2/sJERO40qXbAe7vz6abJEFGXh+QbAbbV5eHB63J4savuxaQcjvqKMV3+TpfB/uwbCT2zWPVqMYwvoABE1wMQmYfTK8I0BrQEQXIGSU5s00iWiE+q8uFRG+DsEc6hUlTkfRyFtdekJhNUT/90LbOzi4lXpjq0RCu7pX9uaCx9o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832506; c=relaxed/simple;
	bh=EaVfQg/+QVSPAOgls27VI6muuvBs3u/FUZyH+/o1etI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LuTJmFmZ8jIP2FJT6kHoiAmCJ+7su4TLg/T16287XfQUX9QTGn2iyLU4QZwuHRQg2PW7y1ZQ4jMpY7SG7R1qYJfuzEoSJK/NYzz5qUKPzYanYN9jzz9qzMb3XWjHcnz2U8MFvIP7ENI9j+QQhqI2/mRiIrqFdntu7mi2Y/dtS7E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=EqrdQvhI; arc=pass smtp.client-ip=94.100.136.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate100-hz2.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=KEZFS4oLzG/srptDoN54vEJHXHS1Iew+xlKYXMZp3q0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832418;
 b=HbHHwuIgBioZAVIb4XhDBwdX00LRXN9c6bcQ8QochgaQHIkqT9vlmlY0Jr9qGC5MM1DnwWsS
 q2gR7pmQp4yIPpuKhDFJQ2aFIU5hhgHj+Mts4Tuk+HZSVHkcapqVfLbzHXCvK8LeKIhPkOeF5Ja
 6BCnlKYrztne3Zf527Nu8dXwvyj8FTJVWlZ7PCUJ0Z4LTU1wfby8KvwUCUhHX5ViB19uOknOJNm
 XVDJT0wFD1IbfOSjnTTogkOsmSoKtpLxeELLUX8K5QQmgNaqZHDayoFMiy8wHk7BJJKt9BmxINX
 griWMSQKb5Vo4vvqR0sW2NTeg1O1BffgI2mTYHc4/Yiww==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832418;
 b=MBsuo0HoswkhBiGVeiDHmucuIwXZ/aIL/9bfVB+x2SzidlLmjiSaBBtykh4SjAyOccx7jBb2
 48l1G5rOj3ks//T/qzwdoq2tnV7c1zlXXTEyUVWxU5PSc3Q9+G8a6znAbkTCq0zPRzP1JHKXVLQ
 sM4qqHTSEKptPF9MPQMn3dr/0WbPZmFVX70rl/ry7s1AQVENBuAQ2JIu3uzRHsTtJJPMan8CmO2
 UKMEDqQ+kWVHyA4stCopfJf923Kshhq37l896Eghpk3Lxv61Nm38MjKd5JYvOh7a5IzHVXc5Xkr
 CblJplvKeutudwJJidN+bprg6/61aA3yqUsIHIbKZxtOQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay100-hz2.antispameurope.com;
 Thu, 30 Oct 2025 14:53:38 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5CA0B5A0E73;
	Thu, 30 Oct 2025 14:53:20 +0100 (CET)
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
Subject: [PATCH 19/19] arm64: dts: imx95-tqma9596sa-mb-smarc-2: add aliases for SPI
Date: Thu, 30 Oct 2025 14:53:01 +0100
Message-ID: <20251030135306.1421154-9-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay100-hz2.antispameurope.com with 4cy5DW3sFkz3PJ21
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:a7bf318555c57f949278cf3d40d2a7cb
X-cloud-security:scantime:2.336
DKIM-Signature: a=rsa-sha256;
 bh=KEZFS4oLzG/srptDoN54vEJHXHS1Iew+xlKYXMZp3q0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832418; v=1;
 b=EqrdQvhIWy/yo8dZl9APyfhC60wNwFqSgfJg9TbnTRiPBSlKWl040Z3DyupI6WOtFMmEdbvQ
 1kxCZiKu5lMgjr1WuOSLYlYZoJO67grPLx/O9JuuqKlN/5nKHuYMKlsK4Ys/VmaR4d1urMtf5dG
 RP6OCLercbtoiSc+8Yn+8dOLBr+PxFRsXaCZqJn5UpXW7bT0Tx2BLkcziBdeM/GBeX+mcWI+Eox
 hSpLuuv9Ouldn5ZoU0ACFT+DJMmyPonEmbsABuJ2hbeptrshD+JnchgE92OaFBoMyESsTGQAHv7
 o6OSCLPFPVFOQwJqIsgM0xvSUp2q/DFuB58KDoTvebpDg==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Add missing alias for SPI controllers.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index d3a9360b8c548..97726eded0f86 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -39,6 +39,8 @@ aliases {
 		serial5 = &lpuart6;
 		serial6 = &lpuart7;
 		serial7 = &lpuart8;
+		spi0 = &flexspi1;
+		spi1 = &lpspi3;
 	};
 
 	chosen {
-- 
2.43.0


