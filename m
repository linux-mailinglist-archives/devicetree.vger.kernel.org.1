Return-Path: <devicetree+bounces-255365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B183ED228D1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D241301B4A9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B340422A4D8;
	Thu, 15 Jan 2026 06:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="dQZMiUQB";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="WsM5v/ue"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58407381C4;
	Thu, 15 Jan 2026 06:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768458475; cv=none; b=Rx8ZODvtv98CubIfNTH68SW5PVMyXYQfjJT97eTwVEJNR13zjz/4zUfnTZuymtCNUbQrXXruFgH+TYz1GNxZQ6dYSZxuqQuWu8lnvVRIfdTy7O02hW0bGqE5Bw9xTckRONO/EBEP7E2LURAuVrgnZsoZPT/G4EE1l3m8+deQr7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768458475; c=relaxed/simple;
	bh=S087UL4u+aARVy3r+45/NCQpjQ0CxAgkIwQszbbl3uU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oaIvA8+kYccduryGXlSZmVLM3n3iKNucmq7SBLdXrUmu7vCoh24UBxz2Nxfc4ZeNsqFEs+n4FMW/EODo2GUZusVzf08R0H9LfbEP2pbBo3v7q7GsDLOk1fDYJW/UKOQbxZdZIdS3tANG8w93om2HGLrFogSTWP0EpwFaES3PGpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=dQZMiUQB; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=WsM5v/ue; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 68DCB1D000A1;
	Thu, 15 Jan 2026 01:27:51 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Thu, 15 Jan 2026 01:27:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm1; t=1768458471; x=
	1768544871; bh=xK1im2sAlmRNN7BXrq1rFYNPvIT8yHRpRMOS6x3iiAw=; b=d
	QZMiUQB72rOpw4P0wuCfbiTUISnC7zjLiGpu0rg7SFn1+nQtkUK019KTlX9afIOv
	7vhiFez/H7BFhUxwBJyqaGkBkQeXhcc4XZvmOqW3Ej7KZyhposQOcSbfgJtcH9Pp
	WBEtEAepKMv2d3b1jhbCk5LJzO78lNiKfV35UnF71ndjIr+ezfrhFG6oyXZadc53
	KrqSoSwlr3ds6yl2nIO9cYms8txIbtkemWwK0R2RF02AayVQAIl23UshaW3ofhoQ
	AIvj726ifA0F7HX9/kSPseHP7RPKAOf9B1oMR+vKmY5hJqpYhblvEkq4k7SMwxa7
	6kChsB+wvnYR6N5pLqvXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1768458471; x=1768544871; bh=xK1im2sAlmRNN7BXrq1rFYNPvIT8
	yHRpRMOS6x3iiAw=; b=WsM5v/ue1Xa09XrenWe2gklMuCDQgplG6byA6A6Tjtbl
	vfX0N3ggVAq/2v550B7TajVf+0SJRkm3Zp1qUTUMsI9tzH9ATiy5GwY2mPamDpBx
	hG+6jLfdIPA1LT5+uFir7vrqC+qbm+RLWp9ryXdZSSvcGlU/OHoSUlCAHlyRMk5w
	yeNR5dcQ1oY6ElbB8J5M50o7WcM0bpLds4Q+UUQa45457dEDxXekrUlgh4kbDSmC
	2D+QEz5s1Hyjym04vZrPrwnmdeD/Y+pX0hufiGEYn+pbP8vyPnhsEJDXIn3FCfLJ
	DflLEtvrFCV0uDc7EwYEUWOJWv++4bHpPWqKWYg8HA==
X-ME-Sender: <xms:5ohoaUwfEa4OJHXTZw3d7DLs18hOFQdOjdvQQb5EP_QmSGLJwkjvdQ>
    <xme:5ohoaa17LHSoEPc1Z15k1TXDWKllX22QV-gKIWnzlg5eQ2yeFipsh_zzcfrbdeDXs
    AdhC62-UXp6sMAr8sBGaHWRVnncnK0-UwHD3SwJzrpWHrSlEj-PdHU>
