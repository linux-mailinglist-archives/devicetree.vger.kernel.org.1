Return-Path: <devicetree+bounces-121423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAAB9C6B4A
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 10:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D7C228406F
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB241CFEDC;
	Wed, 13 Nov 2024 09:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Mb4v2H+G"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19231CEAD6
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 09:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731489358; cv=none; b=V8qY0UvuYSmVthmPOmaOxwYUzaWq/+FHLf6dZ2rKqgtjQ4Gv8uGweZeyESnZ6cMKoML9644vCx1ySy4sAUmAfGEssKNtOsmU6g7Kw1D7NrDNqoSH/a1ZsbkWoKoBLat8adV8lBV6zc8nRaSNkD6Owc11OwQszbnaqFKIr2Yq3RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731489358; c=relaxed/simple;
	bh=rDuQbqdpNXAdRleEHy2KPRXe99pZUsEndFpJKZe1Ul8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ShubwJn+0KAn7UWNpaoNesXYjq8evzi5SYc7iw2hGoMU2VvEKGSUQXNoTK9r9qew+jeo+L3qYWWIh4ChyIMy0QBm0+5Tbe/5Ezqx/rkVgbi8VCJ4VB+rIgx1nEN+9ydEuCpe3Tl8bfICj/2jfzXlXFUYBhzVTDd9+qQ0oRqU19I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Mb4v2H+G; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731489354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SyNqt8aPo2Io7Ip5TdGcstns/qt+WdL0+YE07BawOc4=;
	b=Mb4v2H+GLDeONOS9bgAx6WbdP4WKZLvYZWrZi3ckm4ZD/yvtHYbrWwrTvbEQrPYH5wIBqd
	p4Idr0WOXPtUKOEc1hjI8QRcSj411NSTd4pCf83Y0R5IIXQmS3dJslLywjNWkL00z9ZU/z
	cAqDNPlvVt+ZWsTqdWKYFoL+4Md7YM0=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-216-7JVrf3fsPTCoO3UV6lknPw-1; Wed, 13 Nov 2024 04:15:53 -0500
X-MC-Unique: 7JVrf3fsPTCoO3UV6lknPw-1
X-Mimecast-MFC-AGG-ID: 7JVrf3fsPTCoO3UV6lknPw
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe5e8658fso10762796d6.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 01:15:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731489353; x=1732094153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SyNqt8aPo2Io7Ip5TdGcstns/qt+WdL0+YE07BawOc4=;
        b=GgnICimTs/fLIKU+gCH4r/6A0mkRSWQ6ushfZqR/LiLawSRA1uBiq6rPhOfQl+0P1B
         xOaoucySMb5rmfvMp5O0coSBJV4/vvAEinJkHFxGbPRCcJLMfAgY3ID1Ul27oYHkjAyA
         vdD1OSi2sC+65IoCxDTjDXDO02LgySw+hMSnWQE1GtGF99tO/oId6sw0KDrM2rlB3UUZ
         4dvuHzUzYFSfa3z1xyRiCpOjKArvs2nH8XblQIp05ZDEX+IUkqSa0L7JLOSqvf5ZiNx3
         lN6RMwRb/piTNwvzvdc5qg0Dhic7AteGcqntII41/T2YN06kAyJ2Xpan83U7R99WZP4U
         s+Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXNTM7Lc25XqSlssccUDeP7Q+R8mcDXMqZ4h2W/iTWdtxxUkFcgHcX7iRV6vMq/OOVbDl00r2qsdLmk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6WdhJv+X+QKlBNfkk0ZdjnPUD7gk/wRAZ78jHqE8zWxksvG+s
	a/BkxLYwKOyv+3ruUam9TYV8GKgt6u1I2EM4RmmgV8oVDgoSzqs+5n0+BLbwZ4TtZwXQWqnaInI
	etY5aA4b3a7vYJ8dQy3y9te6zE7sNMrnr8TeV5J5ZpfhoZE6LJJlf3INIP7U=
X-Received: by 2002:a05:620a:404f:b0:7a9:b8d1:a26 with SMTP id af79cd13be357-7b331df0cd1mr1219905285a.9.1731489352955;
        Wed, 13 Nov 2024 01:15:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkuPuScKyX1T0vb8WeWnUb4ONV21XD7R/UenhQXM1utQhCNEWNP/QDFPKxTWLzfl34ulnQhw==
X-Received: by 2002:a05:620a:404f:b0:7a9:b8d1:a26 with SMTP id af79cd13be357-7b331df0cd1mr1219903485a.9.1731489352654;
        Wed, 13 Nov 2024 01:15:52 -0800 (PST)
Received: from [192.168.1.51] (207.red-83-46-1.dynamicip.rima-tde.net. [83.46.1.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d396630ec5sm81599036d6.101.2024.11.13.01.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 01:15:52 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Wed, 13 Nov 2024 10:15:16 +0100
Subject: [PATCH v4 1/2] arm64: dts: ti: k3-j784s4-evm: Mark tps659413
 regulators as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-b4-j784s4-tps6594-bootph-v4-1-102ddaa1bdc6@redhat.com>
References: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
In-Reply-To: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ajhalaney@gmail.com>, 
 Andrew Halaney <ahalaney@redhat.com>, 
 Enric Balletbo i Serra <eballetb@redhat.com>, Udit Kumar <u-kumar1@ti.com>, 
 Beleswar Padhi <b-padhi@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731489348; l=2439;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=Dvhi3Gt7Odo9dVXHx7VXzmWoekxBbFFnYwVuOOdgAag=;
 b=u69OhYHAzlTos20kPrIxKDwCWikOwk4pgl65Cud8E94VrWsbqzR4VbDSPWk9lhAczuiK2m35e
 j5ds+lco+bZA+H07LMDdKMIYzyBmJVuL2VQYmguFPBJbUlZBRKU/ImR
X-Developer-Key: i=eballetb@redhat.com; a=ed25519;
 pk=xAM6APjLnjm98JkE7JdP1GytrxFUrcDLr+fvzW1Dlyw=

From: Andrew Halaney <ahalaney@redhat.com>

In order for the MCU domain to access this PMIC, a regulator
needs to be marked appropriately otherwise it is not seen by SPL and
therefore not configured.

This is necessary if the MCU domain is to program the TPS6594 MCU ESM
state machine, which is required to wire up the watchdog in a manner
that will reset the board.

Tested-by: Udit Kumar <u-kumar1@ti.com>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
Reviewed-by: Beleswar Padhi <b-padhi@ti.com>
Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
index b2e2b9f507a9828d49b1eb94d098b2c6682cef0e..2664f74a9c7a4dbf6625f12fe52ba4b57d5636c0 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
@@ -635,6 +635,7 @@ bucka12: buck12 {
 				regulator-max-microvolt = <1100000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka3: buck3 {
@@ -643,6 +644,7 @@ bucka3: buck3 {
 				regulator-max-microvolt = <850000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka4: buck4 {
@@ -651,6 +653,7 @@ bucka4: buck4 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka5: buck5 {
@@ -659,6 +662,7 @@ bucka5: buck5 {
 				regulator-max-microvolt = <850000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa1: ldo1 {
@@ -667,6 +671,7 @@ ldoa1: ldo1 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa2: ldo2 {
@@ -675,6 +680,7 @@ ldoa2: ldo2 {
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa3: ldo3 {
@@ -683,6 +689,7 @@ ldoa3: ldo3 {
 				regulator-max-microvolt = <800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa4: ldo4 {
@@ -691,6 +698,7 @@ ldoa4: ldo4 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 		};
 	};

-- 
2.47.0


