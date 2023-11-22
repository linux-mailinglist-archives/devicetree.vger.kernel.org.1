Return-Path: <devicetree+bounces-17892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED857F45E7
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6E82280C15
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7E424D580;
	Wed, 22 Nov 2023 12:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="DxRaKprd";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hUWixADN"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 273E21A4
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:23:13 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id E02DE3200B14;
	Wed, 22 Nov 2023 07:23:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 22 Nov 2023 07:23:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655791; x=
	1700742191; bh=xDEc2S3rh9u3+sEg4TO4Fmhibog/ANoj1AKC9FhD9go=; b=D
	xRaKprdObUAArGmRcBe4YJ+VoBn785Cm1/4j9TzubN/GYBg/hbdXjE0BGehCXmAV
	Ec4YCa7sR3FVT8nBvymDICY2dQ4yz2ILOvr365eBqoGTzhCtXZNsOcefVsYR2+B/
	ZmZxpjtcQjheSr7/oUpHt7IxGzzYdpXp/ZErs4+hiWM66WuoR9ADZmUSu9vjMa8c
	h23O3KZ/w+4+6sFhrJlpSUlzmBLlQLl5UKQM2kMJV5+8qFi0EgFbCOs7ie6/9Qk0
	PWo85jxmydVDIrVssNolygdbBT9TfDbs11sL127anslfynP5UoX4mwowy+/yR4Wf
	9+bQ1NHn92quph6Dm5aUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655791; x=
	1700742191; bh=xDEc2S3rh9u3+sEg4TO4Fmhibog/ANoj1AKC9FhD9go=; b=h
	UWixADNPUM7dhTU888WZu7fhMse9f4l69fguZ1u6Hk6v8IsT+hVHK7GpzLFXQJiM
	OhDZLoMiWtdaayvHuVh14HRpl+bwk7WDZpKFLu9R4tCHrihEk0C2Uau32znv48Co
	fV7hs+NUtkO/Z4IFzTRAxumJ0pxNWvdi1/3Cu4GttvCig9lQzTg9xpuCRY+3O7Hp
	4vCiDfXuiIkhOsY4UbmZCNgz+W4RCAN9qbsRbmuCCyN2g1NorHsZtkd8+8thsVf+
	PgbtyeE4/SZDCFM0+D72YF2WC4NzED5JnEuoeawouUJtohZc10pYvl0mVdb3t7Jx
	x19eVTDlfKA2WgekyFjog==
X-ME-Sender: <xms:r_JdZbUda7dozIFBENLyHJxZkDHOZmdu4-AOMLkazQ4TsiLFW6EU3w>
    <xme:r_JdZTlgHvb5IGAaGXAswCHeUZmtcjNwLFTUHJPT835UonSTPFjkfzC413eAVhYzx
    Pb3wErohQ>
X-ME-Received: <xmr:r_JdZXaGTi-Q9mu9LbrseKiKSodDebL0zYVmfugWqxhG0YGjdrIeeu-_A7oPlZ1l7JhK4gsHiqrlrOo4BTtX0P3gBAO-7W3mTOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:r_JdZWWw6D4g8RXVMktrFfxeOE-ifPXJYZrLTjpccZ9Z3NnNc_wfjg>
    <xmx:r_JdZVmd7UbJsd57ag6U-1douPosbyoeg1RnSdNidJ47Nfe2fw8U4Q>
    <xmx:r_JdZTeRfGuQFcZ7lHImUMthiXsS2yXJpUCoy5IPTpzkZzdHodQ4yQ>
    <xmx:r_JdZbVqtKYoFyWZDoureQ7kvJiICbLCei8GBeKXYiJ-_nvgB8WCbA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:06 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:03 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/9] ARM: dts: rockchip: rv1126: Serial aliases
Date: Wed, 22 Nov 2023 23:22:25 +1100
Message-Id: <20231122122232.952696-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
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

(no changes since v1)

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


