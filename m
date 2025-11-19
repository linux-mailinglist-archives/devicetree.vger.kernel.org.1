Return-Path: <devicetree+bounces-240171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D2C6E2B0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B411336646F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8763E350D7D;
	Wed, 19 Nov 2025 11:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bo6NBd+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69A4350A2E
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550324; cv=none; b=mUwhGyFzCLHwIWNCfwVQWfvOhy2qkK++ik8hmvI8csipE8YUqi2m4g3malzK4ru0D9d5pDHaJow0N+6nc0PDqyYxxdZiy37cVTEphi1pBAXW7l97Cz6luwJKs4Yi1engZlA4qhkyG/R2wDimRrCdoEK2wrdpitDAD62OOU1qIi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550324; c=relaxed/simple;
	bh=2TJFUQYU+wu7KTNFucKzgKyilN6NhafOyHZKbCecEP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ui2foAia9AEDupX/8w4UG455Enaoea5aUp7ubHK8oQFLeUO17Or/2zDpAz56ctNLgHugPHnLBPHYq5EmqY5wDbzLbjXaCsGH1p4rS5fyXI+YXf8ZoguzPLkcguYVNc3a4A6/YFE2iii9S3sO+UyDAQkBzPiG0liW3rhGlFVEXHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bo6NBd+w; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so3428665e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763550317; x=1764155117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EZwZ7ElQzgx5V4OYvdVq2gIvenCiXTvz/XWCyEVH/U=;
        b=Bo6NBd+wqcYrYMEgIKkHs/bp3dYdf5aH1XBquLEwJr6vuGhYd0FM2yviaJsbYivxee
         c4oa6fOapjl4vcwtQ9Sg3I3ff93CSn7z4W188l4D8+yYcpf3R3UnGQMN2UeRwXl19eYl
         zC1fsk7OeKZ2RzxgjoBKiYZVOYUwDXtHjPhluLZceVFII1R7H4vfIPjmN1F3hfW5uvzx
         o2VVF4IYJyV+BLX+gMYA5pfrQfcnCZ5BcOSx88ayAlOa9af4pIobfvJDYxyV+jRLyroA
         NH0OW8H5ySXf06eDlzko9jeNevhlrlGre0RvFZS8nb9Cpxarr61VoM7Ygy/3DSyw2R0S
         YiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550317; x=1764155117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5EZwZ7ElQzgx5V4OYvdVq2gIvenCiXTvz/XWCyEVH/U=;
        b=CLF1oDRH+R19Xw2EUxId8w+GKAqgNMpZ179l4clLTH1a/bqmkEMxQyWVD7oaVkulGE
         NR1smdrwoO8S65+F0GRFJCfvciM8Z4FjK50PxauQZbz26B/xrMPYSZs2UDtEemuSFD3r
         C3S6U+vfjH2s1UmgVSVzbPQO7gk+oPfEyTumnCHBuiomi/hl2+2Vopf/fVup85DQXsQg
         uvomCwkD05hoYAmFR9u66LhZjHTEmzEaLB42ZIu7bvfrGkYEM7s+ggJODV0aX3L7CbO/
         PUXEiZPPOuM1ZlJ7IwWphaLBuwtIar/VIFtVIhjDf3ytVZWZfSBAe9kGsy97YW1JDHeP
         0akg==
X-Forwarded-Encrypted: i=1; AJvYcCXJFAqukCC+ZdhJ2d2OIK9xUkdttHXQvEcqN1oLGAi3IUboka0N+iFZkMy9EbK/zl+yDR7p6HVvP62U@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7R6TT0pvBDJaj7AXCw6gRV1rAwHyaqyiOGMsB19VwVpQQ24ws
	Fy3/nCZkkbD+2EvlUNcnEsbVBub+P7jvbl2j4BoWM6qR6JniS8yt0mha
X-Gm-Gg: ASbGncvh2kSroRcfuowG8VKsDuCnPhGtSWJXNBgnjn2VurTPY9H5SnNQIrkS3n6KJ9D
	zQ86LldRyn2X/pD8OWRi2cY2IwyLBTGeb4miuZzO1CooyE0r9SqsaTtZETKKPfESrw0HW/0Lajd
	qkG4kbhdhG/rcQCJwnHG+I77JReUNNdHvA7+JYKfni/k89NAEmR7aIpzGR0dTA6eqLv8daaHb+C
	QSAS0KC/Haub/dhDuNvb5XeOj3za95TC86Q1MDTGmaaYwXgXb0YVBwkStdCYqb3x/x4mKErsZh/
	r3y1PnAgT/c7PKN+Wk/y7FLgu+ZsB5xUk4DLbweCfNxaPMPzkZwk4QD2rUC3aTHmZ7NREDWeLew
	o+rxlXG9DcmSC01aVPDgUH5IEJGN49DQNE90a/UwqMUtiOpC1sBibQzch9m1L4y1fLDowtyQf6D
	yVPOS6INMsd9LuzyYmigqFTBIAohV44jgoG+o3jE5Finu3cZAoAPtRTtJk
X-Google-Smtp-Source: AGHT+IGZPyYYyU1gmbUzbTM3eoIbOfBxE7z0h5lX17lOogXMuPsrWzhgi2FMdXYHZXsDFJAdfojLRQ==
X-Received: by 2002:a05:600c:1ca0:b0:477:b48d:ba7a with SMTP id 5b1f17b1804b1-477b48dbd2fmr15231955e9.32.1763550316612;
        Wed, 19 Nov 2025 03:05:16 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4b7e:3ed7:e0b3:cf30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9d198a0sm39884505e9.1.2025.11.19.03.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:05:15 -0800 (PST)
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
Subject: [PATCH 4/4] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable USB3.0 PHY and xHCI controller
Date: Wed, 19 Nov 2025 11:05:05 +0000
Message-ID: <20251119110505.100253-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Enable the USB3.0 (CH0) host controllers on the RZ/V2N Evaluation Kit.
The CN4 connector on the EVK provides access to the USB3.0 channel.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
index b77276489b30..9fd904787c30 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
@@ -460,6 +460,11 @@ vbus {
 		};
 	};
 
+	usb3_pins: usb3 {
+		pinmux = <RZV2N_PORT_PINMUX(B, 0, 14)>, /* USB30_VBUSEN */
+			 <RZV2N_PORT_PINMUX(B, 1, 14)>; /* USB30_OVRCURN */
+	};
+
 	xspi_pins: xspi0 {
 		ctrl {
 			pins = "XSPI0_RESET0N", "XSPI0_CS0N", "XSPI0_CKP";
@@ -510,10 +515,20 @@ &usb2_phy0 {
 	status = "okay";
 };
 
+&usb3_phy {
+	status = "okay";
+};
+
 &wdt1 {
 	status = "okay";
 };
 
+&xhci {
+	pinctrl-0 = <&usb3_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &xspi {
 	pinctrl-0 = <&xspi_pins>;
 	pinctrl-names = "default";
-- 
2.51.2


