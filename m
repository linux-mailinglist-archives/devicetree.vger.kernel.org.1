Return-Path: <devicetree+bounces-68807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A27EF8CDB92
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 22:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ABF51F23509
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 20:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DFF85299;
	Thu, 23 May 2024 20:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="fOi13X2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9174485280
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 20:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716497458; cv=none; b=gw6RVNclaCQT3Cm7dlXuiTyeS8+Xn6NthVhe9TwdlWtpm0aB6+7nzSqNgFWqpoku2utCti+9OYsR2RJ4hNBOzrBw8jHWNCfQ8HHzGTVPNQHbTZ9LHMOHKQUnbh9KNz5uaF09y0PPhduqyhSJkm0YJEEeJPP6TIprLBofpWWObPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716497458; c=relaxed/simple;
	bh=0H5ds9q2DSJgjTyWbK82cqoC23estI7HL/4gPHD38PU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dxFZ4hGK8xRqgkjSI4fC3fqREAo9c+gqtJcoU65zx3eh7aPGXPPQN20qCVhSjBrFg8/vC5miyCIDgy/LkGWrOnc3z80ZAXCapJ5Mvk6cNyFEieq3EPVcnA5aFlFTtrAzBCQKzEa0MghRvxaCansUP68RY9Fssz0As3d9CXuCkNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=fOi13X2i; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=E25JDW0kKXyLblFk5xYuF4BRAocUQkU7ena+GumnnaY=; b=fOi13X
	2iXwWczyp6uAd/CycarsOa4N1KqwZ7Sppv4M/sB8k8l5L75XlQduERHj42jBiZ6D
	1fMqPK/CC8zEIoOBwuRd7BJ0S/ITubanfp+NQc4v2XU2rc9K3ANESnM//f+hmdpn
	EQXMfKic9zrLSMJtD5NlscyX4ucQN4pAY1p5z8GYBQtfptlhJh7tBpcZOlO2Xfrc
	uNRVn+E8awUKggpflfc9vU71ychRdBFKBgQV9zeuTrQgJElRL4Jva+heOH/xPFRS
	YXz/aXWPRAIcMWkMOcaOlSqKO98rJopZ2EXMsBd/hRW75sohCylauTl+ImM0U4sE
	8WVVFE/s5rwD7nMA==
Received: (qmail 1241513 invoked from network); 23 May 2024 22:50:54 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 23 May 2024 22:50:54 +0200
X-UD-Smtp-Session: l3s3148p1@oyAHNSUZMLQujntm
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: renesas: white-hawk-cpu: add aliases for I2C busses
Date: Thu, 23 May 2024 22:50:38 +0200
Message-Id: <20240523205041.7356-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240523205041.7356-1-wsa+renesas@sang-engineering.com>
References: <20240523205041.7356-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They are numbered like this in the schematics, so keep the names in
Linux the same.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi b/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
index 8ac17370ff36..dd201f587e15 100644
--- a/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
@@ -13,6 +13,12 @@
 / {
 	aliases {
 		ethernet0 = &avb0;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
 		serial0 = &hscif0;
 	};
 
-- 
2.39.2


