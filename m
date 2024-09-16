Return-Path: <devicetree+bounces-103339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D84F97A691
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 19:15:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4995B2477A
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 17:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F9D15CD6E;
	Mon, 16 Sep 2024 17:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="S+n0hPbs"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8B15B96C
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 17:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726506905; cv=none; b=VPfevlwT2QY9DtcopdATCHPYNbEH+766AUG+EN3ZXHrrBC2kQktq4Xk9uEv9/GzcJcznSf3OTdJLIlJqJvoI6R28SWTiyvdheZNQVcjdPJStibB6O9jDn/XOAZkWdV0azk/EqVUcN/6skzxZyn0fVNAYcFKQtdlrIsUGhOXT02U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726506905; c=relaxed/simple;
	bh=4ECZLKiRHA+gtMcwnStLm7lZ8TTumzynBfppq8efj+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UzTUE0P9ZeeTGdNfNhny5RoJFn0Px6Lf7SioiC4dgbd3i6wjBVBSkp1YeiDvzF4RKDrUKK1MQ5ThoDzUk19tkJLzAiB+69LDHsgtBDbN62vp0CXn2jqPgEDYrSE6KzfWA/7KgLMT8S6eDydQznrVFlZXLPyR7jMxp9P+KvzMEDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=S+n0hPbs; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726506903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/dEEkhuQZAOrCmKjg6Ee/Hctgl/7cBRuPP+SnJEJWVw=;
	b=S+n0hPbs9CnIaqsgsTECZJ/u/dJkI9Ua+HubFMN+TL7GIEXZHXh7rIR1kBwmBjukTrEp6O
	JCSFtgQkDSnDvYoqOpei4VCccL80QRHV7iAFTI1AJ2qWM3+qzoYYsg9+3lZt49jUpVXGv0
	8xCZ/AfBcUCr9A1Cs5uoqeXnvMkt4LQ=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-657-5fwfP_SeOf6vajjGL9iICQ-1; Mon, 16 Sep 2024 13:15:00 -0400
X-MC-Unique: 5fwfP_SeOf6vajjGL9iICQ-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ac8f684cdaso177486085a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 10:15:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726506900; x=1727111700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/dEEkhuQZAOrCmKjg6Ee/Hctgl/7cBRuPP+SnJEJWVw=;
        b=qgzDI25Ot1nc7NfwAHZGVvGMz8f8936woc1h9VGFLxe8TKMA3fWB3m0B9B6hvaVh9j
         oJErFzpqWWiieIgdBvq+MBkSr8jbmfQlljw5hZUWKB3bMwRQJiApTOGgIxNWHS1vKFEa
         Doc4b6vuk+zKTMqXn1AUIes1H7fCHP3XgzRkV45X6n+dRQX2AGCAyqR4lBnIe6qGWMRE
         CHmOPY6ze2NC5+gb4KuKSf9/Qm9UrDfmkjz4p4ALfeiXr0xNr4V3/QN/MWwvTHZSrjVU
         IZJtVnDgmCOfpDXNVYZ0pCZGVKyajW3CSxrCAO/5SScyukQCyZWPXsW7FAGLrsFpqQ9U
         YsTA==
X-Forwarded-Encrypted: i=1; AJvYcCUfuYiAONIOEsZu9dvVCOgw6OwinZMnMYbQu/Kgd/1aBfNEdCqxbk0UjEhADWNTrw6fr5Q0c1sjYtDu@vger.kernel.org
X-Gm-Message-State: AOJu0YypfHJI8q07iC7Htt2Yak1fXCdd79e8n1qylo3WWNZxVBOLzi/G
	QJcPvIbBTdEF2HOUJU2NvYrqgXb53Cm/PLKTGSlcUvmR2uxNZlaY44iBzO9aNC4qi70/kHjpUnI
	pr6BzoHK0my9QcTMm03Ayq7f9Uw6t2bH/zuJu4iYjdHrkJ+ZvONU/vczqA32zbUTWlEyZI1VIxi
	+/Bvw4+NZ31gWL7iZ20lCUFq2qwwm3XPYngoP+e3MHXLU=
X-Received: by 2002:a05:6214:311b:b0:6c5:119f:de71 with SMTP id 6a1803df08f44-6c57351057fmr203020656d6.4.1726506899935;
        Mon, 16 Sep 2024 10:14:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu9a0U8VximqKCxmOsMbOtnFV+etYAH6DyNbSVDPs/EdOxgubQUM0Lat71tP/H2RBIuxlwXw==
X-Received: by 2002:a05:6214:311b:b0:6c5:119f:de71 with SMTP id 6a1803df08f44-6c57351057fmr203020246d6.4.1726506899508;
        Mon, 16 Sep 2024 10:14:59 -0700 (PDT)
Received: from x1gen2nano.local ([2600:1700:1ff0:d0e0::43])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c58c6262d9sm26342046d6.28.2024.09.16.10.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 10:14:58 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Date: Mon, 16 Sep 2024 12:14:52 -0500
Subject: [PATCH v3 2/2] arm64: dts: ti: k3-am69-sk: Mark tps659413
 regulators as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-j784s4-tps6594-bootph-v3-2-ab70da0de7bd@redhat.com>
References: <20240916-j784s4-tps6594-bootph-v3-0-ab70da0de7bd@redhat.com>
In-Reply-To: <20240916-j784s4-tps6594-bootph-v3-0-ab70da0de7bd@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Keerthy <j-keerthy@ti.com>, Neha Malcom Francis <n-francis@ti.com>, 
 Eric Chanudet <echanude@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
 Udit Kumar <u-kumar1@ti.com>, Beleswar Prasad Padhi <b-padhi@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>
X-Mailer: b4 0.14.1

In order for the MCU domain to access this PMIC, a regulator
needs to be marked appropriately otherwise it is not seen by SPL and
therefore not configured.

This is necessary if the MCU domain is to program the TPS6594 MCU ESM
state machine, which is required to wire up the watchdog in a manner
that will reset the board.

Tested-by: Udit Kumar <u-kumar1@ti.com>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a1403..5f24a1608bdc 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -755,6 +755,7 @@ bucka12: buck12 {
 				regulator-max-microvolt = <1100000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka3: buck3 {
@@ -763,6 +764,7 @@ bucka3: buck3 {
 				regulator-max-microvolt = <850000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka4: buck4 {
@@ -771,6 +773,7 @@ bucka4: buck4 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka5: buck5 {
@@ -779,6 +782,7 @@ bucka5: buck5 {
 				regulator-max-microvolt = <850000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa1: ldo1 {
@@ -787,6 +791,7 @@ ldoa1: ldo1 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa2: ldo2 {
@@ -795,6 +800,7 @@ ldoa2: ldo2 {
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa3: ldo3 {
@@ -803,6 +809,7 @@ ldoa3: ldo3 {
 				regulator-max-microvolt = <800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			ldoa4: ldo4 {
@@ -811,6 +818,7 @@ ldoa4: ldo4 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 		};
 	};

-- 
2.46.0


