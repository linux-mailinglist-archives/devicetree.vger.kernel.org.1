Return-Path: <devicetree+bounces-13928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 120307E1683
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 448701C2096B
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 20:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A55715E8B;
	Sun,  5 Nov 2023 20:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mai.rs header.i=@mai.rs header.b="YQF51czc";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rZBBJNHY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939611737
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 20:48:09 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BABDE0;
	Sun,  5 Nov 2023 12:48:07 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id DBE625C00B6;
	Sun,  5 Nov 2023 15:48:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 05 Nov 2023 15:48:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mai.rs; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1699217283; x=1699303683; bh=LH7JzfygI0
	EwtrIvLxipiI4ySOERzGKcjLsvZgPGDvI=; b=YQF51czcOS+ltydDtZLwFWnaem
	5QQVRcbYWyS4/Roe6UQ6SLaq5on3Kc2VFN49SpYnUanXepVmleql5ji0nVn7UF1p
	m7mSh977y2v+Fg94bKy+baTvEqqs8+B93MM3Fn8FNpM61DpTGJ62e4oTzoeFlU2z
	NU0X5EC9AIlSFkJIsj9Wx39mgcMGbBLoUWPLXP/u1usYYixCacIqr1AmAD/kq0zS
	yX6K0bPv2zSOd2rhDJBuVdounrXPwkY2arxchkHC3ei+7+FJKG0h+7Ar9ywjwYGy
	jIQ61hkrf/lxl/By24SH4J8snxcA+vhVfOm5dWEhm538vhI+a1RHaTbHj6pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1699217283; x=1699303683; bh=LH7JzfygI0EwtrIvLxipiI4ySOER
	zGKcjLsvZgPGDvI=; b=rZBBJNHYA5xPvU+KIJIztrZjHKT+ccDl/rluspSmq91s
	2Z2HJPjLeAfjrfwUu7Y2VOEF7ryyC+4NiLOu3X+1EI2XXqANBwVKw8wLfhM2F+ZW
	bOniVkS6KosIM0ATSJy9Hurk1FE8mnAsUo4Pm3r2wIboKeJT+TMkqqfW3Op7qyT2
	2QZrYjQ9SW0l2T/qDwKSYmB+IY4M3WA1DmJXAeT1ZIhWPTHH0SEhfcHlVYJHZ6rJ
	kEum97kZQDrpIzej3R7iuTYQEI4ffxNIWNrei/JNVkKNnmNGrY0JEvHOsvvx1iyN
	3c2mTPK0/ES6zIKcPwdWH+Z94+5vHmt2OfZ5xTRygw==
X-ME-Sender: <xms:g_9HZR813FW-FwBuSDOo5TsLpch1t7QqrnzhAQPsYogx476MrdaTKA>
    <xme:g_9HZVuUBolwYoYrUeEQGSTWhpgt1c9E_Os9kPAbVlc_aq96FWcGJ0OvQjrZFBVaq
    iY2T46J6KzLhUNZJg>
X-ME-Received: <xmr:g_9HZfBEW-afr3SC_3cm08SDFsKZ_GjvEM9fXBF3RhHmeNSuOJ7fqm9OecpznRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduvddgudegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepuehrhigrnhht
    ucforghirhhsuceosghrhigrnhhtsehmrghirdhrsheqnecuggftrfgrthhtvghrnhepje
    ffiefgiedvteetuddtfeeiheegveeuhffgjefgfeffveegjeejvefgffevveffnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghrhigrnhhtse
    hmrghirdhrsh
X-ME-Proxy: <xmx:g_9HZVdm7wYpNdeWQnkIijJtD81q5R03vEgVRmmCA-DJagnMOno5fQ>
    <xmx:g_9HZWOBWBBnGjGSBqKDPieqA6iTWn83xl3dwHw6eudbFMC2CtmJvA>
    <xmx:g_9HZXmlGBxDEUpcUZoRQ_WqHUG6pkj3nJ3esw9GG7sLyTSM9CAyMg>
    <xmx:g_9HZXEyvijJAeATkx8NPXrNZKr803uLFFIs0USuK9i9pkyvK8Kqhg>
Feedback-ID: i891b436e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Nov 2023 15:48:01 -0500 (EST)
From: Bryant Mairs <bryant@mai.rs>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH 0/7] Add samsung-milletwifi
Date: Sun,  5 Nov 2023 21:46:15 +0100
Message-ID: <20231105204759.37107-1-bryant@mai.rs>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for samsung-milletwifi, the smaller cousin
to samsung-matisselte. I've used the manufacturer's naming convention
for consistency.

Bryant Mairs (6):
  dt-bindings: arm: qcom: Document samsung,milletwifi device
  ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 8.0 Wi-Fi
  ARM: dts: qcom: Disable pm8941 & pm8226 smbb charger by default
  ARM: dts: qcom: apq8026-samsung-milletwifi: Enable charger
  ARM: dts: qcom: apq8026-samsung-milletwifi: Enable Wi-Fi and Bluetooth
  ARM: dts: qcom: apq8026-samsung-milletwifi: Enable modem

Luca Weiss (1):
  dt-bindings: input: melfas,mms114: add MMS252 compatible

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../input/touchscreen/melfas,mms114.yaml      |   6 +-
 arch/arm/boot/dts/qcom/Makefile               |   1 +
 .../dts/qcom/qcom-apq8026-asus-sparrow.dts    |   2 +
 .../dts/qcom/qcom-apq8026-huawei-sturgeon.dts |   2 +
 .../boot/dts/qcom/qcom-apq8026-lg-lenok.dts   |   2 +
 .../qcom/qcom-apq8026-samsung-milletwifi.dts  | 607 ++++++++++++++++++
 .../dts/qcom/qcom-apq8074-dragonboard.dts     |   4 +
 .../qcom/qcom-msm8974pro-fairphone-fp2.dts    |   2 +
 .../qcom/qcom-msm8974pro-oneplus-bacon.dts    |   4 +
 ...-msm8974pro-sony-xperia-shinano-castor.dts |   2 +
 arch/arm/boot/dts/qcom/qcom-pm8226.dtsi       |   2 +
 arch/arm/boot/dts/qcom/qcom-pm8941.dtsi       |   2 +
 13 files changed, 636 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts

-- 
2.41.0


