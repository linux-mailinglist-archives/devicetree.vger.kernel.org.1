Return-Path: <devicetree+bounces-244485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A427BCA5763
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1B1F1300B938
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A733559CC;
	Thu,  4 Dec 2025 21:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="rK0RJANI";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="lsIfHw/c"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AC63559C9;
	Thu,  4 Dec 2025 21:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882181; cv=none; b=l/skf0o7ez1pHTyjYI2QHeGEdT/sUUzyfd21MP0nTJrT7TQYiS75BMeKyT+FiaS8K2vuD8SWDWgl/bYwaA1FGpAatPLpYa/ecPTXiFs16QpnwSGpWAMU4FS+tWvDtj33inVIalQkBGZHKTUjDOxZI5X21QRQUjCpZaKCwl/vuxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882181; c=relaxed/simple;
	bh=BJRv0nnBqrtn+d7PBEb4ldzd8nzot0R5C5Ec9SpEge0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oTM3PuscBxbVmBBQnlYkMXTwpbXrBlE0aKlmwWOtVKovb03IpUvHeHfZW90WTPv8FHbsp1xfCSPR3D+oOSewl/Z2CsnritZT4EI8xD8Oov9IzKCalWf33CY41kacJ/9+BjFpdqg6KO8fXGMizUVxtEjrDi6Qx7UbrF12M7OM9P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=rK0RJANI; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=lsIfHw/c; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id E2B151D0014C;
	Thu,  4 Dec 2025 16:02:57 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Thu, 04 Dec 2025 16:02:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1764882177; x=1764968577; bh=I3JyN6uQ6yNFenjv47EfS
	d7nrikiNFLfs5LjBOSqI2o=; b=rK0RJANIOIsD0uqvPoJBbyRWEGXwXsHapTZb5
	n910WWWjTmj3QftdJ57Uy2jJ1bLH3XvnZaTnxZjtAZipXKfP01+Pf8sQA/eAY2nl
	8nEgTcWFLTYay0wbQ9kB0y+xl5DaoeAZW0K/gxVBHfZQm0BlRfzRJDP7OgrrSSEJ
	VQ2ujhPG1D8yGYe26lCnZwN24GBzfokVgyvhUEBNqUa8Hwu6ydzPGCew61oYJdPk
	VzC9wAxRW+PP7Pq1W5JO75EiVwdNPwkNiA5W/0l8ShAdvMQQ+CAia3QKlrhJLWkO
	GYDkapB3RLwWKHW1lYvpe5ue1+u3WOZuzKqyTtG8BN1OKPg9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1764882177; x=1764968577; bh=I3JyN6uQ6yNFenjv47EfSd7nrikiNFLfs5L
	jBOSqI2o=; b=lsIfHw/c0wyswHBUCEHZAR99I2ZVJs6H2rJDnl81RqGfBhSLjYB
	Tu/f6Uwm+mqu/EcRsG51Ooxg91cgYM4R3NrmMq79o5H+31b9eaIxdepdb8824Kdq
	AEaDepttW5X/iQHrQpXLFl0PP1TzwAFwe70DXszs+9KVHkYaF2fQtfKBy+HRI4if
	0x1/of4E3T4Hm/MdRoQHKpQeQsUh1/8AKWPmIv+aBWtLDEMWEL1PUduARWQw2pHz
	GKsCBiMhKqR1gcaKcwjDD828xOZihlixayfHZJ2XSLHW796HlkKiFyvJ0nxclpEj
	7K1kNURCHN3EyC9kyRTfovxoW3Rl0F8WFKw==
X-ME-Sender: <xms:APcxabIWzF6Epg04HgGAHowvaBtGMYLtGpCLXciMydnv3j90imAGIA>
    <xme:APcxaXRnYCxHfoc-W5TNwh98HH9KjvcTYoRp0_9_nBrYwHwry3A2ScQKamZEXlbDW
    9dE8YmFRRCKheAmpPRw2j7l92JPheGdGUz1QKa0UGo58jPxaVyyhCI>
