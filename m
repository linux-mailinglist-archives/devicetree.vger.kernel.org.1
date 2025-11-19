Return-Path: <devicetree+bounces-240169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BD3C6E1FF
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 7A1012E27B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E99350D46;
	Wed, 19 Nov 2025 11:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hPa/0tZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1A234E75A
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550319; cv=none; b=Fh9+fnp7sH5AR483FtjYBgNVmaHd9jKKg9Vyuwv4UGofPTJzOAoKA5jiTHVf8QFTqHR/YCCgKxpE5TN9R8BGnkLDhS0RKq3h9UVwV3w9MQCWTxwyybpvJmWfCZo8noqrL2RNCUdVHCxZdRVWaKBgn1SGb+7iG0tPoNzp7fvPcNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550319; c=relaxed/simple;
	bh=3Feu+k9QWyqkb9zOfv/7oPEl3Wjlo/ZRx5aXS0JKYP8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lJNZ2Wmqo7J5koDpDIL9k4vYnyiL3aaRI3eaLY11qpo6llkuNbEoaI8GAdwrXfT/uIM6QboelnITXkzR5yIAjHkScMFORIM4WVlMC2VXx5N0JsVGUkMQlrjD3qIpVDubofKAmBeFJl5VeOPp3o7vnQ5jc1+edxJT8XtJ6s6Ty0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hPa/0tZJ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so47601995e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763550314; x=1764155114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yJeVKZBCcvhGYLNqGVN+0rfECzO2YMUZRedlclphY+4=;
        b=hPa/0tZJdhktxPOnxdqdfGHKn3gXsC1Ds3K/ZNk5K1Jf+Uox+OaDjM/KtGy611pLlK
         qoekT8QFtrpz5abCGMbMFAwqsElML6hQUOhDc98AdRkWWRdOer3mA9Bw4HlujmeIEqig
         PfYVwnjWbxOXAeD0Z+Pzo4AuOJtlvBqrliMVI8Y54E1NLPcBg31P0bAVFl8z9oNgF9Pg
         JQUh2SitZ+ZyHgOUQ90PByUP5qberTW9vZtSMZneeJNmFP8l8sERq5UMA6H/o2Er5wD6
         C5tQj3WLhzFqk6/YdZtxxns/T1BKcihOz/cNzCqeePuAkr3Yvu8sCNEacomP+qNcaLqQ
         i6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550314; x=1764155114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yJeVKZBCcvhGYLNqGVN+0rfECzO2YMUZRedlclphY+4=;
        b=J0SY65uo6WIxM9GFZZd4u46/SZpRjoLYHfXRk8joMf9I41cUjk+mMognPCT6f/gR1q
         0sYu1JVs3K/1KwYAGYvxhXzWQWc0basg8O3YGQLyrySSenY8uNHkvM7wJOm7oiG8F0Oo
         eaewQ+F+zjRTx/7HPQlsDRYCgCTgZYdPwf4VDoJD5J9LLmwN+oZCJfJSwGCGEKSrLg0I
         RbBLvKiWkT0kob4ivZWdrh7BDzGvD28ysq8IF5bbkAhSoiKbtkC+Qp9+HpaKES/WnWLh
         Vwnmnzxbaj+eSLumxhSo+880kBYr+zEVzdnCoQrz5DNASA70dXQ2pJ8AlCkIbOzRL1JE
         QfaA==
X-Forwarded-Encrypted: i=1; AJvYcCX6lHf1rMw9leOfCnDwwBsT/wZ+fj9HFirNuxwX4JWuqqHY1p/1dOdTXw2cBxfbzlkHFoBdZdMckJXj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhvx9S4AZ4o7mTekZNBglHH7sVSRqsbBWZNtRfFlcvLKl/EmeH
	6oP8BI12HanxqUyHK6BEGbmNssu2Oq9zFjcD4t6cJuAgZNqqhnUa2+6x
X-Gm-Gg: ASbGncvxF1DDdsjGnEe2ddzr4s1fVQlONZ4Ztv3v/TyNdRBYwMlnyBWsDJveIF1kbGW
	SuRRYnkhinvt1e5xBp/x0SxKqrG4iTiAgBOivj2UNSn/BgyfcjbJMN7tDaYklIY/+jtGV0TFrQO
	gsQnt2PzKD+pIkXZE4v/qDuvNjgFxeTGbNdHrafCa8BwbsPvDnVIvwrH4fotJPCZeImtQOWPbQZ
	a6Y0knnGhWe+XuH26ktZuIVWQwLaTKn+Ari6id1MvTRD1v0637ZpVvNNTGqNgLsCiLRPQuLoTvg
	m8crpxRf5fBC6Kca48PoS65n7lbKqC55FO+DSlQb+XnczYFx2SmgJs4r4WTQ+cByRM0w2gaNIFf
	A22eYzX8Y/Yj2EnnU2Kf6AGUFwUZiT+T2Av+A1LTCeOGOpP2sHDdzsnGXNGzuz7Jkk4yZwQU5+x
	kNWzFbzJulr9MhQRliYJXxIYK2pP6lnMjhgx6gA+L22pSnbg==
X-Google-Smtp-Source: AGHT+IGsWH5lDpaWJ5T4pbKdnN1loDHhx22TKJiTrU+d0dt7GrHtqi5/gebxQMfUGgTnk4LUUV+5xQ==
X-Received: by 2002:a05:600c:35c1:b0:477:54f9:6ac2 with SMTP id 5b1f17b1804b1-4778fe1170fmr232458705e9.0.1763550314052;
        Wed, 19 Nov 2025 03:05:14 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4b7e:3ed7:e0b3:cf30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9d198a0sm39884505e9.1.2025.11.19.03.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:05:12 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/4] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable USB3.0 PHYs and xHCI controllers
Date: Wed, 19 Nov 2025 11:05:03 +0000
Message-ID: <20251119110505.100253-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable the USB3.0 (CH0) and USB3.1 (CH1) host controllers on the RZ/V2H
Evaluation Kit. The CN4 stacked connector on the EVK provides access to
both channels, with CH0 corresponding to USB3.0 and CH1 to USB3.1.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../dts/renesas/r9a09g057h44-rzv2h-evk.dts    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
index d2d8ff3cb844..dd6f19d99a3e 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
@@ -687,6 +687,16 @@ vbus {
 		};
 	};
 
+	usb30_pins: usb30 {
+		pinmux = <RZV2H_PORT_PINMUX(B, 0, 14)>, /* USB30_VBUSEN */
+			 <RZV2H_PORT_PINMUX(B, 1, 14)>; /* USB30_OVRCURN */
+	};
+
+	usb31_pins: usb31 {
+		pinmux = <RZV2H_PORT_PINMUX(6, 2, 14)>, /* USB31_VBUSEN */
+			 <RZV2H_PORT_PINMUX(6, 3, 14)>; /* USB31_OVRCURN */
+	};
+
 	xspi_pins: xspi0 {
 		ctrl {
 			pins = "XSPI0_RESET0N", "XSPI0_CS0N", "XSPI0_CKP";
@@ -753,10 +763,30 @@ &usb2_phy1 {
 	status = "okay";
 };
 
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
 &wdt1 {
 	status = "okay";
 };
 
+&xhci0 {
+	pinctrl-0 = <&usb30_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&xhci1 {
+	pinctrl-0 = <&usb31_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &xspi {
 	pinctrl-0 = <&xspi_pins>;
 	pinctrl-names = "default";
-- 
2.51.2


