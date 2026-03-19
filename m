Return-Path: <devicetree+bounces-277828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCQ8HscNvGkirwIAu9opvQ
	(envelope-from <devicetree+bounces-277828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:52:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D809A2CD37D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 230D6319B064
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86633D646B;
	Thu, 19 Mar 2026 14:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZsDc08I0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394973D47C2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773931831; cv=none; b=hnVIBye14cDvwjkyrrFCGvup7r2ZahpY8I57pRoR7VGWVH97V2kq8Z2BHgfchbEHOCZO2Romr665UkGybINyC13fcMIV3rjcLTSaVn06QXazZCT0VmrPqzjMMi1jTLgZ3BQCIBEi4dvuUBo51dUjmiDXNtKc7nknKgv6YG4oJPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773931831; c=relaxed/simple;
	bh=V9Y/KiRKm0Q2nZOxq2gO5P5vBXdG9g7AHdjXOu3l5Ds=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SqVGygOy32aFGiq45tQSLMvdYxsmZRmoXYY8T/BUW9gx/9ChwkTbq6w5l4Gs1yOrdSJdR9LZH5bYEmVvKnttmnfSwppaVre9yygAsn+q/GFC0C7m6iwGJD/J4SiH+CU5t4i/Ov9zl8/33ramM1abbUM++67gdcn2CmKkaHCYXNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZsDc08I0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so8167925e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773931828; x=1774536628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8e2Ktq5sJeaHDP/JJnHCRh3f+LsDBElFuTwB6/IOVF0=;
        b=ZsDc08I0rFYb4K3Irvn55F6SxJjpMd/xDXJ11IrB0XYIU7ueMwm8jJuFoRfOv1xkLT
         I6rcY8Z8EXCAhh0WxML4IsMfH7uZUD3BVA1ldhUhXG/ws88xXAPhGtZhW6LNc5HNbiZk
         ZVJWFCcIGA2hv1ZRitiLOVPUzqfeegHwT6NSX8DS4tYtlN/CJRXE29XxITSfFmeOVa0c
         +tlqD2AUbWdG0ddkbNYi4SO/Gb24Jy+JcMicGeoAuDydE6IrFuIEYhhufANTxrTVU5yr
         9UDnhwu3UaG+Cx1JM4cUas1CvhrBiSmaPhGiimrpBzK00pY0s7LLO+Ih+MhNV4ERltdU
         0kTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773931828; x=1774536628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8e2Ktq5sJeaHDP/JJnHCRh3f+LsDBElFuTwB6/IOVF0=;
        b=B5RaIB7m+pyQVKH+z/Bpmp7VRYbqzae4DR1qfyPiWgBhY3dpf6aDpBoOErrRyCe121
         ED08UaftYlLr7ERl1tAxq2oV3iVFZwR/VvggIHYc6UXlBpBFPvE01b6KXFcy/McPRyM9
         PbNu0XH8vm/7T7jLvHLQDiiTIdDUb90s7eQyPjrF9X5vEIFayroR7znQWcQkzYYTT5VJ
         Z36590uae/9CrQXINXdfxzXx11r22cO0sPa82tsdIz3MZnmfKDECWJuSrV+oZZi6taSN
         VM56m15eAl0SM025vE3z2vjcY9mWmar1lQhBer2Y7PzmCM/BBwFieXelZwbBvocUpj/D
         w2vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwhLGsRAu4m+yCUbsQiYlsifV/7hVdsA+B+H52vRChmh6QAj6AilykoxwVGifnuwZvToaswbqXuHdK@vger.kernel.org
X-Gm-Message-State: AOJu0YxUjsAgx5R6q1bWAe0XqQmp4HZPhdBBgJl93rtcjcgKzEsKfXOB
	qMpwCvD6Dhuh9fSN9PV4XsKWRU9UnTsmTbWIONRBO5iGZ20mGvygNx8j
X-Gm-Gg: ATEYQzx52i0FZMkdD5H8vcUk7EIArV0RDzVY/kqgO4rKxSeSqN2wswx62i2C33wKPPm
	m50e9DVDzFRlfIIGtcBTAC+Maa8cfAYYD1GpBIo4vtLihNH3O4aNXO4D3Cy3yO8gxCW/fUvWOaI
	YHiPpaZ1FPwogXdaG9g708SnCOe/1WUcZm2TLaZZ2tQ7JRgJzXDCBy9c6DPokZOkEtmAiw2lxQG
	mRy5uz4DxgG9Zj7jd6wU4EeI1C2OVQUybNCEfuRUg5UAPp/ASt9TjJPiFDpMRqFb5v9O8Qspx52
	sHM6YqbkQstpjnnNzsy2CuALRw3feLVj+c7vxOKBlpTdhRYtHUUsp0b2gYy3kuCj0YelouNZp5u
	UYCLv9cvd54hF45kB96TKXbl6FPVBkMm9J5Y/23Z8QBg0RNBebaqM6XVVbOwasn973UCIg7Emmu
	oZq9iLIyy+zBOsQC66/Pxy5V6iqln4VJbsJzblEQ==
X-Received: by 2002:a05:600c:c491:b0:486:d76c:fa57 with SMTP id 5b1f17b1804b1-486f4469363mr125436735e9.17.1773931828190;
        Thu, 19 Mar 2026 07:50:28 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c351f8sm66819755e9.6.2026.03.19.07.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:50:27 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: shawn.lin@rock-chips.com,
	heiko@sntech.de,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	MidG971 <midgy971@gmail.com>
Subject: [PATCH v4] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Thu, 19 Mar 2026 15:51:20 +0100
Message-Id: <20260319145120.99833-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260304132957.684616-1-midgy971@gmail.com>
References: <20260304132957.684616-1-midgy971@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,kwiboo.se,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-277828-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.912];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D809A2CD37D
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
Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>=0D
Signed-off-by: Midgy BALON <midgy971@gmail.com>=0D
---=0D
=0D
Changes since v3 [1]:=0D
 - Add Reviewed-by from Shawn Lin=0D
=0D
Changes since v2 [2]:=0D
 - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)=
=0D
 - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks=0D
   override (Shawn, referencing David's patch [3])=0D
=0D
Changes since v1 [4]:=0D
 - Drop phy-supply approach entirely (Jonas, Shawn)=0D
 - Model PI6C20100 as gated-fixed-clock instead=0D
 - Wire reference clock to pcie3x2 controller=0D
 - Follow pattern from rk3588-rock-5-itx.dts=0D
=0D
[1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971=
@gmail.com/=0D
[2] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971=
@gmail.com/=0D
[3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee4717=
7829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1=0D
[4] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971=
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

