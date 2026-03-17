Return-Path: <devicetree+bounces-276849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gD4tN2OvuWkkMQIAu9opvQ
	(envelope-from <devicetree+bounces-276849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BC92B1AA9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 03E75304F5AC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7C337268A;
	Tue, 17 Mar 2026 19:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HO4jRT/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A284634AAEB
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773776698; cv=none; b=XKVq+7DShDWgHlRf0+nHu1yW4H6v3A4oMMMcyGbfzTzIg0KSaDXZ6cdNBCMuIrFBvm3d71XD9ghXrAQbmk+0bl1FtJisX4iU68TxkCwL9nHeEDKJVT2ixYoBOG+X40sNBMNKs0uaGv4H8yDJ3q70cg0OTy3WImsDT2cveI3wIw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773776698; c=relaxed/simple;
	bh=V35ZSROqFHPsxUn0UQZAdtyz2COVANXh3RKNF/nXfG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q/bDjcyjmmsl3Eid2KumNqzooQtoeYLo50vVTn6ZIo6UbtadJSaYZZ1zH/Ic8PX5rSQC53sTU8eo4UgkAL+FHp+CJxhAChGMfOBtn55K9WqPX1cQCZI925RDWdErN5KPbUfFzRa0xOy2bxChtjUsfe5MzQM+EqdYAGnXDYE4ROE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HO4jRT/W; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439b2965d4bso4341572f8f.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773776694; x=1774381494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfVd05T86E2iD7eB+6k5IuN6fQ/IOoAsLYVMqJWoOpE=;
        b=HO4jRT/WGaigRl1QPZIqVI/q+I4gE476GFjh+Krb48B8FREjYv6J8LlXw0SifQZWu4
         /WMv6Li3H/tB+d55HaGCJdGmfmvV0bGZZ1vBAuGp19lasld+Juv+Xd4cAGc8W13SCyuG
         1/FZLcIBIJmloRV1IushJHCgsvC9RIIjPmnz1GomsMXh6BZBBtLXsjmR7w93osNpjV2l
         g1WL0TpVKx/lrohl85YSpXpwFiaGIf1hD8VFQ6+RT82GsdZt/GHlADsxkgz5E0PwBsRT
         I4WNKE+WKXfP2Xjbf69jmkfGzSjWcNs42jJq+ezQ+PlIyVxBsM9ulep8153LHm0T7DX5
         vyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773776694; x=1774381494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JfVd05T86E2iD7eB+6k5IuN6fQ/IOoAsLYVMqJWoOpE=;
        b=nVtrvp1XxzMcqMuw/wQrQMYVk8bkNR4rGlca0JHOXiUiQgXnjTpry37UTGDt5Zr0lM
         WjsjZXJ1ejFScEftts+vxKX+qUDWrk29JRv26ioX0+LAa0cyXAAnA282kEP7qBAAsaRo
         VEtfyLwes4Gxkl56AcIAI9dQ9mzxP07el/xZcsajjf9a2fubjuuOWCJafR51HOCEySpv
         +0THxveszUrqzbMZAswyJ4XkLQliwAaffR/CTfkyq7x8bwAhIonlecQysc871SM4thJt
         Fof1pnvvv9Z2c/8TNFtDjaCs04LtjA9wDovH9ezYuuxzLDqhUKcHh2X+l5NGJ9UTNzeB
         70Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUDXrRyUBnYkKK4iknGe07WOi3sUknkdlNTdXbRzwtZnt2a+PU6qsa47rrtpNprUfrQ8omlz8o3bnQo@vger.kernel.org
X-Gm-Message-State: AOJu0YxljjytOryp3YO6Og1UrOFyNzuOqu07/nL+S1e2Pb3o8o2FCPJI
	EBd3UhgJMEzLGnNPCp2Fat3QTebsu8bWDcVRjcI3fkJu8/wy3k1HLDVX
X-Gm-Gg: ATEYQzxsOSaBJVa0m6ir8N2FeWjx34ad2+XtxhOfwi7u9kemFoS2BigcARO4b9z5WVZ
	4jcZlUFeC7ZdeNH6Hciu1DTkw0ovHWLkB9U/ZJ8f7p5BcoIBB56tTbDokyPisPbkrqL6EePJB0y
	ckTZUTk2toelNNHpX4TABuWJJDrhXDvqilQPwn5OacHk6AZgomHevsdMy2m88WB23WmrSLBRLJI
	gbgwcIuuiPR5+bqhpOIgFMYt0oeFPQo0EdvXmk33B5bPD64QIYy4byhx3RusVJUB2ovLoocLLg/
	TzrEQ6YWQWElOuvW6t24mOVHg9QXmgcDkLCEGy2XMxap4BjVE2YUpZBNgsmmbvfrQMWpkgpr1Ca
	9o1D7LH4hpEYzsM/MqsSASxv10WVM6r3XcZCV56fyK9mSuzojS9gQkx3BAvNjY8johZ6Q2//GlX
	2FIfXd3u/563J4vLf/GemhRQi4woGaJNPZna7RMbO7tfNGEPpm
X-Received: by 2002:a5d:5f43:0:b0:439:ca85:8848 with SMTP id ffacd0b85a97d-43b527aa344mr866732f8f.16.1773776693644;
        Tue, 17 Mar 2026 12:44:53 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm1788235f8f.21.2026.03.17.12.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:44:53 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 7/9] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Tue, 17 Mar 2026 19:44:34 +0000
Message-ID: <20260317194442.468147-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
References: <20260317194442.468147-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276849-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bp.renesas.com:mid,renesas.com:email,2.220.108.0:email]
X-Rspamd-Queue-Id: 91BC92B1AA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Collected the tag.
v2->v3:
 * No change.
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


