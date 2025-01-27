Return-Path: <devicetree+bounces-141160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C62A1D988
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 16:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 835367A40BE
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 15:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87BA01459EA;
	Mon, 27 Jan 2025 15:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="CqL+tAKw"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732FF13541B;
	Mon, 27 Jan 2025 15:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737991879; cv=none; b=ezOfwq7zVYcXfWIAXAndPqa+5CiNr6arsjFxXleYtaEekEqt4ZrtXgyMETHCV0+0MCGHO8/8vdL8kEjQhOOxaaOdcqHbA0TRBN0tdFqz1pZKbdmY7HplV5gPMkX+Jlz9kvjTI6dhJdQbVs3V7KDwnu89V3jLbwTw3Rf973jm/7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737991879; c=relaxed/simple;
	bh=kgJQKIwXeuIiFHUIgynm2SK+9xP+PtmmawP4ZBc9Mlc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h4QUpZzgQBVCnQ/5IlYq0bfjjcVXti63qDvSpPiBjykEnjJvURS3pYoNzV/QYsUeK0tfpPEOMNfCuT9se1gLRGI0qxKu0q6ugKym4RMgr+vsOp/DvvlBBBcbRiWdweeFTeKDZUp8q1tX/wSuC2JQ870lIhb3oWMooJV37vKxhwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=CqL+tAKw; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C79F044307;
	Mon, 27 Jan 2025 15:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737991870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4X739XGYENPyH7eKazNs980sUXKrePD1lY80Wn6mxsc=;
	b=CqL+tAKwM0nZ9UtDkFRmku5cGz9WFsQFCYj3weMvu8NDd/9ZOIy+cl8SlpZ7IQ6eWi2n18
	9Cf3gSACjGgTHbC7ZGQ4SRgMo8UBildXPImPEDM3GwWC7kTHfxNHv/sg9W4Bawu2+/pYaT
	3LjpdY8oIEAsTmd557If/qwptQ9T+KMMEnNDxPMHLbg7M+H1LGhqTiBxw1Uo5wi3rvRPFa
	+ZeRZlZr7zxnUMGhdDBB99oymJpmX6JYdaPIRr9Lcf5KtwuUikac8vEoWpivB6wA8xlT5O
	D6O0o/4q4+S6gUmEbyoWIsXDVD7EZ/JXiryM4INdX1VgPBfGtFuh63fd8HzyLQ==
From: Antonin Godard <antonin.godard@bootlin.com>
Date: Mon, 27 Jan 2025 16:31:00 +0100
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: Add VAR-SOM-MX6UL SoM and
 Concerto board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-varsom6ul-concerto-dts-v2-1-4dac29256989@bootlin.com>
References: <20250127-varsom6ul-concerto-dts-v2-0-4dac29256989@bootlin.com>
In-Reply-To: <20250127-varsom6ul-concerto-dts-v2-0-4dac29256989@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1050;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=kgJQKIwXeuIiFHUIgynm2SK+9xP+PtmmawP4ZBc9Mlc=;
 b=owEBbQKS/ZANAwAIAdGAQUApo6g2AcsmYgBnl6a8eX0fJ1piwCuJPV9T7FOfKSTFfoKmGSZzO
 jmLQp0upy+JAjMEAAEIAB0WIQSGSHJRiN1AG7mg0//RgEFAKaOoNgUCZ5emvAAKCRDRgEFAKaOo
 NsEyEAC8ZsLZA0TPxVU/E9BEYiMbIa6BLVHbc0kicCqMbx/CxVryTHVCRlu1OF5o7Uh+aSKdRKM
 XQ6h3xHKMX1XsUArZEYowe/iiJf0smTH2yuKP+b27HirWi7nAP0TXab5hOgC5S8bO+icDnb/0r8
 CYG/sh82o4hUqnIj2rJlKZ/dgzcl4EO/5AEDWXVpZIEvHeBraywGE4GN36693Di3OlXmyg0L3bm
 W483sl/MXplAkFD7Xv4K2TUy9xqr1pjxBexuziAkdHros1c89uOSBU4HR+BlUexOYfEU44XliNK
 ZUxvmhCLi4JffhIPs3xbLpAAJVjKmULdk6W6P995o4Ry0hbdKcKBcd7iiVb2OKe+UvJZrMkaDhT
 /vFIo8pl0kPWiFgUY/dMI4DmIYp8rw4OX44TRwD+YXM8k4thNppg8ynJuyXN25UCrDigrshkI/2
 0+h2TPCZpUM5UvIU44iKlCK4VCkKeHLoWDr/TdtgRRlMxLsY/8XWFdzYymu1jLIakmpvr76h+xP
 Mu94X16Ej+tQ/wngMTk8A1Z0TmzBz6uYRIro+/WEkHhy1cyyEQ0aYB/Wb3Bb6tx6PyyUGfbkruw
 IW2O9eO61xigwHFJZ9OUvCUcS6ViV/ZJ77BjO06oFnr3KW4laXCFv4dl4TOuNQYt3xox93keOAx
 KvkG3vCW3SVEzHg==
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudejgedgudefheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtredtjeenucfhrhhomheptehnthhonhhinhcuifhouggrrhguuceorghnthhonhhinhdrghhouggrrhgusegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeehieeguefhfeegheffgfeuieetheeileefheejkeetgfekueehueeluddvlefghfenucfkphepvdgrtddumegtsgdugeemheehieemjegrtddtmeejtgehtgemiegruggvmeejleegkeemgedtheelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegtsgdugeemheehieemjegrtddtmeejtgehtgemiegruggvmeejleegkeemgedtheelpdhhvghloheplgduvdejrddtrddurddungdpmhgrihhlfhhrohhmpegrnhhtohhnihhnrdhgohgurghrugessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepudefpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehshhgrfihnghhuoheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhgvrhhnvghls
 ehpvghnghhuthhrohhnihigrdguvgdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshdrhhgruhgvrhesphgvnhhguhhtrhhonhhigidruggvpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-GND-Sasl: antonin.godard@bootlin.com

Add support for the Variscite i.MX6UL VAR-SOM-MX6UL and the Variscite
Concerto carrier board.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6e0dcf4307f1..4da575b31061 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -688,6 +688,12 @@ properties:
           - const: phytec,imx6ul-pcl063   # PHYTEC phyCORE-i.MX 6UL
           - const: fsl,imx6ul
 
+      - description: i.MX6UL Variscite VAR-SOM-MX6 Boards
+        items:
+          - const: variscite,mx6ulconcerto
+          - const: variscite,var-som-imx6ul
+          - const: fsl,imx6ul
+
       - description: Kontron BL i.MX6UL (N631X S) Board
         items:
           - const: kontron,bl-imx6ul       # Kontron BL i.MX6UL Carrier Board

-- 
2.47.0.2.g7caf9f4c55.dirty


