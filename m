Return-Path: <devicetree+bounces-138624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5A2A11691
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64AAB161ADD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 01:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70EE4644E;
	Wed, 15 Jan 2025 01:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bLdJ7ZJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E40A481AF;
	Wed, 15 Jan 2025 01:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736904416; cv=none; b=KUjkZygblyBvG4W3qWjZL1iAjC2vvjh3Oes1mUYOOsVGVzW5xTCHCqFXVU9mQhzJ0txq/kAFO1NCVs8Cn4psJEUC5f4PK0lSzDdxhtRNWZDfe39cOuIsuNOLK5SQ3UMYevoTBZXHqd/PSn68fY8YMUOijquwcRzj9S2hZGVRRyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736904416; c=relaxed/simple;
	bh=QmDtyYguQ0fizyxSmJo482RF36/4VTJ4Qs7t/dBEjCU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R+y8Oyljy18P5TcL1Wg8DxKReNpMuXZSP1LZ0DPM9tUxSjlFEpPBLlshDIPlZBWtDbT3BXX1Ca/7UeqjIXo2I9dzXWno3KSLvLv6IzEGXUuU4NdM9itel3BXWGR07ktPRo9qnEF9JwF/EUK8pKpJBFxCb+2sIzeg/bWoAGNSfzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bLdJ7ZJ+; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-46b1d40ac6bso3507751cf.0;
        Tue, 14 Jan 2025 17:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736904414; x=1737509214; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hFMwJAaeoRNdQ7wFB7oOxwf1IaEkyF3Nv5JGSL6B9MU=;
        b=bLdJ7ZJ+6DO/4c5+hIdYzRas/VY1PkkROV/5T4yzFR9hi29R25HF8yY7j4eW5w1Paf
         tyGNslg29esIlMfX65DK9wvWldgi+aAGlTZpcCmTuM36a7bfOqAQjFP1ZDcVwxEUqdPJ
         VMyeunLwmUTsHkWkcATfzJ/crkDPkaY5Z4S8E5IVFg74gtWnWzbXTs0SjrcJf+/6hQ0+
         w84qdkNd5THFOie4aPgVHHgEMY1ewX/QRJQ2yG3MY+4ZrJhwWuB9Eeew+A63fNdzVSEw
         gJ89z9i+vV8Ug+r8IfqQSCmXHjQbkuNcwEDAEEwmdbVbUcPLYKX+gJj1Bb4dxJ4xZKOX
         BjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736904414; x=1737509214;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFMwJAaeoRNdQ7wFB7oOxwf1IaEkyF3Nv5JGSL6B9MU=;
        b=JQKqzIcOdWEuulfJDnST5cDWfd+JUDjHFrjMUb3p5K9qvDQ4KQspyqWpzE3AKvdZuV
         i6Lq+XpNgnVfmiocjMFtBq33UZ/HHp1fdZM+zRuI0mhLOCTkeNG4CansvuwHxS+W0Bu8
         QdHN/UWONfPjvGssmHLOnHpUa3MCBzQj9VE1r3lsLpSr/RoYqf4tKN8p8d8Hu/Mxd0Xm
         hkguXIW5fKHRIPEWLGYaO6Cg9VAxcce5iF/4NfQG9tBvjSiO293qx6IpzF1QttARxcF0
         2zwb8WLGG0yNlqrOnhlkhtOuupAP53zD6+AVJcvXQpdbTDIBWSqWWFIbxIVM+Vbpiz0o
         w0Pg==
X-Forwarded-Encrypted: i=1; AJvYcCU5RQ+5Lm9rH2MF2lIST0q3JKdew9izwyDSj7PzZMr0MR8uhLiKX6ckSCFU+0Kv5OCgNiQ+PCSObTHRx/js@vger.kernel.org, AJvYcCVDDvohjY9HQdXyiijrpIq4lbFghtgtBwToh+/CaW6SS0C0SP5be7Osyl5c2iYem2b+JQlPqk7DQ3QS@vger.kernel.org
X-Gm-Message-State: AOJu0YyEDMcT3O+4W+t1zE9UQrggQ1QaCh5issELbAa6PRHmTgGzRimh
	FbRpeBmMHiZWZ8o6N2Z24gI9AFPBJrMZUYCCdR40+oY8gePiFWFF
X-Gm-Gg: ASbGncsGWtlVbHqTgrSnlBiZb/Kkv0CEWbIddoGpQu5M+nC1mhLRzEoEK2s8PRJ6vp2
	E8TZ78HPWPnP0twt6S+96Ba5X0KL9bKcO0M6Q1a/5BNHnw6EkVyaPC4njpvZuGcwrAPbdO2QrMT
	AMILkL+SGZdak/zcnYeevIo+OQnHiBIm0MbFvDJQf2/PTw7nR6EQrmBsyzJYxcmjZ6oSsqGbrm1
	UmTy6vgfHX2kG833TFs65XsvHKbF579o1hRva54SRrSDtqb/2SbWlyEMl0mHW1IdtWK
X-Google-Smtp-Source: AGHT+IFbToSOgBgyFlAAQb6WU2ckT5CIGlBK7iJrhnVXB8ROQS2yvhyIzkDE/m/9jLZTkhccFjgHlg==
X-Received: by 2002:a05:622a:344:b0:467:6654:3dda with SMTP id d75a77b69052e-46df56ad2d9mr20388131cf.12.1736904413930;
        Tue, 14 Jan 2025 17:26:53 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.227.95])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46c8733130dsm59933881cf.25.2025.01.14.17.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 17:26:52 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com,
	kever.yang@rock-chips.com,
	frank.wang@rock-chips.com,
	william.wu@rock-chips.com,
	wulf@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Trevor Woerner <twoerner@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1 6/6] arm64: dts: rockchip: enable the usb3 phy on remaining rk3328 boards
Date: Wed, 15 Jan 2025 01:26:27 +0000
Message-Id: <20250115012628.1035928-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the new usb3 phy nodes on the remaining rk3328 boards. This is
done separately from the rk3328-roc boards due to lack of testing, in
case of regressions.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2.dtsi   | 12 ++++++++++++
 .../boot/dts/rockchip/rk3328-orangepi-r1-plus.dtsi   | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts       | 12 ++++++++++++
 4 files changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2.dtsi
index 1715d311e1f2..a4d880725a96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2.dtsi
@@ -385,6 +385,18 @@ rtl8153: device@2 {
 	};
 };
 
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dtsi
index 82021ffb0a49..f70d28e6da5d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dtsi
@@ -349,6 +349,18 @@ rtl8153: device@2 {
 	};
 };
 
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 425de197ddb8..4ce6b16cf291 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -440,6 +440,18 @@ &usbdrd3 {
 	status = "okay";
 };
 
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 745d3e996418..2e366de96390 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -379,6 +379,18 @@ &usbdrd3 {
 	status = "okay";
 };
 
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.39.5


