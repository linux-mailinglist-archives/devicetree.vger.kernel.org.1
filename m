Return-Path: <devicetree+bounces-238082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32650C5705A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D0FBA4E9DB2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D666D3203BE;
	Thu, 13 Nov 2025 10:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="K0qGIcje"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4732E093B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030979; cv=pass; b=L6SEBUxA0a0scUeclaNAv3ewtl1Jb8f5jPhYYg8cmexmRYPI22CZSYYPM053O2IQb/eFG7VXgE+aqT5cTIUDofTuDjJCyqJhdTZaLt8BYWfDCl+qKsuDaeyA5BPNe3+hRt1rTy1KakqK6/QXZnPGJ1A6iU3I7efyLx3siD8EcYc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030979; c=relaxed/simple;
	bh=J6BsqTCmOrFFiAQAx5pEd4B6YJ3Nlg5q4umEShFXHAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B08JDtF7OhSn9owVJoJMM/yQtfRjQRz+qts2RGKp9IwHuscSJGW25qofQWe+zpAWFY5rPMjrPIVHfF4Nu8MIi+R90aSH5A4EFgEsfKeNiS8e1UxKKdNZZSjavaUcYc0aGoxZdmmClamWC7H3Am6ai04IieNoLfFfr4agft0qSf4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=K0qGIcje; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=HwZpnlL5PSUjD1ekyFYHL+mEFm8pXGu4Iwrph47h1b8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763030954;
 b=Ts/mg5rxeoOO+O7851vJ8BhnEhJzheLmWEpKw7kQajUijcSZVejnbQ0b4KwxvpjtYEiVkyfx
 TG0A9aZllbKoJlnDpSuclcw5cv+/kDfKce3MQAO7AjyfgAIj9EYuCmK1Cgy2pUvpk4rxTCjG3cc
 xRtr2CHYYmGaU1f9i+gzM2TiYvyOTUWOcJ7jW+TpjU1BiQEy/2CMF87ayK/8dJ1YYdGD4wOvEUU
 0uaUezjABcb5iAOif/yFP+irE332zh4rMvYTQ1xtip+0cl/Xy1SnySVlMrPh6BAcgEyLxkY+TZZ
 QsKWnhqp0Gwq6DTP9D/vqUVJKO2qkPKOhry0H5j9VPpEQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763030954;
 b=lfddmx2J45GgrUCC859a8+MlIlz3h6mQ66OxV4mhlz4jqXUbDeBiS8mdhCmDl7bPvz5cQMVd
 hIYMAvxEjH19x9d5efy/PqrwHKzFFgDWDxwwwCGffqfbKyzvV2Fb80Jtp4iExqd1VspTeddSgV1
 bW+vqvxb+raCcO7zQZOvb6tPOQv7RPtwIatHESGmkkgOGRXopbyZloWaaPtr+hLB9OdqoVRcK33
 4WqznK9CVkUXGVhHHh/PMWpPRNuvf3v7tYfmYsJx4bG7hm+V3xp2O9Hg28XgxGElu847h1BCXLT
 ej9CrjnAumpQVz/WDOF1Z0PYB0hokKvm8d0fTBQHNm8Gg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Thu, 13 Nov 2025 11:49:14 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C3B245A063D;
	Thu, 13 Nov 2025 11:49:06 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: mb-smarc-2: Add MicIn routing
Date: Thu, 13 Nov 2025 11:48:56 +0100
Message-ID: <20251113104859.1354420-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
References: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4d6cTH3cvgz1kPGJ0
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ed014fac5779153bf3b07ca053158c71
X-cloud-security:scantime:1.897
DKIM-Signature: a=rsa-sha256;
 bh=HwZpnlL5PSUjD1ekyFYHL+mEFm8pXGu4Iwrph47h1b8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763030954; v=1;
 b=K0qGIcjeCC3BF4PWR5AmxXmdlRWnYf3WdhuHzZh0lvU4GEs+SHMVGHf89kov6+3dNrhqHhd+
 DIQgWRkOb4Qggv61+fVCvdowlj/eNGttXB9qOgJ1GPq6fCx59Dlyb3wAAmK7IdurkWX3Y/TVmSK
 0WFB6NTtSmYIefuW66ShGNZ7kSVyg085Lm4XbJ8zdLw8LkDF8em03G+zUaLEQ5yyBIKmrWyZ3mk
 sSA7QjuxCyaX+kQL0xvSzlhjDbqxExl1i3D8H6117fSEE5GsZdh5137a/Z3xLHdZxwrdmarbfuS
 N81Cnm0X1PzWgqcR0aIeDo5DzF7C8FFzOgz7H9uSgqoVQ==

MicIn is connected to IN3_L. Add routing including the Mic Bias.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
index 478cc8ede05ef..3d20e3bf32ce7 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
@@ -98,6 +98,13 @@ sound {
 		model = "tqm-tlv320aic32";
 		ssi-controller = <&sai1>;
 		audio-codec = <&tlv320aic3x04>;
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


