Return-Path: <devicetree+bounces-17898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A95A7F45F2
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CC3F1C208BB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD684D5AA;
	Wed, 22 Nov 2023 12:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="MiO1O0W5";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="V09sdPuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C681A8
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:24:05 -0800 (PST)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id D36E63200B2B;
	Wed, 22 Nov 2023 07:24:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Wed, 22 Nov 2023 07:24:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655843; x=
	1700742243; bh=jhTsnmAl5/DmW6EKKVEBlGQazQUFkpjvjuIRfHHxlxE=; b=M
	iO1O0W5Lh8PT2bOZTYcDns2zJTBjmh/QCPr3pD5trFpFWYHvY72qPR3QYk8zq41Z
	aen+RvAgf//xad5kOS0QC8sx6CqL5Bae6OPfuPg46XgEbKHQS3W69k6nF6tkiMYp
	3qvIM/O6IsWh+OMVrDt1yhl9EMA75E2cIR7TlQKqnEiaty3E5QIG+uvZS9Feir3J
	rTI5zVr8liBGfPq+hmwSuZlH7AMCTboYpFedeZ1sGAR9DqR6BeMfUhH6TDuiWSVn
	3xGgFJas6b6IJG/0rMOniEUdiglXqE4gzW+tTKWAzUwcajdosbuO6wCdt6urIKi3
	beZzB0SUMQhZpZv8Gsu2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655843; x=
	1700742243; bh=jhTsnmAl5/DmW6EKKVEBlGQazQUFkpjvjuIRfHHxlxE=; b=V
	09sdPuJk0L9uXPv+3w9+QajkMcEWG0rXeJMMIPQTzmConfbBmA7E1vBi1/7b5we2
	7Kri+gC20rjQV6Q4YVaamN5vwdVJTVFWv/FDrD0L841vFum+lxjTMeLhnpwsFVrt
	5cD2hzmxOQs21vVh9f5elbweJ8r9bffyuwZCr2raStfv0isG6b7oVM0i1I8st1ol
	yMuQiKRCd/8WuejFK7r1ysnDnutvL64Hv0o6VRUQ4icpnvLptzpkBXCAi2f1MhVx
	t9N9qaPLJiHmaieJmKyDZNK+HXi+xStl8KkWmzz2gZNDpQsdmmDArPWf1bBhohHP
	7ZpbjO4O9q75Hxw+dFThw==
X-ME-Sender: <xms:4_JdZRlRni9WTiU-55r4E2SkeiT0pev4HMqa-D-cUdhppDTK0ppkgQ>
    <xme:4_JdZc0ZRzzJCmO0d5adqWq_fIRsdCkUybyNmUys57DN0936YvyJylRskARoNhgtT
    SixBBQYAA>
X-ME-Received: <xmr:4_JdZXqC0BHSGs6MUZsWNPRw-7eTbow5FQoCAjK0468V8kXa_ka2UR-pR1a7TaA_F-HXWhi7ldGYjOLCrTbtmlPgEDLCXFkAmYs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:4_JdZRmWXERlxT8JbKzdq-ZWzKo7w3QZeyGiBTmqGmdONZBh5dlXcQ>
    <xmx:4_JdZf0ilpNOWiakwZaS_i8dxjF62HYvUubVMtBO-uXN3f4gMOnA4w>
    <xmx:4_JdZQvQfuLQcDUS45UqyAURAzo12lJXaQWn7_-FJAugYQiQ3p_f3g>
    <xmx:4_JdZUmxjl8kK8ba_CXNGJj8ofcKUZHzEs06EXXdzDGL8DKjMsVrmA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:58 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:55 +1100
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
Subject: [PATCH v2 7/9] ARM: dts: rockchip: Add rv1109 SoC
Date: Wed, 22 Nov 2023 23:22:30 +1100
Message-Id: <20231122122232.952696-8-tim@feathertop.org>
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

The Rockchip rv1109 SoC is a dual core version of the rv1126. It is
otherwise identical and shares the same device tree config.

This patch introduces a dtsi file to drop the additional cpu nodes.
Taken from Rockchip BSP kernel.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

Changes in v2:
- new patch

 arch/arm/boot/dts/rockchip/rv1109.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
new file mode 100644
index 000000000000..9cbaa08ab1b8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rv1126.dtsi"
+
+/ {
+	compatible = "rockchip,rv1109";
+
+	cpus {
+		/delete-node/ cpu@f02;
+		/delete-node/ cpu@f03;
+	};
+
+	arm-pmu {
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+};
-- 
2.40.1


