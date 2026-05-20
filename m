Return-Path: <devicetree+bounces-300355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KColC1FJDWpEvgUAu9opvQ
	(envelope-from <devicetree+bounces-300355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 07:40:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4322F587D5A
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 07:40:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A8126302471B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 05:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE683590C3;
	Wed, 20 May 2026 05:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRJfWQkT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CC632AAA7;
	Wed, 20 May 2026 05:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779255628; cv=none; b=s2N0tcjrt/tPPu8/aeOeKNDhLGGBuQB6GFHR/OIwElCK7F+fkEcCY1QJ9hQlN9VvNUSM21EN70Yteq9lcKtojscJqmRg7lrnu5d5Z+yrC3qx1et3ai92E3C/603lVjbJMkVdWWYFsah3ZdO5F2Rvi1yWX4oDgGEYPXsZ1o2yRAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779255628; c=relaxed/simple;
	bh=Y8PjvZ7mPoBrPXkY4y6yoQNzP77kDpkGlwcWTLE9+kM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y/bMmAzIAG9MKjgtpp6mWbYLOnYXF8q6CIWtw+MQUCumOOTxGz78U9fnDWPykCb4vPFxTtXv6Gv1dfsEYqKUlsyQWumZvMFl8TUHkPKQiUwiNIfIxwat46Ce8NR3qnFm3VQmesmlFGZAh3cFQ3AtfgoZpDhpZpb5vwAlDnH4gXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRJfWQkT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AAF61F000E9;
	Wed, 20 May 2026 05:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779255627;
	bh=VXWU7r0c9VKxC/LLgGie8gWxBd1YPuZj7z3fEqvPJz0=;
	h=From:Subject:Date:To:Cc;
	b=HRJfWQkTrCwoF4h2BMFlzFSpVisS7rn8JLtYksB2VEf767X7mxqjrGaixOxJJDDP1
	 xgJ+9RX+r6lcl88FCfn2pGpJlckWLfgkosAGqZXJCGpGWSDzydkUhiuJ/FuFTfBAgH
	 C55OGfY0vemUoM4tUmUd4OeWCoC6WgSUpFGTRj1AYQ5WXGmGG3LwfEwbkH0ytXx4AS
	 xwWFsRYM4vJC2s8PC79OSKDeHMjPEsYaxaJvm1oxNUsfbr1vFpzrgBGXRyNQqjVwR8
	 7Q46oxyFdQx01te4la0DxnVlDnKqUDuYuPxNfhx5Jay9EGfnc7YXFrfkdbxQO89Ef4
	 xuVeTABcFfNbw==
From: Yixun Lan <dlan@kernel.org>
Subject: [PATCH 0/2] spacemit: k3: Add support for CoM260-IFX board
Date: Wed, 20 May 2026 05:40:08 +0000
Message-Id: <20260520-02-k3-com260-ifx-v1-0-3e17055dd488@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADhJDWoC/yXMTQ5AMBBA4avIrE0yKghXEYuqwRA/aRGJuLti+
 S3eu8CxFXZQBBdYPsTJMntEYQCm13PHKI03KFIpJVGOpHCM0SyTN0p7otaxojonTpMMfLZabuX
 8lmX12+31wGZ7P3DfDxH5wdl0AAAA
X-Change-ID: 20260519-02-k3-com260-ifx-aa320b90e657
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1135; i=dlan@kernel.org;
 h=from:subject:message-id; bh=Y8PjvZ7mPoBrPXkY4y6yoQNzP77kDpkGlwcWTLE9+kM=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBqDUk9077NYFsddRGvdQNDUmaSQ0iEVX36QrNeQ
 w1J1a08DxiJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCag1JPRsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+3vWxAAjCKUOgm90oQlWZGUQxI/ihraT8IRK1N0SXpUK1u3JbIXywZWswUEn
 k9pTcqiIceiG2wXlQL1klO32Oa5wfa8QnppBrMmiLBmxtrJ0fVIncVH2411s4yakpkC2VaTuOi1
 WFFoSKiakNHB3NrVVSNqPy+KhW3GWzxmqZYIAGmv00qUOr7hUzUAoGqfkPZg7sLPbVZm758GUrk
 N/uuXBrA0XcZFFRjUjSDnDbI3bncdyqiz6XTU7FnBT1Mfo+6CiuSkogRmXH/DdNQxd8BDLy+h9+
 u0sPxkEqyFJNxR8ViGOhDNoO8coYKEeue6l+KpOcvUhrWYxw21lQpS7RhqTfxf//69Qrg9BCiLj
 jQ9Ur85Rd8aOQ7FwM+OUO4QipLn1/d0GFxpIaY0+higZ34qQMHpmW21LffuEoHsYcoMOHW1xOn7
 P+wDVFvsfUampNAl+bwqLQ7CHQihxrNvydHP3FI9r0S9nx27AKKr5nRr0AZtoIyAIz8rH3t+3B7
 gn2OJFxYXM42eKZdsJ6YLK5KZqzXtxDPO1pE6yzjl2cd/wi1C0nBAPH4sf/50bLqiLMxbewCsWe
 G+RJW8SJKNk6ULlC2ajH+KkUgAHeKSyPJB2OYv5s+JXDT8yxv3/fjrUdRgww/icTHMmFK32rXOn
 h8hD7m7a9XJM7MdqgIovp2Rj2O3lQM=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300355-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spacemit.com:url]
X-Rspamd-Queue-Id: 4322F587D5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series try to add initial support for SpacemiT K3 CoM260-IFX
board which combines a 69.6 × 45 mm compute module with a reference carrier
board.

The first patch introduce new dt bindings for the module and board, the
second patch enable support for serial console and ethernet.

Link: https://spacemit.com/community/document/info?lang=zh&nodepath=hardware/eco/k3_com260/root_overview.md
Signed-off-by: Yixun Lan <dlan@kernel.org>
---
Yixun Lan (2):
      dt-bindings: riscv: spacemit: Add K3 CoM260-IFX board
      riscv: dts: spacemit: k3: Initial support for CoM260-IFX board

 .../devicetree/bindings/riscv/spacemit.yaml        |   5 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts     |  21 +++
 arch/riscv/boot/dts/spacemit/k3-com260.dtsi        | 190 +++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi       |  33 ++++
 5 files changed, 250 insertions(+)
---
base-commit: e2518e8cb1dde64af2d1bb246639bb7ef7523f7a
change-id: 20260519-02-k3-com260-ifx-aa320b90e657

Best regards,
--  
Yixun Lan <dlan@kernel.org>


