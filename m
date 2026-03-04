Return-Path: <devicetree+bounces-271053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAVaBgw1qGm+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:35:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D182007FA
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1209C310CC12
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5266836C5A4;
	Wed,  4 Mar 2026 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ERSjYRpo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7B636AB6C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630980; cv=none; b=d0dlLQchZ15qh37NXm+ORs1Iyw4RUEwREj/QlghRl78aG3VbGbX2t1mZhfSQynPqSIM8rtXbOs17kPUS0uPHJgBDxDcII0ly/zGsVUdkF+ANgB+AKtWyoUu35yWu2+4IkIUI6zvxiTBrHocFl1AgkEEHq53Z0zcV+6U44HH2Uho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630980; c=relaxed/simple;
	bh=oxOnKH95/GBhVd6q/7Mffq96PDJdq2BWLCnXONslloE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cKho4A2qrNxd1pe4jh27RDgC0dh0hHoDtMpVnE4QXBA9Fj+aihuQ9fdL7lCZ70j6Rr9BqiD2WrejWHWNAqxMcn7+0e0RQIpOcrCug9Wq5aEaVSR5y+CgIsNozWa8f8vCZHXXT9ajeyPa2SLbqLGTAetV8lg7FdHvokKKS9cq3Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ERSjYRpo; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so80276945e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772630977; x=1773235777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mg++I7PIn4dt5AFv6kcvsSJIHq4QLe4L7ARlFnSbcA=;
        b=ERSjYRpo9v+ntsM7Uh4UY44hUwNZ2DCFvrQ77+dWbeeMdWPxv+e+jnl1/YNeXDg2X+
         hlc5taVxSkf2kZbRuZGeFFfnDmDS0XID3oXl5elnjzuaUytT0fdehRXA5fAlpXuIa10N
         xxbtDc0jPITgfT89Mus6+6cBRy4OSpVdhL3UyPewbdW+zTrt1l1zPBWAHVEmySGwiA3f
         USalwaabQ7C2meIhKT5MCH7ItbFR7/Qnn/dprXQ5yaceDHqX7pN1DpwAjs65Azr2LtIZ
         mw8R6lrBQu+LKp4p7fFJME7MP7K8NHW8VBpB7q3pJFHJHRl+cnTzMpsT8vBXaxIzv1Jg
         pNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772630977; x=1773235777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8mg++I7PIn4dt5AFv6kcvsSJIHq4QLe4L7ARlFnSbcA=;
        b=q6seztVBF7gztIzuAnZGrTyb4ETSlfLwVH+xXCEvV1F7dHD5EfmOnJHwNzxKzFIe+d
         qUp1qHBbCz7jMUNdWjHwzd6wraUw1FNLLRzxBeLmuxTYLvKKfJZo71zcbCwS+3SdTEeB
         v+gELR6u2DknbX/RrqygDl9Eul51rghr5DHYDPhU1Mbev5tay6Tj9+3FqBlA2p4d8jBk
         nSUc8Sqxm7c0Y55fHsLeSbYo5Qml0nRf36y6PwRkkD6qU2P22+ogCpzl3IRP4gP+XQwb
         nPbpSLTMvBPEU0ciuEhnvffJGuQTyaiHi3U+t2UJ584R+3Rc+e0Y4AZn7JpXA+52I04c
         ZPJA==
X-Forwarded-Encrypted: i=1; AJvYcCXIKyFWtjLYQMYisdpohrkt2x0cH5hBQEyIdeND79z20u4ZP6lQjJOqQqv9I6bD1edui+L/nMhGYGFi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8HcFv2+6hNnIxFveL9OLbCAEDrMwPNpNLc/BWwSbTtQihD7Ta
	cfOL+E5EEhKtaLiYz7g0k5GIZLTSyzn4jauvxnCyGUGD9A7wohTvrojO
