Return-Path: <devicetree+bounces-261725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKnZNIJ7gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:25:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4EBCADA7
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24AB7304C55B
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC053590A4;
	Mon,  2 Feb 2026 10:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="A2RJO0gq"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D203587A7
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027608; cv=none; b=ftyBv/MBi0LprklknNibWFERRpPT4L+7Zcd5U8A6YE72X/bXCuiMWP2J6hPkH0Ap/uH5zndVhOGzEOLP5yJUi1i44fKDo9KwmzAz4HdDt4vOdleLaSQlBBJfWcpPiFryv+ezGj6ukh9a4VzoVb+XT20vRxCpvbhQW0ZvgmH0kww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027608; c=relaxed/simple;
	bh=vBIQAu2NOZQe19WedBT8nQuc3OGdfEnGQrHUhvVKbDs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=gRHxilAjfLyiQDQi8hlmzx+PaLMuVh6s0Y+ItaA1jM2cQTAlAbYq/e9vFaoAgC2CSw2y2/xc+lG7f1jmIaJzfA3BUOXubk+GP6/JvujxtI9Tnph5PxaI6rVdacWHiKvPpQPcoYDUcVgrP6W9kzRc6MOY9+TqyK5FWUz3OX7vjGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=A2RJO0gq; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260202102004epoutp038e10cf9383032f33320f9667c6092d8e~QZrpUwMvJ1245312453epoutp03l
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:20:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260202102004epoutp038e10cf9383032f33320f9667c6092d8e~QZrpUwMvJ1245312453epoutp03l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770027604;
	bh=5htzmMZnoeY2yIF5viAB9yj8dKEIv03rbGoWVocn2jw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A2RJO0gqV8m6L+htvPr6ahwCgTAiKZOCIDaSSTOoGayI75IQuI8Vb/sHM+UH3xqRz
	 YllWK2cxMW+GyvGZGOW2MYr0NwbLX+T3MeVjh2871VX4rbUCc2iLI2FgJ66Rw4yXL4
	 1GKqObqTjZm3TNkHMygFBn4If+XGxosewjXxsrnk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260202102003epcas5p295ecbd8cdb3e834b93b90dc33f446d56~QZroy1Hdn0827108271epcas5p2W;
	Mon,  2 Feb 2026 10:20:03 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.87]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4f4N0L3WnRz3hhT4; Mon,  2 Feb
	2026 10:20:02 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20260202102001epcas5p4ebe15ce1cec50c6ca024464ffdbe9d79~QZrnUgw2Z1862618626epcas5p44;
	Mon,  2 Feb 2026 10:20:01 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260202101957epsmtip1e09470b86119a79abd6a8782573d0112~QZrjm2sU61774317743epsmtip1T;
	Mon,  2 Feb 2026 10:19:57 +0000 (GMT)
From: Raghav Sharma <raghav.s@samsung.com>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com,
	shin.son@samsung.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, chandan.vn@samsung.com,
	dev.tailor@samsung.com, karthik.sun@samsung.com, Raghav Sharma
	<raghav.s@samsung.com>
Subject: [PATCH 3/3] arm64: dts: exynosautov920: add CMU_G3D clock DT nodes
Date: Mon,  2 Feb 2026 16:05:55 +0530
Message-Id: <20260202103555.2089376-4-raghav.s@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202103555.2089376-1-raghav.s@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260202102001epcas5p4ebe15ce1cec50c6ca024464ffdbe9d79
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260202102001epcas5p4ebe15ce1cec50c6ca024464ffdbe9d79
References: <20260202103555.2089376-1-raghav.s@samsung.com>
	<CGME20260202102001epcas5p4ebe15ce1cec50c6ca024464ffdbe9d79@epcas5p4.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-261725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,samsung.com:dkim,samsung.com:mid,1a460000:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raghav.s@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6C4EBCADA7
X-Rspamd-Action: no action

Add required dt node for cmu_g3d block, which provides
clocks for G3D IP

Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 02bf2ca52fdc..0bf7c4cb9846 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1473,6 +1473,19 @@ cmu_mfd: clock-controller@19e00000 {
 				      "noc";
 		};
 
+		cmu_g3d: clock-controller@1a000000 {
+			compatible = "samsung,exynosautov920-cmu-g3d";
+			reg = <0x1a000000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&xtcxo>,
+				 <&cmu_top DOUT_CLKCMU_G3D_SWITCH>,
+				 <&cmu_top DOUT_CLKCMU_G3D_NOCP>;
+			clock-names = "oscclk",
+				      "switch",
+				      "nocp";
+		};
+
 		pinctrl_aud: pinctrl@1a460000 {
 			compatible = "samsung,exynosautov920-pinctrl";
 			reg = <0x1a460000 0x10000>;
-- 
2.34.1


