Return-Path: <devicetree+bounces-217919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78522B59B8C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6475918916F6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 871ED3570A9;
	Tue, 16 Sep 2025 15:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="crY00Hmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4E8350D55
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034990; cv=none; b=uzZTTYd72hboKxYNXuXGMu3E/hzVmrYfrU1VspzIaOzOJrPggQVAEwyuWpLSaiQjPdhN2OKpLRyDm765/rJVFu1n9J+J7WSWUIsly0sc/t8LN608JN5DXZRgiy8zgVZNkWD+Qi9es557CXkVlH5gxZiC8r8c2P+ACx5Z3hd5uOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034990; c=relaxed/simple;
	bh=FOsyc4iTtZZEmD7yB6cXmyuTyn+sg28a2cx5viYfSEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WkITvdUYPh/+fCjCIOXtdepuO/EHNQ0/z0GBJBe6a9rDNmYERr239OfeuuKGLFJ6mU0LS85fhW4e6ETMT1BnsKDdCJkI54n2eLV+OYJg9q9UE9N4+gmKEBNv3MyJCnTv8h5QY/mhRZimrX2n/XW9xeH5iO9gUWE3PARG3fYpT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=crY00Hmr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45f2fa8a1adso16391595e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034986; x=1758639786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rl6m3dLF+FoSV4DHt3Kr11DCSsPpVABda9m8XauItOo=;
        b=crY00Hmr75GBZFAvE5DqElCcKLCnnRAVSj6lI7dX0929Mj+UfdWdqnT7TUYghf7EvD
         y6PaWfrh05GX/Db+3iKzIsGE7WDj89MMbdcyGgdLn6N5T6w2AFGL0qVi+i8tpn57k8+w
         vVcefrLPU5f0/JMyBu6PcmkTXv0ZwXiC+s85gQL0ajbJ2PcinmEtbqpI9S7GitiIZFdG
         ywomrGyACf6TbhlX1qEScK3akI3/JoBDPeBUJgZeSmicT+m4MMf5J6DbpAOTuwFYsrh7
         3Qpa80FQ4I4yHI1einG6OcQWO/iXNbi4paE5EzD4z3VRKrnleXuR6zgt9/X5pUMDA7lP
         HBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034986; x=1758639786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rl6m3dLF+FoSV4DHt3Kr11DCSsPpVABda9m8XauItOo=;
        b=BeifCzt0mA4zJgSkrG4C2nWSzZkFwtFsTBAS/7YYInVlfHOkZ0j4qZ6aH3Emafiqe6
         itZyus3kh6wKmtrvGHsL6dHG3W2EVELFPeX23PzjhhNvoOJdsSuPrNlzl/38oURkDlVq
         wu+EG9Y0f8a0b0T/d1jUEBdShxqykHar+3oZcLic5v2wKvW0iBRiGG6jbhbJp0uotAY1
         KmIHYFmPVgIoBOsVydTlkPVMF7PZuczLqKerwKoWdw7bmvJK4bLJXMv4vld87l53wcrR
         +nDv6fSInplA2lTJ0Bh05W0raU7HL6XzmQ43PbFIHmYsTxoA1p+xabFjlspUiWOFN9jq
         7+Eg==
X-Forwarded-Encrypted: i=1; AJvYcCV3Ls9Va0AJzn5IcaKS2tGUDN27oX39HWNVFF86QjUT7SxZhwo8naT69avOLPzxLzdlK5C5aAvUJtkK@vger.kernel.org
X-Gm-Message-State: AOJu0YzffDA24L+UoJJxGVBX0IP4FDSCPREqa8mPMSzs0+mYlAH37U5W
	lfQ7nV9wWoidTutmWt6CPG6RaYyEFgSJA+yxqzbxjPc6wq8xQfC5SBc6
X-Gm-Gg: ASbGncsWGeXJmhG3A4XmHWMSMcrEUdXK7dr9GUA/JBBVBU3BRNtcxIGpeK7FjHuGy8P
	lsjK8MozPmbTpn4INf1lllZh8nY1RKxoTzkyGDBmrgctGCnPSij/wsfaOhYNw9vAEqyFW2mBoXH
	GUy4Gk7DRJM8I1E/UhMKRhUOxPNOYzQtjIsgEtavOL7Aw2sZPnSUEfmkBkHiAlxXYyuVEEmcYLn
	5r4LZbg2L3Fv5M7b6pCg1ZbdDWO4mex2R3uoJEaH90mVB+kH2JqGJPSPA3vShyOSX83z18sA3P7
	hspJMTmIdUH2M2ohJytgS2j44iZZGq0ApEpKdYKJlA+U/ko1yVoEW4LKF9lL23DA4k6qXJ0TCIN
	FyoU2Plwd7xK/cENYzONWMfyWPZFm8ii5foLW9bkVaWRWykiz+aqSm0zXyudtfjVKqmsL3bLlRI
	ooWw==
X-Google-Smtp-Source: AGHT+IFTMl7Iu2v9uaiJKg/NvSyBcHv3ge9i73c6OhxrNuGCaGVDTjf7/+54dBjDp2D6UiuwU5idlw==
X-Received: by 2002:a05:6000:22c3:b0:3d8:3eca:a97d with SMTP id ffacd0b85a97d-3ec9e2abaeemr2429023f8f.11.1758034984289;
        Tue, 16 Sep 2025 08:03:04 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdc2deb20sm932154f8f.47.2025.09.16.08.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:03:04 -0700 (PDT)
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
Subject: [PATCH v3 8/9] arm64: dts: renesas: r9a09g047e57-smarc: Enable USB3HOST
Date: Tue, 16 Sep 2025 16:02:44 +0100
Message-ID: <20250916150255.4231-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable USB3.2 Gen2 Host controller(a.k.a USB3HOST) on the RZ/G3E SMARC EVK
platform.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 10 ++++++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    |  8 ++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 08e814c03fa8..0fd90d79b020 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -164,6 +164,11 @@ sd1-data {
 				 <RZG3E_PORT_PINMUX(G, 5, 1)>; /* SD1DAT3 */
 		};
 	};
+
+	usb3_pins: usb3 {
+		pinmux = <RZG3E_PORT_PINMUX(4, 1, 12)>, /* USB30_VBUSEN */
+			 <RZG3E_PORT_PINMUX(4, 0, 12)>; /* USB30_OVRCURN */
+	};
 };
 
 &scif0 {
@@ -179,3 +184,8 @@ &sdhi1 {
 	vmmc-supply = <&reg_3p3v>;
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
+
+&xhci {
+	pinctrl-0 = <&usb3_pins>;
+	pinctrl-names = "default";
+};
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index 58561da3007a..8b3765b8267d 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -106,3 +106,11 @@ &sdhi1 {
 
 	status = "okay";
 };
+
+&usb3_phy {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
-- 
2.43.0


