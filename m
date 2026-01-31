Return-Path: <devicetree+bounces-261453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLl0C0k7fmkOWgIAu9opvQ
	(envelope-from <devicetree+bounces-261453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:26:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78576C3332
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:26:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 801CC301C149
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D61A34EEF2;
	Sat, 31 Jan 2026 17:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVeIufvS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B08934DCE4;
	Sat, 31 Jan 2026 17:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769880377; cv=none; b=B+zdrzhWXs/spewTTub4hfKMaW5LQWdmfMzZrmR0sH1knaBZJMZ21i735Yie6DOn3SOMuzqv3dGIuGrggeeoyUwLmeyACmVFvxaioprRX4mANj60eEFCaEbuBm5b519YsjRjAp83aeEdQVDdmQV4Pj+N4VWVjHKUfSksgk8Seg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769880377; c=relaxed/simple;
	bh=lL2KpW+5gB6aNpRTESTk9jPO2YC6wPsXm8d7yK5Jj18=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dmt2x6XwDRekr5ifBcB50+uu1m/8ifyfDd/CA2ZR+OGN8qrSfKFLC/l34MdehbzO9Khh1d+euNk8jmPBfu/uVCo8wDdMLMbcfDmm2EFEbcCmjumtFSXcpAPg5bWfahJMwQW6gApY4ABoLrL8T7UTKb/6Ai8+HFl52X4rY9W78P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVeIufvS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 688EEC4CEF1;
	Sat, 31 Jan 2026 17:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769880377;
	bh=lL2KpW+5gB6aNpRTESTk9jPO2YC6wPsXm8d7yK5Jj18=;
	h=From:To:Cc:Subject:Date:From;
	b=NVeIufvSICOnM+jMbsW8QKlexpX1UkuaFssed1due4sdc1ETuQYs1szA/hX5fgeJU
	 ZgLlaCoRcN2akffcRil9db/7eXFipFdJ7QO3Hh80GnwnPoTUidA0A5JWsTQzJuVrsO
	 GFSxxZWffMTE3VyUWiyDwDxcLR2ssz0pG8K/5qYlz8NUlFeAqhjrY6mkMWLwHdon37
	 XM+UiijsonYAEjnc83Dp/bBuOxp1lDB/DX7RL0Kx46AaEFfuKF7NdxQyRndilKe9wS
	 tUlH9Sg/O2fjOFdmhZnaIFkVT/Zprr3N4p0cqo4o8LZbu54N++wABb8T9c8sqE7ohE
	 +1BqBnx49mAwA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com
Cc: dinguyen@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: mtd: cdns,hp-nfc: Add dma-coherent property
Date: Sat, 31 Jan 2026 11:26:11 -0600
Message-ID: <20260131172611.28807-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261453-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 78576C3332
X-Rspamd-Action: no action

From: Khairul Anuar Romli <khairul.anuar.romli@altera.com>

The Cadence HP NAND Flash Controller on supports DMA transactions through
a coherent interconnect. In previous generations SoC (Stratix10 and Agilex)
the interconnect was non-coherent, hence there is no need for dma-coherent
property to be presence. In Agilex 5, the architecture has changed. It
introduced a coherent interconnect that supports cache-coherent DMA.

Signed-off-by: Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml b/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
index 73dc69cee4d8..367257a227b1 100644
--- a/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
+++ b/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
@@ -40,6 +40,8 @@ properties:
   dmas:
     maxItems: 1
 
+  dma-coherent: true
+
   iommus:
     maxItems: 1
 
-- 
2.42.0.411.g813d9a9188


