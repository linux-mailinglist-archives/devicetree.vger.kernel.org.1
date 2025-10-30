Return-Path: <devicetree+bounces-233270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBFFC2061F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 559B134DDA4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065A123EA82;
	Thu, 30 Oct 2025 13:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="X+pPlE0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706A6226D0C
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832436; cv=pass; b=t0fiTuht2UTtOChDoJ+ao4u9eMQZr3ToAq4vMn6qDZqnO948EDuxu7T/i0II/rpNvpTqpceIz4/Zhu/Ec7aaocs/P2irtkfp1k8fukzB2mlIZQnqn/yEfGfCYRoNpem8+ievQjkjmec2Fi0WGrYEjCo5zMrRkZXd56k4H7NhJIc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832436; c=relaxed/simple;
	bh=a0hUOLlXKcl9dQnZySZ63Qhf3hUcavWQoWIZINB11V0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EAKWe60z7RDgWbAY2JmpuCxSuEW0bmhzCrYBeD5/bjv1I4ABoWnifVXCGPkIPJisKEjgwI6T3/O3ZzIcXdHTKDBQU9v3n4kGdCgYq0GRxETnXJHXzlsn4AKL1PEkrl1WaRTCMzpGwXU28IMtL+qXzMsZiLKDS2FJLyBsGelkAe4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=X+pPlE0x; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=AnIuiwyqQKsNxaCMen44jTAA0px2zVCsntf2UHUmosQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832417;
 b=qk9TKBvaH7++fy+xCx/BzbWRbqWmZaxnpPD+pjIxvxWG3+ehuL3RrEX+QdvqXaUuo2jFAiyn
 xyy2e/2u+ppHaH4QNr7LUaW+p9TAbasE9d/U+TSMz44ZjixmARQ82onmu3/qPFPE+jXt670bpJ9
 3o82s6LSbzgW6Po91/CKDgKXP/uNV5Mpm3R2otIZenxpOLpDA6nOhcK6GS36MU+7tbMDZ+fDHBe
 ZAej0/v6GtnQ4sNRe2ke+xIedAmOV/o8g154IYJS5KuE0ugz+CwcHWDP8C/UbA0KaJCEJ/pbYfP
 g6wajcSd4Pe+H+f/0EHnfufM9Qh0CPopSYyW3ZL98NZ+w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832417;
 b=hvN2O92M35NF07e5PNKaj3u6Jiarng93eNASv/3VIowz0qnEjExeW+LFz3dkgkSj/LpzOhRs
 HiiRwBwS90+kp4rGgzKoXvEizYX9Wahi5QJANauIc0cNJ3fp0kuhAuiXfVLzfqqfjZON7UHNGiT
 lMhUCVANEWc1lGWCjzYqLI2jpsKvKzsJFrMEHXFj6WoEkiCWj1Vlz8CIIYS1jQm2oQqeeGjBatf
 mV/DZo3rKUQkVP4+i5FoUGoSlPhFE+ilrJ2HRv7oVz7Gu7Mvh4O5Dx9dtHzAi+UrBKMZtRvk1Po
 3j39NbC7WWUSD14vTafnsS8djMYr/Tp/EIE2+dbCrCV4A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Thu, 30 Oct 2025 14:53:37 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 95FA65A0A3E;
	Thu, 30 Oct 2025 14:53:16 +0100 (CET)
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
Subject: [PATCH 16/19] arm64: dts: imx95-tqma9596sa-mb-smarc-2: Add MicIn routing
Date: Thu, 30 Oct 2025 14:52:58 +0100
Message-ID: <20251030135306.1421154-6-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4cy5DV2mnCz2nGl0
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:af15caf252ad1b03706cb5988fd6514c
X-cloud-security:scantime:1.978
DKIM-Signature: a=rsa-sha256;
 bh=AnIuiwyqQKsNxaCMen44jTAA0px2zVCsntf2UHUmosQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832417; v=1;
 b=X+pPlE0xszb17YDA8gEP5q/5bmii9VOfklkdcmmoEbE74xvnPww1x0gtw1yjj6Yw4A4mekKd
 itP45ktcSnMAXnkI7Fg0VZNokYHmgRjsh/f/LaEhI9+kV4NDHRt+JoLER/pv8OJ/cmtgC3YXFiO
 fqCzTwtbMydFeRsDsJjHO39LyZE+0I1GbB2TS5GSzoMugZfgCemKnuQCf3rV9NJ4w8c5MPfoNtc
 AnUbRPEU1GyTCDq/1m67f9ttyqVMK4B59Hy8GmZn2/hyuPrSk/iL/tD36VWph7c/ZsqhCYOn8eL
 8jDJ6Yg8Dar7Oay01TvvflTpOt3lY0yUtUC5uNAXnarmw==

MicIn is connected to IN3_L. Add routing including the Mic Bias.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts     | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
index 8caf0c68ba9fc..d1c3d55b14469 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dts
@@ -144,6 +144,13 @@ sound {
 		model = "tqm-tlv320aic32";
 		audio-codec = <&tlv320aic3x04>;
 		audio-cpu = <&sai3>;
+		audio-routing =
+			"IN3_L", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"IN1_L", "Line In Jack",
+			"IN1_R", "Line In Jack",
+			"Line Out Jack", "LOL",
+			"Line Out Jack", "LOR";
 	};
 };
 
-- 
2.43.0


