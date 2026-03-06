Return-Path: <devicetree+bounces-272069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDaTNJ/MqmnwXAEAu9opvQ
	(envelope-from <devicetree+bounces-272069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:46:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D9220E9B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D1B8306CD9F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A6F2BEC27;
	Fri,  6 Mar 2026 12:42:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F41284672;
	Fri,  6 Mar 2026 12:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772800940; cv=none; b=uaBOg9N/DK6QpM0z1B15GMfH04S5S7MIfQIj0+Hp3xVZbjkzhBZgN4f3z9Pz0FKRnLy8Ci7oVPewaWbvlNloI0HLqbFpjNHqyQOuzEVsG8GV1+pNhBWso2rdwLWUBYNgYGTtrH8c4bOXj72YdQibBTMBqy7kZvFqghEq0UUa9qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772800940; c=relaxed/simple;
	bh=314hIvYZ5Ps/HYLvsDhYMXMgiWn25qxrQ4Kdet/mmeA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=huiHupOBJlg3L8gX+xG67LSufsiS1NXGKR8SO02A76XqSlN1f+pz9nmybv00P022n/myvkjmwCh0/3u8nSGnYGxdf99Mk2iqBGKM+2qnk3OUSWFe4J9Q4HAK4toudgRzDF1Bq04VhQkqiGsM10tiVZFRsiyogaxanE+VA7/VLxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 6 Mar
 2026 20:42:14 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 6 Mar 2026 20:42:14 +0800
From: Billy Tsai <billy_tsai@aspeedtech.com>
Date: Fri, 6 Mar 2026 20:40:25 +0800
Subject: [PATCH v4 1/3] dt-bindings: mfd: aspeed,ast2x00-scu: Support
 AST2700 SoC0 pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260306-upstream_pinctrl-v4-1-ad4e8ab8b489@aspeedtech.com>
References: <20260306-upstream_pinctrl-v4-0-ad4e8ab8b489@aspeedtech.com>
In-Reply-To: <20260306-upstream_pinctrl-v4-0-ad4e8ab8b489@aspeedtech.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Joel
 Stanley" <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>,
	"Linus Walleij" <linusw@kernel.org>, Billy Tsai <billy_tsai@aspeedtech.com>,
	"Bartosz Golaszewski" <brgl@kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
CC: Andrew Jeffery <andrew@aj.id.au>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
	<linux-gpio@vger.kernel.org>, <linux-clk@vger.kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772800933; l=1122;
 i=billy_tsai@aspeedtech.com; s=20251118; h=from:subject:message-id;
 bh=314hIvYZ5Ps/HYLvsDhYMXMgiWn25qxrQ4Kdet/mmeA=;
 b=qGih07n/ZivAzmbGQFAdgHyM72AntHdyfs/VJNp5MPNTCpmFvB7e51DyT15ivjT6XyBxJazhz
 3kSNFGRnaFRAW+0rUQcpUoULq0fHeUxO++NW2kjxZQgHbrhLM4UibJd
X-Developer-Key: i=billy_tsai@aspeedtech.com; a=ed25519;
 pk=/A8qvgZ6CPfnwKgT6/+k+nvXOkN477MshEGJvVdzeeQ=
X-Rspamd-Queue-Id: 749D9220E9B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272069-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[billy_tsai@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,aspeedtech.com:mid,aspeedtech.com:email]
X-Rspamd-Action: no action

The AST2700 SoC integrates two interconnected SoC instances, each
managed by its own System Control Unit (SCU).

Allow the AST2700 SoC0 pin controller to be described as a child
node of the SCU by extending the compatible strings accepted by
the SCU binding.

There are no functional changes to the SCU binding beyond permitting
the AST2700 SoC0 pinctrl compatible string.

Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
---
 Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
index a87f31fce019..685b1c77e729 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
+++ b/Documentation/devicetree/bindings/mfd/aspeed,ast2x00-scu.yaml
@@ -87,6 +87,7 @@ patternProperties:
             - aspeed,ast2400-pinctrl
             - aspeed,ast2500-pinctrl
             - aspeed,ast2600-pinctrl
+            - aspeed,ast2700-soc0-pinctrl
 
     required:
       - compatible

-- 
2.34.1


