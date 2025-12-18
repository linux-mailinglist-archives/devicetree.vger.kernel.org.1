Return-Path: <devicetree+bounces-247919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C662ECCCB3E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 17:19:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BBF53022F2A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E5E382BCA;
	Thu, 18 Dec 2025 16:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="zIL9ya0v";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="CAk9VeZS"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADD9376BE3;
	Thu, 18 Dec 2025 16:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766074725; cv=none; b=ihfQrSDE7YSjqv0jQgFG4MjIJq3Hggyyadx/YQqElp85eGX/El4R231/K4PQ6D51CyZIRtDBn8Lg8D78nictK93RAmmSYHKaxnbIAgYEwFwJdICqZCPpHQRCwVjQSXMIfHK6p+BHYXCaaAmsVRrLUYpdHiceXVXrNguqVvi3xCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766074725; c=relaxed/simple;
	bh=JMQuk/19/o45MgDvriiHL/htbQd+icQk9uJE3rMiJ7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YOjRJcWnDYUbYQ68i2/EM4eqo5OyFOwlL0l31yXpQwqdFEVgaC/9erTdV0R3xFFvCcTodtiN6kPsoNlY2M3tnupfM8SR56UvKT7wrC4/D1T+mi3s013DcPWAe8Jk2XOkaeURMoG5AvuFHRPCB5XhCPdFSaSK+vy80RdXxOTFt00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=zIL9ya0v; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=CAk9VeZS; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id 9FDE71D00035;
	Thu, 18 Dec 2025 11:18:42 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Thu, 18 Dec 2025 11:18:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1766074722; x=
	1766161122; bh=90EkJ5+JSasty2Ox2DkIb86KfhrQvUo5LvvNkx1CT+I=; b=z
	IL9ya0velw5A/ikR+s61JvXePsua1pwKt11zKzpIn6uwQuI9HqURyaumROPou7qL
	tcQn6kdwaZ1RLWoywYCFx3WBPjaU/YcJQDCpJnWUBTDY6/wimlFjAj7ZUrdA/Di1
	Bpod5AWUAIlxMLb13v8/RJuv45ZZM1S7NX87qI5bF/WInFMQGVbku+Qsp+/l3yee
	852xNCPON+3MtMBs4qHKd1HGjBotiLxwAL04lERk0nzsALw2KkYgp/3B0lRvv6Nq
	sdKSxYANK9C1CBDJW4kpXlYztzYHXNDRcpoybWK4O14u9zc4/0IMvKAfs3ZJ223S
	m5Z6RAH/sOaDfb+vfxFxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1766074722; x=1766161122; bh=9
	0EkJ5+JSasty2Ox2DkIb86KfhrQvUo5LvvNkx1CT+I=; b=CAk9VeZSSffk5LQgI
	OYRg8aOI1kc88sLTQQk0ZvowUTasfYYmd4/aHGtWz5PQHwOCgaK1nVKMdnooWFdz
	5hglLAql7tdJFFABvWZc1LiLYl2ALv1Bq9Jaqch5gzpRORsDvBZcIO5y97W5+JLH
	GLQY1QxMJFQQXBtbFoO9iVy8Gm/BFKHilcPHk0jCInGYLwFtq54nbFUvwgeLeHiB
	nduF/kJh4zfcuXGpUrXWq4j0pITf1OepqvPWUsLfTtJ+CPa9GkK52cz/mQRgRfba
	YM9QEQ6lcZ139voLqDEJD4zWZBEFjZFj79WnWEc3AphPwoN17KQYmWjMaouH7g1V
	ygdZQ==
X-ME-Sender: <xms:YSlEaUJekzXyBXC3xqYudsrNKasp_cL5XMQ0ZJXmNSIXz6ZnUamZoQ>
    <xme:YSlEaTutZPVQdvrw6TlvlXL51JX6gWfRhGXPGOCjafUlwDnT4VH_s0Iv7X845upOy
    i6vxaTnBUVUj3hOWHTvdVMDnJEIQZLy5raadVUCdAvQH4SEMS3MYyI>
X-ME-Received: <xmr:YSlEaZBXYK6iCBTOUjZkG-bKmkL4J__ehO_kc-qdNHoUZ7ZUlIb6ivKOwHfs1xvroNnWzLwJvvO7pHfm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegheekkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeftvggsvggttggr
    ucevrhgrnhcuoehrvggsvggttggrsegsshguihhordgtohhmqeenucggtffrrghtthgvrh
    hnpeegffeuueelvdeggfdvvdfgtedvudfhfeekudekieektddukeefteetieefvdelfeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrvggsvg
    gttggrsegsshguihhordgtohhmpdhnsggprhgtphhtthhopedufedpmhhouggvpehsmhht
    phhouhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhope
    hkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodguthes
    khgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtg
    hpthhtoheprghnughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgt
    phhtthhopehtrghnrdhsihgvfigvrhhtsehhvghtiihnvghrrdgtohhmpdhrtghpthhtoh
    epuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohep
    lhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorh
    hgpdhrtghpthhtoheplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdr
    ohhrgh
X-ME-Proxy: <xmx:YSlEaT4oUaf6OrCTDrcxuvosMyUI3QNMpXlQzIJC43j8jCRL4Jw_eA>
    <xmx:YilEaZBnmUet7Uwb8wZEe-SwWE7XhjA-TGIG75O8YdwPFS0Io20Kxg>
    <xmx:YilEaR6NUS-_ODqFalfBDnyWmRAzI2zhdocy58dhf_rvo0dmzoiRfw>
    <xmx:YilEaaup8DKk4f_gkYI6d3SuUWmi0AUqUMXtC833UHZ3blHlGNz4IA>
    <xmx:YilEaTTopnG1qjTLmhh0lP6bWJl2Q0ik2gVA9K4BNXqXnJVPS5z7Hjql>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Dec 2025 11:18:40 -0500 (EST)
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
	Billy Tsai <billy_tsai@aspeedtech.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/2] dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8 board
Date: Thu, 18 Dec 2025 09:18:13 -0700
Message-ID: <20251218161816.38155-2-rebecca@bsdio.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218161816.38155-1-rebecca@bsdio.com>
References: <20251218161816.38155-1-rebecca@bsdio.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document ASRock Rack ALTRAD8 (ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q)
compatibles.

Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Tested-by: Tan Siewert <tan.siewert@hetzner.com>
Reviewed-by: Tan Siewert <tan.siewert@hetzner.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..aefad2d02993 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -34,6 +34,7 @@ properties:
               - amd,ethanolx-bmc
               - ampere,mtjade-bmc
               - aspeed,ast2500-evb
+              - asrock,altrad8-bmc
               - asrock,e3c246d4i-bmc
               - asrock,e3c256d4i-bmc
               - asrock,romed8hm3-bmc
-- 
2.47.3


