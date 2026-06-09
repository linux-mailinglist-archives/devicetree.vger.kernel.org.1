Return-Path: <devicetree+bounces-309022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vRNGFLQNKGpl9AIAu9opvQ
	(envelope-from <devicetree+bounces-309022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:57:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E614866048D
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:57:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=enTtHF35;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309022-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309022-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BC75303275D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 12:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105B441B356;
	Tue,  9 Jun 2026 12:54:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5473F4192FE
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 12:54:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781009687; cv=none; b=WH5ZwOWHTWdVQR3bU1vsaQNQQQm8EnhkKVFk79VJ8glyKwyvRhkxXKb8Tx4s4WUV+bzv7lzQwyMKyrDDJpsJchnSuECsRuf8B1AnMcxy0R6scgNV2p/65Az3meycdzE4zi5axDPWZFYS36rBdL8zwg7ywk5DM+kFDSLMlQoNUVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781009687; c=relaxed/simple;
	bh=YzLlWccKoGz0BLkTVp9BdMtuyDEut60EmnH+dwboSVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gp0/ZkvrerffxFI6Yla/ab+d4wL6+ThvitUEeJX/Yqeyk7kn0BSlF7bimEMp/vOVgZt70CA/Fhig6CgSk/UCNp7anGVapvgabSOOhzoJNFCVX7wl6W4ecHvWtR108P+o+EczxCn5t1iMzRWLuCR9qr9EnM9HHAAZ9fmf5j5AaA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=enTtHF35; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so26813845e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 05:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781009685; x=1781614485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+nr/GpFJY1+f9PCkXIdaUi82s6MrGlmsZt39vjJLy0=;
        b=enTtHF35m4/+tO5GH7CRWMxHoy6Q8u8nCT0PhVOOR4spB/KNIbW49cRybbHlLf5YnH
         0jEw+CQZio/SQ8G3kGBzZ6XC0tRo1EgdUv4a61q3nt54XAFc8hFvdyNtSE/3Wfgnu2GP
         hhdN8J0cFLKNgdK3pgAYVmElSc26V1vPNmhc/cjq27uw3uU86uDrcrsxbQH2l08cEHkw
         f1eAQwm9L37RdByI2M2jzWW288gi3vlamnHPnAPuZJhp2o58S0timdfZaPmef0Hk0e0f
         LpTXodrVz/PHJQrBK2Thb15bi1e3DxDP6+BhdO9/FMzwy1GCAw+RElxAd3ES0sLtB9at
         SW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781009685; x=1781614485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A+nr/GpFJY1+f9PCkXIdaUi82s6MrGlmsZt39vjJLy0=;
        b=GkDB0Q1EIvVeyg9OPF+zukgpjBh6jqTFPUYa7vTzN0xAPEJ645jho6UzWBhAszlg2b
         FC+oHkwDHS/gMxlkJgNDSUVojae/9pF0qYBfNR4YtmsKzPM0Nb4PDc5F1PmYT4Lxg270
         a1uXudz/qU5DAQf7wN9oZftxwwZI4cGlsShA4JCU1DW+O8wUdrGjaVwW6rOeuynUbQ86
         5W63qcP6GZc0kdYOb0ztiypB4vJDp42fONvCFQx25DEtVxdDLrw/HDeevQdTUZWiwy3p
         QfJiGB9ZIFvrVzyFU0Ap7aDjXX/O7lPCZFG8dzydSaQWa2N4Gkh3MmKYwVXJEfwnE6Vt
         a/7Q==
X-Forwarded-Encrypted: i=1; AFNElJ8ZeQocf/Npunrt5QePy6Ojn+jic28BVOddF9Nfju9X0ZMWk3rMhAqQTg4rQzLGUz114sjBsmeS70Ca@vger.kernel.org
X-Gm-Message-State: AOJu0YwfRTwyL3hllvndoqnqNRC9i2qjFWr+AeyhODAZYmR0Ix+zdq7W
	mI/CXICYiC2XsDA6lZYXJPpz1u2odnVwjQyXXYcGhNvtoQilV26uN2xJ
X-Gm-Gg: Acq92OGMnhjhkv8rjMShw6CT7+RSbKIMFjBrKz3tc/ckCsRSnsuiKevls/MGvCpjxr/
	yLzEDXgixvh7iFP8sh1uKGxW0tU5LTO+S+1Fi1b8gIKPboyiX3TDRTfSbshgdNoZFWcZ8COnPoi
	XM38FDImaSQmb/Yye+srGHUTy4paV9NryUSX2BQLJ2I9sltJNiMcm969BFAiDabY8TJYYMoH+v+
	Tq6pCzrREgHVq5sSQmmmiQ6xyeku8NvohpisIjBCizPFQqYI/FN+8y6ZghrRYiblJAzKL2Wy5N3
	LnSddNPAQCi1QsdGPrUmavN7aldrJHMpbpEAp7cMUxb+jzH7XbTgB85ELiK4ptQSgSwdM08/dN2
	4kW/FWWLJs5o8uqzje5IDe68YNRW2gYQOGTWYS7kp6EfQhM+R/w3Ff7W8d7KUtHONBh21otiWf8
	RlEK8d7D3ykyqbTI6RwUIpjuB7U1RXZ2CglG7HbJq0MvNpQ7A2CdOVNGIX+lwcQkM5BY1o0seWi
	W8gXA/X/gkdtLQQY7TU0xaXuw8dW+Wu+46BRZ77o2KvRuwJvrCq0eL/Cw==
X-Received: by 2002:a05:600d:8486:10b0:490:c2a2:e91c with SMTP id 5b1f17b1804b1-490c2a2ea20mr226124435e9.34.1781009684384;
        Tue, 09 Jun 2026 05:54:44 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:2b2d:6009:3bbe:fb84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3b5b06sm435968425e9.3.2026.06.09.05.54.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 05:54:43 -0700 (PDT)
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
Subject: [PATCH 2/5] arm64: dts: renesas: r9a09g077: Add DU node
Date: Tue,  9 Jun 2026 13:53:50 +0100
Message-ID: <20260609125353.401124-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609125353.401124-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260609125353.401124-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309022-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E614866048D

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add Display Unit (DU) node to SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
index dda7008acdd9..93e792d0c4a0 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
@@ -1377,6 +1377,30 @@ sdhi1_vqmmc: vqmmc-regulator {
 			};
 		};
 
+		du: display@920c0000 {
+			compatible = "renesas,r9a09g077-du";
+			reg = <0 0x920c0000 0 0x10000>;
+			interrupts = <GIC_SPI 781 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_CORE R9A09G077_CLK_PCLKAH>,
+				 <&cpg CPG_MOD 1204>,
+				 <&cpg CPG_CORE R9A09G077_LCDC_CLKD>;
+			clock-names = "aclk", "pclk", "vclk";
+			power-domains = <&cpg>;
+			renesas,vsps = <&vspd 0>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					du_out_rgb: endpoint {
+					};
+				};
+			};
+		};
+
 		fcpvd: fcp@920d0000 {
 			compatible = "renesas,r9a09g077-fcpvd", "renesas,fcpv";
 			reg = <0 0x920d0000 0 0x10000>;
-- 
2.54.0


