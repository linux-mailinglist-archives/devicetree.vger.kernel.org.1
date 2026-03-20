Return-Path: <devicetree+bounces-278171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NwQEssXvWnG6QIAu9opvQ
	(envelope-from <devicetree+bounces-278171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:47:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F112D83F7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A0283058BA7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A3E388E5B;
	Fri, 20 Mar 2026 09:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m3qFhW2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E26F387369
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773999808; cv=none; b=kkGJf/hTva+cWyvKPxb7m3axu8freGSfGNvryebHBcgsK3DE62k/fUbr/Jzwhm5rJHaB9o9dJlpSWX4LCI8cyR/LlZjmOG5FCgQOB8QqiAKaihR9CXaKzUilv985TfjrKxm8BLdDD1E3OIfUYYP8kis9VJrA9DeO8M++cxU2bYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773999808; c=relaxed/simple;
	bh=DTT5xPrRd5BhW2zCX9cjQC93CsiCWorH9lwGiIG+Fik=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ikrjp8T9D9xw995gOqYTtL5ODh34w0TM8zdiIXdepQIR/n5V8Sj3h11Hi91JUx8GC9z5A7SJdFmd3llOeVF4BZRsZpFhMq6+KXkO6+dPEfkQgPLeZwQ5akKRo9fzTBTmVBPi1q1wx/NTHbCH97Z+mYFMUBQK8XznZCppjSNza3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m3qFhW2d; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48700b1ba53so2877285e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773999806; x=1774604606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WGLNtDekxRKXdox7mzxK6y/EsZgDuny9HQCCHc8BUNw=;
        b=m3qFhW2d6h48pCmbMnLlVe+R/Gb/m9pZTD1y7HnAtbQdLZk6O7zNrTd2y5zZKW2PgD
         EOOzBFKqpwfmIlz6uM0dS9TR+n7pmpdCdicTKZTY9bYdzPdQ4+nrMihVuI3PXlRns3k0
         ZIS5XhldNSnC6wuFcHJL1HCDpZS6CeQYWR//RTkpeUCMtiZc7kVXOCyloAKx0+DkPwyz
         l/uWlaLk+zDrz+nGjdmCZ0fe0af7EatsRFtmPhJg/7s04cYhZbwbGwotslYEBGZLWJt6
         /fSn6kpYEy1Tyev7kOtrnyKzcrFzIXv4AyNXGlTUjEHwTnAvOJa/ezhU53o1KAoVgQ+J
         BtXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773999806; x=1774604606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WGLNtDekxRKXdox7mzxK6y/EsZgDuny9HQCCHc8BUNw=;
        b=ceFGpu/k8xUyMmIFJUozzsS9h9Sxq8LpjBG9ewajRHzf9Tx458bYwxHcfeVwheVt5O
         cylUSyqiHpRjNHFYaKEmVEoS/rXtExCOXoyFfCI575ih0x211/IwQKgdX6U+oj0zXieX
         deOqAxFmUTvE2VUv345dgPBrmtOZ6jVkE5q7qgaCh22zy1xSFFfafTyAogLpPfOaCsIu
         91cxU+72ayEWX8bfIFE2rATwsue7lLJAJZRLcBJUkFcL61/YTvY5Xf1ZWAsJS2o2qHrK
         G6RbWmK2FT+CYZO6wLFxivKa+SSJn+Jy10gXItn2cZUWGXFHhdN42pQ1xgPqFwmm7WaH
         AVAA==
X-Forwarded-Encrypted: i=1; AJvYcCXxInXF8V9X4Atnyf8PXd9kR6nXUTzMe/xZehPIu8j3Bvz+wFWI3lWT4QjXz/TEBId2y9iQfOiefV6S@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6l47gpavjwpUtXScvjS6fLE1GZ+G414XA+9bSMhoYy8aFjRpq
	aFtkacQfdLJY061YYJRCjYYAui0k8oewJZQOfh8sSYGK+j8eXjbFwE4s
X-Gm-Gg: ATEYQzxaegrH/jRxnG2Czp967wBGuY5LplvCE/7MwK6p0W7zCujHZX1D9EevGqFwA2X
	3kSVyZrb8ud3qG+c910h67u29A4DhoR/kykccTiv0QK4rdJwYPpOe1bZCxxT3bMGAFLYabgyjeU
	LANM0mjePx8/ScpatK6OuUQ+U2RnkWn7oii0DR3E/+fNfPv4CUeg/OIIIlYvK+Klyf1DKT+gCY2
	xu2cl+YLr07q4U+X0cXcNGYVA0Lys71fSz4CnPv47fQEwhTd0iT6DoxyWyJpl9nGlYjzel4XwN2
	Ab9W4yA3ywlpVi2NpQrQB6A1iCwBxfPdWFZ385jI0Tl4Z2ZMmQZ46/pn/WWfcTNgO1FEMdDJLZA
	2zNOu8rTq4BlbdMeeIgMRTSElhyONRZpfNluKhpKt/69KIYmnP4vF+R+5g5HlTXCw0BbzaKg6GD
	DTGJ7PTmLYexJD1EA1P9ePcWZY4Y0Zb35EZcydnQ==
X-Received: by 2002:a05:600c:1c0a:b0:486:fbc8:8dee with SMTP id 5b1f17b1804b1-486fee2dc56mr30563635e9.33.1773999805228;
        Fri, 20 Mar 2026 02:43:25 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fd9845a2sm114372145e9.6.2026.03.20.02.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 02:43:24 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	shawn.lin@rock-chips.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Fri, 20 Mar 2026 10:44:41 +0100
Message-Id: <20260320094441.128263-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <2053182.usQuhbGJ8B@phil>
References: <2053182.usQuhbGJ8B@phil>
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
	FREEMAIL_CC(0.00)[sntech.de,rock-chips.com,kwiboo.se,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-278171-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.942];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4F112D83F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Midgy BALON <midgy971@gmail.com>=0D

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
Changes since v4:=0D
 - Fix From: line to match Signed-off-by (Heiko)=0D
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

