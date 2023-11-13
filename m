Return-Path: <devicetree+bounces-15334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F387E9BD7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFC81280BE5
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28621D545;
	Mon, 13 Nov 2023 12:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="i2g9W+7M";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="gdfsyK5K"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BECE1D53A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:07:38 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53B22D76
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:07:37 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 82E535C0175;
	Mon, 13 Nov 2023 07:07:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:07:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877256; x=
	1699963656; bh=4qMDHmRYilZ4+QBhq8Frhf1+Idyx4gcuM++fKXAF/2A=; b=i
	2g9W+7MicHqKz0r0de8pfmiwtig1P/8DJ3/0YdGglSmHiNygkJ/+FJFZj7aplFJM
	d44xy7mXDESmEoGVa1Up4Xnh/w8wIzxHI6QGMpVfjPKyJ8Og06ubc/Bgv43nvn94
	ngoIUwBEX1PlbzeX2JqXEr0251cbM6+kGBboMfnQKTFwlY4kHWTeKWtfJ9RlHG95
	K+GYBNwjzt4kxmxtZbZigjt33jOaAE0ASSH6uxfOozw8rrOt5+Noerd48YoSx66C
	9ftuC62YkT1RSq4/hu1o8NRuv6TxCPZOsdRs/94WMW/yXzma3/ybvArgqeOCnfPX
	sXjTug5efKAi0kfvcoH6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877256; x=
	1699963656; bh=4qMDHmRYilZ4+QBhq8Frhf1+Idyx4gcuM++fKXAF/2A=; b=g
	dfsyK5K5WhxF5c4wKPUhZ2RRZASywIVD1vw/qUOKIfe7nn6cmYlUetaBvDYzgUXR
	piciuFrLxpz6+CDONE5AHmE69UC7wsG0S7HKdfLJ4THudF2PdtuOzHa6tCH57JUE
	+f8n7fEQZLl2NdzQQi4LQxR/I8ERf1jMMNo2XE28chPU0yg8bEOk5DApT5kJ5GBq
	oOmu0QL6OVu6gVPdx7vyJzRQdx6roIvR15AgWtwNnkQwpq3FGkBvwuWGOxLVlf3g
	FnMo0lulwuUvkip7iTgSeAl2KUn/poUNKKP0+neHeODJPuR7p1624puJm9tQelEO
	zT1rqdU0m/GgyJbLc1qQg==
X-ME-Sender: <xms:iBFSZeQ26-iy1Z1qWoqaQFdh7KUHpSC-8DCH-hOcYp5jafZ1jIs6aQ>
    <xme:iBFSZTxTnRk92bp_NeoJsqGTOVSkjIzdsf6Cm9XFGQ5rZ-NfNo5CgzAmb4yr6AOX9
    E7e9hgX4A>
X-ME-Received: <xmr:iBFSZb2wdPsBTj9lOClbcqw77xhLW-oBbTYJyphlOpTX7sM4OPswRUD2PIpvtrvatp3R3oqXMuy36APi0QstxYl_gHqxLHGtKUc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:iBFSZaB6mADWYFYC_SnokAuyurdEAiho9FZWQn_4xFSicvwPicK74Q>
    <xmx:iBFSZXi620YEQVsNkUa8U6aY_XwgMZPLlE88Je8i489V0PGXN0T0JA>
    <xmx:iBFSZWrRnAydAGiiUccNEUQFa7G3kw91eSxf7TPfdeHSKFEvYdawVA>
    <xmx:iBFSZXgkMuWipH-mPo1ZA9H9aIroc8rqGcnnnQDlfSG3aVjZWWgArg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:31 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:29 +1100
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
Subject: [PATCH 2/8] ARM: dts: rockchip: rv1126: Serial aliases
Date: Mon, 13 Nov 2023 23:06:59 +1100
Message-Id: <20231113120705.1647498-3-tim@feathertop.org>
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

Add serial aliases for uart nodes so that serial devices are created

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 9ccd1bad6229..6c5c928f06c7 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,11 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
 	};
 
 	cpus {
-- 
2.40.1


