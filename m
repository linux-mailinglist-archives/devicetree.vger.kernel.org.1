Return-Path: <devicetree+bounces-15338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2087E9BDF
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B7A21C208B2
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E7F1D555;
	Mon, 13 Nov 2023 12:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="V/KrxHFk";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="CZ6hzrXR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405D71D52A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:08:25 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C31D70
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:08:24 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id A75EE5C0145;
	Mon, 13 Nov 2023 07:08:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:08:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877303; x=
	1699963703; bh=N5ZxIAUfaV6aVmSB1G0DrLCEBqLgje//KDPtRBUd3eM=; b=V
	/KrxHFk7Xb3wO0k4z8+ufF9HNJQoWazkaDJJNJMKxkPFH8278XNHI8u8geSKD7AY
	H2JXqexiaLJfzrQBwrJ/QzDAuoCaraz6W4pvKeJtvrPaVJovtlJmyFw3JQgf5EOL
	OnxI7m5mJQK3CsRaRJeJ3Q6FrIEB99w7KWIMtZ7EGOqNheSVy7WLqF5+OT8E3tjO
	qZy512i8J18O8/6yv3tgQ0fXG3qm5MSMtqlUMyASxs+CqkhT/Khly36MAS5O1nqE
	Fr/Ms9TzvcHXwCgOnpyVJ9fvmCiXAP3E5/4pjZybDhjVxDWFwVJWYjXromY5gMzx
	YOdZPCrNNdk9AkzqcFwOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877303; x=
	1699963703; bh=N5ZxIAUfaV6aVmSB1G0DrLCEBqLgje//KDPtRBUd3eM=; b=C
	Z6hzrXRxvhJ5cFw11mhhTGSUIJLdCb9A66qJ67sc+sEPhcsZ0JyohmH9Wp30tN0o
	nDn3uk7le8CIvJfubdph0l73VgX4ENWynz86Klg/vxgy3JmzxcTgTxMKW4TnIDMH
	KI+pfEldQb84SpN1FG2uWpv3Y7msDZHtQj3rxW5cPhls0NejNf24U9NR2w7pakJq
	qJt4zVeKWh1Q8yYiuJWo8we7j+rTr0YoPhOL8L5fuNBzMX1YP5CqehDkRXDjfgfX
	C78Xz5Vw4EDrBv5FgDt7pO8YyRA6GcvetZOzW9ZNoK4c8/PfDmYmEcGP0VkEUpxb
	U/UeK7v6BsLTGOSSni9eQ==
X-ME-Sender: <xms:txFSZYUBXW9d_eblMtM6Ols3qrHx9T5OLE6GBbbfsk16wdRsLTmKvQ>
    <xme:txFSZck_if5hVWQ_sV_7Wxlriww3qfchybj2czWxXxC12ytfWxaLL4dVY1jhbKR2M
    uDilIhd_w>
X-ME-Received: <xmr:txFSZcYWa8IwUDQZbeErjh0EN-nFJQvX2_h9oSw7ne6hGG6uAecJKVmXMVIHUU2hnu0l4ZIsgFu3Q0kKC5xIV5vVZohki3ogUkE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:txFSZXUCevUqPungUzOAKwiIAunC4Lzn4imovt3eNLeipwIQSmZQ0A>
    <xmx:txFSZSnuRxnZ1BXHOYAfHPAopcyeszY3cQRAys4ef0tWwxEFd-z8zQ>
    <xmx:txFSZcfZSwBs24meAWP1bPePQkjdhKykZROmDICSYoi8VZQYO6KshA>
    <xmx:txFSZUVO1uyBwrU1ThCiHjZ90BTrENiqTW8YKH_8Zyf2LI3vPxufUA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:08:18 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:08:15 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 6/8] ARM: dts: rockchip: rv1126: Add ethernet alias
Date: Mon, 13 Nov 2023 23:07:03 +1100
Message-Id: <20231113120705.1647498-7-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113120705.1647498-1-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add alias for ethernet0 to pick up mac address from u-boot/DT

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index cf1df75df418..bfbd4918e745 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -20,6 +20,7 @@ / {
 	interrupt-parent = <&gic>;
 
 	aliases {
+		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
 		serial0 = &uart0;
-- 
2.40.1


