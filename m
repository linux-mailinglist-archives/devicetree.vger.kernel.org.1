Return-Path: <devicetree+bounces-274033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGd6CjVYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:55:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 723A5263397
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09F5930156FB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21943DDDDB;
	Wed, 11 Mar 2026 11:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ALZZiaqh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8206D199385
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230114; cv=none; b=pCGOSAez2d+8Gcq7QoOFy0s4dQKI0z0KMGrBF++ebEuPyfGoXKRPWGFe/Iadv8DLmrJnQnF/WmI4fvHai08B1e1fIQELsrmIZi/fmCjrIXXEyUM2tcQHwurvxJkKF4ZMx80zD4upwpXa23JPA+VERsyZx7/68MEf/d7t7halqFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230114; c=relaxed/simple;
	bh=D3H2n8eDK8yJykuaw8f5oXDSSGtOXEXmSSaisfcxnNA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VRwm9lnMGMfsBNTlG2pWPSgWqn9pvikyKE7lhufbmf7oUtuZp3Xl/SBp3uIG15JwnFbuQWEj4WRFaUiSCTZW5BtvkK0MYUEO7oJIt4PauxhxPNwVUb8bU2UqyZB1l+mL9pbqP+PT6QEvRAqq8zT5qqygY52hkIz+tjoNuXBjb24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ALZZiaqh; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3585ec417f6so333378a91.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773230113; x=1773834913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tqpPz9P0T3i29nFtjm5Cg8H+Ilq/OTzWCRX5bsan7QQ=;
        b=ALZZiaqh7/x7PkFOh13By2PS/bNRQ01Hr8W6yGp9bV5zuptsf8tk3wA1/VhNCazLcp
         Ap5ZV0EEVE1r87BwTl1vB3XgxT+hseIsR6OzGwmpzSwlRqHeh3t/GYyipm+XCDOv3xKL
         Z9XoSCwj9TGDcISSLeuQSj66mM8NLtj5Y8HHi3LFOPByUPizHF5ispZfqYB9U81YLVEn
         SSIXDrekqzu+tWHZfknxkje7XWWSTSsRKK/Jx0P6HdsX0wc1PMq41241RrFTkXiH4zqQ
         IAn9Oy2M/6AtItBfpXpnax/kGYWyHU8zSk/UnkF8kVAdoRgGHCyecHRy8VeWoOwYUfsn
         TdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230113; x=1773834913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqpPz9P0T3i29nFtjm5Cg8H+Ilq/OTzWCRX5bsan7QQ=;
        b=Fy8D96hPZJqjT98+XztPw3PSTl44puxHWY61v0vUFxNnBQ1f8S42fLFmZNXeebx5B6
         H92amJGcqOJ2bm5gs/nrWRSf6MSwFv/kGtYoHt4Dz0+6at5avpoK+haK2P5T7MmD0hrP
         6/NK+J856Qr0bD9GVJOW8TSQvlSCWDFXNmTANCo6tFtBwvatWnHMmBVnEypc4eaM2EqS
         sV/SiAeLhKz5rkJ3Aa5QCcmoBwEt1casCnhm++EESdFdiRFTplp4IT4CJRJKo/pmuZ+4
         ghMncxLa/pAHW+DWqEQww0xDbQslfkK7J/1YjpcpZusfexL2zSoLAMs/cWr2h26yZoPI
         CHYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLwO9ejlHkXJBUaU2G3CeUnZjlD8/uhcW8LW++RERMVHEwlfBS44y46O0k8ygSOTvOZhnY4qPPT4Ly@vger.kernel.org
X-Gm-Message-State: AOJu0YxLcNoHT53m0pQ2fwKDgfYSTMmd2sj901uoFLYWTcIHWzIkV+xk
	c5Gk+cEJgoWoXdmsHW8I41H4GDpgn9WqwfkqUuD4wxydPnOOYgyUNGHg
X-Gm-Gg: ATEYQzyOL0Bm5gZROKBWOf+RODtEBKpjNw74m59IhH1wSbrNl6XobFPB5NQlUMrVW9T
	/FIh6cXlnQbcFA6Iosl93bWXFJ0esWR3PJxHtMIYHV15yWUN6YbTt9Pe5B3HkCUirsbQKtJ7MaY
	OFJH6x7682iHLlFthsEmf/ySYMQDeOdLQcaMQRwLUKxg0tNhl243TNXznEK0lZubc9GWI1yObFP
	1EHstlpFYXNwrQAMEg7NGcQPxOJ2+/9Ihok4Eh8JWzUAIbqxN4AS5oQ35iDN9PeZwLGuzdYkwHu
	r0a5VCUjWAp2hxOpaBdCjjLxZlwBbncckvQtrNCExDIpx3j4jCHBMkMjXc45Dz/ExdrzihP46v/
	2hQY3wvXVwYRp32BqUKt+WzIhOV6nR71reGP49sL8/bYrHZg1Bj9cyRHQsNPr8pyFA6RRzNIKNl
	cZGEJA5KQramY0CTNlGXOmUKzJOCXgNVM=
X-Received: by 2002:a17:90b:2e52:b0:359:f5f4:7740 with SMTP id 98e67ed59e1d1-35a02830179mr1816790a91.17.1773230112844;
        Wed, 11 Mar 2026 04:55:12 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f01004f7sm5731790a91.0.2026.03.11.04.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:55:12 -0700 (PDT)
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
Subject: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
Date: Wed, 11 Mar 2026 17:24:30 +0530
Message-ID: <20260311115502.7353-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 723A5263397
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,rock-chips.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274033-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,rock-chips.com:email]
X-Rspamd-Action: no action

Add supports-clkreq and the corresponding pinmux configurations for PCIe
ASPM L1 substates on the Rock 5B, 5B+, and 5T.
The supports-clkreq flag informs the PCIe controller that the hardware
routing for the CLKREQ# sideband signal is present. This enables support
for PCIe ASPM (Active State Power Management) L1 substates, allowing for
better power efficiency.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d869..668b19c05f7e 100644
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
@@ -488,7 +490,8 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie3_rst>, <&pcie30x4m1_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";

base-commit: b29fb8829bff243512bb8c8908fd39406f9fd4c3
-- 
2.50.1


