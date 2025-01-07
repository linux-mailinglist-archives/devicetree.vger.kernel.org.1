Return-Path: <devicetree+bounces-136258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D16A0462B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 17:28:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BABE164984
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138701F63F7;
	Tue,  7 Jan 2025 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b="JgJYzyfb";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="v7fL1/cF"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7C21E0E00;
	Tue,  7 Jan 2025 16:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736267253; cv=none; b=Tz4B7P0x3VOmxznFdGCMfolSsDy7njfHnszL6Enrwi5YW0E6iMpnUTD8sUpVC49Q4/Pkd2OSwbqNxYcZI48WSIS6IpbxyLwCHhg2rfNzICwJsZnCJ7IT2FRNWCfvXwyoUO6ZdwQxuOM2VjvXHvnWfeQj8tkDUITjCR7XpJQkNo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736267253; c=relaxed/simple;
	bh=dx1tgwqC+S4Vd0xAryqx5rnBZU0ZIgXSuvjftF9hy/I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fPbWy0WLMdV/1fjyyYkIGBtHdB+e8wC2NbiV1fy0TLOqzOYU5Rk04civqnTV5GPL6Z04BqLOQq0C4hutR+6vEVTqJw5DqpBXwKbicGsbdNTsS7YMCTZDYC4BGMahpuUItqS4+VqxwiF16ZlVvKrJFYF1h/yJv8xKzEqJbE7p4ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz; spf=pass smtp.mailfrom=stwcx.xyz; dkim=pass (2048-bit key) header.d=stwcx.xyz header.i=@stwcx.xyz header.b=JgJYzyfb; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=v7fL1/cF; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stwcx.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stwcx.xyz
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfout.phl.internal (Postfix) with ESMTP id 8B6A5138021D;
	Tue,  7 Jan 2025 11:27:28 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Tue, 07 Jan 2025 11:27:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm1; t=1736267248; x=1736353648; bh=RIzROz9khoj2BhgYd0nIS
	vi0RDBvOsblgFIn28Lq6mo=; b=JgJYzyfb6uWDMn3aPzlcl/3MJiH2QRXXcmkSK
	I0kdbVlIvZ7X79l4EIKV9TQSUQ3D/hgLZrGsE2BBPn1VHqf7Jc6d1HcExifAI1PO
	OE9q8rYyxLGuN73nUDDivs5+XYpFz6l4KIBJwT01fF4lDlX1ijgRZ4UGOYGYvC33
	bGnDwM7yKi+5WCxfsVWZaR2W2/4HkTgcJRIadJYespfqKUTXbAtY2PhnIkQ+UUqy
	rSj0+mF7g4xXp7A2XWd5CqBXctNlxt9qKvCx3tWAB+4dLovrXjMKzZ35yUHLp+xO
	s+bOUJJU1WSQdDEmeNKwBtPMXi4tMvYCXeNLjtF6PHJ9q1i+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1736267248; x=1736353648; bh=RIzROz9khoj2BhgYd0nISvi0RDBvOsblgFI
	n28Lq6mo=; b=v7fL1/cFRe3LyWeEDJqbN+BHz84S4WxdXb/p2y2oyHbnQj7pIeb
	RUg9q8dSrlCzbFr99KizNdUXCWV2/k9UgcWNPOtNvdVqeD6ErQsvzjxymNQ6w5ou
	Z2vXTZwRhYdIBEaW1YLoH4wvMtsou8v7UhyJk8ksg9Q5IrDQgkYEk1ZFO5Mmjqpz
	YYp/gY2Dy8C4M3TyjoBH4at9tQP7yNvfbEqTDl0/YzfvWZZKIvC6sBSRSg2SIPpf
	OBmMf73L/QvH8IAMeN+d17mdMWlUVE63SMF1uQEvtgDcHM8BFMx9NuTn+W5GoGUW
	zxa/VCMEmFThJ2F+QAVk5wZItGXWnywtiTQ==
X-ME-Sender: <xms:8FV9Z1o58OmcY7bOpfDguii-4Dyq9EwnbKb2Rlia05Gm21v-ixVeqQ>
    <xme:8FV9Z3pjvaGGvKkTq73WqoYzNFeC3e4iojEfGBlDjf2Lt14Wr0Q7InFJrJR-BJ2hJ
    h1TSHm01SQFljv3v80>
X-ME-Received: <xmr:8FV9ZyNP23xLO3nAt_k5WbX6SXsU2lnNr4fel_B8nM5WdGDi7mjgAMR7mwM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudegvddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnegfrhhlucfvnfffucdljedtmdenucfjughrpefhvfevufffkffo
    ggfgsedtkeertdertddtnecuhfhrohhmpefrrghtrhhitghkucghihhllhhirghmshcuoe
    hprghtrhhitghksehsthiftgigrdighiiiqeenucggtffrrghtthgvrhhnpeevtdevgfdt
    hfefveejudelheeghefhhfdtteetheehudeiueefhfetkeejleefteenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghtrhhitghksehsthif
    tgigrdighiiipdhnsggprhgtphhtthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtg
    hpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdought
    sehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpthhtoheprghn
    ughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtthhopehprg
    htrhhitghksehsthiftgigrdighiiipdhrtghpthhtohepuggvvhhitggvthhrvggvsehv
    ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrh
    hnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheplhhinhhu
    gidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdrohhrgh
X-ME-Proxy: <xmx:8FV9Zw6QocUaHzH3d5RerqE4_65ciJ2PP1FhCYjR4buSwlZCzyAkrA>
    <xmx:8FV9Z06uYnqS91cIQ4aayYyOJP4doFTlVJpORD90oeKneZUjvlY8Yg>
    <xmx:8FV9Z4jnbJkStym_1S2pHwtjzWRHvnu6bkb9dx1K0bC8vklsDMaF3A>
    <xmx:8FV9Z25WYP8x5t4Io_naP6_mjO72FfUC1q5B4XAo1OBZS6DlO07Klw>
    <xmx:8FV9ZxxwKaQde-S-bbq_i_gl61gnJfILwioB6CCwFQKbwmmaL8X9x4NQ>
Feedback-ID: i68a1478a:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Jan 2025 11:27:27 -0500 (EST)
From: Patrick Williams <patrick@stwcx.xyz>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Patrick Williams <patrick@stwcx.xyz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 REBASE] ARM: dts: aspeed: yosemite4: adjust secondary flash name
Date: Tue,  7 Jan 2025 11:27:25 -0500
Message-ID: <20250107162726.232402-1-patrick@stwcx.xyz>
X-Mailer: git-send-email 2.44.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Meta (Facebook) has a preference for all of our secondary flash
chips to be labelled "alt-bmc" for consistency of userspace tools
deal with updates.  Bletchley, Harma, Minerva, and Catalina all
follow this convention but for some reason Yosemite4 is different.

Adjust the label in the dts to match the other platforms.

Signed-off-by: Patrick Williams <patrick@stwcx.xyz>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index ab4904cf2c0e..29f224bccd63 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -159,7 +159,7 @@ flash@0 {
 	flash@1 {
 		status = "okay";
 		m25p,fast-read;
-		label = "bmc2";
+		label = "alt-bmc";
 		spi-tx-bus-width = <2>;
 		spi-rx-bus-width = <2>;
 		spi-max-frequency = <50000000>;
-- 
2.44.2


