Return-Path: <devicetree+bounces-15333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D90E7E9BD6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0EDF1F20FB7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B161D68F;
	Mon, 13 Nov 2023 12:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="pzkzLspM";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="AOMcMgWv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E191D553
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:07:30 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E430FD70
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:07:28 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 5A2C15C0170;
	Mon, 13 Nov 2023 07:07:28 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 13 Nov 2023 07:07:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877248; x=
	1699963648; bh=02p/VUuhoRXxkXoR3nHcSRAUHO8eTkAqgxeL2ESESTc=; b=p
	zkzLspMtybDzC0UCM2Ij8ulHIH+Z6imIdlcZxWGJiAHVvrZRhDkjDHSJSGfupbqX
	RLi/ul86pDtfHZWPCkoCTmAWRHKAxmOihoErUI2NhgXtCNVlF05rP/jIymFaXCih
	KEUfarVP0WVcIDxS3wuy0Uc+dUIhUZtmR0lfiDvTOP9iANTCa5uEEbZjatzH29Ks
	favTOItmEpsKV1JuwBYsDNpbVWAqatQGA1RSmBD2g2DASuwpQUydy9/qGLe2BIVd
	V+yYkZ9dc1QqUoMgR4Zi0zDjvFHS67/uwyLN2W1rXIIWXbv3Ff5Mgwemo1nQxcS/
	45vAleDK6HYkCe4QMMlcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877248; x=
	1699963648; bh=02p/VUuhoRXxkXoR3nHcSRAUHO8eTkAqgxeL2ESESTc=; b=A
	OMcMgWvVy0dh2iN6ZfmNUBv6qDHHplYWJlylpeao1/mIpCjqLN6CRJQpgzsYkc3L
	VoKo5z7Gdii9aZKSfi/fZ01E0briSDl+Ni7UJC/Q4AZK0oFXheG0Dpt4cLcBC5v6
	Gkjl1UgLL+okTs2BtAeClFRZSKor5QQj8CfmdHh/+xw+T6b7oYijZJJB4vsBjhF0
	AGP3QbP8q2aNaTp8b0xPpLTOkumNJ32Egf4QHhkH0Mlcv9t75VyVB9HMCxPFC70l
	F841n33/3KIkVysp1z/38qy/FpnrlJCZdP1GGh1k0Zfuykn+qMDTxgoFiDOdaKRR
	2572vmOHHrmY2LZ/FY03Q==
X-ME-Sender: <xms:fxFSZSAgTvZ2gGzeZWTrAEZBFPh12_XfkBg3mswLVo7obSyCvwpNBA>
    <xme:fxFSZciJlrWH-dNeSrm2uK-d9a43SpkXvQKCiYA9gRFdNPyoAaDyBApIfBEkeVUCi
    rRFxhOGzw>
X-ME-Received: <xmr:fxFSZVmyovzyvPS1FB7Y_O7K8BNDQt3R0w2BIuYtptBtNvE_-e_GaBUeKMiYf5ZxCUl0dsf5ZjUk4aJlOKxTf7u-RI13w9NZtNg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:fxFSZQxScZpgXefw3Z9pQ3r2bLLTElKRTUEeV2zNxACcQOWrBbUxeA>
    <xmx:fxFSZXR7StkGbJEloqY9h9FPYaAdGgfGD6p-qmWILqMKu32XWGNPTw>
    <xmx:fxFSZbZkd1eOSH2EcS2FbTKo5MawEsZHcdjB5D8Ot7yzUKwuq80Eew>
    <xmx:gBFSZQQWVqnDGficyZOf3gTcuKN_X1-3meYJTpwb_oBoxwXW7bll6w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:22 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:19 +1100
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
Subject: [PATCH 1/8] ARM: dts: rockchip: rv1126: Add alternate UART pins
Date: Mon, 13 Nov 2023 23:06:58 +1100
Message-Id: <20231113120705.1647498-2-tim@feathertop.org>
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

Add uart3m2_xfer and uart4m2_xfer pins for Rockchip RV1126. These are
used as serial ports for the indicator and Zigbee radio on the iHost.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index bb34b0c9cb4a..4f85b7b3fc4c 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -263,6 +263,14 @@ uart3m0_xfer: uart3m0-xfer {
 				/* uart3_tx_m0 */
 				<3 RK_PC6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart3m2_xfer: uart3m2-xfer {
+			rockchip,pins =
+				/* uart3_rx_m2 */
+				<3 RK_PA1 4 &pcfg_pull_up>,
+				/* uart3_tx_m2 */
+				<3 RK_PA0 4 &pcfg_pull_up>;
+		};
 	};
 	uart4 {
 		/omit-if-no-ref/
@@ -273,6 +281,14 @@ uart4m0_xfer: uart4m0-xfer {
 				/* uart4_tx_m0 */
 				<3 RK_PA4 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart4m2_xfer: uart4m2-xfer {
+			rockchip,pins =
+				/* uart4_rx_m2 */
+				<1 RK_PD4 3 &pcfg_pull_up>,
+				/* uart4_tx_m2 */
+				<1 RK_PD5 3 &pcfg_pull_up>;
+		};
 	};
 	uart5 {
 		/omit-if-no-ref/
-- 
2.40.1


