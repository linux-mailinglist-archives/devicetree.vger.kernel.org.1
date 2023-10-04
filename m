Return-Path: <devicetree+bounces-5893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0C67B8490
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 05724B20804
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09B41BDCA;
	Wed,  4 Oct 2023 16:10:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A282E19BD0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:10:51 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28DA9B;
	Wed,  4 Oct 2023 09:10:49 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7777260003;
	Wed,  4 Oct 2023 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696435847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zphNeuBKwavuluA4nnf6uDnS6Nyy4EaH0fzXUOIOYYM=;
	b=KjEvbUqbKE+hHhimKQB2sEaTSSYifdMqsGRX4SqNqrUjX519Vc6KBUKo19UhOljwZBgDb2
	WxnVeMUtcmIGODBEKzBQlEsj13mE/0YtMStD1yOnsnNOZxotHBQPcK2HN/4T2F+Mfxg1Qs
	ZuessHwlQ8gvAPtXqHocasvgOop1Mo5RaJqIEQc+TmWOGfQGbiyHWDD5O/bHbmxlzceM7Q
	vsrY+aCIh6ITSRUeLsYFy+BnVsLxU3DiFyl+a4T0NJ02aSrz7IvgE6saVuF0R4o0DTY4Lo
	0HRtVkGXQ1jMMMyri5AfB3mPBmKS9Eo1TuPhPpVMCZ3womA04etm3tpbrlsMUw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Paul Burton <paulburton@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	linux-mips@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vladimir  Kondratiev <vladimir.kondratiev@intel.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	=?UTF-8?q?Th=C3=A9o=20Lebrun?= <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 01/11] MIPS: compressed: Use correct instruction for 64 bit code
Date: Wed,  4 Oct 2023 18:10:28 +0200
Message-Id: <20231004161038.2818327-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231004161038.2818327-1-gregory.clement@bootlin.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The code clearing BSS already use macro or use correct instruction
depending id the CPU is 32 bits or 64 bits. However, a few
instructions remained 32 bits only.

By using the accurate MACRO, it is now possible to deal with memory
address beyond 32 bits. As a side effect, when using 64bits processor,
it also divides the loop number needed to clear the BSS by 2.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/mips/boot/compressed/head.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boot/compressed/head.S b/arch/mips/boot/compressed/head.S
index 5795d0af1e1b..d237a834b85e 100644
--- a/arch/mips/boot/compressed/head.S
+++ b/arch/mips/boot/compressed/head.S
@@ -25,8 +25,8 @@
 	/* Clear BSS */
 	PTR_LA	a0, _edata
 	PTR_LA	a2, _end
-1:	sw	zero, 0(a0)
-	addiu	a0, a0, 4
+1:	PTR_S	zero, 0(a0)
+	PTR_ADDIU a0, a0, PTRSIZE
 	bne	a2, a0, 1b
 
 	PTR_LA	a0, (.heap)	     /* heap address */
-- 
2.40.1


