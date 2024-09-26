Return-Path: <devicetree+bounces-105706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9E39878E3
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 20:09:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B710C1F26FF9
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 18:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AAEF167DAC;
	Thu, 26 Sep 2024 18:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DsGp96BO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAFE166308
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 18:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727374175; cv=none; b=NCqOb4gqG72D73bkzSlwuLP/My2g65KfbLfYrPeYZN6Ocmbxsv8TDK0yMaZ0BYUG12YyRkSkWi4HFSzCy1/tWRDk8eZXG/xlxDn+dGnPi3E0maXIsaN4FGftmlux9ittstDd84Cz7JHQQhG9SYHqVtA94bPaVNjhVIiq8vugsC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727374175; c=relaxed/simple;
	bh=78ntUi6PBQLJowyAu8PKT5+QvDiRhLIZlSav7nDzn9M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iIuP6a0L22o7rv+38kxUK4rlf8FCKndIE9F/VQAzAfPrZiLzXxjkLEy+LRlqNFIXK2yi2U+YyARJWfTgBQ9XXK3cphXoz7z6Qb8xqHHgj5BItUzYpIyNaXVaNdx44nR5hG5HRFSAvJZ6gsmNR6mLDGHi/6jFaF+aRmI5auPQOd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=DsGp96BO; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1727374169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TRuU9KdPy6lP4O/MNPKfp9ilvVG7NzDTE6U2XYHJ1dY=;
	b=DsGp96BOofrh1lrRptw8GP+n9hJ7JoUP/WYw2uqRzP35OS/LarDkDS4llYMw/hL5GWsjpw
	ldCJP8wQ+n3p7HezxB8cESGYyEajcdMOkTAYCo+JV/CIplgSup2berkorPxhn0TAC/Mp0I
	0xcXJ2BmPMJPw/jF2wsUuBtxsbbThBU=
From: Sean Anderson <sean.anderson@linux.dev>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 1/2] arm64: dts: renesas: salvator-xs: Add SD/OE pin properties
Date: Thu, 26 Sep 2024 14:09:02 -0400
Message-Id: <20240926180903.479895-2-sean.anderson@linux.dev>
In-Reply-To: <20240926180903.479895-1-sean.anderson@linux.dev>
References: <20240926180903.479895-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add SD/OE pin properties to the devicetree so that Linux can configure
the pin without relying on the OTP. This matches the register
configuration reported by Geert [1], as well as my inspection of the
schematic (which shows the SD/OE pin permanently tied high).

[1] https://lore.kernel.org/linux-clk/CAMuHMdW9LMuQLuPEF-Fcs1E6Q7dDzY17VZqu4awKDj5WSTRt=A@mail.gmail.com/

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 arch/arm64/boot/dts/renesas/salvator-xs.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/salvator-xs.dtsi b/arch/arm64/boot/dts/renesas/salvator-xs.dtsi
index 08b925624e12..1d18dedb1ff0 100644
--- a/arch/arm64/boot/dts/renesas/salvator-xs.dtsi
+++ b/arch/arm64/boot/dts/renesas/salvator-xs.dtsi
@@ -25,6 +25,8 @@ versaclock6: clock-generator@6a {
 		#clock-cells = <1>;
 		clocks = <&x23_clk>;
 		clock-names = "xin";
+		idt,shutdown = <0>;
+		idt,output-enable-active = <1>;
 	};
 };
 
-- 
2.35.1.1320.gc452695387.dirty


