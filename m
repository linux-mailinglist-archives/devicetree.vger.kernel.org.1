Return-Path: <devicetree+bounces-218679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B97F1B831B1
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74164620F9A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1787A2D7DDE;
	Thu, 18 Sep 2025 06:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="DMIErtSd";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="AeN/LF9h"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA932BE7A3
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758176100; cv=none; b=GvxokqvpHyeCu7Y6ia+nkpzXLMKRXv4jZhmCHHTjkTT5Hcab2SXHS5AiLjbYTPo/5qR8zbSBUOnud1XaifduwtaiSGr0tsuUPSGKGn00iCiHNSPVgma4NV4eHZnVpBbfYvnoQE21vshezRSeGVh3cFpcTKhoS9vyMCDxxqUEZgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758176100; c=relaxed/simple;
	bh=QUbV60R+XzkH9BF85ETCdGVv2X6YP/fNHFVcWYRk5XI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WvDAYbsmaogKhKCb/HY1oxxomxWSTr8ibJYoqojyMzS87cd90BPYxvu8pSruC95dojudecD7ZrFdy4SRqDgpvbmq/jMyKOvxqhpif3M+3CL/2q0dN4yzNTtzpW1QppK7ymT7fOO9pWj5l5tb4u8ebNPISIgRXjYj5ZTXJNAAXnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=DMIErtSd; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=AeN/LF9h; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id 81707EC023A;
	Thu, 18 Sep 2025 02:14:57 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Thu, 18 Sep 2025 02:14:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1758176097; x=
	1758262497; bh=GAZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=D
	MIErtSdGQsA8Zm7ALkGb0vERfSF3sDzEujzZETYjMRm8PIALsq94flKrswIi2a/A
	UF9A/l85+CFRAZFsPcoHVKvManfDah0Ebt94bZRStr9UFgmiLr0MCHVh8QUVZnNp
	WQY4Fvgq8MjCL0dUCGHIafMLFw/GczMnLBGhbpT5Br9w1I5hBGYJKMloYXERQxDn
	eoNpm/5wv8LxgLXEkoKDgq5RzOi5JRPFXwoWYpbl3qN3pVZUcI2INZF5LaYEAbQ9
	xL4cdd7P58TqPcnot0kPEfJGLmyPEFegFnrvmXt/wDAVnzFnfihninE5CYbJA70v
	j1ut7FNWIZ3owJgiCy6Vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1758176097; x=1758262497; bh=G
	AZjNYlYoUxbND97FHyJPKGZ9OtZP5oe5PR+eT/X57o=; b=AeN/LF9hcZ0cLwJ13
	5ONTkJFqEG1yRGw4kSVxydeAB/ZrTWjT/6Mwg/2cfQOCshwPg/DOKrRIg+6Z80yp
	bItClD6V4N+nM6Fg8FWRBkbz9oKZ9q3T4Z6O4CytqQRFgAb94Is59Hvf9a09mMwl
	NP9dE9Onl825HvFGrJzO6ZkW+X0yDMq+7njClNguAMlVvWgeTpp8RInJLW5NtCyR
	rL5iupaj84Iq9/bG6SYoighzU0dEitEd3URPWW+bArhp1uU7YBH7W7AwW7PBX4Hl
	EYE28zQ/D5BpxAfGl7ytuCZyFX33mcNmiwfIEDBWaKK4S7x7CKO9OnRtzjjQlLbz
	314tQ==
X-ME-Sender: <xms:YaPLaBVsLQHcihVDYLexymSFXy7NCcLBNtSzVBY-rYq-09mS7p1uhQ>
    <xme:YaPLaIUzkasV_ob52O6wMxNLdz86_ankaTE0ogE9W4su5GmMGircR_WSwK6e6MJY9
    XehKJBRg5fPdx0SDBs>
X-ME-Received: <xmr:YaPLaPJNbIjNhgmZdg1kc_uqJumvXkDbEKVnpcln0jqjoohpD4flIlqTMHvPMMh_VMtP8M12WY6mqflRwvdLVTakBa9wXB9Ci_TrDDKCS2oR5Sg8avUa729GW-sA4zlI4Pl_AsqeJEVck8t0dD9Acuzklc4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegheehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgvficu
    ofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrf
    grthhtvghrnhephfffueehtedukeevjedvieevffehjeeiteehhfefkeehgeffleefleej
    udekgfevnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgv
    rhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrg
    guvggrugdrohhrghdprhgtphhtthhopehshhgrfihnghhuoheskhgvrhhnvghlrdhorhhg
    pdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikh
    doughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhn
    vghlrdhorhhgpdhrtghpthhtoheplhgvvgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    epmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:YaPLaABxWqJE67P_sMLCdLD5pOahm6I-akTTNnAdIHTxs7O1GI03WA>
    <xmx:YaPLaHfSlJuGRzTdHF-ZHZRU98_JM6QP8A-nseRJtZnRu7eYEAo_xQ>
    <xmx:YaPLaH22qKw9JoZ1Dg0kCRuXJHCDcQU3KFT0bWkIt387_mJtQD-drA>
    <xmx:YaPLaGi3p8qbOcphcpzeRRg8egCaQN1OHMF1QxLcElzTPfdK0dlNAw>
    <xmx:YaPLaCN5QQHc1qD2P9FGBQQlZ5s2P4GKFrkV5Fjoo4rqjfYH5MsG5d-y>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 02:14:54 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v5 2/2] arm64: dts: ten64: add board controller binding
Date: Thu, 18 Sep 2025 16:14:41 +1000
Message-ID: <20250918061441.5488-3-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250918061441.5488-1-matt@traverse.com.au>
References: <20250918061441.5488-1-matt@traverse.com.au>
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


