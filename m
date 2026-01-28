Return-Path: <devicetree+bounces-260641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KTNEsWFemnx7AEAu9opvQ
	(envelope-from <devicetree+bounces-260641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:55:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D729AA94A1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79FFF3085D0B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B6333C1B9;
	Wed, 28 Jan 2026 21:52:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5E433B6F9;
	Wed, 28 Jan 2026 21:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769637155; cv=none; b=mDyZRdN+U0ZuWuWck5RSbHwL10gMQjswx4qch0lPycVW8Mtj/OPvhjxfEz2ZFuslobNBHrY5eubDGdhPeAbicdqId1nYZBgtGieSMIPo3eKjNPxDfHHKNefzXvJPPYBbkJDCCXT8h6oI7deIs8CA1f0ZI/Zb0DHMl/M3Oq9vqUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769637155; c=relaxed/simple;
	bh=EAxXFzluNTGqwriAEY40/4tNtnYUQQnL2Rr3iGk7l7E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HDksGeV/OhLp3Xh+x/l5w1Ucds7sH22UcLt6YXcjdC8TN0L8HyxoyTA3UxgCOx6dXbaZIgGD8bb5Ips8mwnbDvdL/K6KxQ+YW3a0dRQtqtxv4kOzz5NmxtzX3zLiusp1bAA3dudMjsGQ93RFgjiqZSEwIuGxmXfTf/aML9MxsMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
X-CSE-ConnectionGUID: f68bQ5daSu+DM4JrDIx7AA==
X-CSE-MsgGUID: yuNnU2BhQeuncPXrimBbqA==
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 29 Jan 2026 06:52:26 +0900
Received: from demon-pc.localdomain (unknown [10.226.92.19])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id C7CC040C0B68;
	Thu, 29 Jan 2026 06:52:22 +0900 (JST)
From: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-spi@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Subject: [PATCH v3 0/3] Add DMA support for RZ/T2H RSPI
Date: Wed, 28 Jan 2026 23:51:29 +0200
Message-ID: <20260128215132.1353381-1-cosmin-gabriel.tanislav.xa@renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[renesas.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[renesas.com,kernel.org,glider.be,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-260641-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[cosmin-gabriel.tanislav.xa@renesas.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: D729AA94A1
X-Rspamd-Action: no action

The DMA controller can be used to transfer data to and from the SPI
controller without involving the CPU for each word of a SPI transfer.

Add support for DMA mode, and do some other cleanups while touching the
same code.

The dts changes in this series depend on the DMA series [1].

[1]: https://lore.kernel.org/lkml/20260105114445.878262-1-cosmin-gabriel.tanislav.xa@renesas.com/#t

V3:
 * impose proper maxItems for each device
 * impose maxItems for dmas property

V2:
 * drop patches picked up by Mark
 * add new dt-bindings patch to allow multiple DMAs
 * wire up all DMA controllers for every SPI controller

Cosmin Tanislav (3):
  dt-bindings: spi: renesas,rzv2h-rspi: allow multiple DMAs
  arm64: dts: renesas: r9a09g077: wire up DMA support for SPI
  arm64: dts: renesas: r9a09g087: wire up DMA support for SPI

 .../bindings/spi/renesas,rzv2h-rspi.yaml         | 16 +++++++++++++---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi       | 16 ++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi       | 16 ++++++++++++++++
 3 files changed, 45 insertions(+), 3 deletions(-)

-- 
2.52.0


