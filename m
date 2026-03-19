Return-Path: <devicetree+bounces-277691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBPyD+zOu2mXogIAu9opvQ
	(envelope-from <devicetree+bounces-277691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:24:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB82A2C96D4
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6540301187D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28D13BFE2C;
	Thu, 19 Mar 2026 10:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5qUXGTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4AF3A16AD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915732; cv=none; b=rLRuH6ytDZ1EUE/ClL5B2PW64UBEDRUkwbSi6rb7B8/r0tRvjCHm8N1gtWnY0wv51LECpSY4t+n4pkjWNi/PS1eo+mhkiT8EiQVOKTW8h6Cc2XkBw7ks1c5IED7TMiilhBrR9JezNDOOm2vbUiLJrQ44bO0VwLmsO92W4ie2SGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915732; c=relaxed/simple;
	bh=4GokRgSrCaZllNf6Z3ukfoFoT3j+3PL0Wh2G7Gp8ido=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VZ4/4uUaryS+Y/hu0J59d81mcRj1sIiJZJMX6QztRkRPm4cI+ncEeEQF3hi//GsXpifRUpflG1sepgxQ827ukleYS70itBtD9yNc0rQiI99qASYw/WPuAJJ/hwp2sOphpAu0WkAQiNJAW4QKojGbcdx3pwuRAQ5e5BF8QUj7BtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5qUXGTY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43b4f48c47cso563199f8f.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773915728; x=1774520528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fEgrB2T+whJlk9Y05dXgdk6oVsIuY+KNuAhr1hMqks0=;
        b=B5qUXGTY1e/nN6DttFKmx3bml3YofdSEXbok+K3P93qzjI4J5/GaKKR+kxM/SiGO9c
         4MNl+0KXHFFWaIPsIMdZ7UsZOZ9RYVa+KtL/ylHrYhr7VIVgtwn30jd6Jg6MOGlHiZgr
         E9m8paRKlLB3N9z05u9r6XlMr7JsbX3Qjs61rZxlkEeueOKDZ77pZ7ZOzEvuEwOVu8SC
         jqvxfZ2qWcZr41LMnBIsjSjwZhhFJuLMrJ3xH1ftpeMm/cvkEsCxgQxWaoGsp17DCFug
         HVE2gWc3WTFZW7shDmzRxIvlws5Hi6yUPn9b+2U61ZKeFVBxC0Bf54k4gip4h53Pyz8t
         oQBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915728; x=1774520528;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEgrB2T+whJlk9Y05dXgdk6oVsIuY+KNuAhr1hMqks0=;
        b=f4PEDa+jqLkjD8HCMiQC5edvudVRrQySBqjZu8gK6xPPQEXbASRvNje3cn1nW1oF2d
         sE+b4M1NaBoSqmnHvtAPlmEvqXefOZR98QR+pSBEsoF3RhVTAaVFLZuAO7uvAA6uz4rR
         znGB2SfzrO+yOjKQjbnqv92P8UPQIT0d2lhGyyqi/m/GRewotV79C9sYyy2ncF4hxHM/
         ts5OAot51FlKm7lzQdOPKarSgROSa+ahOzPMhC6oKTg6qko0ww9YC5YM7dVPrasQZpha
         iKoO2QtVZj9nW/7NbZCMA4C6gm3gNUkGKuVn9BOXoBRp2LW7nvm4lHF9muhoiAmIM32C
         Mqhw==
X-Forwarded-Encrypted: i=1; AJvYcCW01GmCWoOxJ6etCb+8lCtZOy1+xgziM+uVEFL2NtRM0PgFxCatee146p3Lezco1ujvq1ArBwRQMm/w@vger.kernel.org
X-Gm-Message-State: AOJu0YwMm6Xn73SXB9mFrOaevzJAb9fIocyTUmIhAVKF+RF6NkozT+gf
	P0f5aXAvxYMyixIkwSdgtzGXUDSeAddAjeHiXDR/hdlME8vdscf16Gg6
X-Gm-Gg: ATEYQzxWO0wXWYUwycsZsLjkHkBOOAJ9d5oC8GPe0zBfDyUTcj0YbX5OwcakbjYQT2Y
	YHhcoJEZJQHW+1uvx8qZash24jr7aWuFmRJ/A3Gkzn1V8s/sgm+VW8N7EHWRXuMwuOZBWpu5Xo7
	jSMZpGM7S2K63Fk+0rA2DZZBzPz3FDLYwHBpsJr4+1LyE8VJE39pe84LAiwe+ULZOB0Qq8ne6NT
	c+ONpsXwsebdAf1dN39A5hxJRuSbH/sZ/Mo6imGGq/KQF7ebFDulfrFGRBi8pTPkgH8sN/5E190
	IH85863ju3infL+4Kdot1+mblKYhLsoCmqyDTTrONWkq94ClBCB01+t+C0LemjGaz4MByRrMql3
	JHCix1BJwZeE8iTz+t67Nda6GiJakQz2/uktI1JcPrRY3VMvwBu/BBaZupT451XnuP4GxM2VzMF
	+iNIK2oLsRIezPfGSxnEX6kyg7wPH6tLwspLswGHiVV8kZrL83
X-Received: by 2002:a05:6000:3104:b0:439:caf7:a5e5 with SMTP id ffacd0b85a97d-43b527c54eemr11777499f8f.31.1773915726959;
        Thu, 19 Mar 2026 03:22:06 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51852a64sm15352271f8f.14.2026.03.19.03.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:22:06 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	shawn.lin@rock-chips.com,
	MidG971 <midgy971@gmail.com>
Subject: [PATCH v3] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Thu, 19 Mar 2026 11:22:47 +0100
Message-Id: <20260319102247.32260-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,sntech.de,kwiboo.se,rock-chips.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-277691-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.926];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CB82A2C96D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
pipe and reference clocks, matching the approach used in=0D
rk3588-rock-5-itx.dts.=0D
=0D
Assisted-by: Claude:claude-3-opus=0D
Signed-off-by: MidG971 <midgy971@gmail.com>=0D
---=0D
=0D
Changes since v2 [1]:=0D
 - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)=
