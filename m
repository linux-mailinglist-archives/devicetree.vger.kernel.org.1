Return-Path: <devicetree+bounces-238530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 042BAC5C077
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:40:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5FEA4E0F87
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8F32FDC41;
	Fri, 14 Nov 2025 08:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="cjItImkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA492FD67B
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763109643; cv=pass; b=Ol5MjKqWKff2qK06322Yl/aWrP8Ysaqgedr9CuFs9uTT9XVuE2ZzxYFXNVx8hjnIT+TO24lttPiwqf+TqSEgbuzp3mrmCkgOC5XmKhMcn9POM2E/79bDtn0SEY9dfXvnYlJj/KHnNg3kXTsn0l5iHG76XugBolYSzxOGw3mP5vQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763109643; c=relaxed/simple;
	bh=Ra/5m92uB7SXw4M21jf1shKnl80L1lF9SDNcGq+iH6c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SjHC3+WvIh4UWPfNej3b0OktXsJ6/9O35R3vNkm2WRfG4QnV9TfYwwMnHetTzNu2VLD2zUNJjH+to6G4j1wA4A1ngFU29qk0+82SU0uDW1RmujeK75JAaVaNY/dfp/hdKSchay/DPxV0oiBUUjJlHmeeB3Pzcv4tM6ZK+jcQ3O4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=cjItImkq; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=wFG888Gb9Ru3OuBdwJfnSjD0IrRTCToX06LrZpem+M0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763109620;
 b=tEAbfqUABIBXYWlkn3+xK2O4Xkz2yP1QIV+SIz6/3FM4iBcX0EpkkuZ/F1hrIeb5fyKTmZtp
 ESQ400xRVl8xTRhsFyJ6ZO1+kjffyWs4ztnfkgatx1gXqnS+J+RdNoqxJ6hUKOVAH7R0t7/PzMg
 G90jc+kiTezz/1LG57j7kBpaF+a65uOJ8z6U2WVmgpTzK91u1vC+IbzvHm2wl+1MK+vAyBlGAt8
 eTqKx+KgFLcXKg9bpodl2qQJSQ0/vGu3U/NWQNMj/YYlAdGpapAdj2MTeJtq+diJVx6uvCBVm87
 dYdLMpUeTewetVZSvESnmSxTf7zR+nfZcsJIAK0IbuNWQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763109620;
 b=M2RVtziQUcpMaZ6SnktVZgQU3eMArR0LjMvc7+A79KRUMapVtfR1RXy04PSLCvDGnZL4Q9BT
 fjMEshLcMsVi+XZz0qG/RVqZ9XOueT77bNvR+hxSAAJMs953xftr0xLnaZhV2vNq/YJOBgLQBW5
 g9UPJLyHz/h6tVvemPw+bASb3zvuqXhCJRCxsZymlPHn3BEf1tqjS/Hxc/IOvf8mZG2BM9hPt9g
 w46NnwwnatJj0pKnCwRZI14NOhatf6QHQ4lHiOIN/eYbami2lPgS1ykvt8jqf8dCRmvQAzGpZvI
 aNWer5P9JGaGhBepjcWEmPZgLnaqWgMUeBeHlG/7TKN0Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Fri, 14 Nov 2025 09:40:20 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id B0F20220D04;
	Fri, 14 Nov 2025 09:40:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: freescale: tqma9352: Add vcc-supply for spi-nor
Date: Fri, 14 Nov 2025 09:39:58 +0100
Message-ID: <20251114083959.1463736-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4d79Z33Zbfz4MQ5P
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3960ebd3158cf10cca87d14920876d23
X-cloud-security:scantime:2.484
DKIM-Signature: a=rsa-sha256;
 bh=wFG888Gb9Ru3OuBdwJfnSjD0IrRTCToX06LrZpem+M0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763109619; v=1;
 b=cjItImkqtdl1h0/xgc+WYdFzNHechFGNH8A2qv6okOnBWQQWGu15H62af/eY06o2ojYa3ek0
 xls4ODQFd9U/8h9Ndi4LWwAYR/z6RAComeBv8l9QEF/BItndPYxlPJxApkeOtEFLIm0oc5VHxhm
 9pJc6RrQ4kIUq3uRyXpeOhvRaK0QRS8/YvGZvFOnkZ1BF/IImqWehlXfVB4q7bA5GxqRSZOtpdY
 aU+5nEPiS1EcMav++qUo15FQdjVBed4ekJcCeFr8yhOmwhd2FmhhNKUsbx+WkcKR0T132VNwE/X
 WU9T4qJX02SqyHRWfEda0jU9W+aXzCo220iXHyXmXMciQ==

(Q)SPI NOR flash is supplied by 1.8V. Add the corresponding supply.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
index 82914ca148d3a..3a23e2eb9febe 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
@@ -67,6 +67,7 @@ flash0: flash@0 {
 		spi-max-frequency = <62000000>;
 		spi-tx-bus-width = <4>;
 		spi-rx-bus-width = <4>;
+		vcc-supply = <&buck5>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.43.0