X-Gm-Gg: ATEYQzxzlOoLPYSznwnz7zy9Nydtmkp4J7P0Qcigj1KROf9dqOEXczV5PcOogP+M4cN
	dSev6SdbiY5fXGFUFAspWiQBS1n2xvBZyof+tjwV8mrwXnm9HLSk5iKMkiPbFlNIbyBDXN/V35V
	0ao3b79HiiKORHlX0g28LbioufVHx28gaNz8cLsiS9t3SllmKBts/Kijq+YzYaZUMC4qXC6fr9q
	q7P6ic0XC952D1IZc93lDjmaAbOGZ4pWcqQ2bhrS44l/N+/BX8TbBltzJjt371MtC1tNHWX5iXK
	q9V6dwblCO+P4QNQ6g6eKQvxTmRGyHIWv9VNtnzwoZ2iER6m8CwwbyFyhIAgcSt8H3A8UeveQ/j
	C7Tlx8Ama/tcEZ1opUXtw0o60cGIfz50Vdv+w35ZTNexKqiEIKDhozniPyYBtfmi1v8L/KE1OwB
	xSDuMyI17fH6JCarZ7unD7aRMBFflU4P8iqFAn1a2EVmfxBBon
X-Received: by 2002:a05:600c:6098:b0:471:1717:411 with SMTP id 5b1f17b1804b1-48519888e49mr31558475e9.24.1772630976778;
        Wed, 04 Mar 2026 05:29:36 -0800 (PST)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851887fa9csm51283605e9.9.2026.03.04.05.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:29:36 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	midgy971@gmail.com,
	Claude <noreply@anthropic.com>
Subject: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Wed,  4 Mar 2026 14:29:57 +0100
Message-Id: <20260304132957.684616-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260213151452.535527-1-midgy971@gmail.com>
References: <20260213151452.535527-1-midgy971@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 82D182007FA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,sntech.de,kwiboo.se,gmail.com,anthropic.com];
	TAGGED_FROM(0.00)[bounces-271053-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to=0D
provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.=0D
This chip is currently modeled only as a fixed regulator=0D
(vcc3v3_pi6c_03), with no clock output representation.=0D
=0D
The PI6C20100 is a clock generator, not a power supply. Model it=0D
properly as a gated-fixed-clock, following the pattern established=0D
for the Rock 5 ITX and other boards with similar PCIe clock buffer=0D
chips.=0D
=0D
The regulator node is kept as-is since it controls the power supply=0D
to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node=0D
references this regulator as its vdd-supply and provides a proper=0D
100MHz clock output. The pcie3x2 node is updated to include the=0D
reference clock, matching the approach used in rk3588-rock-5-itx.dts.=0D
=0D
Signed-off-by: Claude <noreply@anthropic.com>=0D
Signed-off-by: MidG971 <midgy971@gmail.com>=0D
---=0D
=0D
Changes since v1 [1]:=0D
 - Drop phy-supply approach entirely (Jonas, Shawn)=0D
 - Model PI6C20100 as gated-fixed-clock instead=0D
 - Wire reference clock to pcie3x2 controller=0D
 - Follow pattern from rk3588-rock-5-itx.dts=0D
=0D
[1] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971=
@gmail.com/=0D
=0D
 .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 +++++++++++++++++-=0D
 1 file changed, 17 insertions(+), 1 deletion(-)=0D
=0D
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/b=
oot/dts/rockchip/rk3568-rock-3b.dts=0D
index 69001e4..24befc9 100644=0D
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts=0D
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts=0D
@@ -56,7 +56,16 @@=0D
 		};=0D
 	};=0D
=0D
-	/* pi6c pcie clock generator */=0D
+	/* PI6C20100 PCIe reference clock buffer (100MHz) */=0D
+	pcie30_refclk: pcie-clock-generator {=0D
+		compatible =3D "gated-fixed-clock";=0D
+		#clock-cells =3D <0>;=0D
+		clock-frequency =3D <100000000>;=0D
+		clock-output-names =3D "pcie30_refclk";=0D
+		vdd-supply =3D <&vcc3v3_pi6c_03>;=0D
+	};=0D
+=0D
+	/* PI6C20100 power supply - active-high GPIO0_D4 */=0D
 	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {=0D
 		compatible =3D "regulator-fixed";=0D
 		enable-active-high;=0D
@@ -553,6 +562,13 @@=0D
 };=0D
=0D
 &pcie3x2 {=0D
+	clocks =3D <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,=0D
+		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,=0D
+		 <&cru CLK_PCIE30X2_AUX_NDFT>,=0D
+		 <&pcie30_refclk>;=0D
+	clock-names =3D "aclk_mst", "aclk_slv",=0D
+		      "aclk_dbi", "pclk", "aux",=0D
+		      "ref";=0D
 	pinctrl-names =3D "default";=0D
 	pinctrl-0 =3D <&pcie30x2m1_pins>;=0D
 	reset-gpios =3D <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;=0D
--=0D
2.39.5=0D
=0D

