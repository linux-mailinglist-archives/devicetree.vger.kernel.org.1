Return-Path: <devicetree+bounces-98719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B10967147
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 13:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45FBE1C2184F
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 11:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D31C17C21C;
	Sat, 31 Aug 2024 11:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="WC3Ub8ei"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3D17ADE8
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725103856; cv=none; b=avC4hW1pTJt/sbA4dxJBGSOZQ5BYpO+5S6Y3Bo7TzrM021VGOaBSXUq35u1O5tg0jZ3JrIzHEmTOO+b0wojD/kSi7c+D0SGljV+hG4m/LKZY8Pyaj0xbwry+22xWWhdStJji/BqmARKtACzCG/EZIx2QvbdDbrm0slvofO7LsYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725103856; c=relaxed/simple;
	bh=z7APjdHVNhGaYARgKbk8fBGWzUwQO4MrdScHd/FjSYo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W8QZSnlCfjBPLmIT85OnjOQ0O8/luyvW3LAGbqx0jogg2CtlUQuZ8AZq2XRKS0V07XtGihhr4O0G4oNyM3QGw5kgDh1RidD7gFvY7P0vOtJmy6EbjeCxm12IUNVw8HhUGiXsVpNQBHvsq9BsiU/R8v3hcYxStLUvxxwL9ZsFQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=WC3Ub8ei; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725103850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/x46giHTdVhCr/Jxv8/tM7J/6KMCSjAvr93GDNuu3LU=;
	b=WC3Ub8eietgGEANwsdjR4z1aVbkTrtnU+ATktv8ygusyOj6Yd+qFW5GeYmc0pL3cJXsEAO
	4SmLlSuk/no1/Kama3RN1bG0bZQn47LbcJlL7TKb6sa4KHN+mpP67ghSg0K+ezUZC7+gOJ
	ARr9ejjr8POLS/+eRwW/nbdsn01lvTEINVjQs4ctQfy6D1J8CGNpizXc3qoveLnAmecsqI
	xfIHMA5dy2RmI1qr//4gcNrwsHJojcpua4ER833mYgBGN8SYmEShYGc73qZBrknzBTm3tb
	D/MiD9xmNmLSQhryRT/NlolVSy8bYGSSkoENH2/0geaS0oU3upW0LRCm1t8ubg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add missing tshut props to tsadc on quartz64-b
Date: Sat, 31 Aug 2024 13:29:23 +0200
Message-ID: <20240831112949.60091-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add the missing TSADC properties `rockchip,hw-tshut-mode` and
`rockchip,hw-tshut-polarity` to the Pine64 Quartz64 Model B.

This fixes the following warnings:

  rockchip-thermal fe710000.tsadc: Missing tshut mode property, using default (gpio)
  rockchip-thermal fe710000.tsadc: Missing tshut-polarity property, using default (low)

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 13e599a85eb8..c164074ddf54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -648,6 +648,8 @@ flash@0 {
 };
 
 &tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
-- 
2.45.2


