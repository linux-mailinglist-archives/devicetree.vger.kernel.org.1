Return-Path: <devicetree+bounces-262260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4M8VOv/zgWkMNAMAu9opvQ
	(envelope-from <devicetree+bounces-262260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:11:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3E8D9B7F
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 14:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D255430369F2
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 13:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285B8352C22;
	Tue,  3 Feb 2026 13:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rr7j1TAo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6426A350A09
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 13:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124261; cv=none; b=Iwz8nvGgTn7FZM4FDrg9E/+AbNxjjna4Q6TAKN/v+rxAlFBC8/ah64U63isxTKbyDkM6TeHwNfVosHZ6QJEKyuuCJvcXw7F3rDgWXSTcKHlQgZ8MeL8iQn5Bs3ZJkbAj1q6eLuwtkiJ85wgKNpo4opsJDY2t6bWIDFfSjFROXFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124261; c=relaxed/simple;
	bh=GQmTDThZa4iSSfKaxXIaDLtyIzQ/Kao23SE83+WQ5Ak=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CXK45jp+PIiLEf3UQIY7f34WgUYmgOvnh1YuIQsX1dFbqJ/bxsjQgUx3w3azOh3o8x026Sja8Ph6ELRGPgmTVfExeBapi2SU/GMivr5Q23DGmfZTBxRbexZtkdgLLncKTVOeJDNCUaLKA/mKIujyta7OLTAv5pMDY+2hkvLnE8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rr7j1TAo; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so45384165e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770124256; x=1770729056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+o0Y2sj0PGuTFcgFfnRs0Gebm7uNR7M2Xw2g99QuCNc=;
        b=Rr7j1TAoJkz2DMmJisJBF7Ki3OxzVpllVocboNnDTtErmMzTY1YLZquAomb5+Fqwbq
         /r5cnh03AGb/baE0B8iT+yPgQttAZPeX5CFqm2NRMIMqJskvY4UOjgkCkzu2SD4i+Fcp
         I5XZ6EHQ9cNWSG1zQ+L/ntlTw4wWuyhnJ2c9hk1JQkS87rKXW8zT90ZuhlolJ2wx0P2r
         QJXxhyeH7/1u+q52PQnYWaCY9dgwddBAQjtWOTtlQfyhwsjzAHQ0IGCtVy5t2bMdDo3L
         DG5qHM9I1Q+jmjtCTcYgXr71q7DBpR8/gznW56o5jCrfDtkWb2mssDJVffZnwMJt6xdg
         tvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770124256; x=1770729056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+o0Y2sj0PGuTFcgFfnRs0Gebm7uNR7M2Xw2g99QuCNc=;
        b=aM6rKqskc9HJNm6n1zeDvFt4BsYDgMN1u/GuRaPkyBfUzczOkgw9Z3xxFFXC8kb9Es
         Clsg7JRU/3x8Q+0Nlp4M6LvJ4yKwzi3IFajuYkk5iS2nyG6PnduPzF5VZqe6Ieex+WRc
         UZfBdZpa+4cmYsFhwz4PJmVGE3Xbh3R2TnMXeO44i1Rve0LxJpzSCi1OFHFU7EQv2xpx
         wvHCxKtun3kTTzO6xkhgcGPKhsR5QrucrMm+auVTtXOsFJ/+T263AVFpKjmQWQnwVybE
         z5hjzlD1Anzrk+GqUgdFizn4UopqwYK288tjJJXc+zERn7aEWvj/yVxJLv2+8HLugX98
         JjmA==
X-Forwarded-Encrypted: i=1; AJvYcCVGExlfmp+czIluQEdb7qJkDB8rc6+Otu/WP4mG+eoshwMiYaoVcW6ckR/YTutoOErSQrRdBVze+o9Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyC79mIRGuoGopv587ICl89EbV+DrvhMlBbnL1napijsokRPsZO
	xl/3LHBL7LcmQSy0sRw9Zt8xWelL61coESBfJ/42eHQjoRArBKLSz8R1
X-Gm-Gg: AZuq6aIkgfRB9j8Gy75Bj5KqapKZqmnhJZ2rXQ+N0vDBn8hBGu9gTk8W9Kxjmn88gwT
	9LyRTn41LrbB4K7GopLYmqi1PHeezxUtsrYryDfu7dgm14T/rIwgVyn3aAJ80IbAKUwnrniwU33
	n8kOpndT/ZjOiyUC6ryz2XHoCwh9HHPwW/0uqd8FBJPhjM4iWW7KvTPPIQPsgnZ6n3UXjMxCCw8
	f2HQJy/WSVcZNkkAQDm2Uj1NzFvBCrKnNtMxTD+ql0VQ/r6AcO/Ngo0ZXO7MRAa6OnEhrU3Vuwd
	rUvoCYt7/fj4yVNTluPJ3P1ku/5pN5H2TrZlhtxKpjUGBx2xSnkEpr1o3RjBT8+OF3VcdHLtWEv
	AL1PfeAz9v0HkD+dzGzlcfcE2Fuq/qy/jEofw04+s8V6kC9o7V2gIyDuCx+c8AURdoPd2+Qbyew
	omQpuVFJkT00s175Vfee757WF2kena
X-Received: by 2002:a05:600c:4e87:b0:459:db7b:988e with SMTP id 5b1f17b1804b1-482db4655c1mr192761085e9.13.1770124256377;
        Tue, 03 Feb 2026 05:10:56 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm63662185e9.9.2026.02.03.05.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 05:10:56 -0800 (PST)
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
Subject: [PATCH v2 07/10] arm64: dts: renesas: Add reset-names for RZ/G2L and RZ/V2H family SoCs
Date: Tue,  3 Feb 2026 13:10:30 +0000
Message-ID: <20260203131048.421708-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
References: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262260-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.168.77.240:email,0.180.91.224:email,0.158.255.32:email,0.158.216.16:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.168.156.16:email]
X-Rspamd-Queue-Id: 8C3E8D9B7F
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add reset-names for RZ/{G2L,G2UL,G3S} and RZ/{V2L,V2H,V2N} SoCs.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2:
 * New patch
