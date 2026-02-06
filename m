Return-Path: <devicetree+bounces-263212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDx9I3RThWmV/wMAu9opvQ
	(envelope-from <devicetree+bounces-263212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:35:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCE6F95D6
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FEFD305C2BB
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 02:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8AD26E175;
	Fri,  6 Feb 2026 02:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="grF+PcjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104ED261B6D
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 02:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345160; cv=none; b=CJcUcjNpT72MUXs1Tf5a1M/L/B8AxnTnJj5WcJO19Ms/nDVExJI6zjQsnsn0g4eHLf6MqnxSXkLs46Z5irpp7DAthbUAjodTsQWTh6bRT/5FaGOLtPJq9a3FgRWOE0qDRr3OIRyzt7V7v740fD9BLrNS+wJKM4aKiISgQjwBMZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345160; c=relaxed/simple;
	bh=rqn+CyC4DmyPqdwEhCuUQzXXWD6gdAtHB88oVgs4zr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T+2Sa1sEXX979HZxRyxD2yka0bzfAwqozXUR9buc7yEa3TxM6uKt1OljsalQ2UhbXefYGo5jNnZjYD2B4HbK/1Xl+gp2gIwLdclFFrNCOKfZhumQYzO+IvarIr/dWRiw8wcYHXBBWL1iQfOp1AyAqAj60oqqFWdJWr0vVasTTms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=grF+PcjQ; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3540266d356so1067772a91.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 18:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770345159; x=1770949959; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/g6xXR3sCpk98fDtquSf1waAlnXZpFapLSMWL6yV+qI=;
        b=grF+PcjQLeGt38m3+JUKSfIj6A4qBO/coQRELjGYiinpQyHzEOR6qsdYAkOL3RkdoQ
         rO5P84BUK6vMCSrLMLtbmKm4h77SlEOJEmzXrCX6aBQKU7mikv5SWKzjxClC3+RUr1K9
         QE92jzpWtw9kKnyuBtSMyVmpjP4OsOJe4jw2vR/6wPxrIBPFDxg+662OT8tA4BCn+LHv
         VrKcMiRmyKGT5vt5QEXkEeGJoAhTZr0itCowLysYf4LNMCozJ4U+Owg+TVAykhFGrRmw
         A+GUG/JEOz6lDAaJsAsq5EyUiNv1YdV+sSuN5bhCh6EM7quiRulnC8P7t3ftmeMa2YEM
         I27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770345159; x=1770949959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/g6xXR3sCpk98fDtquSf1waAlnXZpFapLSMWL6yV+qI=;
        b=PGoJeV1CRA/QlzjABwggGkofGZhdXxBx18DxhhmZA6+wTux0hk6891zTd8IZzIvN0U
         rlqAJ3Ury2X88H98j/B57LG7Ro6i5seJ5r+XvrM0GtmhblHGkAHXyJMbNQWJ524tD72q
         ndACWLakGS36zKPiq1TjPe2/OEtF3lChgue8FrDrPm7spCXyZ/1OeVxmOC8UD0FIyPLv
         VHpnOJwax/S84NXict7TiBtov1liip/mLXXo63sIaHCHYbLL0AGdn39yXrEzk5n/0jG+
         TfQdTO5Kv3bMvAEGl7rFrr6+GgeMEduW23zggZTWGenY0f1gfjcKpYRNG8+PJlvolfG6
         G1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZesyL7+WSjlMr3ycLhWyLf7Y5icZ2B1P0s2k4bGSnw89jqZbTDDvUVyW52nSVdnp0GVq9pKhgmBF0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6aCAVpDkV9Us+fTjp5otOFqZsAlvhrntdpk384bhc8Jk48goJ
	uLLT8L6YANnvqjdxKAn9vEKcCZDN2FGfD7dwJNKzleCso/pYJUEnUu9ubC3EYqmmrPw=
X-Gm-Gg: AZuq6aLKAY8sxEGR2YHjfWE095aP8q3+5T3bSJuyrlh4dFcxYclqBBUuQ9F1AVGccmh
	yQhPnF78CGnlJbuVD599oP+xUnOJd71cSOv4I8L9RZkixw/4UIeZ4i8UAV6bVb47OGjwG9uXQ4T
	h5cGVXUm2gf4ZPTEqepQcRgDIJUBczXIGHClPUrB5sNLc0jOsMqX7QJn3rcpD8Cys3/u8BOI3SQ
	7o4H+YFT+utdD2pZymCpZW92PpMzexe5h+GyjHTW8R+tesvsxCqGPzc9Q/oK7c/hv51jZvh+oY8
	9hsyyIS4N47y/AnWRxXiud1xGwSEHstlW+CplMQNGrRlaMeZKEEB/jv8q4Yj74MDkDFjKgJvXJ/
	eC3G7gr5RD0kgliOF2JgxHImgJUWd3NwNow8q2nzVOAaa4SXepUvSaVwnmzDCEQ7JMaBh2qrgaD
	NuDCn4dpzq54+ymMCNU6Q1/cMSSC+L8Rnozoo+kCsFUePAO2AFqElJ3zGc10xmF59iAf9j7YZWY
	12c5qa0i2ubiWt/i5fU90Y80ZXsQw==
X-Received: by 2002:a17:90b:4d85:b0:343:5f43:933e with SMTP id 98e67ed59e1d1-354b3e267bfmr956262a91.19.1770345159460;
        Thu, 05 Feb 2026 18:32:39 -0800 (PST)
Received: from [127.0.1.1] (61-221-120-110.hinet-ip.hinet.net. [61.221.120.110])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b64a8a9esm158419a91.1.2026.02.05.18.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 18:32:39 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 06 Feb 2026 10:32:04 +0800
Subject: [PATCH v4 3/3] riscv: dts: spacemit: Update PMIC supply properties
 for BPI-F3 and Jupiter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-spacemit-p1-v4-3-8f695d93811e@riscstar.com>
References: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
In-Reply-To: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263212-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DCCE6F95D6
X-Rspamd-Action: no action

Use per-regulator supply names in pmic "spacemit,p1" node to specify
each board's power tree topology and match the updated dt-binding.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: No code change. Updated commit message to be more precise.
v2: Added the pmic supply properties for K1 Milkv Jupiter.
    Updated the commit message accordingly.
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 12 ++++++++++--
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 12 ++++++++++--
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 5971605754b3533e1cf3713a27c48448aeb4d96f..444c3b1e6f44e98b8b2fd5e29820c5c75282abe1 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -190,7 +190,15 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
-		vin-supply = <&reg_vcc_4v>;
+		vin1-supply = <&reg_vcc_4v>;
+		vin2-supply = <&reg_vcc_4v>;
+		vin3-supply = <&reg_vcc_4v>;
+		vin4-supply = <&reg_vcc_4v>;
+		vin5-supply = <&reg_vcc_4v>;
+		vin6-supply = <&reg_vcc_4v>;
+		aldoin-supply = <&reg_vcc_4v>;
+		dldoin1-supply = <&buck5>;
+		dldoin2-supply = <&buck5>;
 
 		regulators {
 			buck1 {
@@ -221,7 +229,7 @@ buck4 {
 				regulator-always-on;
 			};
 
-			buck5 {
+			buck5: buck5 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3450000>;
 				regulator-ramp-delay = <5000>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 800a112d5d7054508f03089f0e2adb9965879ebe..e2702a781734beffb331982907a12b20009e37db 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -100,7 +100,15 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
-		vin-supply = <&reg_vcc_4v>;
+		vin1-supply = <&reg_vcc_4v>;
+		vin2-supply = <&reg_vcc_4v>;
+		vin3-supply = <&reg_vcc_4v>;
+		vin4-supply = <&reg_vcc_4v>;
+		vin5-supply = <&reg_vcc_4v>;
+		vin6-supply = <&reg_vcc_4v>;
+		aldoin-supply = <&reg_vcc_4v>;
+		dldoin1-supply = <&buck5>;
+		dldoin2-supply = <&buck5>;
 
 		regulators {
 			buck1 {
@@ -131,7 +139,7 @@ buck4 {
 				regulator-always-on;
 			};
 
-			buck5 {
+			buck5: buck5 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3450000>;
 				regulator-ramp-delay = <5000>;

-- 
2.43.0


