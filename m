Return-Path: <devicetree+bounces-100998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D11196FD3F
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 23:21:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E0D92867E9
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 21:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A76158DC2;
	Fri,  6 Sep 2024 21:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BP54Twvm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCD647F46
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 21:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725657693; cv=none; b=LbY/ogUSaFL78XSZVpxcM4+kXV5TVolHvwiaDZcyoVR6SY2msfqRdjVEqnhP949uQNKIsEBwvZdIYea+q6bx2acykRXeCdazbyBo2pPJnaa1VaV2FHpuAJQxuVnkmlNYDlVzPm+iEEdwhwEnJV+liKjfy6Vrnpr/vBCCLa98v7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725657693; c=relaxed/simple;
	bh=lWgLuWVDZsEwGTkwHWz5EUIxaF+yTn8ks5zWNkOBx+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KcTmCqrBGRh8KNXnS+eqx5D05DyNgs6r+P51/lFfIoScYBJKHo/ljym27jRZk7AFJrHe6Gk9aYUzfmT5IpN3J/zZc7R6CqHgqW9w25zKcTsonKvYm0JHNk6jTeXU3dfitVCenahxLHFtOqHIUm3h7GzHnNTnLJet8e+skhlCii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BP54Twvm; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725657690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1XgNokhgnZLHJ9w6Dbtf7+kicJZjf+p4lRARIcV93io=;
	b=BP54TwvmThztgYmXGRmnZ8ex6/UwKkxUyXiW71GYZPg4ERI/TSn7KTjikGo/MePNj6hwah
	5s0A+FovYRjIF3D1aBt/c3jBqmCFyk1tBVlqPOXlyHw1aAu6jP3QsokvMY5TF9H3ERpnCT
	ka3F3pVvqsWPq7+5wDsu08W4QSv6pOM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-688-sZeCv_SkP9CHi9b8vWhhIg-1; Fri, 06 Sep 2024 17:21:29 -0400
X-MC-Unique: sZeCv_SkP9CHi9b8vWhhIg-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4581b5172a6so8837931cf.3
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 14:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725657689; x=1726262489;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1XgNokhgnZLHJ9w6Dbtf7+kicJZjf+p4lRARIcV93io=;
        b=nZolb2ZYhSSXmS9gltQ02d8tffz5c0yMzYBH4r3DlNs3u/t0+6dH7jOpi8+6Fk+xW+
         bBh+BQUkBPVSvCAyXoWtwhgY7eEC8c6XiKg/eYw0yweyztwp93xeeredeAG+Yg7sCZk4
         MdHcpV1QSAt1wcvISIfYXeuLtCIJXnpraPtDfQyA9HY40qJvnkXPsMbA/7b7yt2aRMiL
         8gYOJYDe2fMtnTo+g8X7UiP6Ks6F7+aCF6+UQyP1tB7XEFImlCLfeftqhkksoEXP48df
         Qsr6wP4CY6kcAkNzgVhbFTaUko18StnNqdwGEfbyITD7+ZmnF64qJfRjqWIvEAzWXB3J
         7hyA==
X-Forwarded-Encrypted: i=1; AJvYcCUlbkVo3o2TlyXpltGTfhLcHiXzziRxTbPfT/luXp44aDo6vY+cRNLJ/ZHKznhR3oWQ06SvG176Kaky@vger.kernel.org
X-Gm-Message-State: AOJu0YyuCbij8CrYrfbTz9G3p407lKypHo/quAtzjesYxMxK0UpDdyGN
	VnVioJrDQ0kVmMF3Qtcgx6gZ3zsgHq86hNu/M6Z6dXrHznUtRipgbqjfYLroMbWNL+7GFRmqzVq
	jtX+SxnROCweE9yQNDCM7WT5qM3peW8D2qgGVWJ65kWztVPqoyllVQz5gA/g=
X-Received: by 2002:a05:622a:487:b0:458:12cf:f2e4 with SMTP id d75a77b69052e-4582010218emr4829651cf.18.1725657689400;
        Fri, 06 Sep 2024 14:21:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+qg/hx1oZqble1rXfDY8x3LrozBiErF38CIyhlgPt4o5J3PrazDcXHzLPX/zsQJCR1magsA==
X-Received: by 2002:a05:622a:487:b0:458:12cf:f2e4 with SMTP id d75a77b69052e-4582010218emr4829421cf.18.1725657689052;
        Fri, 06 Sep 2024 14:21:29 -0700 (PDT)
Received: from x1gen2nano.local ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4581add3a5esm4554791cf.74.2024.09.06.14.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:21:28 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Date: Fri, 06 Sep 2024 16:21:03 -0500
Subject: [PATCH RFC/RFT 2/2] arm64: dts: ti: k3-am69-sk: Mark tps659413 and
 children as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240906-j784s4-tps6594-bootph-v1-2-c5b58d43bf04@redhat.com>
References: <20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com>
In-Reply-To: <20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Keerthy <j-keerthy@ti.com>, Neha Malcom Francis <n-francis@ti.com>, 
 Eric Chanudet <echanude@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
 Udit Kumar <u-kumar1@ti.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andrew Halaney <ahalaney@redhat.com>
X-Mailer: b4 0.14.1

In order for the MCU domain to access this PMIC and its children in
u-boot SPL, the nodes need to be marked appropriately otherwise they
are not seen by SPL.

This is necessary if the MCU domain is to program the TPS6594 MCU ESM
state machine, which is required to wire up the watchdog in a manner
that will reset the board.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a1403..1c3427856982 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -729,6 +729,7 @@ eeprom@51 {
 	};
 
 	tps659413: pmic@48 {
+		bootph-all;
 		compatible = "ti,tps6594-q1";
 		reg = <0x48>;
 		system-power-controller;
@@ -749,7 +750,10 @@ tps659413: pmic@48 {
 		ldo4-supply = <&vsys_3v3>;
 
 		regulators {
+			bootph-all;
+
 			bucka12: buck12 {
+				bootph-all;
 				regulator-name = "vdd_ddr_1v1";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
@@ -758,6 +762,7 @@ bucka12: buck12 {
 			};
 
 			bucka3: buck3 {
+				bootph-all;
 				regulator-name = "vdd_ram_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -766,6 +771,7 @@ bucka3: buck3 {
 			};
 
 			bucka4: buck4 {
+				bootph-all;
 				regulator-name = "vdd_io_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -774,6 +780,7 @@ bucka4: buck4 {
 			};
 
 			bucka5: buck5 {
+				bootph-all;
 				regulator-name = "vdd_mcu_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -782,6 +789,7 @@ bucka5: buck5 {
 			};
 
 			ldoa1: ldo1 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -790,6 +798,7 @@ ldoa1: ldo1 {
 			};
 
 			ldoa2: ldo2 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_3v3";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
@@ -798,6 +807,7 @@ ldoa2: ldo2 {
 			};
 
 			ldoa3: ldo3 {
+				bootph-all;
 				regulator-name = "vds_dll_0v8";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <800000>;
@@ -806,6 +816,7 @@ ldoa3: ldo3 {
 			};
 
 			ldoa4: ldo4 {
+				bootph-all;
 				regulator-name = "vda_mcu_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;

-- 
2.46.0


