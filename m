Return-Path: <devicetree+bounces-222385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEE9BA8A89
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D2C1189CA23
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3EC286D4E;
	Mon, 29 Sep 2025 09:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="e0n9gaOW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB55D28000B
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759138590; cv=none; b=WZ7LnkuGZ9RQKOCbbk8CeqzpVBO/dY8Uwg7PA6BGTpUjDO0O2uOse+0g7JpAPHy+wcIK3vIvVqZLdodIrA2p96J/AbFBDTKqjTZ954IEM+6AHG+SIqpKd7hasRpUFbmlfmYJEEOrRpOEjGhmvSt6hH56pxyfgAvyK6vHmRTM0RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759138590; c=relaxed/simple;
	bh=EvvFaseR4kEK979M3pL2h0cvRRfSLp0TkP3esh3Rscg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r1K45+98YZTRJuep+r5xnu4vYB7a6s9yAaK6uemuhTlv73pjfjY/9GOQeZx/iU5O+atUDf5vZPtwA33RnBD1Vw6oZYYodZg1+oQeaWrYVv6UxDLFbS0J9DdAAw/TdP4X6d2/cxKSwmWeyElGLUdEz/KNqy0KFc9GmDMlSnToeZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=e0n9gaOW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=9iUdCsBI7lDexR
	qWCpMYXTi2569TV1CRxcyXb4GXn8o=; b=e0n9gaOWgl9n7i2y5/ku3ciqu6ichn
	oV6WuA5kJ3Q55JMfBpyIKsYU6XVR0kz9fZs/yverUf4pk3Vyrbc0KbgXMJHBa3oe
	h5mcunYC72D5TVD2SPNWuCwoNKfFlKw0R5IBsZzI6soQ93iXUCrmaBiwgMl4JS6z
	UoP/WjWJj8sEZhZZROlXXSIoU1K5ERSRm09stvKQj1R2U++sW6snG+GsFjZFen5v
	HD71wjIsYSJcx2s7uC7zSQHIOx/ufn+78NMdXP2fqlvkFY1mFSCwsrxsU+ZojBkS
	nkV4vH4JAWeuYfUvTT7UWsRrQkssjLc3WBj+kjZRjfKCsKQvo2wYRzKg==
Received: (qmail 3202041 invoked from network); 29 Sep 2025 11:36:23 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Sep 2025 11:36:23 +0200
X-UD-Smtp-Session: l3s3148p1@11NjXu0/CtwgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: renesas: gose: remove superfluous port property
Date: Mon, 29 Sep 2025 11:36:02 +0200
Message-ID: <20250929093616.17679-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'bus-width' is defined for the corresponding vin input port already. No
need to declare it in the output port again. Fixes:

arch/arm/boot/dts/renesas/r8a7793-gose.dtb: composite-in@20 (adi,adv7180cp): ports:port@3:endpoint: Unevaluated properties are not allowed ('bus-width' was unexpected)

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r8a7793-gose.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7793-gose.dts b/arch/arm/boot/dts/renesas/r8a7793-gose.dts
index 45b267ec2679..5c6928c941ac 100644
--- a/arch/arm/boot/dts/renesas/r8a7793-gose.dts
+++ b/arch/arm/boot/dts/renesas/r8a7793-gose.dts
@@ -373,7 +373,6 @@ adv7180_in: endpoint {
 				port@3 {
 					reg = <3>;
 					adv7180_out: endpoint {
-						bus-width = <8>;
 						remote-endpoint = <&vin1ep>;
 					};
 				};
-- 
2.47.2


