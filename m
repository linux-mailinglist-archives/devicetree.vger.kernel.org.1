Return-Path: <devicetree+bounces-68810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C1C8CDB9C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 22:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D31F81C2228C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 20:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D215285C62;
	Thu, 23 May 2024 20:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="lOeET0Oh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF9C85921
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 20:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716497463; cv=none; b=nfeW06BermJu9ML7MsN1kMYYBd1bCb9ICewCvg3O4Ad/AefrNEqhFnL/HBjv16H1sGQPgeWOuw05oR94uqcuL9DnDZkKyjdlXAtbZgCJ6StM55K/ipWjT0/0vaBOVUvz/Vx3R6xEelorfoY7UiXFyxwzU+7x5aIcqBG8G3MlNuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716497463; c=relaxed/simple;
	bh=Lb7aQv/jCWZEkjo/MBRTjEpGHLpyfik4U6GSsO8cnxY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hxoaFho+G9+4DywNNcwuu2bR4flQebQWaSxMR8tIXsL6sUJH+xlgkE4akc+uvCPOQB2juA67/1JRMPoYH1AsFlsIpSzdhkbdSom5BO0chbqDBcxlX8aSmMbJ1uJC/7utsPlldu8KN5OrsJ2FBjHfjUI7Z7SaquP1ooC9lkHreBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=lOeET0Oh; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=lsSnHUVHE78hNDPEyLUdkJNnaHPK8GUk22hXh6E4MTw=; b=lOeET0
	OhqFVZF7jNi7fVZLzqMM2E3wBXNhTbvdyPWjjid3CSAKs6P5gcBeuypYqxslEOTQ
	a66xfFVdGi4umNkCVnFQhphIPBFWGOC7buSfB5u/ObxVQd+GIWXSdks4Inw8XU2z
	iXChVkgjzhWtlRIiwE9Tpe81cff3WqjcLzW8A1s91ZGv6OZ13PpGlegqq7DWd7j+
	sD6CqAU1kxmr/hwYkdmOYDIHcsaaEZXtRhJJDDWDUJ/t7urrOy/irauiIUmAeXLw
	jJgoLt5XYb3Q0TgmO33Zpkknf9lTPjaNUW4zMgAsP41NCzU/BlMDCM+CnETc2hlS
	tdMwxmqiQG4d4Sew==
Received: (qmail 1241594 invoked from network); 23 May 2024 22:50:55 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 23 May 2024 22:50:55 +0200
X-UD-Smtp-Session: l3s3148p1@tEMZNSUZQLQujntm
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
Subject: [PATCH 3/3] arm64: dts: renesas: s4sk: add aliases for I2C busses
Date: Thu, 23 May 2024 22:50:40 +0200
Message-Id: <20240523205041.7356-4-wsa+renesas@sang-engineering.com>
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
 arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts b/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
index bc65a7b4d999..fa910b85859e 100644
--- a/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
@@ -14,6 +14,12 @@ / {
 	compatible = "renesas,s4sk", "renesas,r8a779f4", "renesas,r8a779f0";
 
 	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
 		serial0 = &hscif0;
 		serial1 = &hscif1;
 		ethernet0 = &rswitch;
-- 
2.39.2


