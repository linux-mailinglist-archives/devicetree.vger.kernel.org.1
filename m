Return-Path: <devicetree+bounces-247227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 956D8CC5CBC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6224B3004616
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74FA2853F3;
	Wed, 17 Dec 2025 02:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nr8mJnI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0030D281368
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939346; cv=none; b=FazznZo1xWPKRxxPn8r6Ka4jBmhZ8eGHq5hDKmTTR2iQhsG4xPG/SRWn5PeR3m/PDnUBaNCAvGwQIPZ1zaNLw6UKvFUjGNExTEC/oG6hXuZPNn6fRsSX4+T8ox6Zp2hFyALE5hkQ+/I9jS+e7ASF0gnJaHXUBB4RJLes6lLzGKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939346; c=relaxed/simple;
	bh=V1uDN//6fwAfIJdBPWewZAkwCmuDrSueZYlOp5BDIy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Uem8AYyDqg7yLuUM6E2+Y5RC4v9u1j5LbgHbYO4ZnBjF+Iwe/AiBrNhtJsZMosS9gRP9X2jp8sh9tJD8Q4pGOpVYfE1m/KkrYG/jKGjTy10gi6E0aG9vxeH8i4lMwU1DkXq44ziPhfczcCp3CkGjL+of1ivchJSMAgu53jqfDN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nr8mJnI8; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7b89c1ce9easo6150222b3a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939344; x=1766544144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAvaRpzOSVNKUVUd3z7yZ4rULdWPUD/lWxZmIty2N/Y=;
        b=Nr8mJnI89AEzark6ukoOFIFcfWFFCW9zIOGCFKFKIJbL0CHod7820NSclMLKanRAjy
         efP96yVbeLCUrCUrc5j5f6tTiU0KoqysfXRcb7rIA1cSUTHjve9o7davjclAZZGaDzi2
         ro5ccUhpD/UppTAsXIkZhekdemSxKrcDCBWYA2aYzbIGLGex2NX794Fuhrv+9QHFDsQT
         nd6oyn4NZLuSQRQXTa40IG2tg+/+So8qy/jV1HDzynGKj70hN/HHCBaWk0BLUGpXEAWN
         cxqBmusjmDmwnZId9I9JtM8XSspLjQlNZkbYUttBgTzsYZWME0psIE+XjQrlr+ZxQ7W4
         wOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939344; x=1766544144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RAvaRpzOSVNKUVUd3z7yZ4rULdWPUD/lWxZmIty2N/Y=;
        b=RmXOWvcteYUU+Gaku9kO6MWTOUmaQn7sWt4iheLO1s94oht6/OLgKpgwhXxf4StaWN
         OYzZAPL50dNqOYzqmHjXS6u6nEkjkzfKSn8KmtqQyELJVQKex5Lx/n8ssSnAgyPlE3HM
         nc/l6vW5g8kEQ8WrwpwJ3VYbCKkdoi8j2EnZh8FJIjtiAw9OQt8NiCupWfOA0SsXSnzB
         3Up8/hZAyYjEtcv3yr/zl4zJp8xoPtXOJb8Ootch11a3Yq7XyXjZ30ABc+j4e0yB0rfk
         VW36xQKBHXohV3ErJVsdrzCjzq2u3+0zusLLrWgP/ByTZcc8ENWDWdvU+qfQdx1VfRom
         +gbA==
X-Gm-Message-State: AOJu0Yzzxla7KlDksZUT8bKSzxwTBDDXbRPnvAPN2bUBpeRjBpVk7WVJ
	8UkHZWds1l0nq4FxlynxTSe20bt7mbv4zm9yjH1XMk4W0A48aBQtGq9i
X-Gm-Gg: AY/fxX69pxul/hKlt3RMJHa0fWqYBvpa6kiPYbhaqBcFEDsNi20VDg4UaHGqMzpEhee
	BgbSdv3zepsflWf8nNKs1z9+aAjzUGApTK5kERRpkg6tonnrmg8qoQgmyq5ZwY0GCXqKazAhTnp
	WpzOANiMLKIWLiEb/uRzQOsVMWIX5Fvvs1xCX+rvVmRDETrXfycwrztXdRYXh/HzCzRNLfyTflX
	cxW0JxE6vE5QK53pC9w1sOVwWilw7gYqquvBAaICDU7F0LU8jgN/YFGE0SNEg7lFEfTyK6TLPXG
	y9UGv2zgChBiAua/qzzOO4tf8QV+DL+2LcQhl7E5a8zOp58G7BxPjoOJ1NNXMpGXTyptAagKbeg
	PTIe0Dfl7hEUMl4dpQKCvL+BK/GC3PS5etQRnd5DnKQJH8b+p66nt6iECjwYf3BjSecNUd31gky
	dpY1G/ooPEjFJcainj3F3MEorU8xASigwYQhSPnbDvNlZkwUFRWvIs/k6htopXAGbIbJKkrJyGR
	ETV8d45eKJHkyk=
X-Google-Smtp-Source: AGHT+IEdo+oIswqNvPYTC0alUaHeiWR1/K/Mfky4uyf2799xeagzkReyHg/WBV9BGT3F3fHpH3VwIQ==
X-Received: by 2002:a05:6a00:a118:b0:7ef:3f4e:9182 with SMTP id d2e1a72fcca58-7f669a8b0c3mr14790222b3a.47.1765939344119;
        Tue, 16 Dec 2025 18:42:24 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:23 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 3/5] ARM: dts: aspeed: bletchley: Remove unused pca9539 properties
Date: Wed, 17 Dec 2025 10:39:36 +0800
Message-ID: <20251217023938.445721-4-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unused #address-cells and #size-cells properties from
pca9539 nodes to fix dt-schema warnings.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-bletchley.dts     | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 5919a5046078..8df145d2bcfd 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -373,8 +373,6 @@ sled1_ioexp41: pca9536@41 {
 	sled1_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -462,8 +460,6 @@ sled2_ioexp41: pca9536@41 {
 	sled2_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -551,8 +547,6 @@ sled3_ioexp41: pca9536@41 {
 	sled3_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -640,8 +634,6 @@ sled4_ioexp41: pca9536@41 {
 	sled4_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -729,8 +721,6 @@ sled5_ioexp41: pca9536@41 {
 	sled5_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -818,8 +808,6 @@ sled6_ioexp41: pca9536@41 {
 	sled6_ioexp: pca9539@76 {
 		compatible = "nxp,pca9539";
 		reg = <0x76>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 
-- 
2.43.0


