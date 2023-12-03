Return-Path: <devicetree+bounces-21090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8747A8023D1
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 13:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B95B51C208D2
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEADBD29D;
	Sun,  3 Dec 2023 12:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="PUrUdvlu";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="A07QQXgV"
X-Original-To: devicetree@vger.kernel.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 633EBC2
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 04:41:32 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id CB26A5C015B;
	Sun,  3 Dec 2023 07:41:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sun, 03 Dec 2023 07:41:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607291; x=
	1701693691; bh=Vn2Ued8QnK1Z3h42bOuO5aQ4ZuaH4mGAuUy6STjbYSk=; b=P
	UrUdvlue4hY6gYJ2LvWLRtK4qnKsrUYXO+doNoJ2vglB1VKtTUVc0ED6i+I3fTzT
	49BW5oApPpql2aVmbKLQm2rOQmOusCqBpOIzyUJsQ3CgY1KCaqPLO2cjT0UdtoGX
	42flvIfgHaKGvXu6w/VEnqRavHVavf7/lMYbWt/p0naiebNLwvd7MwoZ0Hkr3z6t
	u15eM/uoBiCT9wa/1UQI2k6KXoBsxBZFWQnivj1ZGKVQaMKOZDfrxM7DYhKwMmpk
	XIIZdwmgn+F4n06vtc4yyLHS16p2icgZsrWT2v3v7DR9zE1N62NC+8hueTT/yVO9
	86B2dVkYN1/bQ42zKaQfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607291; x=
	1701693691; bh=Vn2Ued8QnK1Z3h42bOuO5aQ4ZuaH4mGAuUy6STjbYSk=; b=A
	07QQXgVTZeiDFt3CsDK6vwYKchZZHsHU6jJJ3KxdDxd4oKsQ/8Mur0Agrvs1z2mf
	tonQWtm7bmMcW4GapprD8QcjCzFYPmlTfN2dsJenZ4ZWXb1rXzxdGTSoLtWmIG5p
	od2A8L5zcMUUobtT3OTVrppR5WRP0YB5pehAiYjXx2dWe3tcJW3ivD/KIX4u7N4Z
	N0+0V3X7LsITLCWhS1aymoJyI5ap8+G5e37DGARN0b/Ye3Q+771NatCXXBzqTTgx
	pwrzq4lTzsKTpTpGI9yxgxOfWsBeUTjnKATFZDwf8FcqeGzaSMcI8W368/6X/swG
	fmkdn7LgkkNxs77aPo+oA==
X-ME-Sender: <xms:e3dsZZPAeqkkOncSgvvcD5cFcLVbhm-Zg3gBTu3GspEHvIMCbgTMJA>
    <xme:e3dsZb8swruiZV6FP85JYwuR0ZylkQ0BPdV0vX8GKfRKkdnPL83MHF1fKJnKDfvLe
    gd_nHSKaQ>
X-ME-Received: <xmr:e3dsZYT_VD_QbBUT6vxz8Q5ax8xJXuc9y3kA3_Cojp2p__Xa-F8VVdTdevySYApjLOd116liIw2X_FCaY2JpUfkv8hhbHH-SxHY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:e3dsZVvPVJ_nlUeW4Dkcqs6L3emMtm_uR7__f85Fb3Q_nuEexrbE0w>
    <xmx:e3dsZRfQj1cvvPnaI14IwVwV1vxaV1ZEzrLe4331typlNce3oh3klw>
    <xmx:e3dsZR3gSsWo7adt0usln1f52WPWogIt6RUEbC-Z_i9qNxkOBukr9Q>
    <xmx:e3dsZQzREj5ypy6BBMYycKjFVVh-kpNts7awkPRzAPXCss5IkWaBLg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:26 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:41:23 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
Date: Sun,  3 Dec 2023 23:40:04 +1100
Message-Id: <20231203124004.2676174-9-tim@feathertop.org>
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

Sonoff iHost is a smart home hub with built in radios for wifi/bt
and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Rob Herring <robh@kernel.org>

---

(no changes since v2)

Changes in v2:
- Collect Robh Ack for dt-bindings patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..a26bbcd00deb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -922,6 +922,13 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Sonoff iHost Smart Home Hub
+        items:
+          - const: itead,sonoff-ihost
+          - enum:
+              - rockchip,rv1126
+              - rockchip,rv1109
+
 additionalProperties: true
 
 ...
-- 
2.40.1


