Return-Path: <devicetree+bounces-254999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB76D1E3FF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D3A703001FFE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C248F395265;
	Wed, 14 Jan 2026 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="Xs6xUh0R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C025E396B7E
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.158.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388210; cv=none; b=O/7lEMLg3OmBG37paxIsA14dQMl9zxYz9urH5Lpg1oSPTyD4kTgaU7wcqFPxOEGuPSk3OzeSIqU51YfGO++oO7VgsQyPGFyfcOeUt9AtAaIadIcAJheOa9Tp1u7iSW12IfbO61zwFu8YYVBlEJCXtIERydWI0xpgo7Yt0q7CfHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388210; c=relaxed/simple;
	bh=Tp2kTM1nxK1MZ7N8X25iMhek22ei30z6blhLbVoJ9p4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=e+vI39NB1awQQEjgJoGBTXYXqk2TiJ9nA7mNtG6V6Z//SDKmQ3Mgd7WRffBtaiCGoAzybfDp57gsD3vNVa+tmscsv8C7g63HU5vZElofEKlfSf6pQVToXXQAI+zs4Bzv2C0VjaD0tqLBZy737TGM/IsJVlN1c49+I7nI0RxqgIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=benettiengineering.com; spf=pass smtp.mailfrom=benettiengineering.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=Xs6xUh0R; arc=none smtp.client-ip=62.149.158.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=benettiengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=benettiengineering.com
Received: from localhost.localdomain ([84.33.84.190])
	by Aruba SMTP with ESMTPSA
	id fyRxvVvSoJWrEfyRyvxLhb; Wed, 14 Jan 2026 11:50:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1768387806; bh=Tp2kTM1nxK1MZ7N8X25iMhek22ei30z6blhLbVoJ9p4=;
	h=From:To:Subject:Date:MIME-Version;
	b=Xs6xUh0RrdSJyo+G8o5b2vtX1OcLRD1+QhzAIQ6176YPw+zQf8MT4CioREd4tuv1v
	 0QglRP7/hIYwFATE4NIyD1/5tmYjKQ80Gc2QVR+s+bF+3NQy5AFTSnSFmZYuIYu5eL
	 /OfrsQV2a5ZQDvSSWPpKVYQKIJetcXBIRQo0XuIPDZPNBbtV3H14GfGpu3LXEhknFM
	 jN0KqH0T2K/OfGAz67U1f01PM3WpfOBTj+iwGcfuoX4IfhY9O6i3mP7Wl1zIQHDT0N
	 7K5Lp951vdkoyhlGAwOkezbTp8aX9U7/rwwuC/Od7kGKcv9wHZ9fPDgkJfi+QzMr3k
	 HQKLhk1HgdsfA==
From: Giulio Benetti <giulio.benetti@benettiengineering.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Giulio Benetti <giulio.benetti@benettiengineering.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: sun7i: a20: fix MMC index enumeration
Date: Wed, 14 Jan 2026 11:50:04 +0100
Message-ID: <20260114105005.3136045-1-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfESnHajzFz7aJT3NO8d/z09DRG2jmMYGX1I58cMzmU7yUx/zgykc9ZdBoY89l1BkPw0j2FChfi53eh4NypBoCtXTKnqx/4X1MNj97uvX+Kt0pQDMCAX8
 HzBOS+uqyzfn/fLu8XC6fhsDgR6WhHF5n9hkvgontu1qHehsX8hS/3VMqdPutTNB1YtaI79qtUJ/M7PfDrlva3GUtkocKUAS8Oekp1trdfhkW/mnb/e+wEWs
 w/w8erngrlu7IChPFMxmxWXagFTze3e4rQURHQ6KaeSjA2iHErEH2jrOl0X93Q8hy4lLn+cMp6/WwGSX5M/UemK7sELa6WX9+pofD3OJJZmpDyIqb3lDCvmz
 mVR93LxRCh9PaGo8WCYbDHW4hpe+E1AzrfareecmS5Q7hoZjWDajk1uy8mcjgJlwdecUf0qhXqJvbFIFNvVeWtHxKjCdxtNld1NFDeWSNdc9jzJZ5c3h3tPp
 +pKZJ+kXu4QBkeEJ/Ng/8S2v3ZCMkhRRBsHGClH3lt7fHaSNCDmXIeFsPCXtD2c2I5xu0fHb5PjOeqmkyNZO8tH+TZmi97cSz/2qx6P6Vhk8fij6x1iKkNkA
 DQl5utJFvdDXMbj6eBbcyocM

Currently, the OLinuXino-A20-Micro experiences non-deterministic MMC
enumeration during boot. When both an SDIO WiFi module (MMC1) and
an SD card (MMC0) are present, the kernel may swap their indices.

Explicitly define mmc* aliases to ensure consistent device naming
and prevent mapping conflicts.

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
---
 arch/arm/boot/dts/allwinner/sun7i-a20.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun7i-a20.dtsi b/arch/arm/boot/dts/allwinner/sun7i-a20.dtsi
index 5f44f09c5545..a958400bcd7c 100644
--- a/arch/arm/boot/dts/allwinner/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun7i-a20.dtsi
@@ -55,6 +55,10 @@ / {
 	#size-cells = <1>;
 
 	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
+		mmc3 = &mmc3;
 		ethernet0 = &gmac;
 	};
 
-- 
2.47.3


