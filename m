Return-Path: <devicetree+bounces-247917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B33E7CCCB23
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97E913007E64
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DFC036C5AD;
	Thu, 18 Dec 2025 16:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="EIP+O6HU";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rPWYe3iK"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B592D8393;
	Thu, 18 Dec 2025 16:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766074723; cv=none; b=iVNbvOYjkodOqoEJ5rLIquvzU2KOrBPzO82t1fIGKWCWqqR8gY9NyQQMgRd4BuoED+OwRqmyexTfnz4jG3Lczo2VMtynPEwcqhqzJH3alVb7emnmjJzCph4ykaPzptrdgdHc0+yJ91DPmb8MLMRetEm8bnGj6xsREWwZMKaF9IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766074723; c=relaxed/simple;
	bh=4O94B494sjp3ESo6LtOAx85cBuLuyPiVuvovjKCqa2M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DIwf+sLQ0FUWd3OqfswKRnW+RlyAJRAXEGGLgzqH/9CiYuTAPcYxzkvTX/TIIQksHYiIWJiPsEZL4sWcCDxvjUV7zoLurux3OCGcXTZPaMwRfbeRHkk0smCIvTkJyrgPfxpkspidJU0V+5SpoEDJoCcxTr093U2WLBA+6ePsRyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=EIP+O6HU; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=rPWYe3iK; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
	by mailfout.stl.internal (Postfix) with ESMTP id 7312C1D00106;
	Thu, 18 Dec 2025 11:18:40 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Thu, 18 Dec 2025 11:18:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1766074720; x=1766161120; bh=fOMAPBpqiDolFkcOOfLuD
	OPK8pbzW0rkKkcpmdMbel0=; b=EIP+O6HUlwDzOF882SOb1CBQqX36QThwOXWSZ
	Kd8l52fbrfw6vXl/jvOZiJnXL/P+7R3/dhS8Tfi/kEuq60BU/oBPHO5YrTgq0xLL
	LBS1yJJZgduUU0pgmqRxjAEZB93hBj0s3HVmNXLtVP8nzYE5FMTSYBS92HnUPKkm
	2zw7NhFGEc4VqFRts6AQFqii76og2bIXyLR05zrMAS/M3Bryj9nHTeXHgVOGbAFA
	Uy8SembkBpHjHH4v6Stsdci8VCJEHAwpaIqyDGe4KLOdmxryg7V0r/bveAAGPk8I
	eacZbRJ0TqI5GRgtFC4/AIoM8tTXgIjc/gh2fnnGwCXDs6CpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1766074720; x=1766161120; bh=fOMAPBpqiDolFkcOOfLuDOPK8pbzW0rkKkc
	pmdMbel0=; b=rPWYe3iKNyVeGT3Qh96uYXq9jdpKMreGhcL6oTG0hKOlCzfUwAM
	Glc200gENEIcrXbjYDSEmzAC8dh1gFw0To2/HJL0h3d/Yz+lAws9ZDGgJvFq7TA4
	MUe0iR+KAN4V052rO8hIgf6iT6bXvwGp+32Xy9k/R8DJRLhJRGKDm8dbPkHY6tti
	Stv10rmR8L83kDoIs9koLkGzptC6G8u5W03/l0o+Ba8OUOIxvyjL4BKvMkfnFe+F
	mE3GAGSrbI3T9g7zk4xI58HvBMGLYUvmbmTbhLzSAj6os0mQChxHZqHSHtJ02dOZ
	bC59Yv40wkVwXCZ2Z3+yYyNrQiT4IZNWvVg==
X-ME-Sender: <xms:XilEaVnQGGwpt03wLTldXFgUuvSJex82Ipy0LAd1jW6wssaZEfae4g>
    <xme:XilEadj3dp-vMCTKdtw-v4j1D4xI2tuF67wOx6aIkdjhyqDLPzR4i2Omm3Mn-EV0q
    Qiy3j4M7_vxj7YMx1igtS1htRCDjqRzoRbtXdyfaT2nY8goioxIcg>
X-ME-Received: <xmr:XilEafh5YQ2II6HIXKgLnyW0hoo5RgeRAcX7ZGnOPPhNjaQoWkL8Qda7ExGbriPkmD1bkafVdmtiwoAV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegheekkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeftvggsvggttggrucev
    rhgrnhcuoehrvggsvggttggrsegsshguihhordgtohhmqeenucggtffrrghtthgvrhhnpe
    euvdektdelkeeukefgjeejteetffdtudeiffefheevfefgveeulefghfellefgvdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrvggsvggttg
    grsegsshguihhordgtohhmpdhnsggprhgtphhtthhopeduvddpmhhouggvpehsmhhtphho
    uhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrh
    iikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgv
    rhhnvghlrdhorhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpth
    htoheprghnughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphht
    thhopehtrghnrdhsihgvfigvrhhtsehhvghtiihnvghrrdgtohhmpdhrtghpthhtohepug
    gvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhi
    nhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpd
    hrtghpthhtoheplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdrohhr
    gh
X-ME-Proxy: <xmx:XilEafuxe2QfUYWV2H12-EGQgNh3MHcGEoHEo9w77VvUIMZS5D2Qfg>
    <xmx:XilEaXuXbW8YBFw4qeIFrDqG_0KlKhYNbz33pCkUOqLM5_FRg8q_gQ>
    <xmx:XilEadpIpmdY1eQyErOAx0lMbn_CSPtuy-oBwcFMHTu_-dHwBU_4Fw>
    <xmx:XilEaeJoo9sIepRDih2LVIfISMJLpo2QXtOwP-DzPkKGBoho-g1VjQ>
    <xmx:YClEaWF12XHfceZmNHmiUU5UvHu7F8PAmKkSQo9tR5dWu6jQAYt_KChZ>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Dec 2025 11:18:37 -0500 (EST)
From: Rebecca Cran <rebecca@bsdio.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Tan Siewert <tan.siewert@hetzner.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Rebecca Cran <rebecca@bsdio.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>
Subject: [PATCH v6 0/2] Add device tree for ASRock Rack ALTRAD8 BMC
Date: Thu, 18 Dec 2025 09:18:12 -0700
Message-ID: <20251218161816.38155-1-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ASRock Rack ALTRAD8 BMC is an Aspeed AST2500-based BMC for the
ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q boards with an Ampere Altra
processor. The BMC runs OpenBMC.

These patches add a device tree and binding for the BMC.

**Changes between v5 and v6**

- Removed aspeed,external-nodes property.
- Added pinctrl properties to adc node to request the ADC lines used
  for iio-hwmon bridge.

**Testing**

Ran `make ARCH=arm CHECK_DTBS=y aspeed/aspeed-bmc-asrock-altrad8.dtb`.

Rebecca Cran (2):
  dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
  ARM: dts: aspeed: add device tree for ASRock Rack ALTRAD8 BMC

 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml |   1 +
 arch/arm/boot/dts/aspeed/Makefile                        |   1 +
 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts   | 637 ++++++++++++++++++++
 3 files changed, 639 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts

-- 
2.47.3


