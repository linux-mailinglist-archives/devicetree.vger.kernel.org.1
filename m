Return-Path: <devicetree+bounces-262651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIe1FA1Jg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:26:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A22E6669
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F186302BE08
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56479330665;
	Wed,  4 Feb 2026 13:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DjiMzs4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3392773F0
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211408; cv=none; b=BX6T1t607gJO0pHnxCzLyet4AmxzfnlbD8IkkuAvpaOJZYEdiH/aUr2xmk8oiwJ6ukfG9Ph5GqZ8NMHerVujl5WFyUKYeGZ1dIM53WJGvCF+aVMNhRvaSrj5ONtMdWwvIowNZrHnGwwXED/S9GXAEHwv0MORCpn4wlD/Z5XyQnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211408; c=relaxed/simple;
	bh=dYfxs2Td9g+O14L9nwSe0vjJoQdhEaPE7BaxFIJccJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T3J8KlfT/L9oZ4+MXft2dKPmFFrmMaDgbgUeQVOWi343dYMC1ty+e6ob4sXn2/72UrykTzTMJEcMpOJWg/cTW1sYjhhBmtL17JR4RBU0cddMSOQj+oIiQnTIzxjCfDgKN9dFNYbyTV+ZUOtw/fd5JSnMgastfokFPaHauMrtsi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DjiMzs4P; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b729f4c154so4260821eec.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770211407; x=1770816207; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T5psyRp1huVkUGw/d5LRBcHs9VkHziv5lBIU7n3+Lhk=;
        b=DjiMzs4PldNmCRNL5FxS82ixr4DUM9cMRgDr2c8wr3RYEOu6NH4nQklbivKT0c1Gmi
         JKsiY82h2HOYFPJ3vo8q41eIbDJTx5eLUuyMU/wk/QeOUv0N1MWcb2GdbKkTTFXaFSiO
         0SfEtok8OQ6hyHcx4A+2zMNccEiWUQ/tGLs342jwRQg/b3yKPtoWZBeIbdph0Dc27cGw
         S9eMg0TrCS/ljO1ol6gdwV8WWW4/NdFhltOsw9cElM1ZrIUGEAfbPRq/6zjiuWWcHupl
         XNPgIu+kDYx01pKNPbc1iM9KRMouAtphhTf04LgcvBWmIGJMxCIfQtYEw2s3R1t+jSOe
         Sipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211407; x=1770816207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T5psyRp1huVkUGw/d5LRBcHs9VkHziv5lBIU7n3+Lhk=;
        b=kneXa484+HiuJkCj3yAcR/nqBdzXkAUA9AC+3e3eGottuLGsbH0hp0wN84mYj1jDHo
         Kxsww/cza8NJadDAYWsjqr1nOahfM++r+oQV2eRTUhqldlzz+Ax0NWxAnq7djxzeUXJA
         FKCqKjlEFtcEixhdoPvsVHtEqRDuIsfDUu+sSREOGp/Wy1AJdntr6RKW48MPaJuP/LZ8
         xkjcQTF0Ld8Opcl5IP2LItKgsyDEpKpyguhaKa7Yh1lS6Of7YJsQ6MYnqzawE1iYnDy+
         CDuWUfb8O49t2IUArx8zZz6ubEwuLvxZ5oKC0obs7Q1GU6m+27nfEEmPjMXbHgWYwVAH
         VBWQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5m3WdwESw7qz56hybZ8YfH90dVaFhy1OVWqOARm5eVLFzcQ8/vERfMzCBbI6p/yreK9O6Xh/7tLNb@vger.kernel.org
X-Gm-Message-State: AOJu0YwH2c5GE4v+rPQ6GCJ1plaPraJdWQ4ZEikjOz1AsLIwZSgEGnR8
	b8OGdBiYbq122Yz3VMrb2Mv792RpsB7eutvD3Yhutby20I5K6EITyW4YgT11pkUFArA=
X-Gm-Gg: AZuq6aKx71VIo9nn3xUL+MMRMgm9EwVaFu1HxvZu+9irAbpuXkd/sh4eEv1BqvPRV8p
	YOTXsQ88dQxFuIuxFvUzvrTb4oac7ihKvnyJ2Lyzl7gl26ApMoiku+XLOdH1A1iWPh80keVkbEy
	4cRV08oJ7qdk9R1Ck0QijwVwJNFF+rOGCkmuxxMvdgI7g9WPxRnAO+LcnGTngBmoj57tXqJpcZT
	Ja4+0goFOK/u2WiYD4E284UOYVndirr8sqfgUCxekrsMggMWpSeqfLzi3NTK91HGbJee4Z7hpR+
	VmWjKgTHJNzsYo3W4rc7e2vCBn7lByLVNow6y5SC25LXNi99Lzwxg1givmA1ZauMB5c5RWarjMU
	KXQHvWRxj1Mvq3O29YXxCD8DxVOur9alzXQYYzEZuYdiMu8DNEBihPvIMc3g2UsDVCb1+Ic8HUX
	czs756q3QyTUa+vEvTxDyPw6hkUahJIRI=
X-Received: by 2002:a05:7300:dc86:b0:2b7:1d54:87e5 with SMTP id 5a478bee46e88-2b83299949fmr1330156eec.13.1770211407258;
        Wed, 04 Feb 2026 05:23:27 -0800 (PST)
Received: from [127.0.1.1] ([2604:a840:3::303d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832fc1d50sm1416731eec.27.2026.02.04.05.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:23:26 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 04 Feb 2026 21:23:03 +0800
Subject: [PATCH v3 3/3] riscv: dts: spacemit: Update PMIC supply properties
 for BPI-F3 and Jupiter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-spacemit-p1-v3-3-a894b3057026@riscstar.com>
References: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
In-Reply-To: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262651-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email,0.0.0.41:email]
X-Rspamd-Queue-Id: A6A22E6669
X-Rspamd-Action: no action

Use per-regulator supply names in pmic "spacemit,p1" node to specify
each board's power tree topology and match the updated dt-binding.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No code change. Updated commit message to be more precise.
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


