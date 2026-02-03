Return-Path: <devicetree+bounces-262355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNEOBHMvgmlFQAMAu9opvQ
	(envelope-from <devicetree+bounces-262355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:25:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 947F0DCC01
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8EA530F49AD
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 17:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A482428134C;
	Tue,  3 Feb 2026 17:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="SDkKUJHg"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-57-252.mail.qq.com (out162-62-57-252.mail.qq.com [162.62.57.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6368127E7EB
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 17:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.57.252
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770139320; cv=none; b=qEu2PxFDQUuXIcsb2SyPkkidDkPCE4MpPybj/o2TYSSs2QNN3pAfArmzifUsPPBXsgwcEWnNQZUmxO/X0C60XtENgtv39oJpyCaY4YdWNAfktEnbp2uLr3nfsRqQPxKzUBmC66b3yRfl5Ps8JBtFqh+I3GLGoJR48cBBtwi2Tbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770139320; c=relaxed/simple;
	bh=J7RdU025kD7I69qyuE2qsyGELW3AWdeKD+AQLCdS7w4=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=mbleHzPc1xM8TGMeCyxNEjJ8qzBkTdqWOl4ibcJqM904h22vIB6serc+7SFAKqIDTjGung6/Wmh7UUQKfkEwp8b/BuVH8/tbwNiXoHsNbJBS8LmKTAC+JzE7bVcGGxT3ANy/gNaMX3zHpeembIEbmnjygEvCzew2NDewEy4kR/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=pass smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=SDkKUJHg; arc=none smtp.client-ip=162.62.57.252
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1770139314; bh=+7o+0vyglI6SKIn20vq/JuFe7AAgC6WPGuSWeg1wEjw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=SDkKUJHgSUCJNSjhk7deNHfgWBC4/iGdUek77gRnuQO1R7W6SQC26vZj+Q0z4BfPb
	 m0u2eeFYNH8PQk9NLE6sf/I4TZbg7oth861kj5cCk2OUiOFhLwfwLRXH3Oo7pttGOJ
	 FF083+53H5Zwl1ELAAcufZIq9zhK9wStZoztAt4w=
Received: from cyy-pc.lan ([240e:379:2263:bd00:7e4b:55e4:8771:53fb])
	by newxmesmtplogicsvrsza63-0.qq.com (NewEsmtp) with SMTP
	id 571062C7; Wed, 04 Feb 2026 01:21:49 +0800
X-QQ-mid: xmsmtpt1770139309tz6l3w68c
Message-ID: <tencent_720A4669773B1EE15EC720869C35C2F0490A@qq.com>
X-QQ-XMAILINFO: N9lasXYeZMXWq8mgpS9v9z2OCE4jLagYmjfDafYb6w1cbnEz/To+DObDJGFuCw
	 jHoRzlacZGegfRK8DPENVMFgk9g+EauA3kndjtTxmMvuCQa/aKhriujcsTTKyPtdjv+fl8c3f143
	 MuXc8uODYA7yISkfM5rBvX9dLLj4TQIvLYc6eqHch56U7tEFhiG081NwNycFLY26R92nCEzadUwq
	 VC1khsrdqzFuSikouiFfdexzxDsoxQ3Bm0Ahu2lgrz6M89KfozukUJq3NOj+YGK0mhL3cxOEbMDx
	 5GL4LPJFvoGuKU5YMhJOejkvsIUHvMD2V9HgsdizTqvUFnTSu17QGhWUvU8SxoUc08SdXMykU+9k
	 TRiyTPzBOYkVZvP5WhCH2P5HAWc1AuvPh+FFmhCCNZ//Yf36bwqCo/Mv+JqsjUgOs9EFBgAq2Ebl
	 tKtnBDFAkNmLHHVpLq6NcZ8EV3MOv4n6eSZbx10WWQG7NAvCWqi3lVSvxNfzlPFB72CQh1zRLiLq
	 SgNwf7mQwwwbX6dMuD4Rgx4HN3LF5EPJOAr8tHOGZOzJnw0isFDWkyglapr2jCr9UrG5rY3acFqW
	 hOjEQjB1UEabIvy7/zC8+ahVptE/Cmer9lGtdgX5gUTU4/GNtlPDszv59bnUY4wpKopTuly//pE3
	 MTe/YQzYGWBkFv0a7nuMFWy8472up+IVlWshTD/ECDEC5dRcoSS1+8YzhIVV4gLGjcfO+yGMiLBR
	 It/6Ldze/V/+7MBpTXeKbbX78XaFdYzoTb3WQ5UfBOpHxUmhYXf1jQ8x141n8e0kDfLFCmA4pwo5
	 AJiogfUmgV0fpVIxcbQJiPNNCVh9591Q9yIbkts4KF1EHBXUNEjsnZ9DCFgqDGvhmaXXMF8EdhFO
	 +fGlprvTaSEFuO8X+6oTgoQrc2bHlxVTHMU63l664R6F8y34rLCWsQ2nusPkQHfBggIS+qTEI2WI
	 XSgXEjH1bufRRtsq6qjK1Bi3Y91slsys99ohTfZVz7uQXyFK6U6sC90yS1Wlzc/rsKFVQ3wd0rvM
	 mulMTDXb2afR/nJTFEUvSaVvlpHnNUnpToU1yL/djfJcsVSHwmIRcOknUrpSy1QUaRFqcQJWjTD2
	 q3Wt5c
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Anup Patel <anup.patel@oss.qualcomm.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Mason Huo <mason.huo@starfivetech.com>,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Marc Zyngier <maz@kernel.org>,
	Sia Jee Heng <jeeheng.sia@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org,
	Jia Wang <wangjia@ultrarisc.com>,
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v3 2/2] dt-binding: riscv: Clarify the riscv,ndev meaning in PLIC
Date: Wed,  4 Feb 2026 01:21:48 +0800
X-OQ-MSGID: <20260203172148.1595129-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[cyyself.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-262355-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyy@cyyself.name,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qq.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 947F0DCC01
X-Rspamd-Action: no action

In PLIC, interrupt source 0 is reserved and should not be used.
Therefore, the valid interrupt sources are from 1 to riscv,ndev
inclusive. This commit updates the documentation to clarify this point.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 388fc2c620c0..df9578bcac89 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -109,6 +109,8 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Specifies how many external interrupts are supported by this controller.
+      Note that source 0 is reserved in PLIC, so the valid interrupt sources
+      are 1 to riscv,ndev inclusive.
 
   clocks: true
 
-- 
2.51.0


