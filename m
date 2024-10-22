Return-Path: <devicetree+bounces-114129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7119A9E1A
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:14:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCC632847CD
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A069196C6C;
	Tue, 22 Oct 2024 09:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P0FZT93n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D641547F5
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729588492; cv=none; b=IjIGxs0QbRUjGx7VRCKkyBBKOSXpl8cKy8qvQcI5k9jh7NjhGeIINxp5KLyd1fuvHu9Qb0cm0oaOo9BZfDrbPJ3G949E8K/OE+AHr8TjAVYN04LYeZq6khEQq4q4xdLiB+N6D0tUVgeWPwAo9qczwBbwakLN1vT99aD5RKQzTIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729588492; c=relaxed/simple;
	bh=wSKQGobhun81DGiVxJM2HGz5+y0yyST2AV2Uk/RvNto=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=F6yw+jbM4OVuyw+cqEa9NElZKoQb6XhcgNmOJRPnNDU8zGI3Fl4IlPzxBSMY/4Dp2Quoinx2x7T2y4wfeZGPnoprm5HjqBajoCXz2Izn9n28yFVpH+42TNmWrGzVAeTqINCz+hLYjk3qUt5bDxAWb7tkvEs4iajc/aNAsOhdUD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=P0FZT93n; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4315eac969aso32024605e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729588489; x=1730193289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IpBvp0/0DlvQUBxhHGL26bil6ETD6nCI3WcQA6irRzg=;
        b=P0FZT93n+jH7jAO9vYrkVEZ0MwoDz16j6ezsBYx5mFM7opnkGo0BHPNXi2PzecFm/z
         3ioMtTPJqLbzG+rMV8ScJ5eZwiRjQfr75kirkujxy03+3aIPSiQIhUG97H3XvaVDvjat
         fQyrmmqDilOmy+hUaKTwfJjm5g+r4ngTTdx1uwb5U13udNcPxlKHkzIJNeBx52k9ertl
         fYKPe/mKyIVQBxulFZv5O8vQUVQeLqSLoEv7XC67Ft9JE7Q36eF5u4jJqbZveRFTs8Tc
         For+KTPteE8AIZQyMh+RlMwdc+iwhrO+Ky+owF2TJiHn9XkvrT1w16Ox+tXVWGXd9zj/
         m7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729588489; x=1730193289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IpBvp0/0DlvQUBxhHGL26bil6ETD6nCI3WcQA6irRzg=;
        b=Z7j9elv3HkplO+evXjk/ggJSz4K04n5B6KRQX8gMxSmJ4ZBRbNbMaEiUqLGP1eE7yi
         cmUYMA0dYuahlbUFvZfImh4IYQorDOyYJQgFzRLJRCYiF00THh8ckP5Gm9RM/GwjkGLg
         KAx1SikrxrgWI6p5Gn1VUB9PKZuE1FriCgNw+TC36W77AIwg82Ab/MJL7ubqViyJLwv1
         HI/L5FKH/awKQsol6JJZYwfvz/BND5c4kW+3Pc2gRfVqtHbzetmf4dZUq1GxEHVLfoID
         LML4fXm/9Eqfh3sRXgIKkPBZMyhVcDFwzVPMgzq72KrUemm5r3kgDOiVn78fRn+LGyQk
         7vwg==
X-Gm-Message-State: AOJu0Yx6UB9QJ63ibeb5JPxPenJtTpOTl7ypEsMTASyqzHft4GFqDWCM
	K6xBM27AT5WzUeRi5ojvF0MldULgcRWE32RtJPAXR9rslhfro33LS41mMD35vGE=
X-Google-Smtp-Source: AGHT+IH7SnJ2sdU5AM8P4AKFokK3vgs9DnbUOPVYuv5VCEaEWXS5JTI1m8v214DCjK9j8SI77e6Yqw==
X-Received: by 2002:a05:600c:3504:b0:42c:b54c:a6d7 with SMTP id 5b1f17b1804b1-4317be9c063mr16339425e9.14.1729588488910;
        Tue, 22 Oct 2024 02:14:48 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f58b896sm81493445e9.25.2024.10.22.02.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:14:48 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Khuong Dinh <khuong@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
Date: Tue, 22 Oct 2024 11:14:29 +0200
Message-ID: <20241022091428.477697-7-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3061; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=wSKQGobhun81DGiVxJM2HGz5+y0yyST2AV2Uk/RvNto=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnF2z6/9fi0ahiB0JIsgZU8vfi8oh2COVUjU9UO NAm5bLXozKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxds+gAKCRCPgPtYfRL+ Tt54B/0U2GWD/etZkYyoKFxOBafMQ8pH84hO8aui7EC0xmJhNS8fnpHy6NqOHEg0R8ntwuBEb/e pwcv/YcWS28XZIwrzoHSatgIRRiQ2Rw5qHzu7BnCQpB8VD37FEFSj1KsopFymd0oILn0Vr5Qw5P tY7COEtwmBu11vvddJBfc8I7Hz3zWYcd2dbuwzWw+sKNU9HQI3W10NrqNFLSup4KffKfSl6rzMi CoMzprmcltb0a9+sSxGBXy8auozIomPQ4hnx6TYUtzDREbZOThq1n/m4Of65SZZ6XvdbNoA5pEv KwhkZB7RlmvQ00UednQd7WziyA8nf3PsyGVJ2DbvfVfhaqgq
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
("dt-bindings: gpio: dwapb: Add ngpios property support"). The
respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
Add ngpios DT-property support") which is included in Linux v5.10-rc1.

This change was created using

	git grep -l snps,nr-gpios arch/arm64/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/

.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm64/boot/dts/apm/apm-shadowcat.dtsi     | 2 +-
 arch/arm64/boot/dts/apm/apm-storm.dtsi         | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi  | 4 ++--
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
index ea5721ea02f0..38ac3af87d8c 100644
--- a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
@@ -723,7 +723,7 @@ porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 6ad4703925dc..89a42f9cd1a4 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -837,7 +837,7 @@ porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 2a5eeb21da47..5041d32f4cc9 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -229,7 +229,7 @@ porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <24>;
+				ngpios = <24>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -249,7 +249,7 @@ portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <24>;
+				ngpios = <24>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 1162978329c1..ec2011f87207 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -235,7 +235,7 @@ portb: gpio-controller@0 {
 				reg = <0>;
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <24>;
+				ngpios = <24>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
 				interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;

base-commit: 7436324ebd147598f940dde1335b7979dbccc339
-- 
2.45.2


