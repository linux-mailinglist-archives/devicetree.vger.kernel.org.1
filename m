Return-Path: <devicetree+bounces-101970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EC1974F89
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:21:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41849287D4C
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DFB187FE3;
	Wed, 11 Sep 2024 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OawXxWRB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F443186E54
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726049999; cv=none; b=Nzi7S7jxW8PpRZH7n2wtudyyGLeJ/4Vm0hcksWZxD44+5BvFUliUKtCUZrdz0YyB8X29oJDYLQFEU1IjkSNXxe6Tu5Cqp1FFQ0ImBZQNevkx4yVpgZuzFmXoduHaLOl7lo5m9KM5QGIc2ntLU/R1GIODh8NqmPqZxBgxBsBghSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726049999; c=relaxed/simple;
	bh=tLKXgebT2prz5WEl6ND2fV5WeoNygwXgxZNKBU22Vj4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kBcaC/pUqTLxulo0P+MZgYLbuWyV5lqsKrSasen5GZ//9OLkrCDZd1caqN6cZBXP40RSmZ+HfKgU+WyNLAnsNIfKohooy09txoq9SALzMRSnFxdlygJy+t8ru6pEkG0jiIH3imvA8wYB1BjeNy+0TX0leNl7IQ6AnmV4sObpKIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OawXxWRB; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cbc38a997so4515895e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726049995; x=1726654795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I4ke8rkrISZcsL/GsnQciTxTsopL6efg198qUqAz96I=;
        b=OawXxWRBdvBkgPIVxzSILc4J6Li58t5WDcCwRTEBqx0iqOHSTtJmYhc18AZk/z2a+g
         amVa35XdQqty4tFNWaf8azOW8CO7z3XpVPtjsiXbVyvYkSHP6mRhKuu+AvtnTgmZrEIP
         G6HT78PSKXWdfEfUuYnEdTZzsG+s3Xam0fkojx6jegaGvh8seMXN1p3ZQXrhOo0bs5gD
         O0+DeZk9XXZfaQxvOHSK67/8hLDXfKdg3LaijYMAljvMMWNl0nR31RonwuW/lhk3GVWo
         1BZO6S4RRTgI3MfzSYkyn+0hqjpuB5euIUVUh8ARb+qTy7vZpT25qaF+KxAYWHgSfyI5
         TOqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726049995; x=1726654795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4ke8rkrISZcsL/GsnQciTxTsopL6efg198qUqAz96I=;
        b=slutqExlhK1rggbUF0dRkxWHRyHqU73Hqj51HvkFISzz7cXkzFtZU9MSilpnwGIsro
         96q0rWWnRMdkTYb1Ly1kVZxN7l+/DhiqZ6ltgSFdXuyyqvc+446eRnlvr8vnwD7FalZy
         Mdxg+XfByPUqA0B9tcFT+JKBKtBc7mvy3e/fxtv2gcdNwI35fZP2d77VZ8ocPFFvI6rl
         qgmIxTMcWa9bN4ZxIen3nhwnXfxBDNNfba36tw3V92KQzUd094IzsQ1ozpY/8po7xnet
         zONBjcZknf2zrC9mRsvStvwXbf64WEpKkDDZCvesSKkTT9fFEiJyuMxOaSYjsAcQ0A4K
         Z2Rw==
X-Gm-Message-State: AOJu0YxDwBSzueNRGgJcg29e43rANk7md4vlcv9KVxMmIKkGivwDhfSY
	uU8BGBplVyf1sAB5kUiOYcGnehh8nhy2hkScwkBTJCW6/awHPW7DK6dwV+A44CmDU1mxFLtM8Io
	H
X-Google-Smtp-Source: AGHT+IFwsA8iLp/sFV2OBictAm3MkFC0wZfIoLwMq7XoNBBk5IByMVVOBBM329hmDHR8Rm5CMkJABg==
X-Received: by 2002:a05:600c:4fc8:b0:42c:bd4d:e8d6 with SMTP id 5b1f17b1804b1-42cbddbd72bmr35576715e9.3.1726049995406;
        Wed, 11 Sep 2024 03:19:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb21a4esm139349125e9.7.2024.09.11.03.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:19:55 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Sep 2024 12:19:45 +0200
