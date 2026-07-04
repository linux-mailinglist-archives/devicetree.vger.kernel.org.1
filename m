Return-Path: <devicetree+bounces-320463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VEIhBsLUSGpauQAAu9opvQ
	(envelope-from <devicetree+bounces-320463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:39:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 696FA7074D0
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:39:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QQSVGvLv;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320463-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320463-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D4FB301D317
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 09:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5FD3A6417;
	Sat,  4 Jul 2026 09:34:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FEE3A7590
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 09:34:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783157686; cv=none; b=sTISYKvdWn0BHOc5HZASSgpWUc+PixEfmPTH2iBjp9OUjrvvJTH9yBow9vLTt5fLZase9Gb95tg4lD1cJzFFpfI9GcnG6JzvU6ghRxtBkReGsUBMJBzvwMtRqsgEkL5i67GFbpqG8e/2je1TZzsT/uNsoyYMN8j1ItjE61XiqXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783157686; c=relaxed/simple;
	bh=61HD1HNENSkzq874mpXMvr1175EVmr+2k1+MUOchsTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aLzsVHFB8fPHADPZLhLLembtNTYvITRUya6DIWOOe/ZbeLs9hxI3YOImGfbz9uJl7CnkzUNisLUHEpakCZi1uggKx53DvcuDMTekoQaxwJ2phWfy8jC3Fh5liHcdKpXm48SEwaafVpXsdNj2RMp8N5/ze+ieJ+OJXynKZTyG1o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QQSVGvLv; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-493c5220cb7so9320965e9.3
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 02:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783157683; x=1783762483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vgGkGuADGw9QjPycnBerHmQm1hL3ZOQs1w9GMxfDvOY=;
        b=QQSVGvLvC/juDWisV0t/trXpsg8SBX0LOpQEOhYUYoEnCe7dGOV+q9X2sobZulM7vZ
         ic4ru7l9j8td6pEt20oN9I3pD0wmbbFhYLpQN3bjT00gpW9temvQ8C7S3s6Te6dfJjUZ
         z2sogE4B3RG8mTKa7+jcgj8YMFFGM8K6fhWSdjqbR4PFvXRAj42WUnjAUcEUq03qcHdA
         A6iNSLyzi8OXZ7P06sTDf4iBJK6DVHVD/373t0Wbg44Jrb7x9t0yNOHuLXiQQx2JBthp
         mtsULFcpn16si+ynonCkXnlYVsFkdWkOhQcWSXicWKib3arnrLEIkSWTkXOI49kyW7o8
         PzZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783157683; x=1783762483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vgGkGuADGw9QjPycnBerHmQm1hL3ZOQs1w9GMxfDvOY=;
        b=X0rfyBNtRccn/IL+cCrIBIcEUvRP56mRYFOxH4tf5OetLtKeU5XW5KGPi4OOnjuXoB
         3QOnmwTUpcyiZtbBQVSbGGompe033jzEdRqBS4yrLjRsGUDDBqkehlF1ciylmfhT91xD
         YYCcj7QfXRC0FDWdFs+GSohIoJ9wjrqwy4woaLSd3KvZxBdXvXn9xNIJehYCYNKv24CD
         +lBmoWGw5JjXr/HtnJenl71BB4c2GwHIrv9aL9XFAq7ltVrh50UNRqSo6O11NJWlx4Fd
         h6HvpsN5MER0s+hIIThJzs3OLA/Skn34aQK2X8sAn8szS6aNBHyZddlqCC1bEsDTLzkD
         k28g==
X-Forwarded-Encrypted: i=1; AFNElJ9ycSogKcDCNLUDOL+FKeWUf7XksjjC17Nm1cAzmx2k6NyKxVLX1PgT5hVH9h17T+8Zt6rgEleh2iKy@vger.kernel.org
X-Gm-Message-State: AOJu0YwZfx9pxZNYh264Sblko705p4B4nzZ3dhHNI4hZEPCeHXDiAqBe
	PLBgibifzm4XkMn+HSiigyeGupv/ujTNaY0QtsPWlEL70/ewjCaZf158
X-Gm-Gg: AfdE7ckO8U6VMmeX1BGC3gv5+ewruf8ZiFjPZTy7PLo+ULG1DDAoSpuS/KZ7mdzIc6N
	Pw9JCxxjKnWSycOZoolzSNK5Zww1npl5EIV+wueEISClUBD2nQP4fFoKR3/tPsHwHJPO0OEcZb5
	MVtOeDfKgprZsqjHkvDMSHaQhmjMQbo40U7pRMtRAhvH3roNlRR3+8xkeDfvFVtJt63BxooSoHr
	U8zOj/e372xx2TXYnBu4pzZp0rmcrlKW2QMSMIZj+5WfkigXXO1eqhmU8kb08Uxq86hBYpqnOGm
	P/Ndkd4rSc4ZlVtV4aomMFGL+mVMNj9ndk/DbCBZKsEkZkYnWXqkObA60Ad3NW22XeSUo0gGtI3
	0EeLhU2p0GIcJuFKWKoTKZFwfvb2P/VYcNL1pasaUIaFu/pG22KN2yROvJtDSp0WVWqD00a5xjF
	ag2Bgyr9HlukiiAL5+LDXv
X-Received: by 2002:a05:600c:154f:b0:492:3754:15f2 with SMTP id 5b1f17b1804b1-493d11f703dmr27792335e9.32.1783157683377;
        Sat, 04 Jul 2026 02:34:43 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:8c5b:5b11:f6a5:9bc9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493cce040b4sm153180235e9.10.2026.07.04.02.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 02:34:42 -0700 (PDT)
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
Subject: [PATCH 12/16] arm64: dts: renesas: r9a08g046: Add vspd node
Date: Sat,  4 Jul 2026 10:34:22 +0100
Message-ID: <20260704093433.273672-13-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704093433.273672-1-biju.das.jz@bp.renesas.com>
References: <20260704093433.273672-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320463-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:biju.das.jz@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 696FA7074D0

From: Biju Das <biju.das.jz@bp.renesas.com>

Add vspd node to RZ/G3L SoC DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
index eb5604b84287..0d8507e0666d 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -696,6 +696,20 @@ ssi3: ssi@100e4c00 {
 			status = "disabled";
 		};
 
+		vspd: vsp@10870000 {
+			compatible = "renesas,r9a08g046-vsp2",
+				     "renesas,r9a07g044-vsp2";
+			reg = <0 0x10870000 0 0x10000>;
+			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G046_LCDC_CLK_A>,
+				 <&cpg CPG_MOD R9A08G046_LCDC_CLK_P>,
+				 <&cpg CPG_MOD R9A08G046_LCDC_CLK_D>;
+			clock-names = "aclk", "pclk", "vclk";
+			resets = <&cpg R9A08G046_LCDC_RESET_N>;
+			power-domains = <&cpg>;
+			renesas,fcp = <&fcpvd>;
+		};
+
 		fcpvd: fcp@10880000 {
 			compatible = "renesas,r9a08g046-fcpvd", "renesas,fcpv";
 			reg = <0 0x10880000 0 0x10000>;
-- 
2.43.0