---
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 1 +
 7 files changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
index 593c66b27ad1..ded4f1f11d60 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
@@ -604,6 +604,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G043_GPIO_RSTN>,
 				 <&cpg R9A07G043_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G043_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		dmac: dma-controller@11820000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index 29273da81995..cb0c9550aa03 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -1017,6 +1017,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G044_GPIO_RSTN>,
 				 <&cpg R9A07G044_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G044_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@110a0000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
index 0dee48c4f1e4..7a3e5b6a685f 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
@@ -1025,6 +1025,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A07G054_GPIO_RSTN>,
 				 <&cpg R9A07G054_GPIO_PORT_RESETN>,
 				 <&cpg R9A07G054_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@110a0000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 997e6cf0bb82..3a69bb246bab 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -533,6 +533,7 @@ pinctrl: pinctrl@11030000 {
 			resets = <&cpg R9A08G045_GPIO_RSTN>,
 				 <&cpg R9A08G045_GPIO_PORT_RESETN>,
 				 <&cpg R9A08G045_GPIO_SPARE_RESETN>;
+			reset-names = "rstn", "port", "spare";
 		};
 
 		irqc: interrupt-controller@11050000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
index cbb48ff5028f..66f40cb1464d 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
@@ -265,6 +265,7 @@ pinctrl: pinctrl@10410000 {
 			interrupt-parent = <&icu>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 9fb15ca24984..e85daef4e42d 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -288,6 +288,7 @@ pinctrl: pinctrl@10410000 {
 			gpio-ranges = <&pinctrl 0 0 96>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 80cba9fcfe7b..38793b948c02 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -270,6 +270,7 @@ pinctrl: pinctrl@10410000 {
 			interrupt-parent = <&icu>;
 			power-domains = <&cpg>;
 			resets = <&cpg 0xa5>, <&cpg 0xa6>;
+			reset-names = "main", "error";
 		};
 
 		cpg: clock-controller@10420000 {
-- 
2.43.0


