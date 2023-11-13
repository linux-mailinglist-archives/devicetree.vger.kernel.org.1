Return-Path: <devicetree+bounces-15340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9767E9BE1
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC8CA1C208D8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31841D555;
	Mon, 13 Nov 2023 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="EeUb1WjY";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OsCq7f0a"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E071D548
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:08:42 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 304C0D72
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:08:41 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 8FEB85C00D1;
	Mon, 13 Nov 2023 07:08:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:08:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877320; x=
	1699963720; bh=1r++sqtO8eU7O0W8F5x1LffRTcyqoZo9MnQcYdmnV0I=; b=E
	eUb1WjYXxVqnSkLoMfPsEocMaF+Bm+mKPJPXPHA5fY3fjB669+iPzLWqo9Muejv1
	vYXj7deAfJcaFIJl/P0GQfWu4qHql1r51xnBnnew8Xec3R7qc75QhX/fgWaVyLrc
	dOud6EH7p1tnRC6bMJsXDcmuVfGdfHtK+BXvcKZ6OwPMpmPf7qAmGlg0671aq//B
	f7UvFsaJ3/3fsynLqwhekGInMBvWgkrAi7tHjWR7Wovl2iWO5SYosHvftT3lilUu
	VlDtXC4bHw9QjdTBZk4keu5XQK2fsMv+RdPt6ZJ+6ZRQl1grw7eBlahHjLcp3Kxg
	xVDq2Wp/cAXl8Yn3995IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877320; x=
	1699963720; bh=1r++sqtO8eU7O0W8F5x1LffRTcyqoZo9MnQcYdmnV0I=; b=O
	sCq7f0aqQElY4Vny6y3Zpt2UPpZtRQY9gfY1SgPgc3tYlCaX7dksC+lJM35QefCY
	8bfzefdDd1AoCcEbh7w9zP/phU0bSA8gZqGpF/xPxZBIQzBoPybtgCNxDc1o6aY2
	LX/Io84QxU9P3bvtWDIy8ogLRu+ZrQP5xvdYECOS827nJi/M7N5Qz41fsidiVDtP
	0W+Lvi3KcMqMEFtRS2bpGFbq7Ryilsb6boNHMcaVoFXeA5R1VelCuxoVOyz2aWec
	AL6kaiB1Cewsx/fgxhXBENkbeLtlMIlHxnUAmlZQgSoEOapuR23YhQjRjDfXT9Fk
	/r8F5yBIi7GkZDAzT9Arg==
X-ME-Sender: <xms:yBFSZWYg2wkzqYmAg1d7jAqvwglV-qeYj_EZ1efGneQ802vS7W9j1Q>
    <xme:yBFSZZaLZqtRLCVbByW3s3GfyOZTdfPPTJ-ZMnPJSUQy9Z97uMHODzQV3fpsS-AqX
    gH52Y-2qQ>
X-ME-Received: <xmr:yBFSZQ-LutV2SbDfqQhWSzBcYs5Og7TXGWeBU9ijOWfeQ4t9ug64rB3AG9UlDzKx-_fL2CoEcXGXuu62PIMCkfFN4Dhls-YzAZk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:yBFSZYobFBLHx3qgMoZeS8Q98zlGTzKhCWbbwJAkZzABcxn9vJy9Lw>
    <xmx:yBFSZRp6yQ7Dkb3aFhh7xC_ws15Ycxl2VUoJaVaSwHICVt40rffmmA>
    <xmx:yBFSZWT1WuySYDXMoVLiUbhIMxn1pixMnNhZB2G4Os6VCPH9ZTnCcw>
    <xmx:yBFSZVIngsQZHQ-jCZ8NHXaG4Idu5kRc1aA4RCHzBc9CmlgWA6jcfw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:08:36 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:08:33 +1100
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
Subject: [PATCH 8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
Date: Mon, 13 Nov 2023 23:07:05 +1100
Message-Id: <20231113120705.1647498-9-tim@feathertop.org>
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

Sonoff iHost is a smart home hub with built in radios for wifi/bt
and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

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


