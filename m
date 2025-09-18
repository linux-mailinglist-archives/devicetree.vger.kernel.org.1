Return-Path: <devicetree+bounces-218677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D00B831AE
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A82A621DB4
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621AE2D77ED;
	Thu, 18 Sep 2025 06:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="BezBWcen";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="jMkQyWrb"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a1-smtp.messagingengine.com (fhigh-a1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2902D6E7D
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758176095; cv=none; b=slgek6mWYlJAZnVHYA5TlGVdMYRbuAD4xAE0y1imn9FmEpXe5yncpAktyXFeVzpBJnobWqX4yuitWDjeuGY8ae+OuT8peOCvkHmatmbEkxomU1hVkNWs9AlazTcKqU5jszp3kap/ubaT4wtx/o8PNT4m2hsGtR/9sUWi/oGFfXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758176095; c=relaxed/simple;
	bh=Or82chwrTDFX2pfbnUhGfu/iS7YygMoNRdJiDvkRi10=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DstuVvksFPE0htMiRbiRYhP98aZbL/KuVyCYqITkvHnmBiugcFL8UB8QqL5z3YQ+EtWQzVQb4nngsyU1DYNEfHeigUfo4ePRL2zx3EG6+484/fkgAcSeBVwMTk7eoXHtB5uX5d7rrb1ueabuCux8wGowqjXzuX3ZFUkozv6js4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=BezBWcen; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=jMkQyWrb; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 09EF11400270;
	Thu, 18 Sep 2025 02:14:51 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 18 Sep 2025 02:14:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1758176091; x=1758262491; bh=lQJyQ7FLUM
	cIhP5TEGnDgUZcIoEC+sx4YCsTN5+u4L0=; b=BezBWcen9LSA5oncojP1Qfq7Ta
	/sLn7aYCEqICzUJXKpY4kQYXZgEv7Qx6TdhNqqe2QNczPESjWZYCxoeFNZn913Su
	+M2Nr7OW+KyRtiXl/KcR1oXlgmz1vZkgH2wymcNfpuKWT5PQpnnAM9C9Frah3hSn
	Xrjh/13J43aeQxCsIf/nOPMQf5nh1JqDYq+HpNBsbqmMPEUI1tTE9GKHd1qw1idx
	e1xa1YfmDxcw5F6xVofa+xWDpQGRHQwlKHSnhuHzzv2WuLEtEywDqKmZ8RVof38d
	9DDRaY93UP6gt7M5Y3kTgTqzYnWDgp1kUHO6KOTnv1y2FWPf1gWU9dtFSAww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758176091; x=1758262491; bh=lQJyQ7FLUMcIhP5TEGnDgUZcIoEC+sx4YCs
	TN5+u4L0=; b=jMkQyWrbbehtL/JEHvOSNJcFfifhWNWCvQpxf9L1Zv7Gy76jJYb
	LcXIyA/JlXrYeljn3+FT+vC+JVkdk2efUhm0LNecKWj+FFWYiLY8P+ItSRPl1Di3
	VHU1IohHOERS18On2A0pmm6dvgvPdRpuR5LJerqS7ct7YTpiPS1LG/zN7p/x0w0Y
	zXj5sqsv63nIyJHlxYcvEa6+ZdY+5H4+nUElcBA+yvHlcPiIK/UaGMxClRar4D44
	HVgnJpUIF4azqtvl9g2ooWHEU2MdngqXA9HEX0lU9Vz3FkMqNR+F1UuQ6WHsmwri
	IqeorjITwgK7eb5Mf7K+bZ9Fn45lyRWDFVQ==
X-ME-Sender: <xms:WqPLaB65Td4CgHbfUTT-D0RIEWMBH-h2epdyBtKLnXynoVf3DO7zow>
    <xme:WqPLaFoW1KmQXsRuthzFOuL1JUa_NHYrJ-7Hho6MWVNUbwTOhHkgK0fSNoARW0-gP
    MCQQiBe0LpCfPjopSo>
X-ME-Received: <xmr:WqPLaKNADrXFrami6u7mO2NJaNLWhbK_wGfhef3Srxk6NkrpuuD3W_eK1Z2rbV0e8JD-7RSUvC5ztvnxBwbWkH6fRyG28tE4x5fJpXhKI4DVspZ8mKkEgcGN3JE4c3Wmc4AXWAdudc86qOXceeKSY-M7Nps>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegheehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgvficuofgt
    uehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrfgrth
    htvghrnhepjeetheejgeehhfeuleeghfeihfdtvedtvdefhedvvdeludfguddvheekhfei
    geetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpthhrrghvvghrshgvrdgtohhmrd
    gruhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
    rghtthesthhrrghvvghrshgvrdgtohhmrdgruhdpnhgspghrtghpthhtohepkedpmhhoug
    gvpehsmhhtphhouhhtpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgv
    rhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlih
    hsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepshhhrgifnhhguhhosehk
    vghrnhgvlhdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtg
    hpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhho
    rhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlvggvsehkvghrnhgvlhdroh
    hrghdprhgtphhtthhopehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:WqPLaF3MhVx6MXo1P2YFhxqhz7rlzy5fX2FLw41B7YA0FzQ8Xn9owg>
    <xmx:WqPLaBBH3LMOsga1skicxtFDZvcvs4gFur1kFBdohvJ--XaL8Xzxig>
    <xmx:WqPLaKLR4mCtcyWcZjC0KnpQ5EjLAvvkIkjvWTFFjmipOjtHdISyjA>
    <xmx:WqPLaCmE5NfXPbF7ovmUrQ08r8LNdEKyo99xWMlSc6W9GaKtILhQmg>
    <xmx:WqPLaPRpNU_CD7My1fxzdaYFprYcSO8w6hd24lyEmmgQMV0Cig1Sm0pN>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 02:14:47 -0400 (EDT)
From: Mathew McBride <matt@traverse.com.au>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v5 0/2] dt-bindings: embedded-controller: add binding for Ten64 board controller
Date: Thu, 18 Sep 2025 16:14:39 +1000
Message-ID: <20250918061441.5488-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series requires the "dt-bindings: mfd: Move embedded controllers to own
directory"[1] change which is in mfd-next for the 6.18 cycle.

