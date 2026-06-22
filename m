Return-Path: <devicetree+bounces-314526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6goRKhZ2OWqFtgcAu9opvQ
	(envelope-from <devicetree+bounces-314526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:51:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0769D6B19AD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:51:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b="Kjeyu7 5";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314526-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314526-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 736893062C11
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 17:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3AC340407;
	Mon, 22 Jun 2026 17:48:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD73403E8
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 17:48:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782150508; cv=none; b=FDaJAhwzCzLI9MCdiZKc8QB/uKNb4kg3mDKSBzluFQaUCk63TxpJe5p1ZxH9324GZIjzhGkeUt30ICUjyjrTQG7oTN4bYcAZG6ywKaZRAl7Wo3DSce9fu8vesgqDnAUECD+6DHOahZ9qD/OQqRwyP3yDilTsCRarCQhDWtKnATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782150508; c=relaxed/simple;
	bh=caV7deyxPHviTL0Ffz/Fz1pVlomFjHjr1ZkaJ5JplSU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QZKSnfq8b96sFBKp9R9aZ6zmZETX3dGwe0tX8dyEV8+mqzDspHfMFw8sD04iaLk/dFL0nP+G1dCrBgM4qizfTAYEBffsMseyPVcYWYHo8MR8FugldIxu4HhXc3/knpICb0DPjBBjajOV9EZl/7fudX68x8PkAwd6CWjwxY50Cdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Kjeyu75R; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=q3GXbkpPLRYkVhY0RAHbo/X+MNy2pzHyQr7Nil8svLw=; b=Kjeyu7
	5RESgy2A6B5Y9YUkNwkg83Mu8TljPmExAu692NggtdH6FSlj7jmXZVPQDjVXaBaw
	Qri76uwGqtX0uJHdySMoOo0MwxCwGAtgcNNY7qAfZfDvMMvm8yEnCYWOP1Fjej6N
	7VIaTsehwigZtKak/7gXWJWHZBdZI/W5bZb9QY4XjY6gtxnhOMKuNb8/8W6rlCXs
	DiW+oNwotWrE05E8FuZo28fXatB6qn8QwxcO+PHfBxitZmYw6xgIcU8DHNTvA1bI
	RixJAVWLNGxVT8eg+3bi37CXiZOXgJ7u4OwCWKZ5mXNDr8DGrvcbC/5dxCN0bVkD
	J5HJsM9FS4/HR/uA==
Received: (qmail 2061403 invoked from network); 22 Jun 2026 19:48:20 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 22 Jun 2026 19:48:20 +0200
X-UD-Smtp-Session: l3s3148p1@aRuIP9tUhKQujnum
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/3] spi: dt-bindings: snps,dw-apb-ssi: add 'power-domains' property
Date: Mon, 22 Jun 2026 19:48:07 +0200
Message-ID: <20260622174806.74450-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260622174806.74450-5-wsa+renesas@sang-engineering.com>
References: <20260622174806.74450-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:herve.codina@bootlin.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	TAGGED_FROM(0.00)[bounces-314526-lists,devicetree=lfdr.de,renesas];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[194.117.254.33:received,100.90.174.1:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sang-engineering.com:dkim,sang-engineering.com:email,sang-engineering.com:mid,sang-engineering.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0769D6B19AD

On the Renesas RZ/N1D SoC, this SPI controller belongs to a power
domain. Enable the property to describe it in DTs.

Reported-by: Herve Codina <herve.codina@bootlin.com>
Closes: https://lore.kernel.org/r/20260622132842.7e0d772c@bootlin.com
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Change since v2:
* new patch (Thanks, Herve!)

 Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index 8ebebcebca16..3896ee02d7b6 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -88,6 +88,9 @@ properties:
       - const: ssi_clk
       - const: pclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 1
 
-- 
2.47.3


