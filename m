Return-Path: <devicetree+bounces-21084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A3E8023CA
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 13:40:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C66F61C208EA
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057258828;
	Sun,  3 Dec 2023 12:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="rWpbF5Fe";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="yLk9e6Iq"
X-Original-To: devicetree@vger.kernel.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D50FCFA
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 04:40:39 -0800 (PST)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.nyi.internal (Postfix) with ESMTP id 4D3C05C0198;
	Sun,  3 Dec 2023 07:40:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Sun, 03 Dec 2023 07:40:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607239; x=
	1701693639; bh=mbK/oiHw65tn0E43hjf1/LGGzi47gzSJ14as2Je78y8=; b=r
	WpbF5FeFmQPAET7yhnEMPuUU4LlPK9NR3JrhrOkzwjyYUqZRSzahyp4e7PztmoIx
	c4TVwiHTSj8YpUZ1O2qW1g7OEf66T3qgERpUWrpbjALPPoOvLxSIOYfnMlBNEldJ
	3FtldLM4vrkQ5iK1gaW0GttS3BTmNk0fg7FHPsg33W4QWqCEGPPKfLSxTSvbAUvM
	FKKhZS2EY5cxsloHTm67JB2Trk8ptBL3kJtqagetX87KphA1vuAK5KBraamdhvWA
	o4zdoZ/J81yqXNP2kGRgjy6APdX8LRL443EifSxn6HeXQHn4GexbuuaiRacbl9F+
	lJe9INY4vhbb8BNK5N6UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607239; x=
	1701693639; bh=mbK/oiHw65tn0E43hjf1/LGGzi47gzSJ14as2Je78y8=; b=y
	Lk9e6IqEl0vYHTJnMy/KoyPnKHU1kTgHDUdivBRk9VjE/wSp0DESrN/hd/7UT3fW
	4eVeQFb/sZrHoDvhSoiy6tVOT3pSRXtfDoWpmch2Pwq9hR6IN6CCEKFiIHpidxu2
	tjy7F5spgu6LIRdZj7z6+h/qFj216zOWi7WPGKJkW4k/TFGDCgx9D0snYYQhw90D
	9j2sqMHSzoHIbKr/xVelZ0J2Ocm7bBq+EwLj8lZcZyjdJcWHOSKYsVN9z2GZYR7v
	Wwvqz84+m1CMV2q+Csxo/cWH2pMo/aPWR6UHYFJePWmwNwzEvozufQS4rRnUxCaZ
	ifZ754bQplaeHYcpYu1Tg==
X-ME-Sender: <xms:R3dsZQlO42kv3emFo4x8dzdLMbfaCs4sL6_e20a9dpseKsSA3aMyoQ>
    <xme:R3dsZf1rJlRbAL3aEHox_AM0Iypq74WJzFKggmP3ocI4xwZXqUkSll1xIXD3EVrcj
    jXhqh-ZpQ>
X-ME-Received: <xmr:R3dsZeqg_UOcrdjD37Y84PN1olznA0yXmg5IQxWAmZJwY-dn5goNpor2d3UueLgmNMJRbrqRH-AU9kKsjARALQkJSxPFbCuCO58>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:R3dsZckrK1pB0baCxGJ7O2e5XmUmMpPfpe3L0fdllmmoKIDgGUHngQ>
    <xmx:R3dsZe3-RxX-y0jw199966BAXOTeUcEc19hZL0mj46vutcpXkNQi2w>
    <xmx:R3dsZTsVE8iqhWQNL6konXyxNiefJCSrHp08pPL3zqetY3Fv36yODw>
    <xmx:R3dsZXnvpmv8PgtHcJe7PITyAEY0T0gZo3mJvS-bBuR-k08n56c-lg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:34 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:31 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 2/8] ARM: dts: rockchip: rv1126: Serial aliases
Date: Sun,  3 Dec 2023 23:39:58 +1100
Message-Id: <20231203124004.2676174-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
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

Changes in v3:
- Add missing serial5 alias

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 9ccd1bad6229..adb11a43c5db 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,12 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
 	};
 
 	cpus {
-- 
2.40.1


