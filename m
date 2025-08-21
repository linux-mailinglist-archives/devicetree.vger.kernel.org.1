Return-Path: <devicetree+bounces-207195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE18B2EDF0
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:11:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 780D17218D5
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F11288C0E;
	Thu, 21 Aug 2025 06:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="oIOyJiKL";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Ac/78oHK"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a2-smtp.messagingengine.com (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00A225A325
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755756695; cv=none; b=txqti63VPRzD1mkY3pn2Jn4SXEx0PiVTpeU9Tm3pHD+EYJQtSMRLepDBiTMEBgcs6XvY2wsP90vFsZ5lxAzJg2LZ03QDOP7DM2+6kpVu5gaLHmZshtYF0QwsU7GDJxwB/HvONYnHUPFYiZpKbHrc16RHGtgbNKri+wLV+G3X098=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755756695; c=relaxed/simple;
	bh=QUbV60R+XzkH9BF85ETCdGVv2X6YP/fNHFVcWYRk5XI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ox++GCUsaaZewk1XDho/S/PRrZNZrkbSyK/7DJ57Oao+NvQQ2jb4oxAbz9TlvyVT6R1IGsYRgw2U6YmjMVUP9pmLiQxO5o5uoIUfzO03qgWEf6bDg2z2E4bdIdylE7CL+w0C2gzDUSCZ+b6tKvOvwY7B1DQX9fkO4BOHBCExuw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=oIOyJiKL; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Ac/78oHK; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfhigh.phl.internal (Postfix) with ESMTP id E129D1400057;
	Thu, 21 Aug 2025 02:11:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Thu, 21 Aug 2025 02:11:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1755756692; x=
	1755843092; bh=GAZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=o
	IOyJiKLgOucJBtq7FFGsyqDg9sdK9DoMd+FAu1fyQ26x1nDtZuLzjiD3QuBV/9Xg
	C5W+QSlVH4ytQM8LUIJA38zkPJJFU2m55m2lB9kalYH4b7AooMSX6/JnoS3er45n
	eMOCDhKfPXA4pE/qxrDS5r03pYnfGXfqcQtBKD9Odn5pYQoEQIZonFhbvvoSBHwN
	6SMZ6K7st/ZDMhRtcGbDt4C7Wd0LiNxK2NMtZWYtLd9smSPWaGN+yAgW441Css4z
	C9090UMtPIv/g8U8Gp56BtvJ5d1MLD4i4sxi7CS1QBK0nVOTWM+2DArxPbEhoqEl
	SJt188LZ9DhlE7EzIj2Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1755756692; x=1755843092; bh=G
	AZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=Ac/78oHKHPxGpfgSU
	7PCSjEBKFMnM/URsMY9+TDjtCcfhjg4kdqsQMiA/VZEXdR9ykaDwNCIsfeSaIh9q
	ilXBTzwWjxuz2n1LCGI6HKJUzVQzOSV6LZSW3kPNTJv5/CWeYimkxXyn37RPdEWP
	PlQSSs1JKMldxP545nxcCwBpZWGf9IbiiGjN2R4EzEhorZdzZIZlDSOch8DvRnuL
	DH0TNyL0odx6P1s9uR9wncFrLQTKAI/uJmYJlwGPqbaJw5MMiby0FPyjm7vk1xRJ
	LBAm0CLt5Uir2PPiMHUIYITgAFfq/qkZ15QiO7IIDPm4c2SL36nVB2VO4UboPSPl
	P4Ycg==
X-ME-Sender: <xms:lLimaF_Hx7JGsuFNCDWxszHj9kEq20f4IjMNDcVBl_Zy0bmRBgtF2w>
    <xme:lLimaAeOhkxLl6Yjqf3yHZvzs-AfiLE4aWb5xbtiDnbNKIU8NWcKfwnYtiZzvwdox
    aeA9ZZP3BZGn4GJ6Rw>
X-ME-Received: <xmr:lLimaEyjDKxw-jEmX1h3rf7lWiTs3haXdUVa-ilEfypSQH4iCbZ7c2bUnyONYwVQoBY-iK3eib4Sud4fK2RKti6v3nmrVxIGOzOn87igzV312BJThpKqYzVGlzK9xy2XM2k7z-hejxlBH71VSaLxcJP4dHE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduiedtgeekucetufdoteggodetrf
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
X-ME-Proxy: <xmx:lLimaFKkRZXtOops8bSwVVMAwbxALyWA0d1c8hc1UKrGskBGIQNWvg>
    <xmx:lLimaGFYbcUFQPmQha2CgiA7LWH4JvVUxMY8S4zgm7Bgp4kE8CFtvQ>
    <xmx:lLimaB_34WWuVo_0_vNAAfMVc-qh3Zwn5GZ5cJ2WdJjt7UwpoKeaew>
    <xmx:lLimaGLIcSlZj_qtsfBTRtUGezX9jnX2UhqDnBsGId_rMSp5BkKbLA>
    <xmx:lLimaL2JUkdcbE1J_wsw1Ej16bm3cB2BAMx6iEmYnDE8xkOP9DKqgCKo>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Aug 2025 02:11:29 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v3 2/2] arm: dts: freescale: ten64: add board controller binding
Date: Thu, 21 Aug 2025 16:11:15 +1000
Message-ID: <20250821061115.18254-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250821061115.18254-1-matt@traverse.com.au>
References: <20250813023435.27776-2-matt@traverse.com.au>
 <20250821061115.18254-1-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board (micro)controller[1] is responsible for functions such as
power supply sequencing, SoC reset as well as serial/MAC address storage,
bootcount and scratch registers.

There is currently no Linux kernel driver for this controller, however,
there is a driver in U-Boot which utilises this binding.

[1] https://ten64doc.traverse.com.au/hardware/microcontroller/

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 3a11068f2212f..71765ec91745e 100644
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
2.45.1


