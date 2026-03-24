Return-Path: <devicetree+bounces-279971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAVdBPzAwmmjlQQAu9opvQ
	(envelope-from <devicetree+bounces-279971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:51:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB4319667
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9E9D306AACD
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC543FE37B;
	Tue, 24 Mar 2026 16:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZC1wnIq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9B3FBEB9;
	Tue, 24 Mar 2026 16:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370643; cv=none; b=oB4YOOJusOT4xCR+axkQ1xqsiGwsyWMYoRufKu3/pK1MfBHZM16o3R87SI2Ph+dK4LAUFjRefbUvcdwD0Fz5FsMOYIKdWxgGTr4p22IaXAx/1oaoWX4UTscmLex3q6jjaUnwGRMUoivmIlUBHx4w8t4kOXXHxE1XrKdLwMxalac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370643; c=relaxed/simple;
	bh=iRKS7gv8fCvjYKMqPMFIbD72v7V5hcNF6WcvPrFlSRo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtgkWeLgPLd+FujuttYDNbtBLJ6D9qFdlEPUFGLIYvab3FoQzj9jtCJcJfTg80tgF55Cbnj/pNJvqKV30ogMAQGiAxyDoeXTwqiSQKc4H0WeQr+iFJL3FfPwhFua2IH092dLVELqA2pNNjSL+Vboon44efrsRqk+zpMSlBRArlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZC1wnIq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16FFC2BC87;
	Tue, 24 Mar 2026 16:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774370642;
	bh=iRKS7gv8fCvjYKMqPMFIbD72v7V5hcNF6WcvPrFlSRo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aZC1wnIqpt390sXCOeAD1YZhNVDEobbPtbLhavgjyVncHx+fw4LAXMLVlYf05pdE/
	 0HS/vMx1srrnsL4/fR4Br3IwKK4lSgo5hvP+w0H8kzeK715ScmVQNw7QjKoIG1YhUV
	 OvV8L8bakZ60LWvzbeauvAPsxlGCAcgg5uvWivDLoRystMAGmoXuCaYhBgyk2F7c6V
	 VTAopkjvzFp9IlonJhWVa6JnyWfYtleA89/YBO9bLoyUJ/qcDcr3Q3pCTUctD/3Zir
	 pQARZnGCx4oA/wuw5hljpxC2TbYDPMyZG+nRfR89Pt4YRwn6sqPk5oWLe1YeDJ8jEE
	 00MFpRc1uQq2Q==
Received: by wens.tw (Postfix, from userid 1000)
	id A81265FEB2; Wed, 25 Mar 2026 00:44:00 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: sram: sunxi-sram: Add H616 SRAM regions
Date: Wed, 25 Mar 2026 00:43:50 +0800
Message-ID: <20260324164357.1607247-3-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260324164357.1607247-1-wens@kernel.org>
References: <20260324164357.1607247-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279971-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9ECB4319667
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Allwinner H616 has two switchable peripheral SRAM regions:

- The VE SRAM is a 2 MB dedicated SRAM for the Video Engine. CPU access
  to this region is enabled by default. CPU access can be disabled,
  after which reads will show the same stale value for all addresses,
  while writes are ignored.

  The mux value for this region is different from previous generations.

- The SRAM C region is an alias of the first 128 KB of VE SRAM, plus 64
  KB of DE SRAM. The latter is otherwise unaccessible from the CPU. When
  CPU access is disabled, the whole region reads as zero, while writes
  are ignored.

  The mux value for this region is the same as on the A64 and H6.

Add compatible strings for both of them.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 .../bindings/sram/allwinner,sun4i-a10-system-control.yaml    | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
index e7f7cf72719e..6e6ab2168a2a 100644
--- a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -80,6 +80,7 @@ patternProperties:
               - const: allwinner,sun4i-a10-sram-c1
               - const: allwinner,sun4i-a10-sram-d
               - const: allwinner,sun50i-a64-sram-c
+              - const: allwinner,sun50i-h616-ve-sram
               - items:
                   - enum:
                       - allwinner,sun5i-a13-sram-a3-a4
@@ -103,7 +104,9 @@ patternProperties:
                       - allwinner,sun7i-a20-sram-d
                   - const: allwinner,sun4i-a10-sram-d
               - items:
-                  - const: allwinner,sun50i-h6-sram-c
+                  - enum:
+                      - allwinner,sun50i-h6-sram-c
+                      - allwinner,sun50i-h616-sram-c
                   - const: allwinner,sun50i-a64-sram-c
 
 required:
-- 
2.47.3


