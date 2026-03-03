Return-Path: <devicetree+bounces-270803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFXGLuVvp2kEhgAAu9opvQ
	(envelope-from <devicetree+bounces-270803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F63C1F8663
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB23F30EAC97
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EE735EDDF;
	Tue,  3 Mar 2026 23:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dNFN5vMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5123563EB
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580806; cv=none; b=dusebBi+nVT+7n4Nj13vbmfJHrDbwaVmpVqzHfSDZaB0xf7XfnfXE4YtqWibZ1fq7rM6RKCkhIF0O5Zn7Xj9dvQhSOBOxu+GIcNpJcFGol4rJGlrOQDDgdXv92EAgCZ9WrlcFNykP7Srw9aL0fUZutv3aoNIr267iCXT7heoNLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580806; c=relaxed/simple;
	bh=DVxyLgT1c/qaw7wr26tCEWN2Hw7Qwy3ie2oqtBAYrMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RciwMW0UDK+pKbB/spHmHdvzhuha23s34EsOG+ZPCYrbitjrXvopMRdaRa1u25be2wccu2WeZ+8QVjm9HM+VrpMfbQb1t1vVEHu+r2w7PTIQ/AEoVKzkx9UqsBylIcTI2/F7efryQnzR9pooyTeSaMbMuwF9F77fgm4SUKWNFYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dNFN5vMu; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4833115090dso64234905e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772580804; x=1773185604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YS6NtC7nzXx1gPxu+nMjons5ksbseO96oSa6YbAgoHQ=;
        b=dNFN5vMu+1jHMVz8y83Mt1ecCMp27xOmp9hNXZuzd3DSZxBm25JSgS4CJ2HPEHrwnp
         oX2kYSLQ9x8nuW73Bgu+oXnNLFUoP02YtYhk8vP+QvdYHX0ITP64JfjFg2dnN5t3F/Ci
         tLyJAX8COioiceFnljC8qSGZ8XT63fwocr1rSyEJeXMUCPaSAusyMUBGyrIqEiA08Yq3
         k5me4IOT6r69C1cfvPBcmET3cQHR34J1Tczpw+7dKcvlNR00xNhaLNc92Z1jlWBkGakX
         7xl4uG6v8s/7ju9PMLy4Y3xgdAHmKuahzdIqWV88iau8tpGvcNaOHoHt3zODDj6OVzQs
         Y9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772580804; x=1773185604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YS6NtC7nzXx1gPxu+nMjons5ksbseO96oSa6YbAgoHQ=;
        b=J8PRj3Cc8AX0afk6mlrYwL/HQ6MJusIWEhtHpEIu0vViwkDZO4RiwU3Pho2zrTpv8F
         hG5zSjAlBdkFFiZCeYB3ydFW2F6OjLQjGnDHk05tITzdSIVychQAlHuySGWoD7cxQTl/
         lBGibddpf1q592WLtkEX218JymFMGuLjXV8b6GJIutbbZixHOvd3TE4qwztvHa7Xjdbo
         EDKXEtVN7t/GMFm3m0PHdVWovPHiYnDd1L87t62pf5ep/IrYiBIKwujKE9Z5uA183ZGB
         7SbPsV3Dp+eUsR1K08gy+GB5ufR9l76WjqcNfe1nAJ0GeHhjeVxRydHpnPUa6OqKKDjI
         CcWQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1REQ/LiRzBoLebNmSoyMtSnUVoS8nPIcupf/kiLOmMUOUr2YDJTMx4ADZEw5svZEG9iL8n92aEdIf@vger.kernel.org
X-Gm-Message-State: AOJu0YztMc3mwaSy9mxzqvl2DHu3a5fVRifaHptpjA9XxnZqOD4DxRvv
	NYtVLawoKBwJnzzvc1c6+t6fMb6uP3b/p0ZQyghKVVQtpsczmr0jmeUG
X-Gm-Gg: ATEYQzzMD/BJf5rf8vBfxUZYGhgx7ka2YaCXtC6K3d0majUalScSxg4Gl0ZhIYvwi+b
	NMdLsAIgSoYYobw+ZxIbH4ReetBDQa0R8PCsnfeGHB/v4BuzIxRbnHVX0MZ/0U8RPBIX2Fzohhl
	7gT/eLJ+yKZiXlQKC6fBONW9sgpdW/3wMWeBp35p8gLJawVUg0qYWyYdrq5iKjAlc3GmlEJkm23
	34RNrZizXg94dzZ4qYryOWXVMm5ZF1N+tr2goDYhogAoFmL4U1OMGpuTc+lWXxzfXadQgGD1G/N
	H3QF5z8LJkCoL/K5YVX4gZLP3Sw8OyqBH0FhPl/Ac3v7QqTCe0eXGgLYJ82e3gkZ8AC3A+zeHQf
	l26JTRyEW5RgdRykx9jlll6760V4de9ari661ziUmVk3OpUFfKLN0w/kwrcYUZbIwZYsq6Gy5Pr
	hp+aO2horAQax0anAmfonTI1FMQyizeroD0m4J60z6dlaUtoy59AShcrR/eDgBkkxap9WPpZash
	FZJEuWFvjD74zW5s8mmn+wUNZzaYasLaqWVuyeJjiTku+Sk
X-Received: by 2002:a05:600c:8b6a:b0:480:3a72:524a with SMTP id 5b1f17b1804b1-48519888807mr811375e9.19.1772580803675;
        Tue, 03 Mar 2026 15:33:23 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:30fa:3523:429c:2894])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126705e5sm26188185e9.5.2026.03.03.15.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 15:33:22 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 2/2] arm64: dts: renesas: r9a09g057: Add DMA support for RSPI channels
Date: Tue,  3 Mar 2026 23:33:14 +0000
Message-ID: <20260303233314.2928711-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1F63C1F8663
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270803-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.195.83.32:email,bp.renesas.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.195.80.0:email,0.195.81.144:email,renesas.com:email]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable DMA support for RSPI channels.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Added all the possible DMA channels
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 02ec79a556f0..7be228f267fb 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -765,6 +765,13 @@ rspi0: spi@12800000 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7b>, <&cpg 0x7c>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448c>, <&dmac0 0x448d>,
+			       <&dmac1 0x448c>, <&dmac1 0x448d>,
+			       <&dmac2 0x448c>, <&dmac2 0x448d>,
+			       <&dmac3 0x448c>, <&dmac3 0x448d>,
+			       <&dmac4 0x448c>, <&dmac4 0x448d>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -786,6 +793,13 @@ rspi1: spi@12800400 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7d>, <&cpg 0x7e>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448e>, <&dmac0 0x448f>,
+			       <&dmac1 0x448e>, <&dmac1 0x448f>,
+			       <&dmac2 0x448e>, <&dmac2 0x448f>,
+			       <&dmac3 0x448e>, <&dmac3 0x448f>,
+			       <&dmac4 0x448e>, <&dmac4 0x448f>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -807,6 +821,13 @@ rspi2: spi@12800800 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7f>, <&cpg 0x80>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x4490>, <&dmac0 0x4491>,
+			       <&dmac1 0x4490>, <&dmac1 0x4491>,
+			       <&dmac2 0x4490>, <&dmac2 0x4491>,
+			       <&dmac3 0x4490>, <&dmac3 0x4491>,
+			       <&dmac4 0x4490>, <&dmac4 0x4491>;
+			dma-names = "rx", "tx", "rx", "tx", "rx",
+				    "tx", "rx", "tx", "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.53.0