X-ME-Received: <xmr:5ohoaZ_rp_72k1X71NehmIIUzzyO7suYsUJU6jnCkETea_rxRXyCUPkWG7yaPOikCPUh3vCP_xaIOFLbdMu2_AG1CFib7Hh8z7APviqEaPoBEIFWrGhQqb0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdehfeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpeforghthhgvficu
    ofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrf
    grthhtvghrnhepvdekueefuedvueevfffhueeufedtveeludeguefgtedvheffieefleef
    udeuleetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdroh
    hrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthht
    ohepshhhrgifnhhguhhosehkvghrnhgvlhdrohhrghdprhgtphhtthhopeguvghvihgtvg
    htrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgr
    rhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtth
    hopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphht
    thhopehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruhdprhgtphhtthhopehrohgshh
    eskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5ohoaSriUHHcmCZSFhrvMTKIkmwyfdvo2u-R_PKZKoGyRbEQSifmjw>
    <xmx:54hoabQ32lYHr5Wtp-BDc3SQDphzySuLDRj3x7Z0luCGB4vXOak0VA>
    <xmx:54hoadMlh4z4NogII4Ybw0tctdJN5CZ3E69KD5mRHl41xCz9VnNu6g>
    <xmx:54hoaRipEeP_GYXRVEXeQeBWWbfeMCt_eeCoD_p1VV9z2SDTzLzjsA>
    <xmx:54hoaWmTi1kQD-fBGTK-XTgbHN15Xc0tmU-CjtURPyxi72eNiR7XtoqP>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Jan 2026 01:27:48 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 0/3] arm64: dts: ten64: updates for hwmon/thermal, mmc and
 gpio
Date: Thu, 15 Jan 2026 17:26:42 +1100
Message-Id: <20260115-ten64-dts-updates-2025-12-v1-0-a56380bbb2ac@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKKIaGkC/x2MwQ6CMBAFf4Xs2U26i3LwVwyHQp+6l0q6xZAQ/
 p3qcTKZ2clRDE73bqeCr7l9cgO5dDS/Y36BLTUmDXoTDT1X5OHKqTqvS4oVzj/FojzFPgxQmQO
 EWr8UPG37vx/jcZxjHW99awAAAA==
X-Change-ID: 20251203-ten64-dts-updates-2025-12-ba306e21c0e1
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768458468; l=1169;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=S087UL4u+aARVy3r+45/NCQpjQ0CxAgkIwQszbbl3uU=;
 b=1oLD8Vpod1gC+ZjMx1rM8aBe/T9YODB/JdWUPwwt1iQaoLuH97KvOjPln8TrS4Nn8bHeU4VNJ
 MLE9fgW/roLD75W3jLTQno6yO5bCUCYhaOlXMnOEy2tkl8U6mYwocOV
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=

This series implements some changes to the Ten64 DTS:
1. Add a thermal setpoints for the fan connected to the
emc2301 fan controller.
The values described here are intended for users of the Ten64
desktop enclosure and are rather conservative, it is expected
some facility to override them (e.g via device tree overlays)
will be provided in the firmware.

2. Reduce the maximum SD/MMC bus speed to improve stability
with some microSD cards

3. Add gpio-line-names for all GPIOs that have defined purposes
(both for system purposes and those routed to the expansion header)

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
Mathew McBride (3):
      arm64: dts: ten64: add emc2301 fan controller and thermal set points
      arm64: dts: ten64: reduce maximum SD card speed
      arm64: dts: ten64: provide gpio-line-names for all system gpios

 .../arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)
---
base-commit: 944aacb68baf7624ab8d277d0ebf07f025ca137c
change-id: 20251203-ten64-dts-updates-2025-12-ba306e21c0e1

Best regards,
-- 
Mathew McBride <matt@traverse.com.au>


