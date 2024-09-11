Return-Path: <devicetree+bounces-102122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE91697592E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FFE41C2329E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 803A01B3F20;
	Wed, 11 Sep 2024 17:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YWa0TK8W"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E7C1B29CA
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726075164; cv=none; b=tjN/cejmbeNicVhZc7JgG7FbvfplNVvdnmE6Qzra98ykogz6h+fFYJpUOrVU/hJmqJXScnbQY465YZyfdSGUQsyNVXR1r395P98OBI0s5eJFk1QCpUSxyVOjd+fy7Xlqrf4DBuJ7pvgnOPaoXvhNIn46tk4HX6M/9DYh4DQ9WLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726075164; c=relaxed/simple;
	bh=iw2iSikTXppvSflwFHwu/wnoymaTVdBuSmy2VWueHZA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t28sn49Uf8c5L4TST00isuO3P1zFGx2bs5lNXlCUBDAZwJXY3cQ0I9awxlKHImxsA/7+gA5FrkYECWB8HuuSDvRbSlyKnY637yJe1A7FUtWF9JOJzG3T4n6lOOoO9zjU8d0MqiPgUIvNv/fWRukek3i+ZvdUf+2/fcpI4xNLX1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YWa0TK8W; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726075162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=28X9ofa4FVqd/RIfjVnu92zTF8CwDhdmgTu8lcrYQV0=;
	b=YWa0TK8WbRm9wGKWx+mNUgwJ1ftsffdi56VkZpyinfGd+bEzfnJXiYa0M4dj6qsuIkW0Dx
	ttHKkIH45vu2XQOvy4YLwLbI3Q0r0T8Y4Dal+KnEqwaNo9R6GmWzzlVkjnNGxf1S+rGiCJ
	G+prfIL+XOEUliIske/oWi6IqPofSB0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-wS6FmdGKN5C3LZRw7KYnow-1; Wed, 11 Sep 2024 13:19:20 -0400
X-MC-Unique: wS6FmdGKN5C3LZRw7KYnow-1
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7a9a74d39b5so14642785a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726075160; x=1726679960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28X9ofa4FVqd/RIfjVnu92zTF8CwDhdmgTu8lcrYQV0=;
        b=CKsJP3bBdUnrbjK9q4R+KoxWgPQy0La7pY8j3E8D1F9tcf4yFV/UAkMFAnPv+83/Z4
         T2JZtM/17N/uRK96xfgn5o8SNA4mVkGFhJtOyaWcj+8AlriI/UCiUE2C7e7VU2YQ6Nl9
         OWYIqsvMw6o6YRJoCPOBC/6u7LAYhQy7VE9lXFWNFVvfo54Lsvwd4VsxBzXXKYK8gG7/
         av8i6MDRLMhEDv84CSvlI2P+rxYnkHssiJWE3GWK+nuYSlnHti6FLVQevo2KxKXWHxLX
         jNQ6yT4jPBOIYQc0ipIAbcOHRPSywrNo2i4BM07xN8aI+mFLff5V4TfDEk2/RTgdGBGg
         Tp2A==
X-Forwarded-Encrypted: i=1; AJvYcCXcpb6uzjVTuWKLTmasRGokaQQng/n2DqgY5LKq/TmA9NcbDLLyQ7FdhPp2EN25GCfk5yW00s1aTgMK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb8veo6esxFtN9FO4i0et/0lzKuSK6ELqUFhfC4D9LfJKXKteR
	Trmc2Zk7monwD3i/+k6Lfbb423Jb7GLvMAlIp+KMe0XGh19GOSkidlOVwl37bmBlrqKbqCYp/rD
	RMso/CZsM7xO/htNIWaTvh5Ey5daBU6kjad0bAMz6usNytXn7pfU8NuBxnMo=
X-Received: by 2002:a05:620a:3711:b0:7a8:364:80b0 with SMTP id af79cd13be357-7a9e5f76f81mr8394785a.47.1726075160246;
        Wed, 11 Sep 2024 10:19:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwsQHEC7AmJgNaLgdRNL5pjLQixLL4YicXWOSGR3WlgK3rdczRispOhGIGDgkTse+2AyL9Xw==
X-Received: by 2002:a05:620a:3711:b0:7a8:364:80b0 with SMTP id af79cd13be357-7a9e5f76f81mr8392885a.47.1726075159852;
        Wed, 11 Sep 2024 10:19:19 -0700 (PDT)
Received: from x1gen2nano.local ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a9a7946b8dsm444433285a.17.2024.09.11.10.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 10:19:19 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Date: Wed, 11 Sep 2024 12:19:03 -0500
Subject: [PATCH v2 2/2] arm64: dts: ti: k3-am69-sk: Mark tps659413
 regulators as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-j784s4-tps6594-bootph-v2-2-a83526264ab1@redhat.com>
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
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a1403..f4d158a0b97d 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -750,6 +750,7 @@ tps659413: pmic@48 {
 
 		regulators {
 			bucka12: buck12 {
+				bootph-all;
 				regulator-name = "vdd_ddr_1v1";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
@@ -758,6 +759,7 @@ bucka12: buck12 {
 			};
 
 			bucka3: buck3 {
+				bootph-all;
 				regulator-name = "vdd_ram_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -766,6 +768,7 @@ bucka3: buck3 {
 			};
 
 			bucka4: buck4 {
+				bootph-all;
 				regulator-name = "vdd_io_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -774,6 +777,7 @@ bucka4: buck4 {
 			};
 
 			bucka5: buck5 {
+				bootph-all;
 				regulator-name = "vdd_mcu_0v85";
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
@@ -782,6 +786,7 @@ bucka5: buck5 {
 			};
 
 			ldoa1: ldo1 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -790,6 +795,7 @@ ldoa1: ldo1 {
 			};
 
 			ldoa2: ldo2 {
+				bootph-all;
 				regulator-name = "vdd_mcuio_3v3";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
@@ -798,6 +804,7 @@ ldoa2: ldo2 {
 			};
 
 			ldoa3: ldo3 {
+				bootph-all;
 				regulator-name = "vds_dll_0v8";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <800000>;
@@ -806,6 +813,7 @@ ldoa3: ldo3 {
 			};
 
 			ldoa4: ldo4 {
+				bootph-all;
 				regulator-name = "vda_mcu_1v8";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;

-- 
2.46.0


