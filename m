Return-Path: <devicetree+bounces-161569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC53DA7499F
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 977A7178DB4
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9191821ADD4;
	Fri, 28 Mar 2025 12:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RqokCIY3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71A521ADBA
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743163987; cv=none; b=WMPYPu7RMP9G1vaMY9olqn0Y8aL8MHDO2Kq/qhgmswl8rt7pnAl1nhFFFHx2Caenp41dxcp+RCacwsBrrF//bBcmto8xRD+pDFtVF5fcdI6PgQBxnuaDOEj7Mo/1CmkZw+bR5xcjCPimD/1I1bd83GPFHi0VZRjguqxMdXvRAQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743163987; c=relaxed/simple;
	bh=PITk7ZepSP3vP9TSRahatxSR2909Bg60eq2pEC3BMkc=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=CJNHOiRQvrbt0l3RQMjXS0jDTrIGfGSp7SWXblTGaq6wvYDexaHRsYLAvEwG+VKGfE69EozVy2MfU2L5RvShoqaxuqcBMA7C/9bauKrr7UC+t2w3LdvECSXmwkHPo4Tjvc7YOSn+ch1brmP9xXVPPHejuB5HDunWJSunzVfYT5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--lmajczak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RqokCIY3; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--lmajczak.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5eb80d465b7so2045227a12.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743163983; x=1743768783; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o8yZxDWKVuGdJufLroOp7bVTav6VTJyysxYI8wso148=;
        b=RqokCIY388R9SUMEFfeBm+L+YIKqcuRxlJAl8wIcBIkDIL56CSe382ENsun6bdEa9k
         YhvrZhx5qliGlbMcH2W6bahX4vrd2wjSwjAuDkqDdZcmp8FwNr+/s7sbwej8narnousQ
         QKR/DBe6akvjFkzPkBFm9sg9dENtzv76svMXR3M92iZF3RFjUoYgdnNdiZbHrAugLvoC
         kuXp5avYzU4bjtCp+K8hGLZAV8sXpoHrUP9H1ECvIluk6LuvGow1a6Yg9zkrwBT0EIyh
         7VJw6EF6poxqPn2N6BFMhzkqwCMSQNdEnp6klXN2WRC1veeJZA9IdKTDzWr1tkyN50ZS
         BzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743163983; x=1743768783;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8yZxDWKVuGdJufLroOp7bVTav6VTJyysxYI8wso148=;
        b=vl02ZlqiXyDJB/Z8Hc/xIGjbQfQgFX5152oQOGV9yAWBXSacUmWKh2ANQf7ldOFsm0
         tUBhLkd7yDVoa+hciclLCQSldOrlJkuf/3mN00O+YBXgi9rKXEmXSUdagpKL9yNbox0B
         OQ2F1XXISB6+LQhAjoaEVjVjZFnYaioQ9k925FhEtMRbINifOq9M9f4KV+3b8+tZOSTG
         KGOLy09sjw/f0qUNu+Z1CZmS17Y89bzVYqwaUWSb0paPFGyHhAxKDI5PK+o0niu21FnS
         XwHO78u6fVx6mDkl1B5OYvjgNn3sYIxTbyYwmk2/sFxUULCjwxfX8eVb+A7S0mHaeSi1
         KSvQ==
X-Gm-Message-State: AOJu0YxAL7r+goTkMxPWSyEyh4b25byo60JKoUxwe3YahW8DhRC9Mktq
	naLcbApolO5PA6xco+Kp+01H64GasAPj3B/FoXQ0D5agnKj0cCGdgG9PE4xe4KBO+R8E9I/LCS3
	4g9f8bSk0QQ==
