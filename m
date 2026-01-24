Return-Path: <devicetree+bounces-259147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFH+E+ZKdGlu4QAAu9opvQ
	(envelope-from <devicetree+bounces-259147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA79E7C7C3
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79C73301B168
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 04:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FFE244670;
	Sat, 24 Jan 2026 04:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="jkfKckYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320C6234973
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769229000; cv=none; b=gscUFK9z6hZn/V8IC69OYID5ccM/8oaOZoiwukH9gm7piltF4XhJfwI+ruzpVZ8icfWJSlsCnWEFUtbGot6rjPj5E9K8OU7jk8/iDubdhbyqLsVFg1zR/S3skACAGJQJiUmNkU/OT4ImiWvEDRrSmlx5xKxTz47pkbXOom+NFsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769229000; c=relaxed/simple;
	bh=TK5ifKaeJlK8Nj0+jenANH0Qw4esuw3msNPslmL5uvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Olw++kOrdYaUZe4ZNx3rkpiqE+1wJ0ZzaGJOf8E2g3Uk+s1YI24BwWZ4IlwaiFn7Rdlk39O2tJ0/ZtX/nrazJmIx3erZkx7mAajT9jvIf5rPBDwHWFQtjEunTnyB/OS7OeG74CknP6VRF5uXDeSMo9i/LitYb4LwMoRCDfaGkMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=jkfKckYv; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34abc7da414so1612296a91.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769228997; x=1769833797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9kHUxJVDnOE3Q1iGBfN9Iw/8AeCEWqX6h3aa/GV7h/g=;
        b=jkfKckYv0M4g9MqHCn3e29RUo4H1mAREj/cuEDitKHMoYh4uuSeRhyYQW5jiOnEpF8
         jLNmNkWJ01WGbxEp49Iv3BnU0UdTISaTPk3s2QiUV+0uMVjolHP/pjdro4PDLjNPsPhj
         lFtOdt4/73HOXughlBAVm+CNgT23xxWjpGEgrnybRazO0g1WRVtzqCNcvDAsi5F/jQh2
         H8tCvrycwMBfcY6bblApK57gzSr8jHAYlnXVxcshlLkZXPIJPGP4jneMsYabROLOCiVu
         Xhe1D2mJO2DxqrGvagDusPuCqqYEWG7ZZl0fFk3HM2BwGs/SSj0vlYjuE7I4I5KHq0ic
         jPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769228997; x=1769833797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9kHUxJVDnOE3Q1iGBfN9Iw/8AeCEWqX6h3aa/GV7h/g=;
        b=Estrzd9cDg7iW+UoxoyyI5/jWQlhuy75f1v0BnY0BLNfl+fVgcxOMs/bzLeU39Dzqm
         J0bTh6iemYEkTlT6/elPhfImH7kEKYgqINMJ2tWBYl6Fm6qCbO5GeVbkZHrUCZ7a31dR
         wS6D80UGcLkdQ7wdFwD0XD5GZTqGlm92DFlmijqYDX4JOrsJoJPtkYepkFq3cZWuxngI
         YatpHG8I411gQI3HRc+mxMHkaCGygQ8gVP+oidNDdjE+SkQxpZympsw5vRcJAWWiDVCm
         oHfd7O9NzRl3o1JbQptzP1TEBzVy0A6QuITyicJ+VwrcvICjfJU3rWGB50BdhTGN9vmP
         W8Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXfjlDElQZRlCImzWKom6jTSGXGo3wgkwTEWXNm7Pc4P5+dnrfbue6MLJVg2m/xfZRa1vQS8FKvwkaH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhvq565hsDiXDzhMJJVjsZPps7h0lWK4vxwrtpTS587fQLkpuW
	1r3dcYVQzvWn6mFktvpJW1IuZAcA8cJuNUC7ywVRlFmbHzmhbwV9vyR1vOm9F5ZW5k4=
X-Gm-Gg: AZuq6aIYoZDtawZ0gr0IvIEfM/dG4pAA/7m9MBFHcD/+BtXEBe1rZezuM5hQKhCgA2i
	0Rko+/yO6RGQIgR8gZryMhnv5L3D5ML/+INVkQeX+eTZzrsTh+yucJAkzjg7/bCyh693Lc0cr0z
	vtnQa+CHtk7/MUXZFVNLfHaoWuJoozESsCJnrc5b6Uoy7/wsXb9tD0gQWtVkZASZpMgA5CcURzB
	4BNf7iF4G1V2aQKgIx4PQWYPjd1umRb+8PHv8ss8EzeojbyPmdgjsd0KTXP/lplI2r7hw3BUUnj
	ZOLEsu/Fu+RE8xCkh/gREgoArUDkp3AMDamao4rpLlrQwV9wTDQaSQEY1QrhcWO8eeL14wpKt/L
	77Wlol5wv/Eb1zlqO/bvu9pL/p88Nu+SrvLcAtFkDmDAnMG5WWKF1+W8PtsOWgtCpoZJmlJOQcb
	584WuF06csxWOEsskCgYOqxu5mgNJruJQ=
X-Received: by 2002:a17:90b:4c4b:b0:341:3ea2:b625 with SMTP id 98e67ed59e1d1-353670285a6mr4633408a91.12.1769228997559;
        Fri, 23 Jan 2026 20:29:57 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871d51esm3469423b3a.38.2026.01.23.20.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 20:29:57 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 24 Jan 2026 08:20:19 +0800
Subject: [PATCH v2 4/4] riscv: dts: spacemit: Update PMIC supply properties
 for BPI-F3 and Jupiter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-spacemit-p1-v2-4-2c86b06694ba@riscstar.com>
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
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
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259147-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BA79E7C7C3
X-Rspamd-Action: no action

Update individual supply properties in pmic "spacemit,p1" node to specify
the board's power tree topology for BananaPi F3 and Milk-V Jupiter.

Previously these relationships were hardcoded in the driver; now they
are explicitly defined in the devicetree per the updated binding
document spacemit,p1.yaml.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Added the pmic supply properties for K1 Milkv Jupiter.
    Updated the commit message accordingly.
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 12 ++++++++++--
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 12 ++++++++++--
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 5971605754b3..444c3b1e6f44 100644
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
index 800a112d5d70..e2702a781734 100644
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


