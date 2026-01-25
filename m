Return-Path: <devicetree+bounces-259224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAJpDsr5dWmwKAEAu9opvQ
	(envelope-from <devicetree+bounces-259224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 12:08:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ABD8027E
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 12:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0C4D630010DE
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 11:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86257316918;
	Sun, 25 Jan 2026 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="o8fMwY66";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="G7/JX0by"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E4027874F;
	Sun, 25 Jan 2026 11:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769339333; cv=none; b=Jxj05cD51q5/3L3JLYHIjdo35QpPb/0gHipylXyFmo4g60vU1vXgAwdju6jKpi9Ktu8caFvLKVnSRDJ1i3i7rb/p5cAjQKWqFtrfN9ZWDMG54X+4MwICx+ri4dPUbE3FYPY2hVzP5g4ZuqnIZX6VVXEPcwNKcnNiHCscyvZwPNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769339333; c=relaxed/simple;
	bh=Z3xsnX6ySy5yICEzL2MNd9sI1wQskpH/7pPIkJiIBOI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F3icClVcr6RWDhKp/3nso1q6bX+ZAzjWdOfau/d2eRmaRoujEVDq3OLILA+T1ri0sFi6EthKe6SO+OLyjJTLhnPJc5Zi8r07nlVjI73MgqVx3wjvUzAqa3+ih/VtsgoTuyETkTiCAdg3GbbJO/oLNnhaEFaqzoSVav//YCDpQ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=o8fMwY66; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=G7/JX0by; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfout.stl.internal (Postfix) with ESMTP id EC8951D000E9;
	Sun, 25 Jan 2026 06:08:49 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Sun, 25 Jan 2026 06:08:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm1; t=1769339329; x=1769425729; bh=4/
	dBuSjzE7nEQrtPNhNIaPq2xtqgFPWjhii2bmXrEb0=; b=o8fMwY665ESIv4P3pA
	U1XK5kcilnbwOrG3pFPlsSCfiDRor4GMv2AKXcNbTW5T04cEudwiiZPP8EeBdNSN
	s2ROAHUgTRhiUQCwuEhGTGrQzIIvDH3xkO4u5xjPoWuf1ixG+geM/52w0oYKlhqk
	6IiJ9mQWOflzcu1WWWHKFcxxVj3Eks4VZxzP9sYuxmFQbgl7gPM9/rJGpoNygr9Z
	yGb+Fny1+00tpwNbGHEXPEqhMy05DA7FmDekfxAFDIx7wpU4K9eEIx4+feuMFic0
	PDZ7aWMrLVsUatToPR8HwxY8HQam0Zrv1K2UpxBefrhaAkmvoP6twFPbSwPbdv90
	fm/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1769339329; x=1769425729; bh=4/dBuSjzE7nEQrtPNhNIaPq2xtqg
	FPWjhii2bmXrEb0=; b=G7/JX0by8042Y6qOHz2aK1VjpZFFiMAOWZ4TgwY9SQ4l
	RBGpVcCDBzspw83ql5lH5Im3mQ0qLE36y/wqoaPoUYuGUNnKhF6dtgRDJRSiPIal
	wjxNtOkoqnqL/BgJkgugYvt1DPn4HWUEMR0PLdXUkqh7tRuG48S1wLv0SHJuPZgp
	myAK9JvRK8soMAERcCBKatRgGnIzBzpiPA9NAPf6exZy75/1KERoVD6Ci5LrVTe2
	JZLipDrcJN6f6yIST/tRO7XJfZuk3Zjt0VYNyUvpwbca3PHRcsGCLEtnffeonYvv
	InptWjVk+pW2g0EektiA2+pR2zAl9dew5zGPjTI9lQ==
X-ME-Sender: <xms:wfl1aQrF6kAzLcgC5QgEfzhqLaOyb24YOq2eauiHH7lgEX4_vKSTXg>
    <xme:wfl1aSdMZp9TLQafb6cwO29TeTFLZkl87k1ghJVfEXv-JnJR-trLxroeFxD1CluXA
    C2KHiyR_l3mqd6aqHTcVoefY92kNWcO5vlxYExrD3uv1OjOSXIw01Y>
X-ME-Received: <xmr:wfl1aQmwPpVvnG-LruGQN52iu5FrGqMRKd7yD6Wq4k0P6bPUI3Iy74pIa0RujSB51OEGqbOS_FXtrnHFYoq4kTP5PQu8WUPJ-treWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduheegieegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpeflrghnnhgvucfi
    rhhunhgruhcuoehjsehjrghnnhgruhdrnhgvtheqnecuggftrfgrthhtvghrnhepfedvie
    ffieejvdejvdevudfgtdegvdfhieffffdvtdevtdekgfejvedvleffteefnecuffhomhgr
    ihhnpeihrghmlhdrrghpphhlvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehjsehjrghnnhgruhdrnhgvthdpnhgspghrtghpthhtohepuddu
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtghhlgieslhhinhhuthhrohhnih
    igrdguvgdprhgtphhtthhopehnvggrlhesghhomhhprgdruggvvhdprhgtphhtthhopehs
    vhgvnheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgv
    lhdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    eprghsrghhiheslhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehlihhnuhig
    qdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikh
    doughtsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:wfl1aRZH0yY8pYcANZfPZP7qUvh7uugYed5MQeSoyPBzIRvWecz2JQ>
    <xmx:wfl1ad6epTxKuErGUY3YjzEeXHJwkOLAT5NL45icuglRHI6vsXUMUg>
    <xmx:wfl1aTDq5sLjfZXC9JoOXb9n7shfJLj743Um8O23NkY2hy9PwGM8zA>
    <xmx:wfl1aT_kkcD0FRHlgsyDsWr_KdReTgh-VK_vYxdm2jOjXvjPu_VtVw>
    <xmx:wfl1aSK16VRpnVTZw-AhPgdbZzhtpP3nxiDsjFS6BPuct543iks2ZqmN>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 25 Jan 2026 06:08:48 -0500 (EST)
From: Janne Grunau <j@jannau.net>
Subject: [PATCH 0/2] Add Apple interrupt controller 3 support
Date: Sun, 25 Jan 2026 12:08:44 +0100
Message-Id: <20260125-irq-apple-aic3-v1-0-a2afe66a6ab9@jannau.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALz5dWkC/x2MywqAIBAAf0X23IKPEOpXosNSWy2EmUIE4r8nM
 ac5zBTInIQzjKpA4keyXKGJ6RQsB4WdUdbmYLX12pgBJd1IMZ6MJItD7Uy/eSLbgBbFxJu8/3C
 aa/0A5xWVl2AAAAA=
X-Change-ID: 20260119-irq-apple-aic3-0314f6aa2a2a
To: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Janne Grunau <j@jannau.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1728; i=j@jannau.net;
 s=yk2025; h=from:subject:message-id;
 bh=Z3xsnX6ySy5yICEzL2MNd9sI1wQskpH/7pPIkJiIBOI=;
 b=owGbwMvMwCW2UNrmdq9+ahrjabUkhszSn/tuv5C9VB1Y/nTxTwkRmf9iwkIS76+W8V00dysLa
 c8T/yPZUcrCIMbFICumyJKk/bKDYXWNYkztgzCYOaxMIEMYuDgFYCKbnBj+57ZcZr+4mIElczNf
 U+gpod7O1XH8k6+ILzVJnlu46tX5U4wM7U1S3Csmno/ie7ZsYebTpbM2HPy6pujz51o/Id3zW+x
 VuAA=
X-Developer-Key: i=j@jannau.net; a=openpgp;
 fpr=8B336A6BE4E5695E89B8532B81E806F586338419
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm1,messagingengine.com:s=fm2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-259224-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,jannau.net:email,jannau.net:dkim,jannau.net:mid]
X-Rspamd-Queue-Id: A2ABD8027E
X-Rspamd-Action: no action

