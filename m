Return-Path: <devicetree+bounces-263225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDeONoF7hWkBCQQAu9opvQ
	(envelope-from <devicetree+bounces-263225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:26:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFADBFA54C
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 06:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 150203016901
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 05:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BAA93002D8;
	Fri,  6 Feb 2026 05:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="ZBWMV3p9";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="q6TSnqOl"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a1-smtp.messagingengine.com (fhigh-a1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C76E2E5B21;
	Fri,  6 Feb 2026 05:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770355582; cv=none; b=nUuvuUgS+HAzs6OSUquRT9ZrqLDYMCKGrZcvV43sXjACRTkpADz85nUzq1D8eQ4q72bhSvqD8c6DBaDIAknJDrAcOTILWF6cCPvU+R2Jf09DLlVax7CvUEFr1Z4YVBBuRrhTl1iW3AA++2K6XXldJSyjmsczNP9fYjfqXaiaj+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770355582; c=relaxed/simple;
	bh=RxbK41rt/m7zbJesG3Z6QkKG1uCBKfEDyBwzqmZTGNQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=W0VlyRzcQTwNNXPADWKAtDXpKFDFXEvVpcGYy5w0EJmA5FCApy4RMlUY6GEC5HfGcfRso2W6UrVi/ef10dkZMSsEhHrnwluMM8d5Un1TFHtMZgr8KbqET/vuwlczxvBjdezrCMxN8VEAl6oN2mpfmNkw49aMSfeIW9Q8rfp+tig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=ZBWMV3p9; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=q6TSnqOl; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 2B68014000DF;
	Fri,  6 Feb 2026 00:26:20 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 06 Feb 2026 00:26:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm2; t=1770355580; x=
	1770441980; bh=XanFJk6z+qGIRmlUMo6TSRHTx9qrlHyNpnmxNZ1x0jU=; b=Z
	BWMV3p9004+oT0RPvAK/dua/Ij9vJ6NWBR2OaE9RYviIhKMQUL/DqvVSmwomLYwE
	j/Cz4bMiVHldJ1Khlg+UoLnjHwVG+D+B7QhpRhMM8RHWaS1AU5K1Pj50nR7nDQjs
	DHCNSsrzd61Tmo6gDc/JWPLBRInuAoUFB1m91s/jbsqV5Mfr/j+/ficlV9wMof7j
	45/ckQ9adgCzFdp6kmeMgb9pkBTJKQ4U2OMU/cVlbHmapNxUfXoD4iYigeo+fbZg
	YaCuakmrU3gzmVLiGWNyI9TQAdmApzNz39jM+cubTBniOD/9prZjSR69tDQMRZAf
	kbKPWRAd1RT937Sjdh56A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1770355580; x=1770441980; bh=XanFJk6z+qGIRmlUMo6TSRHTx9qr
	lHyNpnmxNZ1x0jU=; b=q6TSnqOlKibiwUe8VrBehl8Vey+bAPBIIYSBoT0GDr3e
	KAZ6IQx6C3UxhkDpuNoKgp7Yz3KhOp+mH8DfsK361IW/zxCUu/Lx9TxfTULXbCcx
	zg58JLyNC9QuzhnrQjxdFoWE1swrbFmxxJk/FmmhRkl8G3tU+OUWfFshXobc7/lO
	VBNjaMbxyb+5PyaKDrOi9qKJE7gu4DJ6DrzGmmPlPVqs9biD7eZ27twlnrDO7j3V
	bmFx4QgN4Ciq8EpqJUUlIoJkS8EG1TtH/dHmv+Af4W9LlIBFOdL7PQVPzWje8/W7
	4rDDLKFGzm+IwD49b5rv2KB/sE+hqkxbFNevp18Tqg==
X-ME-Sender: <xms:e3uFabWjun-9BvfioFzCm5z8cbgbas6R2swWLed3xZVKRbANwh-tGw>
    <xme:e3uFaWIyHCX-USb00SL74PFF1gehZcXOT3wEKt0AureqsOkgh_ZhWjD8nt_Fixo-Z
    p-jEV-LwAQ6Ee0Yb6ONlncXbp8XPjFbr-PqhuONa0Ocdc2BaxHU7OI>
X-ME-Received: <xmr:e3uFabBUuxf2wJuI9RVK5-zXPlorspMiKqKcYTurq7E9pSjv-J5lMeCRdndn6r7JQ1oLYBREsV-5t-s5cucrxo9jJJUGCnIA3-S2rCMhiPiI0el7a7z9zaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeejfedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpeforghthhgvficu
    ofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecuggftrf
    grthhtvghrnhephfekleegudfhgeeijeekieehveeltefhkeeiffeljefhudeitedtueeg
    hfevvdfgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghtthesthhrrghvvghrshgvrdgt
    ohhmrdgruhdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhrtghpthhtohepkhhriihk
    odgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdroh
    hrghdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfh
    hrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
    rdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehfrhgrnhhkrdhlihesnhigphdrtghomh
    dprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:e3uFaWfkpShQTbhjkPtnQCDJ9fVZI6wFvRSNxpVqzhiZQWouYKs3dQ>
    <xmx:e3uFaa35SrzO78sPbV19Av0RFdgqbgeXL5NVK8j-ijVdheSvnsZ9lw>
    <xmx:e3uFadhyW8uUOH4CTGbpHHf4eYf0yVy-xZkCNjv8BMnFdAe5Abw7xQ>
    <xmx:e3uFaTnyRLfNLcFW84k4FU1KdZj8-k2ymKXdJ86RVVFRvtgbw4X5ig>
    <xmx:fHuFaVXJY6g9xFVA1wmQp85Z0pCGwmg-7Hru2ETQiMiCgRtNU9v4SVyO>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Feb 2026 00:26:16 -0500 (EST)
From: Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 0/3] arm64: dts: freescale: ten64: updates for
 hwmon/thermal, mmc and gpio
Date: Fri, 06 Feb 2026 16:26:11 +1100
Message-Id: <20260206-ten64-dts-updates-2025-12-v2-0-2d77f47a89e7@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHN7hWkC/32NQQ6CMBBFr0Jm7ZCZIo1x5T0Ii7aM0oVA2tJoC
 He3cACX7//89zeIErxEuFcbBMk++nkqoC4VuNFML0E/FAZFqmVFDSaZ9BWHFHFdBpMk4lEhK7S
 mIS2KHQlD2S9Bnv5zuru+8OhjmsP3vMp8pIdVE3P7x5oZCU2rmxtZa5VxjxRMlhCldvO7Niv0+
 77/AAkNYZfIAAAA
X-Change-ID: 20251203-ten64-dts-updates-2025-12-ba306e21c0e1
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mathew McBride <matt@traverse.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770355576; l=1515;
 i=matt@traverse.com.au; s=20260115; h=from:subject:message-id;
 bh=RxbK41rt/m7zbJesG3Z6QkKG1uCBKfEDyBwzqmZTGNQ=;
 b=eMhl3Zj7hKnM9o9aAYzy2Wucs9O1T1HffAVto28/0UR+5Szvj9hqicvh53REmvaQ50tk6OJC3
 alcRMGOPWnCBtsDFMbNxd/LqTc6eqY2bDT8rcS+6dQNubJ7zPdfEZKZ
X-Developer-Key: i=matt@traverse.com.au; a=ed25519;
 pk=SM+aGm9Y2fPJ2prfH/b5lab73fTBrKL5UsJwdzv7Pbg=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[traverse.com.au:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[traverse.com.au:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-263225-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[traverse.com.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@traverse.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DFADBFA54C
X-Rspamd-Action: no action

This series implements some changes to the Ten64 DTS:

1. Add a thermal setpoints for the fan connected to the
emc2301 fan controller.
The values described here are intended for users of the Ten64
desktop enclosure and are rather conservative, it is expected
some facility to override them (e.g via device tree overlays)
will be provided in the firmware.

2. Reduce the maximum SD/MMC bus speed to improve stability
with some microSD cards.

3. Add gpio-line-names for all GPIOs that have defined purposes
(both for system purposes and those routed to the expansion header)

---
Changes in v2:
- Fix the labels for the SFP+ (XGO/XG1) related GPIOs (patch 3), which were
  swapped around. No changes to the content of patch 1 and 2.
- Include "freescale" in the subject to make it clear which tree the board
  belongs to.
- Link to v1: https://lore.kernel.org/r/20260115-ten64-dts-updates-2025-12-v1-0-a56380bbb2ac@traverse.com.au

---
Mathew McBride (3):
      arm64: dts: freescale: ten64: add emc2301 fan controller and thermal set points
      arm64: dts: freescale: ten64: reduce maximum SD card speed
      arm64: dts: freescale: ten64: provide gpio-line-names for all system gpios

 .../arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)
---
base-commit: 06bc4e26310f9f2c0dd2fbf4885483306c5235cb
change-id: 20251203-ten64-dts-updates-2025-12-ba306e21c0e1

Best regards,
-- 
Mathew McBride <matt@traverse.com.au>


