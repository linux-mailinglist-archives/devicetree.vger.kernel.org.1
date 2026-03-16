Return-Path: <devicetree+bounces-275984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGiVC7yzt2nUUQEAu9opvQ
	(envelope-from <devicetree+bounces-275984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:39:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ECF295C02
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:39:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FCB5300B06F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2592434BA57;
	Mon, 16 Mar 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fkKKpeaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB79134DCFD
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773646594; cv=none; b=BUD0eyg64TbZY6wJzVB+6dKFfKg0gwUyTCoUiKUurL2LBxN2XqUM3ljvCfNQzR9espG3egG1zjLHptKuD9aBCIMk/yHWzlTF6q9Y1a8PqP2CnuDnGeAEe9C1NTRGKxUgpKs6LmrWuzg47sFx7yyV79biyOoxlu4wU8K2u3aMuSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773646594; c=relaxed/simple;
	bh=uw4k2iSJmRFoXKdMaPkQ67KqQXfoM2gChCPohiNgptI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bnhf4hMnj8UAKbVsWBiKbrcjjRYcgqe3vTCek1tQ9ufZDJC3hFbdG7eHMQr8ck0iICu7+5BvdaVDmLt4c1+074tCAqC1BDOTpU9/1VWe/4CBSE+66ul67kPmWRruNPiWU0uZEx/VrZS0OnOhbjPX+Abmxey/qwnLBa40syTztpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fkKKpeaA; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-82735a41920so1536698b3a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 00:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773646592; x=1774251392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uQQeZONwKwCdPNSwQyhXsapOBL2pKbGdyOesouYcZjk=;
        b=fkKKpeaAkgUcgBpVkNmNX0IBPWNFrHEesmARYaHvsW6ETQkkJXglWY1BR+SwKbzBaR
         1yjKivuC5vOaqmHk9ItsffAqxuxPg7wyG1lolb3/wrF/6uBdLdPK764hNdwafIvZw56g
         T9XcercgNU1D3makReOqguaxTvIOU4mcCoHdRvVx+WcH/QjDEp3htMJA3mNJmwtki5cg
         3PZqxHnYQMDVpzznkFUAq2sXs7HLzg0z45eTWlEEXu0uSgh8kOTNR6kQNS2FKTcS4bEH
         bihmQzxIwKfgactAvFv9rR+aK1dGxYVPvldHQUN4tG3P9tI6UMNS9Bc3f2zBOXexca2p
         0nGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773646592; x=1774251392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQQeZONwKwCdPNSwQyhXsapOBL2pKbGdyOesouYcZjk=;
        b=Aq7JGDBcqiJBXKUqIApLzrMSrutK02L6/3GgF8Q3M9CVvzuQCz+dKk7IfgIgdBW0qi
         ZhFnW9WjCCeCKPh9s1Jtzes0nzPmKOT2i5dHwEUEDUbjI20Yy/XcfGTSrN6RocKculIs
         5z5libRsjvn4E3P61Rqbn16K1lz1I4tl26O98CsCcOWLzaWhqnfcmB/y8C8+nhXIw2gU
         qwK23GvEHlt6k+T7aoXbt6Ko0F9O6sp4Dn9LtHLLNK5LPlnROM/RAkr4TGBWeWsJNWMB
         6VxilFelQsDSjZ6R/OjdB0biGVeTN1x0E+8UBrqk3aK92DC3TkO9TRMuinnsjsV2W2tj
         K5kA==
X-Forwarded-Encrypted: i=1; AJvYcCVGAEoqUisWqorZHVedPGcuZCz0eNzrufn8Mst4XuYiwzaDZwIimtXiwa820+MJH9Z7LdsYT+S/9hHS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyij3wHl6q0jF71hCb/K1me0NYt8niL4PgiwlgRjRJ7Gh5J0NHJ
	MuQdLS/CWTtBEegHWgXSE2+3KeB6BCYg4I0XVG3WALzYU6mncvg+uP1B
X-Gm-Gg: ATEYQzxWbxWfkv09yyv0DVFzocPG3UL/J6m6uCetoZdGV5y88jENFn7Gx3mI+Kfsrvq
	HOBPPSQAsfHOcHhVma13c9OfvqY8TlWkUdSJ/kYx5ibOeT2JkN0cxPudxNyMWJnt8pB/22yFnIA
	/d8xFsKz57AuhVahmHk3bFjT+xgV0YM4J7f+8zqRlqUIOYtGW+z4S87iNxKgEx8NgJ6OL0spd1O
	38VaOCNOI0SdtexL07Ki8CDfAHPf9gHTyHzmf7I/AOv5gKCuv4A5csERURohNMrDxh4Aq29W17v
	/jaKteyQ3JaFQ+BwGS/4XQgyztvDdzxmIL4XWK8sASnclMY4sGt7NkKgryf1KNyJHlRPoWl+KUm
	yEFzh6hqlPOvpD4omlPIuyzsLDgIkuN3elpnctreawZlwf0RqvgdyO0rTTxXcoxSxHZ3RIxv7qJ
	aslO42jn+0+jT805adnErM
X-Received: by 2002:a05:6a00:301c:b0:821:8ea4:480e with SMTP id d2e1a72fcca58-82a197046d3mr9943668b3a.10.1773646592298;
        Mon, 16 Mar 2026 00:36:32 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07244071sm12933375b3a.6.2026.03.16.00.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 00:36:31 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
Date: Mon, 16 Mar 2026 13:03:55 +0530
Message-ID: <20260316073621.39027-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,rock-chips.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275984-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,radxa.com:url,rock-chips.com:email]
X-Rspamd-Queue-Id: 87ECF295C02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supports-clkreq and the corresponding pinmux configurations for PCIe
ASPM L1 substates on the Rock 5B, 5B+ and 5T.
The supports-clkreq flag informs the PCIe controller that the hardware
routing for the CLKREQ# sideband signal is present. This enables support
for PCIe ASPM (Active State Power Management) L1 substates, allowing for
better power efficiency.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Rock5b schematics.
[1]  https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf
v2: drop the clkreq pinctrl for pcie3x4 as suggeested by Shwan Lin.
[2] https://lore.kernel.org/all/20260311115502.7353-1-linux.amoon@gmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d8694..bf4a1d2e55ca3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -468,7 +468,8 @@ map1 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
 	status = "okay";
@@ -476,7 +477,8 @@ &pcie2x1l0 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";

base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
-- 
2.50.1