Add yet another variant of Apple's interrupt controller. This one might
to stick for more SoC variants than their predecessors. According to
Apple's device trees it is used on all SoCs since the M3 (t8122) up to
M5 (t8142). This information is not 100% reliable since macOS uses
different kernel builds for each SoC variant.
As far as the functionality implemented in the Linux driver it is almost
identical to AICv2. The only noticeable difference is an increased
IRQ_CFG offset.
AICv3 uses the same device tree bindings as AICv2 so add its compatible
to the existing apple,aic2.yaml.
Apple's device tree added many MMIO offsets as properties for the
"aic,3" node. The offsets are the same for all released SoCs with AICv3
so the Linux driver continues to use hard coded offsets.
Compatible strings for AICv3 will be SoC specific like
"apple,t8122-aic3" so a potential future SoC with different offsets
would use a new base compatible string for which the driver uses
different MMIO offsets.
While the offsets are the same on M4 and later SoCs access to
implementation defined system registers will require different
compatible strings.

Signed-off-by: Janne Grunau <j@jannau.net>
---
Janne Grunau (2):
      dt-bindings: interrupt-controller: apple,aic2: Add AICv3
      irqchip/apple-aic: Add support for "apple,t8122-aic3"

 .../bindings/interrupt-controller/apple,aic2.yaml  | 29 +++++++++++++++-------
 drivers/irqchip/irq-apple-aic.c                    | 27 ++++++++++++++++++--
 2 files changed, 45 insertions(+), 11 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260119-irq-apple-aic3-0314f6aa2a2a

Best regards,
-- 
Janne Grunau <j@jannau.net>


