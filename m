Return-Path: <devicetree+bounces-293782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFO1CE82/GmNMgAAu9opvQ
	(envelope-from <devicetree+bounces-293782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 08:50:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8354E3B72
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 08:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F8DA3007502
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 06:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CBC34252B;
	Thu,  7 May 2026 06:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="Pfy55lYk"
X-Original-To: devicetree@vger.kernel.org
Received: from cp2.siel.si (cp2.siel.si [46.19.12.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9E3340A6A;
	Thu,  7 May 2026 06:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.12.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778136651; cv=none; b=GKJIuvlCFeQw5Kt/ahp792HMmeVISCGRXXL08iS4x6wMjeCOp0FtcrUgXiBHLyL07n4BTLjN78iMz5iTWQxzfP4ik2bg5hYVrOtapCoHUcOheoKy1Vv8AK0Za4uAbSLxlfWJ10/Cl5o8irpLsvnFZ6+GLXKUD/vBMs/55m+Tq6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778136651; c=relaxed/simple;
	bh=Qv7L3rJIaKLP5t4DFVT9dkQwJJGii6Qf2Hf4zonB9Ck=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aJHrtFVHQ8FdYFIagzuJxNhSs5L+mVAR4zuCerzgGFdJLeTIpv29XAu/5Vazr0yB39vLqYHns0PPD0skRqf1xD3fRsVnqCt0ulfCMD+eAk9duEtJYZwd5r3PU3OVeH7WlSgpJbhvA/sdb1Oq8FyIP8qZMXF9oVZTkX9TQBzPDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=Pfy55lYk; arc=none smtp.client-ip=46.19.12.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=8iw7EC9Hql0J/OWsMobIQ+qswHWUeAMDhLnl/FCsQmc=; b=Pfy55lYkmeSHAl/heQ0UJKv6Do
	mwdokG6ZL+glEA5IzVFsL+kyAEe+YvI7p9k7/AOxJWR3lypzNctCMUPHm4xqhOjNk0LpMYbu075H9
	LBsBr5d1p5OHO1ui32pxOOdK4NaJucAksI+ImvG01LveCX1I38YW3Mk7KkEMqjs1EHRoEFKJrE0RD
	IARNyvI8LvQN/gC7AbMyy2LuJHE+JX4HTM3IRgoUr9KPu2JTFhNmWlVRpx0Zxr09PEUKwk1TWHgTO
	ppuft+IQ58/B2Q8EzqDblvdYCJqckvzFxlUUcHyydMOqbptvxZD8dgs6afTqhb22Agj7isc3whEew
	uHY+5gFA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:40514 helo=localhost.localdomain)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.2)
	(envelope-from <primoz.fiser@norik.com>)
	id 1wKs6Y-0000000AGWs-37Mo;
	Thu, 07 May 2026 08:21:02 +0200
From: Primoz Fiser <primoz.fiser@norik.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	upstream@lists.phytec.de
Subject: [PATCH 1/3] arm64: dts: freescale: imx{91,93}-phycore-som: Set BUCK5 in FPWM mode
Date: Thu,  7 May 2026 08:20:56 +0200
Message-Id: <20260507062058.1711292-1-primoz.fiser@norik.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: primoz.fiser@norik.com
X-Authenticated-Sender: cp2.siel.si: primoz.fiser@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Queue-Id: BD8354E3B72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[norik.com:s=default];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_AS(0.00)[primoz.fiser@norik.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[primoz.fiser@norik.com];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-293782-lists,devicetree=lfdr.de];
	HAS_X_SOURCE(0.00)[];
	DKIM_TRACE(0.00)[norik.com:-];
	FROM_NEQ_ENVFROM(0.00)[primoz.fiser@norik.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.536];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_X_ANTIABUSE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[norik.com:email,norik.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Set PMIC BUCK5 mode to forced PWM (Pulse Width Modulation) mode instead
of the default automatic PFM and PWM transition mode. FPWM mode produces
less ripple on the output voltage rail under light load conditions. And
since BUCK5 supplies SoC internal ADC reference voltage we need to keep
voltage ripple to a minimum. This solves issues with the occasional ADC
calibration procedure failures on phyCORE-i.MX91/93 SoM based boards.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 arch/arm64/boot/dts/freescale/imx91-phycore-som.dtsi | 2 ++
 arch/arm64/boot/dts/freescale/imx93-phycore-som.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx91-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx91-phycore-som.dtsi
index 29a428a052b0..19e7e84ad6f7 100644
--- a/arch/arm64/boot/dts/freescale/imx91-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx91-phycore-som.dtsi
@@ -8,6 +8,7 @@
  */
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/regulator/nxp,pca9450-regulator.h>
 
 #include "imx91.dtsi"
 
@@ -138,6 +139,7 @@ buck5: BUCK5 {
 				regulator-min-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				regulator-initial-mode = <PCA9450_BUCK_MODE_FORCE_PWM>;
 			};
 
 			buck6: BUCK6 {
diff --git a/arch/arm64/boot/dts/freescale/imx93-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx93-phycore-som.dtsi
index ebc57841f27f..626160132e3c 100644
--- a/arch/arm64/boot/dts/freescale/imx93-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-phycore-som.dtsi
@@ -9,6 +9,7 @@
  */
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/regulator/nxp,pca9450-regulator.h>
 
 #include "imx93.dtsi"
 
@@ -140,6 +141,7 @@ buck5: BUCK5 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				regulator-initial-mode = <PCA9450_BUCK_MODE_FORCE_PWM>;
 			};
 
 			buck6: BUCK6 {
-- 
2.34.1


