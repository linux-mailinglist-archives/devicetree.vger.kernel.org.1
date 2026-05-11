Return-Path: <devicetree+bounces-295274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAoCNMhOAWp1UgEAu9opvQ
	(envelope-from <devicetree+bounces-295274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:36:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A00A3507A86
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:36:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B03443004F3E
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 03:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0E3C37CD3E;
	Mon, 11 May 2026 03:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSXEM93z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF2137C910;
	Mon, 11 May 2026 03:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778470597; cv=none; b=WyPpDqiMuefo4ZskY1RIcZC+fO/C9MKlSgnM70fbK0lCiDKspOk0JKcJ29DRuLbWTU0yWrZdlGeHvma2OIOb9PvlYDDxjmOYEWEYCagjLbp+gohno/Wfj2LEqsuHcNnG/R0tAUjP+8F80Z8AcK7KI7eRolgQ/t699hzWEjVJqwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778470597; c=relaxed/simple;
	bh=wrat4bPhc6XbDi2zqSt2OMWtek0S2JVfzoY+dgfGSJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DF0V2g0ehZp+PvIa8GGSiCf+JNxqDLCnLtAdqjFyGkCH7/c610j3h4nS7mY7adu2j8MGNezpNZV21Z2ZKd9vzprz84TSEZGQHtUFcvb7Htp070HrQ9HYGSNczvasSwEwg9DW3CCbJeKK5GVWOf1XJjZvFpFM2TWL5VbyGMphRgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSXEM93z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11D93C2BCF6;
	Mon, 11 May 2026 03:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778470597;
	bh=wrat4bPhc6XbDi2zqSt2OMWtek0S2JVfzoY+dgfGSJI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JSXEM93ztq/DliQRZEBRzuFufPeaaJKqSPdKri4jbKnmRvkGp+NvU36sb0uiT38K3
	 k0Eg+pNqG66ThvNnalgrBlmj13G8248JVBzdXVZ42C9e8vYKeIydAUFTu9RR2QuKJQ
	 yvrcBAV6e52lCIRmwbth5CJqpAeaf3nJMDqDHbdUl5NTAuWvCcs/f+Z8G/WK7JZ7yV
	 hHxVxgy/DZGcxI2V8Mii8LNVLIRImgj6V+KvtrBvigf7pVaBD3hzX9qw1iXF8iq1/9
	 30JXFExylnqHFcoTQankbA/0DxOQljvGkQVSE0Vue02pBwsEj3etekewlznzVBpHxh
	 xVB6uRJTwsO3Q==
From: Jisheng Zhang <jszhang@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] spi: dt-bindings: cdns,xspi: add sdma-io-width
Date: Mon, 11 May 2026 11:17:31 +0800
Message-ID: <20260511031732.3199-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511031732.3199-1-jszhang@kernel.org>
References: <20260511031732.3199-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A00A3507A86
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295274-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The cdns xspi controller SDMA data port may support wider I/O width.
Wider I/O width can benefit performance. A simple test with QSPI nor
flash on one arm64 platform:

1 byte io width (default):
 # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
 1000+0 records in
 1000+0 records out
 8192000 bytes (7.8MB) copied, 1.368735 seconds, 5.7MB/s

4 bytes io width:
 # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
 1000+0 records in
 1000+0 records out
 8192000 bytes (7.8MB) copied, 1.088787 seconds, 7.2MB/s

Improved by 26.3%!

Add dt binding for sdma-io-width.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 Documentation/devicetree/bindings/spi/cdns,xspi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/cdns,xspi.yaml b/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
index 38a5795589de..1fd4b6dfd417 100644
--- a/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
@@ -40,6 +40,12 @@ properties:
   interrupts:
     maxItems: 1
 
+  sdma-io-width:
+    description: Slave DMA data port I/O width (in bytes)
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1
+    enum: [ 1, 4 ]
+
 required:
   - compatible
   - reg
-- 
2.53.0