X-ME-Received: <xmr:APcxaTNSh0LbfLUx28dXIGEYvo1-Ch_PtTuVHOme3xKMJI4yUVZUm_4vuBqcQXdSMuUqSKcmPE87YtZB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeiiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    ephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptfgvsggvtggtrgcuvehr
    rghnuceorhgvsggvtggtrgessghsughiohdrtghomheqnecuggftrfgrthhtvghrnhepue
    dvkedtleekueekgfejjeettefftdduiefffeehveefgfevueelgffhleelgfdvnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhgvsggvtggtrg
    essghsughiohdrtghomhdpnhgspghrtghpthhtohepuddupdhmohguvgepshhmthhpohhu
    thdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhrii
    hkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghr
    nhgvlhdrohhrghdprhgtphhtthhopehjohgvlhesjhhmshdrihgurdgruhdprhgtphhtth
    hopegrnhgurhgvfiestghouggvtghonhhsthhruhgtthdrtghomhdrrghupdhrtghpthht
    ohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    eplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdho
    rhhgpdhrtghpthhtoheplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrggssh
    drohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgv
    lhdrohhrgh
X-ME-Proxy: <xmx:APcxaUVQ5jpOmrPV83ebfhCrLGhZwxMpIb2Y_Olwzz0zGm1EsZ1BAA>
    <xmx:APcxaehMulI1aS0ZlQkrTqWdpiGetmW75epFd08Bi8_QfuHTafGGiw>
    <xmx:APcxaVjOuBW8RmnoyjVWzpgnVtUfMPTXrbhT393U0IwqwuWJlwEwug>
    <xmx:APcxaUH2HGs_Rv84w7jNn5Pyd_9JU5gxH8CnuagzpKHpLdYgN4JT5Q>
    <xmx:AfcxacqgAeFqijyrJL-ZmIPnX4vTi-qw3svllPXxjXco1azWn1FLzmgi>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Dec 2025 16:02:55 -0500 (EST)
From: Rebecca Cran <rebecca@bsdio.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Rebecca Cran <rebecca@bsdio.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>
Subject: [PATCH v3 0/3] Add device tree for ASRock Rack ALTRAD8 BMC
Date: Thu,  4 Dec 2025 14:02:33 -0700
Message-ID: <20251204210238.40742-1-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apologies for the long delay between v2 and v3 patches.

cc Billy Tsai for the move of ast2500 pwm-tacho docs from
aspeed-pwm-tacho.txt to aspeed,g5-pwm-tacho.yaml.

The ASRock Rack ALTRAD8 BMC is an Aspeed AST2500-based BMC for the
ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q boards with an Ampere Altra
processor. The BMC runs OpenBMC.

These patches add a device tree and binding for the BMC.

**Changes between v2 and v3**

- Removed system fault and enclosure identify LEDs; added heartbeat.
- Removed the code partition from the BIOS/UEFI flash.
- Renoved bus-frequency from i2c nodes.
- Renamed hardware-monitor to temperature-sensor.
- Fixed indentation of nct7802 subnodes.
- Swapped eth0_macaddress and eth1_macaddress.
- Removed pca9557 subnodes.
- Reworked GPIO names to be more consistent.
- Moved documentation of aspeed-pwm-tacho from txt to yaml file.

**Testing**

Ran `make ARCH=arm CHECK_DTBS=y aspeed/aspeed-bmc-asrock-altrad8.dtb` and
verified the messages about the aspeed,pwm-tacho device are no longer present.
The remaining messages are:

arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2500-lhc']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2500-ibt-bmc']

Rebecca Cran (3):
  dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
  ARM: dts: aspeed: add device tree for ASRock Rack ALTRAD8 BMC
  dt-bindings: hwmon: (aspeed,g5-pwm-tacho) Move info from txt to yaml

 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml      |   1 +
 Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml |  91 +++
 Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt  |  73 ---
 arch/arm/boot/dts/aspeed/Makefile                             |   1 +
 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts        | 612 ++++++++++++++++++++
 5 files changed, 705 insertions(+), 73 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
 delete mode 100644 Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts

-- 
2.47.3


