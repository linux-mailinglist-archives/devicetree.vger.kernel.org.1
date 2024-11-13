Return-Path: <devicetree+bounces-121424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A66379C6B4B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 10:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66FEB2822B7
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8EB1D0786;
	Wed, 13 Nov 2024 09:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YScggIdP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1EF1CF7CE
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 09:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731489359; cv=none; b=tZeTwOuPfgS0c/tmlvyCoG3VHrm5651Oxzif3o5jQ1FXf6X58nK/Xm+I+6hQrQG88ZacwHahHGmRIAsXEWPqU9ZnMJ8SnwhZfqRyMjqeXX4OvAHPrPjkJfFteC46lDb8dweItAZA02bYgVf2qZwFHZBGg66Og0pUoavZrgxFadg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731489359; c=relaxed/simple;
	bh=z/u1dS7bqU+pERIEwXwPJnV5rEt13+2pmf/a0imcVHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lZMCPq3KHcMBM4wNh8FV+eDVJ/W3s8VZcHA693CzNLC4E4D+nHHS46bWbuuAovm+lbORv4uJr6x/6vRn/HTvn/LKbRZCXbtei5uDk29wehsiwKkYnphAsLBaYFPGBNo7yoUbSrgjGPQ1XyJpjuWp99MR0V5PfbQ4aEiRqJxhQI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YScggIdP; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731489357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pePq91fMf5htVRE/fsTzHK2L3qy0wyzwWaV988CadX0=;
	b=YScggIdPaXDizXiI/L3Ic1xPJkRmMuhUdK4ebtfA7tgCwds60mdw5V8KjJm+ybZp64k3S0
	jZlXI71OKkN7FXBIbKMbYTh7G4YkHRjefrX6cUGjDN5plLZMpDTkw8lgRdcou7bvTOZqRZ
	jak5IfxCLGl9Vm+VIwq+56D1jHuVIDQ=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-452-ac5KKjf2PS-DjjK51get9A-1; Wed, 13 Nov 2024 04:15:55 -0500
X-MC-Unique: ac5KKjf2PS-DjjK51get9A-1
X-Mimecast-MFC-AGG-ID: ac5KKjf2PS-DjjK51get9A
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cda6fd171bso12698746d6.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 01:15:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731489355; x=1732094155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pePq91fMf5htVRE/fsTzHK2L3qy0wyzwWaV988CadX0=;
        b=ILVg+e/hYQ3FQyjjv4xhywcY868RiMwLgTMiWongU/konwLh6f1RV8U1woSAA7MMOM
         /AQV3t94nzp5Tc9KWjFwyiziAqNa7M42Qy/Sm4XHETiUIFwVdYZyJkXT0escOon/DzOK
         OVUQwP58aUvNKLh/5ba6rhdc+SBfOqUB5Dj7w+JKThVQlVFxbmRzz8scq8+DOPZbiBJQ
         OrN3ttjXEoupbdjv/7CjkpWeST1sE7inL2HnE8JvN3bbdIZLAC8CyjFcTphpNkKPJ3zs
         bB0YIAdhzsdecmOfIkSWSIfY8FD0O10J39s2yN5FEwDrrIfkZT2SzC6zT+V+BqeP69mR
         YgmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaSg0qZIV+EafvYjuEASDk6jzD7BxgTLT1vGoXN12ReRGAn2WSPlAcpfecuV9p3W26PL7PINo3i0cj@vger.kernel.org
X-Gm-Message-State: AOJu0YwtB3SmmgPvndw/j3tcI9sGJb9GW8S47VS6QJRWAJk8U+COEBjY
	Ht14akemgxQ2B79UZGlmM8S393sSAel7H9ZscQ4N6n/8xpEA9p5FYq2JFee0MxaSisno8bIP1dQ
	2IStuPElXjxpuy+FDknK8VO5lfeo13Y4xy+0p9EgslnfZJmIX4YIza1x6tfo=
X-Received: by 2002:a05:6214:1bca:b0:6cc:1827:5750 with SMTP id 6a1803df08f44-6d39e117943mr116376476d6.6.1731489355095;
        Wed, 13 Nov 2024 01:15:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXkduxutfFmovavdzvpkZColmr0+85g14otssbj3k1m3rxX8IZRUy9FgLZXbOcskqZ5EdCIg==
X-Received: by 2002:a05:6214:1bca:b0:6cc:1827:5750 with SMTP id 6a1803df08f44-6d39e117943mr116376266d6.6.1731489354775;
        Wed, 13 Nov 2024 01:15:54 -0800 (PST)
Received: from [192.168.1.51] (207.red-83-46-1.dynamicip.rima-tde.net. [83.46.1.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d396630ec5sm81599036d6.101.2024.11.13.01.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 01:15:54 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Wed, 13 Nov 2024 10:15:17 +0100
Subject: [PATCH v4 2/2] arm64: dts: ti: k3-am69-sk: Mark tps659413
 regulators as bootph-all
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-b4-j784s4-tps6594-bootph-v4-2-102ddaa1bdc6@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731489348; l=2349;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=BCtRel6q2GhIghcOmJUAkR2/nR6+u2ZqHw8UA5ZGnE4=;
 b=WxCC1gigyKvqi4EPSikNJ0eWI6e3xd+/wYjiBy6LpTVreKIzonG/vp/Lk08HG1tb8vu8O+M7y
 OFvp/8EKH4zCiXg9c1IMAawbuqbHWG+lvLxJAtQfZdOaXd4h0sOZ78e
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
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 1e36965a14032ca07143230855e04b9549f1d0d1..5f24a1608bdc4fef0610e2ba9a210264e3c4917e 100644
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
2.47.0


