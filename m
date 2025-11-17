Return-Path: <devicetree+bounces-239338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CB3C6417B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:38:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7FBBF360CFC
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAD932C93D;
	Mon, 17 Nov 2025 12:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="LATzudmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F294A30E84F
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383051; cv=pass; b=CNooD+ozlwir7JWmzm0n4fqzD4bv8CldpF/ZdljxXdlejOooSCpzLufubylzZk9i4hr1nL1gFl1NwHxOKh8US+9JIalHLGenK0c0LE3KL62zEytYqeJeVCg8DeEYuoqkbB71JWTzxyliKhmPuBoRmfPdSsJDzNpL4foMCT9MgqI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383051; c=relaxed/simple;
	bh=6eQxmAaacP/aBW8Y3d+Wuo10K5fyUcZaZ5CsJYaQI1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gsMcHUU0D+jKXC8YvWSPD7hKCHgOHGVOouYsZ2VQa6+yKlZ6xW6r6Z6FiH2zZC/1IxGaZWv9klcbaX3dZX3Hz5YNnXzDzYMytDc8W720v0NVosgxODTuY7fb15YVHtRzxYYsaMlmUPp6KI6g5QWJr685YS/JXJFl3rKkK2op26E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=LATzudmN; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Nsa/tANqoPEYu2tcmKDNOq4Q7cxzL4+lOwJznVO+Sak=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383025;
 b=cFvrv5a21UpWiHdDNrbuDDXtcHFQx2yc8cJSmtKh5g9TiSzKBjraC7GTqE/S2E9iFZ3To/+u
 ph0YNMywFIdyWJgZPq/RRy+ym+IsTOXhqS42BzwzY1LrIuY/HeYU20QHuw3igP51sM7nIqEFrQZ
 yqF6yI+zQYAta4gVc9cWjFbXsDQt+VePZqsTiZEp797Xy5ObEzLYxe0GJ0TMLympY+xKooGAKQ1
 d/r3wZZMyyvjlPZcfp+6BQLOBNDNvFC3v70cYutAhr8Od3HijW4affUXQtp6H/3JIvQjLLcJ8AT
 UhIlgR/h2E3ypDeFxkJLVX4cWtzx/YiP3pjAJNvHY5Aug==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383025;
 b=Y9MYxXzA31lZUqz0tWssY3LO+XITvDWfh/nRP+O3w/3EMGorgakL0/k/9qKElqnpi3yF7CkX
 LET4G7cANELutpA2UBvI035wEyTWtDd6a2/yrBpRv1ddTAhP8PECx7NrnbTt2uknXr+toFeJnMB
 Pid8lmqMUiOp+jmj7Uq9U7UntuF+CRML5Z6WnFdN/Zw22MHjVnWFRpVknNwY8baxLnqpHwAM1ZP
 7RNt+FrSE689uQzoQWtgiW8EqmsO74lmmNFW38gyprktjQPzaxTqRlz0h+03zP7cneiMyK9jgTa
 eB5CpzaGdz+c73eNY/zEUsZ48KBFG8TpyAwwfYvsvgVMg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Mon, 17 Nov 2025 13:37:05 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id BC3B4CC0E8D;
	Mon, 17 Nov 2025 13:36:57 +0100 (CET)
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
Subject: [PATCH 6/8] arm64: dts: tqma8mpql-mba8mp-ras314: Fix Ethernet PHY IRQ support
Date: Mon, 17 Nov 2025 13:36:33 +0100
Message-ID: <20251117123643.711968-7-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4d96gt3Qwzz3ybvM
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:67e9f8e008322bf58113478606af1b75
X-cloud-security:scantime:1.840
DKIM-Signature: a=rsa-sha256;
 bh=Nsa/tANqoPEYu2tcmKDNOq4Q7cxzL4+lOwJznVO+Sak=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383024; v=1;
 b=LATzudmNndgqdw/lZ0WW0f+KL1OC5POmo+ym75a1isuEoKw91FMnz+Bfvo1mXRI4a+ZUUCqI
 q/Lp4VJYtqrEGTLWkLXWTETSAxTco7rvSd4Eusu0Wef8VPR6bwAsAiPMCWW5LaMxRcbMhcTIvV+
 V2rLIf9QNztSL57WMG64Zf+rntZ7S46xUGdNvZhjfbUdvfoZYKzo/+wk7ucoPzFHBGca7u/bljR
 LghzFJZMK4aiskykF/SPjxihK8l684UbCq8kHrEfztO0gcxl5Ohc/N0Xe5QEa2BO/wt9r5FekbR
 WMDLazXiWd7EEFpvNi5GmtQVNLyyDPiLqacJgPXYiqywg==

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index f7346b3d35fe5..67fe1f63fd93c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -190,7 +190,7 @@ ethphy3: ethernet-phy@3 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
@@ -222,7 +222,7 @@ ethphy0: ethernet-phy@0 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
-- 
2.43.0