X-Google-Smtp-Source: AGHT+IH+URE2JNYwtr+vzakMr5FIwnaziOhvei4JU7ZPSwNs2+pFJiuJvdGrEEam/bZoSIkKiBoQnrek1y96ng==
X-Received: from edrc15.prod.google.com ([2002:aa7:d60f:0:b0:5e6:510c:9f00])
 (user=lmajczak job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6402:34d4:b0:5ec:8ef1:35c4 with SMTP id 4fb4d7f45d1cf-5ed8e4957d7mr7600952a12.13.1743163983409;
 Fri, 28 Mar 2025 05:13:03 -0700 (PDT)
Date: Fri, 28 Mar 2025 12:13:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250328121300.2612942-1-lmajczak@google.com>
Subject: [PATCH] arm64: dts: mediatek: mt8186: starmie: Fix external display
From: "=?UTF-8?q?=C5=81ukasz=20Majczak?=" <lmajczak@google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	"=?UTF-8?q?=C5=81ukasz=20Majczak?=" <lmajczak@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The dpi-default-pins overwrittes the same called node, defined in
mt8186-corsola.dtsi with the wrong set of pins, so remove
it from mt8186-corsola-starmie.dtsi as the first one is correct and
sufficient.
In addition, remove dpi-func-pins node from mt8186-corsola-starmie.dtsi,
as it is not used anywhere and also defines the same set of pins as
dpi-default-pins node already present in mt8186-corsola.dtsi.

Verifeid above with Corsola/Starmie device, by connecting external screen
with usb-c -> hdmi adapter.

Signed-off-by: =C5=81ukasz Majczak <lmajczak@google.com>
---
 .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 45 -------------------
 1 file changed, 45 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi b/arc=
h/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi
index 5ea8bdc00e81..a8e79c2791ba 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi
@@ -375,51 +375,6 @@ &pio {
 			  "TP",
 			  "TP";
=20
-	dpi_default_pins: dpi-default-pins {
-		pins-cmd-dat {
-			pinmux =3D <PINMUX_GPIO103__FUNC_GPIO103>,
-				 <PINMUX_GPIO104__FUNC_GPIO104>,
-				 <PINMUX_GPIO105__FUNC_GPIO105>,
-				 <PINMUX_GPIO106__FUNC_GPIO106>,
-				 <PINMUX_GPIO107__FUNC_GPIO107>,
-				 <PINMUX_GPIO108__FUNC_GPIO108>,
-				 <PINMUX_GPIO109__FUNC_GPIO109>,
-				 <PINMUX_GPIO110__FUNC_GPIO110>,
-				 <PINMUX_GPIO111__FUNC_GPIO111>,
-				 <PINMUX_GPIO112__FUNC_GPIO112>,
-				 <PINMUX_GPIO113__FUNC_GPIO113>,
-				 <PINMUX_GPIO114__FUNC_GPIO114>,
-				 <PINMUX_GPIO101__FUNC_GPIO101>,
-				 <PINMUX_GPIO100__FUNC_GPIO100>,
-				 <PINMUX_GPIO102__FUNC_GPIO102>,
-				 <PINMUX_GPIO99__FUNC_GPIO99>;
-			drive-strength =3D <10>;
-			output-low;
-		};
-	};
-
-	dpi_func_pins: dpi-func-pins {
-		pins-cmd-dat {
-			pinmux =3D <PINMUX_GPIO103__FUNC_DPI_DATA0>,
-				 <PINMUX_GPIO104__FUNC_DPI_DATA1>,
-				 <PINMUX_GPIO105__FUNC_DPI_DATA2>,
-				 <PINMUX_GPIO106__FUNC_DPI_DATA3>,
-				 <PINMUX_GPIO107__FUNC_DPI_DATA4>,
-				 <PINMUX_GPIO108__FUNC_DPI_DATA5>,
-				 <PINMUX_GPIO109__FUNC_DPI_DATA6>,
-				 <PINMUX_GPIO110__FUNC_DPI_DATA7>,
-				 <PINMUX_GPIO111__FUNC_DPI_DATA8>,
-				 <PINMUX_GPIO112__FUNC_DPI_DATA9>,
-				 <PINMUX_GPIO113__FUNC_DPI_DATA10>,
-				 <PINMUX_GPIO114__FUNC_DPI_DATA11>,
-				 <PINMUX_GPIO101__FUNC_DPI_HSYNC>,
-				 <PINMUX_GPIO100__FUNC_DPI_VSYNC>,
-				 <PINMUX_GPIO102__FUNC_DPI_DE>,
-				 <PINMUX_GPIO99__FUNC_DPI_PCLK>;
-			drive-strength =3D <10>;
-		};
-	};
-
 	en_pp6000_mipi_disp_150ma_fixed_pins: en_pp6000-mipi-disp-150ma-fixed-pin=
s {
 		pins-en {
 			pinmux =3D <PINMUX_GPIO154__FUNC_GPIO154>;
--=20
2.49.0.472.ge94155a9ec-goog


