Return-Path: <devicetree+bounces-192332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4B4AF642E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 834371C4617F
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E02192F7CEF;
	Wed,  2 Jul 2025 21:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FcOuPtH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4B622D4C0
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492237; cv=none; b=IG9rJRREqXbhMIwrv7V4Tt41u5qBYOmQRH1IJRliH6mfgs2tkgHUYHPgOtR+/e9tByY+TO+g4Srj3nG0BOZKkWpC286VdXty+kDWmBRoqEbIgstMbUiUOtQ2yM+YLf3UlvgmwcirE39m3eeoiCynVNmvCJ3eGo9r3y8+xHDQTew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492237; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c7iNIHOldHYvmC8tzqJTunZGw4z6iS13IvNr+9kT/PPtg3mUPNVocHAMU8A9dssjLdcQM60pvnYkPofARUwILiSKpSMmSXCBjyorX4sXuCgdsbIMpWwK9i25/xvsz+LZEwWrPVmPrMdzjnpOpgikEwmHct2aX2h9hPmspivKtI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FcOuPtH7; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6fa980d05a8so78725806d6.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492235; x=1752097035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=FcOuPtH79xxKK+ahU0IgIjk6Bzh208ghRpWs1IUCv0qPA3Gb2FmuyIyWcFYe9O45Cc
         /rJQA+zRE5jIcp5CrZlW3IoK+ICfaZCMWKm6QSOfWU1+EFrs/w7K84EP+6R8KEsAMSsF
         /pSNEKytB7NO4snwxvaaz7niw9jCnPhTYxtT8fIlKBWcDawmI3M9UBMDAJD0bnZmfWpj
         tD2E4vuLWG8WznkYPS8RP2QQzAhLxeD64Rz+aXDHe2Bvb1czHatqkVg3wLRu0mufd5GP
         /xK05tECyE76vVUHRgUT0uD/+PtWXdAfOenKTU+CfUF3EJgQrGYyEQkU9eS0mCH35F5r
         H+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492235; x=1752097035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=BpaRAXuOQgLp4DFTwH/NCIqRW6BRmaJEbiilkz6vPphO2u7WIXCD1QLCDh6KuyabAC
         Xu6mg3kiYGb7F+y5t/+sPaTtY6MGzshQzFZWxff1275Q1Sbi0Ndnu4EV4didFflrWIC+
         cCW3PkNIZViz61rKQSEN0VIqi8v+aPlEphc5Vam5ya53P4KdUgKMiXaUb7xyYL6xQ8zL
         6pn/SJK8edHr+1wGpe/7nHIebeknvyV6e2AV7rTjcaRpEgxrw3FnIOJvvGjxA/JGAS9j
         kiOahH1qLkONPmpHYk1q4xA4XhB9bR7uo00C921sl7viX0hODa9RpWTorK+NR9t8CH77
         C/+w==
X-Forwarded-Encrypted: i=1; AJvYcCWuPy6foz7qeKhR/qM1iYkvjLiwMp5fa7p9w1uC8TtDlCan0hZVdj8hP60ORSPYvOBJmxfF4DaE4BlM@vger.kernel.org
X-Gm-Message-State: AOJu0YyKxS6y4PzfoyJtP5kPv2A7RcFAcDiMdwKxWyp19oLiOI3wDLct
	mi1FQjIuYDVp5Q4R75vWESgMP0Y4hxOEPiuoP/MjkriMKSUMbZ9OOJRHO/ans4FkoPQ=
X-Gm-Gg: ASbGnct3AB9ip3KKUzLXHFajSaziDHfQihoislpN8ihGo0Ir2aGtOmwuSgmJdcMkCmC
	JIXYbZPkjTI6lmZs7u8/ChjpnJDyfWEvOsNGt/ZalG23dclWYcMI+WIjHNuv5Rspl3in5OdVIIj
	iFVxX7BAY611aakMh0IhGN5pmqED7GKbLElZVR7pantU0zsbdAWq9Mxq+rvRxLiunhVXdT+FIrj
	z78PVpjaXV699F/QVH2OoqYhJBAnAkEhbIhI1SfabXZPp1VR6ewxMNmKwRcCXocFR3auGKaOBSc
	1CRTqOwz6aCvVTc/Jy8vbsVgivoSePoAELhV9Xrpu+UmDwLTIqz/xhWsCE50jI8dZSrGtZKpM7s
	remnpVkbT6ICwuTw8cQo8SG7BQbKvQ1iTE04=
X-Google-Smtp-Source: AGHT+IHmuE1Hb+fdqWuuRSoeZlf3aoCIg4RErjvlQJxeD9KbYWIor15tIIiabP6Dq/CTktn4FVDAFA==
X-Received: by 2002:a05:6214:c28:b0:6fb:4b54:ebb with SMTP id 6a1803df08f44-702bcbf5777mr14378456d6.14.1751492234758;
        Wed, 02 Jul 2025 14:37:14 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:14 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 7/8] riscv: dts: spacemit: define fixed regulators
Date: Wed,  2 Jul 2025 16:36:56 -0500
Message-ID: <20250702213658.545163-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702213658.545163-1-elder@riscstar.com>
References: <20250702213658.545163-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 7c9f91c88e01a..a1c184b814262 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.45.2


