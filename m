Return-Path: <devicetree+bounces-247038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCABCC3456
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D933930141F9
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B573398B7F;
	Tue, 16 Dec 2025 13:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TFp5og3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B85398B8B
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891911; cv=pass; b=mrV7oc5W0GX2vSoWUi6bLiGN4HGutpFaBNNB+Z/oO9NbgbeUQ7pqeC9WL3ugvCdBFXrNyPUtQoJua2Uh0vvw9G7H7XFnPbb+BiL3Yrg6bttPucUFAFDZHk01nUFezRZV7WFx1OVxMxtI1ch8AbOJrdHyQ8jJ15oUxrIKPGgRF80=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891911; c=relaxed/simple;
	bh=9VL5LgAZ1E46s2MQ/aqB4s+D0s57n2MfrryqVuXDPjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q1HFaJ3fwbrxWEOhMMcVhmVVZIF5HH83NYSLHSk8HPx7Rvqr0vJ4AgIdUHTaCde/dT3ech/qKgMUegy+i+cnhbZIH6dWoJKSDaJ42CL8YeFWQaScu/1h0eWkMuF+ngMwWSUyrPTH8YfJX6qkKn/ys13luzE1FjvhNEQBmiLGZ9c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TFp5og3D; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qzb3UHTZF0/ujf3fl4j4CQVM2Zy+EWDlaYGx3MSb/lw=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765891882;
 b=YgClAEsnFJXACkbkslOgTV7Eohob2BJNaBwWxJTSLTP8hNgamkBpZbK3JNCPwiXQWnQz9MfV
 X6ujpym6eORqHcisyiYC2AXPkiy2k6JbCYfG28qDikQwNY26Dno39+SD1xxL05MwLNQAp50UXLw
 fhvY8Z8g3JUvUnksFinYK7xN3KlKlIXMQGtVdlWFg+YMMYkw74z+K53h5yRIzBiLveNFKoI0J54
 a/4awAf3BYUcBqpkMFjDcvfTgbU46VqRCGVAJZEchADXsmfs0P1CESViYV/ti6qoRvp6KnF9Nya
 F8m+hnO2Mgn/xZY/BIUxBU1NdagYgjpqEVu0d5ON5esaA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765891882;
 b=QA8fur3CRiSgHLd7iD7mYrMSyiP3UqjpLyTI6RhoWkyJ58A9AD5aW+Y3ek9zrwnz2g/OA6Gc
 ILMPcU8WFVen3QQWFESQ2qirub6sepRSVnh35mQTQNGnnmQRrrvJPXFDyZY1y5bTKYTiGROEo1L
 rAFOwCV/GkXus/NG6lhnZKeqz5tYPpY0qdn+rMzrfnUmsI44Q1GogyTER8VbIvn5T2Y5eQOItUy
 x0FQNACXmnNkjlDnlBhRNAS4BcYYTh1hQG02QoiNW0amcoCZxMUxuP1+DFKqiGSScm+eUBCWiNm
 kUL3HYC4Vd86XQ09/MaIZm27HpDRrKrNUtbBmdD8+0yaQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Tue, 16 Dec 2025 14:31:22 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AC5495A0C27;
	Tue, 16 Dec 2025 14:31:14 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 3/4] arm64: dts: imx8mm-tqma8mqml: remove superfluous line
Date: Tue, 16 Dec 2025 14:31:06 +0100
Message-ID: <20251216133110.905950-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
References: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dVyW75Qsrz1kNh4p
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:69d42c27ce551e48e93b8a3b97d7664d
X-cloud-security:scantime:1.976
DKIM-Signature: a=rsa-sha256;
 bh=qzb3UHTZF0/ujf3fl4j4CQVM2Zy+EWDlaYGx3MSb/lw=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765891882; v=1;
 b=TFp5og3DgHOsXgZKja72Z+21oIaGc4qw0rpbgTGxgeNWqAQ2m70sI8Sd7eVxA3wMB+PUpzzo
 bAZffvWBXa8GuBmrRRaqfTQ0Bv78KTRgfhJVVzweABZt6SCRbOyJuNzkFwMf3XiltSGz5vgYOgC
 v8zDtKXS1MfNMOQtR+5j5WrvCgrshTJ+eGCUJBs9V7dl6TqDHDsp0PgC0UG84fD/KNJe34bj4pk
 ApXHoPLRyLG4Rc+Gbglzc1aaybIR84a10K5SljTdeHUjr/+uREibjixUHCpmFaWq/xH+JPizbhn
 LCEDr4LaOPkh4H1Zi/aDyaWArmYF62rsfo+zhY7zIsEIQ==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Remove one empty line that is not needed.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 6e63cf8beadcd..2e3860a5f4fd2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -195,7 +195,6 @@ ldo5_reg: LDO5 {
 		};
 	};
 
-
 	pcf85063: rtc@51 {
 		compatible = "nxp,pcf85063a";
 		reg = <0x51>;
-- 
2.43.0


