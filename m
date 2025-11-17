Return-Path: <devicetree+bounces-239342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB633C641FF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AECE74F240A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5284732E734;
	Mon, 17 Nov 2025 12:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ap5eH/93"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay157-hz1.antispameurope.com (mx-relay157-hz1.antispameurope.com [94.100.133.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD0832E696
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.197
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383088; cv=pass; b=nGkylaXKzo2PxH7fsaJ2ECDt5akLUgH30WWnTWslKmImLHD4VzTEPWkxggd3P8r7bpqSoAJ9guGLhTiI2E5dxGKQOrlGxrKZP2uFok1DiSwnhM84kPc9qqk5B/X/gx8Yvsgy2ZaH8oDSPQHGQEWbpIm8mYr0lMusUdPHbHlY3DM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383088; c=relaxed/simple;
	bh=hB0nbX6tYiAHle8PBHNp9gI53FQFd/DI687o3Fj9g4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NxotpYfHv8Zf6Auv9cF9Q8Fzkz7iuZsbkxRowtWqpul9OgawKsHO0CNdB7TvhjLwj2JFLWOdO28Kn2C0lW64MYyNlqSasVHFkHyDpCxteL1u+abxmmaQEZgRpiTAK71fJ8mDqgZK4K6EH8PPVBBbhMuohJySAWtffy0gjyiYLtM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ap5eH/93; arc=pass smtp.client-ip=94.100.133.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate157-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=yYiuMB4tO54AzIeDH3kmJFpjruAX6cuTTrgN+LVCJSA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383029;
 b=pyhPE464/XZi+dFdZ3yzLvgePBUpE43jaoMTSlytpIyY/QYLCQOPPapSHeX7oxCUUs+wdNMW
 4zejYwrXQjqSCic+ulDpQjFKyd0NwRHMUFZ1r+fBPYwt7rzzh3roY7BRk2fzPkfncrY3k5BshiD
 yv4OlHdymECgzDhF25+01f9wHywKSTNynFWAHDXhF76+GAFIoGhfE5/vHqBHYbGVZGOK1G6WKQj
 MfsFh+teMehbIpLafwASdaV5FvU7li1JSMqZWgbl89j7E1qgWBwWW39RaIAoCOsBAxuF93zk4De
 KHUr7tAEels/WVH+qHA7BQEf0q5vEyeOIT00Ha0wvygrA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383029;
 b=lA70Jpw1+dBebDVbGPN4X2BI0yxwAZoz0ABreOy91bd+QNKPJO6LWByz6K/w48+dD/UpWSYJ
 FlM4FGv4S6I/9vIvN0ZNOkhCNmBXxdC3iCpx0f3dC96HwPIt4PeEe5H+mb6cEfV7eG9c+N6q3Cc
 unhUC6Ppkg8/VrHtBac+xPgX6nYAW3R/OyJHD/sM5gIcr3eXla0smklc3859ey4aberofVMvsy4
 hwlbkgaa3RL7KlKfobDWWY/PkTajhw61YKey72sHriqVgvCsL9eDbKcrFirwBtxhszB5JPj0Ms2
 hz9ApA//cAz02WmIcYgh+CYVv3az/pdVSoPa7/HovkGzA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay157-hz1.antispameurope.com;
 Mon, 17 Nov 2025 13:37:09 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 031D9CC0E95;
	Mon, 17 Nov 2025 13:37:00 +0100 (CET)
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
Subject: [PATCH 8/8] arm64: dts: tqma8mpql-mba8mp-ras314: Add HDMI audio output support
Date: Mon, 17 Nov 2025 13:36:35 +0100
Message-ID: <20251117123643.711968-9-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay157-hz1.antispameurope.com with 4d96gx555tz1nrwT
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:022db60f12a529ac8f262cc02b0b2722
X-cloud-security:scantime:2.246
DKIM-Signature: a=rsa-sha256;
 bh=yYiuMB4tO54AzIeDH3kmJFpjruAX6cuTTrgN+LVCJSA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383029; v=1;
 b=ap5eH/93m8TCAeIFEjUI1p//nhKirl4elRgnAGSddvM4bAAAiq3/k/31E2uo7T257tRuATNA
 Vpgl0daKCBGoPYJ+7lbjFB7DWT+77/zrqAej22xCpk2+Q+/KlDCy9yql70WX8BfSTJTDUqmpMxL
 koq9QxSa8vy0t7e7JLS5hbbXQflO00x5jN5xjoSbG7Hn4JdcF5FPHADgP8CYoWYSKkgbO+NafVi
 qB9IevdlWigWE8DkQCf1DUod/NRuQnhApVfu0q232uFgJfonLsDtjU13djT24D2vpm3oFc6+KWD
 FAOcjQAKzJLLtyBe0+HBOIlF+Sv8uoXQZ1P0Z+EngZ7Sw==

Add the HDMI audio soundcard and enable necessary nodes.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts  | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index 30f0e81c4be00..6e927ff1e967a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -159,6 +159,17 @@ sound {
 			"Headphone Jack", "HPL",
 			"Headphone Jack", "HPR";
 	};
+
+	sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+	};
+};
+
+&aud2htx {
+	status = "okay";
 };
 
 &ecspi3 {
@@ -335,6 +346,10 @@ &gpt3 {
 	status = "disabled";
 };
 
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
-- 
2.43.0