Subject: [PATCH 6/7] ARM: dts: amlogic: fix /memory node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-6-feaabb45916b@linaro.org>
References: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
In-Reply-To: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3199;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tLKXgebT2prz5WEl6ND2fV5WeoNygwXgxZNKBU22Vj4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm4W7En5FeYn59+5T3iP9cHUsF61r2nWZ5EStooK1M
 Yn8owziJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZuFuxAAKCRB33NvayMhJ0SYKEA
 C4JDopIv/Ye8pDuBtnr5uOAmhmEQZXfqHpIMch5ntuyVd2pQhCPu4kPUdWMhcqNoBBIKb40vPKXL/h
 6p2cjGb580acYM75rmFdyjU++o7rxjMUGsAw3ZKB7/4LRPouYpGlIyzs59B3PX35gzp2QT8gu49FqL
 yBCzHXPTJEkdsCLf0uYTZh2/FKNYUfrJdqHILDuQ5ZVhPHIrX8WTPprckcQ4rk1qHf4oVjhUrnjMqc
 p4Vb66alwwCKcb1I8SiXQgFn+lTZQkGYyzpDEdOTR/wN+zbXI9AiiNmXCMYLen0LDhFOIlnTOfwmfS
 DlnVLpdxNYgWH5rUx3mXUbN8avbnSNKxPAgaQ0aj2/LO+ZKBRLiQQQalQWa7Ekf9Dq+qtWtC8/K4vT
 Br5hoqaybflyg/1lLVM9TEhCmpqQwj+IVsTXQoqFeboJQsNbgqHwrDWOQwwRXc+vDiggkDhMpeD3G9
 3FsGmbkvK0zCDKmUhJxYDaKoG1iK4lw1unjuA5jsnVUe2YlKGmadF+ubTz3uttX76bgdJrpI/BTrUu
 +pVqOY+vitfNSBRCpklczW+5NhV8TaACqpS5zawdl20ijao1cpaiipXXcawkz20b3xvINPrTmCC5r4
 b1OOGCFGvEDGE37yv1EquQ9SoXCKhx4m9sVRbVkU4F9j7EhHxm8NqmVFq8Yg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use proper address in /memory node name, fixing:
/: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[1073741824, 2147483648]]}

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson6-atv1200.dts      | 2 +-
 arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts | 2 +-
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts       | 2 +-
 arch/arm/boot/dts/amlogic/meson8b-mxq.dts         | 2 +-
 arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts    | 2 +-
 arch/arm/boot/dts/amlogic/meson8m2-mxiii-plus.dts | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson6-atv1200.dts b/arch/arm/boot/dts/amlogic/meson6-atv1200.dts
index 98e1c94c0261..f3529e5b0f13 100644
--- a/arch/arm/boot/dts/amlogic/meson6-atv1200.dts
+++ b/arch/arm/boot/dts/amlogic/meson6-atv1200.dts
@@ -18,7 +18,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts b/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
index c6d1c5a8a3bf..e7f5d290c1b8 100644
--- a/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
+++ b/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
@@ -19,7 +19,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
index 49890eb12781..bf5e80c874a7 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
@@ -22,7 +22,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x40000000>;
 	};
diff --git a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
index 7adedd3258c3..f48748a02409 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
@@ -22,7 +22,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x40000000>;
 	};
diff --git a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
index 962bbe3337db..85dae08afe9e 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
@@ -22,7 +22,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x40000000>;
 	};
diff --git a/arch/arm/boot/dts/amlogic/meson8m2-mxiii-plus.dts b/arch/arm/boot/dts/amlogic/meson8m2-mxiii-plus.dts
index aa4d4bf70629..587bbe706fd1 100644
--- a/arch/arm/boot/dts/amlogic/meson8m2-mxiii-plus.dts
+++ b/arch/arm/boot/dts/amlogic/meson8m2-mxiii-plus.dts
@@ -26,7 +26,7 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x40000000 0x80000000>;
 	};

-- 
2.34.1


