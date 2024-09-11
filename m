Return-Path: <devicetree+bounces-102121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF797592C
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3E20287496
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED86C1B2EC2;
	Wed, 11 Sep 2024 17:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="B9L5M+wT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596F619755E
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726075162; cv=none; b=j4ON3T2sW1HVkDP4VlmRmPqAPQma81DmbJxHkzpalzZhWUb63Jey9HkTfjRssgA0FewH6jYfFIchQioiR17R+PtRsEb317vfwnYkDNlBdpyYxk3tqlc8+5sejrMF21gYpjT9UNJaoh02hhnKIQlSjpVAEts/tvgvIBq9jPWLObE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726075162; c=relaxed/simple;
	bh=abcrX04S0JTXsgAYb6JWyW1rcVXIVGJKB6zjLZV0boc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZD9Z1SF1zMMccwuvHZjr+ZYqlBqPOjPvuc9/6wwb85ddN7WjJdFFUlJjEM78ALG8cpSV0Qym9+JLxIlr068/KQ0b2YOdnzYKDTjYz9IKEjzwfDzb9BDpJgQZcM0DRv8c1v020dsNfYVMaZdH45hNISAmEU80FZWcRnShWbV7wxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=B9L5M+wT; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726075160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5r0R22whOOpUU0/9fd/RJw7tJIiR67N6A+jwL4ueXwo=;
	b=B9L5M+wT9vOhIo5NeqVCMSc3Nc7jRUbRYGKz/jMPXLqT4ZKS/5cAeHf7KOXdxJqXrqY8gD
	h6w8h4ltAorhd27algwDo5hH2f5Ud29gfrlol1Ks7Sgw49BVeLGXoOI1LxNrsDMnP90LvV
	z4D74ugAWGOmmXuzZu46H7Ao4lTO2ig=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-657-cOsRodoWPeWBWnZEauqOPQ-1; Wed, 11 Sep 2024 13:19:19 -0400
X-MC-Unique: cOsRodoWPeWBWnZEauqOPQ-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a9b6181a13so19042585a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726075159; x=1726679959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5r0R22whOOpUU0/9fd/RJw7tJIiR67N6A+jwL4ueXwo=;
        b=pELpyUX/XzSGk2z5VjciMwMcVLLQljy9NUwUxM17wZjaFwLYkc7c4bSf13zeE5scjg
         /dNOwh27SSP1FquGWl8DmRiQIa9+DNmZWeVTnppZN2reD9aDLzfPQymnzPo8PF4zymWW
         KuuTZNoypuxlkglzxibzWoR/FV6dr89V2UrOzU0X/032WErShRxWaKLaP1zl+SrS1rFp
         q9zFiVb1Q6AQNY67uc0NcoWsoGEckts1WME8gfo2Lf9BCKIZAG26SsEsCgCbtWaZXj/x
         iVNU9ko96LsEoPB6p2cNabNt7FfJhq98jByqQtmK+stCQcoTrYdTtT19bcQzomAROMly
         f3bg==
X-Forwarded-Encrypted: i=1; AJvYcCUGoJJujzB1x3Ne2gH9NjdmK+neZO1L86Kzvp9QmLIdMTbKeUVeJHc6VyD5StfDGkE++3gEP+463maP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw466N2OCcW7W66SSAwGSnm1sp6m5J98tGlpgjQCOY6Fg8dmLMk
	sAvsnnftS7S3kccBSBqAtJZ216b9PxIt4Ge6Oe/R/AwYbwQ4YVupeUcNZ15viMB0pYrKm6Iww7R
	ZbS98dchHOQU63/3DhAsWnW5SVJ7tqQtRpR0BcQcGcGE9cqpZHeIDLfQdKXw=
X-Received: by 2002:a05:620a:45a2:b0:7a9:bdac:63f9 with SMTP id af79cd13be357-7a9e5ee71c2mr16433885a.10.1726075158738;
        Wed, 11 Sep 2024 10:19:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQYXLI8KOJIn2GMl4Oknyi9IRx8MU0moKXYKqiignhkPAmPYGPwQezF6PHsSmYBJBoSUrLIA==
X-Received: by 2002:a05:620a:45a2:b0:7a9:bdac:63f9 with SMTP id af79cd13be357-7a9e5ee71c2mr16429985a.10.1726075158322;
        Wed, 11 Sep 2024 10:19:18 -0700 (PDT)
Received: from x1gen2nano.local ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a9a7946b8dsm444433285a.17.2024.09.11.10.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 10:19:17 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Date: Wed, 11 Sep 2024 12:19:02 -0500
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-j784s4-evm: Mark tps659413
 regulators as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-j784s4-tps6594-bootph-v2-1-a83526264ab1@redhat.com>
References: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>
In-Reply-To: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>
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

In order for the MCU domain to access this PMIC, a regulator
needs to be marked appropriately otherwise it is not seen by SPL and
therefore not configured.

This is necessary if the MCU domain is to program the TPS6594 MCU ESM
state machine, which is required to wire up the watchdog in a manner
that will reset the board.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
index 6695ebbcb4d0..6ed628c2884e 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
@@ -663,6 +663,7 @@ tps659413: pmic@48 {
 
 		regulators {
 			bucka12: buck12 {
+				bootph-all;
 				regulator-name = "vdd_ddr_1v1";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
@@ -671,6 +672,7 @@ bucka12: buck12 {
 			};
 
 			bucka3: buck3 {
+				bootph-all;
 				regulator-name = "vdd_ram_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -679,6 +681,7 @@ bucka3: buck3 {
 			};
 
 			bucka4: buck4 {
+				bootph-all;
 				regulator-name = "vdd_io_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -687,6 +690,7 @@ bucka4: buck4 {
 			};
 
 			bucka5: buck5 {
+				bootph-all;
 				regulator-name = "vdd_mcu_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -695,6 +699,7 @@ bucka5: buck5 {
 			};
 
 			ldoa1: ldo1 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -703,6 +708,7 @@ ldoa1: ldo1 {
 			};
 
 			ldoa2: ldo2 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_3v3";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
@@ -711,6 +717,7 @@ ldoa2: ldo2 {
 			};
 
 			ldoa3: ldo3 {
+				bootph-all;
 				regulator-name = "vds_dll_0v8";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <800000>;
@@ -719,6 +726,7 @@ ldoa3: ldo3 {
 			};
 
 			ldoa4: ldo4 {
+				bootph-all;
 				regulator-name = "vda_mcu_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;

-- 
2.46.0


