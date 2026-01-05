Return-Path: <devicetree+bounces-251666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC131CF56CC
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E67E230046FD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBEB27467F;
	Mon,  5 Jan 2026 19:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg7l7fbq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CFE10FD;
	Mon,  5 Jan 2026 19:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642410; cv=none; b=D6vYCpt4DzQFz/iZgvnHXGrDR0g8fcQpeks95Ftc3lK/vud06ecvnyAD3/bt6NFUkBRHl9rZLerIHEZhZf9rElDmGGoDlhK7AVzqcwefRnEyJB3uzse815qM5kXO1aDSTZWuDeEJRBR4vu1JmKZe/dWc6zd4odhyq3oYfe31UjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642410; c=relaxed/simple;
	bh=4d4Kz6wZLKZJMC8dluV+ZOL4eRSU5mD/Cf1EU5faObM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=phknfBgS9iblykvOJvL1HLNlcWnQYP82ViR7uxUIprStNCohSsARLsqEhqOO0v3tdLbLyX+L60aNYbEX6yFAaPJVvVaZzjKxvka8nbqbyx1yPnMsDyfTt9+ShaIScXMUOlBZ0AnwObeWSiCV3nIvlVUlfHfKfoUXqAd4WAOpY+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg7l7fbq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D011FC19422;
	Mon,  5 Jan 2026 19:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642410;
	bh=4d4Kz6wZLKZJMC8dluV+ZOL4eRSU5mD/Cf1EU5faObM=;
	h=From:To:Cc:Subject:Date:From;
	b=Wg7l7fbqsWe80PFqqn4VUq0vZtdUwGnvQS9QbiP7DUTk94SKY1E+fwVG4gnrz6AEH
	 ro5ezLrCNnlEsQhHiZ8I14DukAC4Sl6azVsGb+v+umGYRyAO0Pjmfm1ki5TuvV45DO
	 yp+4pMb3uKr/JgLJ5nMINwaCx7Isvi4/tlhD5agaTqg7sU7NGR1cl6y9jndMdLwHbO
	 Qh3Z78IF6c+pH4ROlNvoy9WwXumBesesDKO37xux6429RQJ4B8UtTkAadoD70EN3Bg
	 /+u4mHTAiszhyI3NoCZiVN5UEvRFujop5QGGbxsIWWVl9Km0fYBgdnQhxWc2qBWy1l
	 ro+orBsttd94A==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: cn9131-cf-solidwan: Add missing GPIO properties on "nxp,pca9536"
Date: Mon,  5 Jan 2026 13:46:46 -0600
Message-ID: <20260105194647.3189303-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCA9536 is always a GPIO provider, so add the missing properties.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts b/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
index 338853d3b179..b6aeba7d0a61 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
+++ b/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
@@ -202,6 +202,8 @@ fan-controller@18 {
 	expander0: gpio@41 {
 		compatible = "nxp,pca9536";
 		reg = <0x41>;
+		gpio-controller;
+		#gpio-cells = <2>;
 
 		usb-a-vbus0-ilimit-hog {
 			gpio-hog;
-- 
2.51.0