Changes since v3:
- Move to the embedded-controller directory (which was created following
  the last submission)
- Remove the extra paragraph in the dt-binding description field
- Const'ify the I2C endpoint address (only one I2C address is implemented in
  hardware, 0x7e)
- Fix the description line of the fsl-ls1088a-ten64 patch (s/arm/arm64)

Changes since v4:
- Cosmetic only (no changes to the patch diff), clarify why the Reviwed-By:
  tag previously given to dt-schema file, was not taken up due to the content
  of the patch changing
- Previous links changed to lore.kernel.org where applicable

v3 series:
https://lore.kernel.org/linux-devicetree/20250821061115.18254-1-matt@traverse.com.au/

v4:
https://lore.kernel.org/linux-devicetree/20250917011940.9880-1-matt@traverse.com.au/

More information on the board controller can be found here:
https://ten64doc.traverse.com.au/hardware/microcontroller/

There is no (presently) Linux kernel driver for this device, but
it is used by U-Boot for functions such as reading out the boards 
assigned MAC and controlling some devices on the board.

[1] https://lore.kernel.org/all/20250825081201.9775-2-krzysztof.kozlowski@linaro.org/

Mathew McBride (2):
  dt-bindings: embedded-controller: add Traverse Ten64 board controller
  arm64: dts: ten64: add board controller binding

 .../traverse,ten64-controller.yaml            | 40 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  |  4 ++
 2 files changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/traverse,ten64-controller.yaml

-- 
2.45.1


