Return-Path: <devicetree+bounces-313688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +gggLTD2NGpxlQYAu9opvQ
	(envelope-from <devicetree+bounces-313688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:56:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 674766A477F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:56:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=n+uWv6g8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313688-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313688-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E3BB30172C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 07:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A85A3546FD;
	Fri, 19 Jun 2026 07:56:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADF634C9AF
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:56:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781855787; cv=none; b=mkzZ7RQ7Efx9kuFP6tIY4C2V6FZ+LmEgHVp2lWPZRjf1ZD1mnPSOOHwZgKzALzmiomb7ycvM8ayGAxM0dWtOv7mYr5edZjNSNReRDnHSrTpX9NrGKXT8XhWXv++4c3+bAPytOIvxKcDskqywGlyVnTC7IzYpuZ84TUDImAHohFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781855787; c=relaxed/simple;
	bh=re6nIVObjwqMiIpnOJoom5dXOcCymfRKRYf4nM3CQ8w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WhPAG4BjkcfC79Kn5Nfd7iacAH5h2i1SvOtA60c3onhDJ9KsHOJ3n7TI3sDrPvL9OTKpaK1s7SI+q/ZppL86NOqQUI6QzttHCA2idv2y6JtiugNQzdE+Jte3i8COiINfJ7VFmNUYf29+KD7/tIdTdhEkezlGkWLZIHGfp3okjmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n+uWv6g8; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4601949975dso277415f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 00:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781855784; x=1782460584; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kHq6LfHo7JaPzMGONlzaD8f4x58OHCwdb2mm1KPruZY=;
        b=n+uWv6g8osj6tWpSNCbnc4ZmSvaIcoyH6awmI4dej26RS79mulKJvxhDh0csCIPqAu
         tYoD7gNVkai3iVLGmDX7khhe6eel/o5udxwGpmZY1kswECeRKS8Q3sMG9TJJvvQnee3W
         V4LHqMlw1yu2M+5S4t7VPOHeagB0/vhwUONfmbpNHtnlVLsfObVx5rMZT4hk+rakuL+8
         jA5J+CNMaTdZRoDrTEz8jV8xPvXMM/UbwgIozzUolSjbXB4cZ/x+j27i2xWUB4ZXNh0P
         SN9Y/tsTssZ07uX1tDjWlPJcqk5QmuQ60pqa0WRPaf716WiTnAL03HTa2srIRnmKCQcR
         NmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781855784; x=1782460584;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHq6LfHo7JaPzMGONlzaD8f4x58OHCwdb2mm1KPruZY=;
        b=X7jDg7dJTbr4voM16GcxhA0dQZU86ZBSC6K+iMIypE6eUkdz6resHgpXQjACoHTVeo
         X4OhmtsAAbmnxmh1aAkmNsv74pyYXTDFFt62mkS1iC+oMsHpY4NULKDEK8bQ3HUNkgVu
         oOiDlsWY5O5znX65oXL9BLD32LCeKbH9TKIu1L6FS94phL7bzowBSac9UNoDwx+EeuYk
         FTjBjsRXKVqJB8EpYgvAaGvZ6jnQmWdOsJm2m8t/0jKYo4ZvIsonoL4OVbgyKa0LvVHz
         swciOjOUoCcCrU8Ol+oYIRlrRl2QN1Tj6/PXdUl6nxBP7YipGkbRqem1LOjXCGtJfzXa
         sNlQ==
X-Forwarded-Encrypted: i=1; AFNElJ8vzhTJIBxOtCx8ClBqlPeNVNDi4rihTh8+UlEDr443is7Q3J54dn2FaGXp3+I4RJAmhINZNyM3xr9F@vger.kernel.org
X-Gm-Message-State: AOJu0Yx81LlObgKdbigxNLQCFmKP+tyfgec62L4DFjzwgY/F0hEHCrut
	RnpAaDhpu8b5XQAI/gRNLntSbYlx37TT4kfgvz0OlQ9CT5lKYTZ9NFde
X-Gm-Gg: AfdE7cmu2/JjmZjvHn3ZuzKCHiL49XXfJQECo3s0kh+tzlZUVPKWrj/5llUmLDhvlxt
	GB4P5d0SQXbak9wMqfQjrBQkL5GxVfCR6yIlwutwpkSj47TXCMIFPkHflm+c172dR4mdtGjLZIW
	G4Ks39ylhc0Qz+ySukCQvFpSVT1ozqxi50E8lWL5EI3jusWbWjYJ3raRfdXWlysxRVMMXQdT2ZH
	yRdPxIqn5BanHrT69yi3MOGWBJ1UdiwQ4Gf/3qSRY2p54kPoJmnIWXbzmxWSCpA38iXog2aqmX1
	+gLaXmIq6AWOIqUZH/T5PxaKjAygi8S1qLMmuZBDHnA2hGIaNoyzCImOnljHdsvAS3IIBthB8uU
	OAdTgQyW2ybCWDIFM5ya7DKMcd1IpTWxBtYs7SHZy+LuFD5YEgQMSidk4RTIYYpqM/qi3kxG8Ma
	IHw9lRFPspcA8xM85ENQ==
X-Received: by 2002:a05:6000:4b05:b0:462:e086:35f with SMTP id ffacd0b85a97d-4656f470460mr1970981f8f.21.1781855784006;
        Fri, 19 Jun 2026 00:56:24 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a702:d301:435:f63f:6fb:bfa4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4650c114a50sm6549412f8f.33.2026.06.19.00.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 00:56:23 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: renesas: r9a08g045: Move max-frequency to SoC dtsi
Date: Fri, 19 Jun 2026 08:56:19 +0100
Message-ID: <20260619075621.126961-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313688-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 674766A477F

From: Biju Das <biju.das.jz@bp.renesas.com>

Move the max-frequency property for SDHI0/1/2 from the board-level
SMARC dtsi files into the r9a08g045.dtsi SoC file, since these
values reflect controller/SoC limitations rather than board-specific.

This removes the duplicated max-frequency = <125000000> entries for
SDHI0 (both SD and eMMC variants) and SDHI1 in rzg3s-smarc-som.dtsi
and rzg3s-smarc.dtsi, and the max-frequency = <50000000> entry for
SDHI2, consolidating them as defaults in r9a08g045.dtsi instead.

Boards needing a different limit can still override max-frequency
locally.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi       | 3 +++
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 3 ---
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi     | 1 -
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 3a69bb246bab..ae92d45ede38 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -655,6 +655,7 @@ sdhi0: mmc@11c00000  {
 				 <&cpg CPG_MOD R9A08G045_SDHI0_IMCLK2>,
 				 <&cpg CPG_MOD R9A08G045_SDHI0_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
+			max-frequency = <125000000>;
 			resets = <&cpg R9A08G045_SDHI0_IXRST>;
 			power-domains = <&cpg>;
 			status = "disabled";
@@ -670,6 +671,7 @@ sdhi1: mmc@11c10000 {
 				 <&cpg CPG_MOD R9A08G045_SDHI1_IMCLK2>,
 				 <&cpg CPG_MOD R9A08G045_SDHI1_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
+			max-frequency = <125000000>;
 			resets = <&cpg R9A08G045_SDHI1_IXRST>;
 			power-domains = <&cpg>;
 			status = "disabled";
@@ -685,6 +687,7 @@ sdhi2: mmc@11c20000 {
 				 <&cpg CPG_MOD R9A08G045_SDHI2_IMCLK2>,
 				 <&cpg CPG_MOD R9A08G045_SDHI2_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
+			max-frequency = <50000000>;
 			resets = <&cpg R9A08G045_SDHI2_IXRST>;
 			power-domains = <&cpg>;
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index b45acfe6288a..9039a927bc46 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -184,7 +184,6 @@ &sdhi0 {
 	bus-width = <4>;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-	max-frequency = <125000000>;
 	status = "okay";
 };
 #else
@@ -199,7 +198,6 @@ &sdhi0 {
 	mmc-hs200-1_8v;
 	non-removable;
 	fixed-emmc-driver-type = <1>;
-	max-frequency = <125000000>;
 	status = "okay";
 };
 #endif
@@ -210,7 +208,6 @@ &sdhi2 {
 	pinctrl-names = "default";
 	vmmc-supply = <&vcc_sdhi2>;
 	bus-width = <4>;
-	max-frequency = <50000000>;
 	status = "okay";
 };
 #endif
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 70af605168b0..e3821d8c01e3 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -285,7 +285,6 @@ &sdhi1 {
 	bus-width = <4>;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-	max-frequency = <125000000>;
 	status = "okay";
 };
 
-- 
2.43.0


