Return-Path: <devicetree+bounces-233269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D57C20658
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 95A6D4EDDA4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747FF22E406;
	Thu, 30 Oct 2025 13:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="CRIpZSPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492ED1A0B15
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832435; cv=pass; b=hln+flrocbcB5usvttsD+7qbDuo2zVYFloq+ekuZPAVW0NCsPlxB2u21xrHjkY7xlREL7/j1UQl+PbM/4dLabCVN3BPl/LCL4HOkdFDpAWAza/fhOIdg3/heqzOw1iMVWBdja0hCUna5/5jrSXkynGwoZihEiG4FVtY0PKsleDA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832435; c=relaxed/simple;
	bh=vSEt8sKRMJkJ7G1x852UGcOe5J/Jb3KgwI4p2Vj8AwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V9RSsOUArwwDPr4YNbkfT1M/qixqsFMTvzW9kKCeh0A2vAazPKKsg6WRICWVrHP+oB6sdbuTceAngrEacNnPA5SeWQxURmIg3iT6Kpj5tMIsa8IuvXxxXsjdv2t+P8dxdIp2Ud9dJdYF9SUFgX1nuR89ZeJqVrhXiNZ3tKXX/Y0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=CRIpZSPK; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=kOaQn4zUTWP9GdeQhCdCgUXwFC1T+DHJft+KqyFqp3A=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832412;
 b=IHySeV4GHxrkIc4NS8Aqfy2Ae1RfpfBP+UANB9euUAJ/VkT8husrGk0TYGDVk/iwkfgbketc
 kRu5ybDodowuTUV52dTTXFenjQDR5UywtONHjsTVZ1wWd7v00ukCQvAEmZphMBa+3rgmp2D4HNA
 1CzECnek+pnwtdg5lLPD5xzSglW2JbyM2P/OcJRiKXZGGAAtQLdcfM0fZOKSv7L3eZRzvZfUkox
 9FrR2esW+KUuToG8TS8bNsRXBY4xdnbSZZ4yyLd8BleaiJu46PqWoyFOACEPBSLSi2pIa3CNTrQ
 /yxzgn0J/liz/utXS/RZpPK/E0liwNpaOveZj1e//rZKA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832412;
 b=kU4UAzTPpXVClhMmDwnNONp8L1yP/DsgW7uzRMDc+LjmbKQdO5fYRbxNXij8sB3B/apCNv01
 OX7PbkeSjV9IWH43+GDj8KFJH8zBzaBb13BS972jLwUN195D6wR2K7aMGHHVNi2eGSu3KhiIxTv
 bflwbTgcoHSZR7dVze2DOvKePchy9HF1IEqtJWtLkX4iEqpq97JoOxnEKawgR/FS3lbmjnh3FGK
 ixTiX+IoZQX/jwFkam5NK8b9EUj69X/FiAWHKayNofuBzNiL0mBBgnYtJZQYMaRpJh8mL8Np6cW
 ywQKCXUFkg3R2/MSD+ZTJJsoo6YBrKR+W25p6LF6gv5Ig==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 30 Oct 2025 14:53:32 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 50BEE5A0994;
	Thu, 30 Oct 2025 14:53:15 +0100 (CET)
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
Subject: [PATCH 15/19] arm64: dts: imx95-tqma9596sa: add EEPROM pagesize
Date: Thu, 30 Oct 2025 14:52:57 +0100
Message-ID: <20251030135306.1421154-5-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4cy5DP37Jqz3ybG9
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1c794a8416528de567ccb6017bd72231
X-cloud-security:scantime:2.053
DKIM-Signature: a=rsa-sha256;
 bh=kOaQn4zUTWP9GdeQhCdCgUXwFC1T+DHJft+KqyFqp3A=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832412; v=1;
 b=CRIpZSPKiICigou8IhjJzwJekjzUje7IyA/KAVxuM0VSgJPc673mLTVzoT8vHs7GugIO+lc2
 rh/xvvqfsniJR73Sd+Hl6rau18RzJ4HlYcGwMI4cn0rLMzBFh1DpOsmeuqc4bGF39AoyR8Pv1Mo
 frmWHKq5YraYdXMok3Q6zsd/sVL3arp6WK001+8NHYyB/XDviHyJucZUgQqjAVndpsIZ+bcsIME
 WqnUOsJt4hKY3AU01F0S2xHIH9/PZgBRDidqjpWYAnNOwtf4mxG+G1Wn2Cj+cUp1rsEnv6xPtaF
 /6MvtHu3/xCITatzRh+M9zR/dW4gXlNW1czCb2jQJvUoA==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

The special ID device of the EEPROMS needs pagesize, too.
Otherwise only slow byte write is possible.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index a4c6083ab43b1..43418844701b1 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -203,6 +203,7 @@ m24c64: eeprom@54 {
 	eeprom@58 {
 		compatible = "atmel,24c64d-wl";
 		reg = <0x58>;
+		pagesize = <32>;
 		vcc-supply = <&reg_1v8>;
 	};
 
@@ -210,6 +211,7 @@ eeprom@58 {
 	eeprom@5c {
 		compatible = "atmel,24c64d-wl";
 		reg = <0x5c>;
+		pagesize = <32>;
 		vcc-supply = <&reg_1v8>;
 	};
 
-- 
2.43.0