=0D
 - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks=0D
   override (Shawn, referencing David's patch [2])=0D
=0D
Changes since v1 [3]:=0D
 - Drop phy-supply approach entirely (Jonas, Shawn)=0D
 - Model PI6C20100 as gated-fixed-clock instead=0D
 - Wire reference clock to pcie3x2 controller=0D
 - Follow pattern from rk3588-rock-5-itx.dts=0D
=0D
[1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971=
@gmail.com/=0D
[2] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee4717=
7829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1=0D
[3] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971=
@gmail.com/=0D
=0D
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 ++++++++++++++++++++-=
=0D
 1 file changed, 20 insertions(+), 1 deletion(-)=0D
=0D
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/b=
oot/dts/rockchip/rk3568-rock-3b.dts=0D
index c5f67dd6dfd9..1a2b3c4d5e6f 100644=0D
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
@@ -553,6 +562,15 @@=0D
 };=0D
=0D
 &pcie3x2 {=0D
+	clocks =3D <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,=0D
+		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,=0D
+		 <&cru CLK_PCIE30X2_AUX_NDFT>,=0D
+		 <&cru CLK_PCIE30X2_PIPE_DFT>,=0D
+		 <&pcie30_refclk>;=0D
+	clock-names =3D "aclk_mst", "aclk_slv",=0D
+		      "aclk_dbi", "pclk", "aux",=0D
+		      "pipe", "ref";=0D
 	pinctrl-names =3D "default";=0D
 	pinctrl-0 =3D <&pcie30x2m1_pins>;=0D
 	reset-gpios =3D <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;=0D
--=0D
2.39.5=0D
=0D

