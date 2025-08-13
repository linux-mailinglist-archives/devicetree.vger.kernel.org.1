Return-Path: <devicetree+bounces-204038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EBFB23E4A
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 04:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78E4B562378
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 02:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52141CAA9C;
	Wed, 13 Aug 2025 02:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="CWsgO10E";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="aGycj9c7"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06FF1547D2
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755052503; cv=none; b=tQwylt6V9fvUEdrr6ylpuQfn1XwWYRlQrxx+uta3qj9LYBtwmCR2+FuXAZvRmv95wCQvCJy+VA7jDOIgIU9sCCmqRd0JkSw5xQUchsAg7CI7067rWScoQk30y3UDpTZP7DFVKa/OP/zP0EJB7cbE3K+jJasLPMClJKwVsqpSTao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755052503; c=relaxed/simple;
	bh=IK3ohHBHHagjYrjF5rcFIBKwUt62iPuFbfjhMdPAg44=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NWQeXm3ZiIsC/dNdvOvA+O6T85l9Vhsh9Jg2RfySWzztG535AE89MLeSrD0n+GCOiPuhTOm11rAYjbxeTfClgjQ0o2LD3VmGAOa3DKKIhI7nxGU2XboJzXySCH9S5FoUxq5QsmXEr31CvE/DGeTXcUMwM2zu/GeFslm15Kc/QyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=CWsgO10E; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=aGycj9c7; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 624BD1D000A3;
	Tue, 12 Aug 2025 22:35:00 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Tue, 12 Aug 2025 22:35:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755052500; x=
	1755138900; bh=nCkMu2OlunXt2/h65JJeSiauQOK/EUbcwxkLr5+FeRM=; b=C
	WsgO10E5+0YrdemrVxphIKzpz0v8ITf3dmGTU9n30X+0Ovdt6uKFSUyl/Cl8g+hE
	d6Ki2uXgRbL6doXcoKxQOQOSSEyeXr4JPkMypBA0ePXrmj2SUUvsUyqsoPUH6738
	b8fc4fp2hRKuyezm8Hvgzxc75r3AoPMsJh1XmA8FpPfpIRZoQB9XC5623CYmmGFS
	warEw+/a48z70Sk402nehEQNj8c3JHy7q2FngLsiCk4yeQgVj/F5/LkBaSwvxGCr
	FPpFecdqPhd0HpfcDtBxksT44UFKfFbJe+fte0RVFyf4L4qFniID7i0Kl0+xrEqN
	+OIrqBe58fo1KXNX7aufw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755052500; x=1755138900; bh=n
	CkMu2OlunXt2/h65JJeSiauQOK/EUbcwxkLr5+FeRM=; b=aGycj9c7WBYmKF2a8
	uEAQxjM1ZdF1WQA4ZJthcHIl9P7JY93KXc3Mlmb8u8dTUnLv+0n4xbKRpWVC3mGE
	dSbm+Q3SRjv3+tiF1T+YxXyLWa8hxtU8Y5Rrv4X2nRscKw/KbxxEtAdFSuGN0FJ+
	b5NXeNm8BEE5XzXC3q3t6v5htU+qU1tRxIHd2I4kaBoaq9q1IQ7dSmIlO+wsZ0oX
	FIqABKYGyIInOHI05cGNOd2gca3fSzIBRU7NmOsAUgOAOXGD601qDaluaprTkVPL
	h4VdNJX3U4jy+yJ5JaDzdcPURwcgFoEGoFPDXP7lYNOY5dhGeOqhHCd4EfS52eul
	ggQJw==
X-ME-Sender: <xms:1PmbaA-brvfSLiwLPx__ZDGnl_D5mDLJxT9fgIXvk3R4Jmc_nKLfRg>
    <xme:1PmbaPfPPss2GoDzgnS2pF-Jmnr_wpXPWAm3cU2VdEgmUspb2sA4znSiUWqotlKFV
    bkMVJEcNVMNnBulPvg>
X-ME-Received: <xmr:1PmbaHxW_hRmE6x2ZXuOrvqdH4SkS3VkhbUkV2WP0DWcRsTS_O5ibqa-BVoojSxF3LNVU_LXgvQFG3drG67eHl6s8HnXyH4G4tAfaSZM5ThYUJfA3wS-pbZgdpW3WxGZmjT8yni3NalU1UXkSEq0jk26-fQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufeejtdefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpefhffeuheetudekveejvdeiveffheejieethefhfeekheegffelfeel
    jedukefgveenucffohhmrghinhepthhrrghvvghrshgvrdgtohhmrdgruhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghtthesthhrrghv
    vghrshgvrdgtohhmrdgruhdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouh
    htpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
    pdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrh
    gruggvrggurdhorhhgpdhrtghpthhtohepshhhrgifnhhguhhosehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhrii
    hkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghr
    nhgvlhdrohhrghdprhgtphhtthhopehlvggvsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:1PmbaMIPbDuJBohz0bYA9TyyRkbhuhSlCNqBP-wIM4zAEhG_9SkLSA>
    <xmx:1PmbaBG3jzOWXbD68tgbHmT_IpB0yOlQHVgtTRZyJn8qkJa1tOGEsg>
    <xmx:1PmbaA9o1hXmh2vICzAjbBIQQH-IOC523unAL9qGph3v0UxUXiQEYQ>
    <xmx:1PmbaJJ-Pe_wPck-2PdNo5Hb5o_3KNnJ23Q_uMQHf81KQq8oaS2Acw>
    <xmx:1PmbaO0i-jkKkpwFShX6EVAVTnYe5unVrEv0I6VcYjYVUBQsIqHrDExA>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Aug 2025 22:34:57 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 2/2] arm: dts: freescale: ten64: add board controller binding
Date: Wed, 13 Aug 2025 12:34:35 +1000
Message-ID: <20250813023435.27776-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20230501064727.8921-1-matt@traverse.com.au>
References: <20230501064727.8921-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board (micro)controller[1] is responsible for functions
such as power supply sequencing, SoC reset as well
as serial/MAC address storage, bootcount and scratch registers.

There is currently no Linux kernel driver for this
controller, however, there is a driver in U-Boot
which utilises this binding.

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 3a11068f2212..71765ec91745 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -253,6 +253,10 @@ usbhub: usb-hub@2d {
 		reg = <0x2d>;
 	};
 
+	uc: board-controller@7e {
+		compatible = "traverse,ten64-controller";
+		reg = <0x7e>;
+	};
 };
 
 &i2c2 {
-- 
2.43.0


