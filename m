Return-Path: <devicetree+bounces-170727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33153A9C327
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C11219A5FBF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB4EF23497B;
	Fri, 25 Apr 2025 09:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FL9dJgwT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2C2230BC2
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572779; cv=none; b=jolw3RNI1Vi1XVvKORjMxXL5UubbWsAyCzTnS3F56EhcGk4oAo21MQj5w7A5LYJ1wk+++rzt0UZNnUBUAbyb3K7IEsgzq788QPFy9ygjoZqPFXMeXjVHomVg7FBzwpt+QSMjXrXggz5dMfdiDt6JKH+flOi/FcYamAMLyLCqJb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572779; c=relaxed/simple;
	bh=V26+KD33m0aJZN0gGO/Xy5/bV6re183KaQZL3zie4PQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FrDEmNPbJKtuEaVXgunbQ60YfzCt2LlZpjZZa1pgiugmh9tKom3cn4XswpD1VEf+/ERWfSOH9e8G6bKzho4wreezWQwau+4oJ8xUzNuPXOu0zIzTExTfehpwiRz5b/iHFsLQgDImPi0zirZb7Kp/Zn/64kR3YFuXPk3VsiEuBG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FL9dJgwT; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54addb5a139so2164999e87.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745572776; x=1746177576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bCu4gnKGLji0Lj1TJspCZ0JNdQdRUdGQa5Ujm73xOi4=;
        b=FL9dJgwTreuwWnA6eGLbSiQgVbQtHN0o31Tg/f3vlbXeDV72Dp3eNAgzwfsK5+RDEs
         +CB8GA1i+3uj4Mfl0zm1vmxNIvJTVQ+ODCnhfaang3NySGFmhQP2DFBxW3nl35otZuNN
         vRUJrY6qiOHktOMCnT3ouNCobecJK0s43veD04u2rn7OchrY5VWKbjtEyjnK22H5+OGv
         rKNzrzW6HtzncfMVjKINSsnZqZP11nvQuiTqAyF7ksTBJiqZ9xJ1bk6AZiQjKSpMOhny
         Rf2nLwvfX9cObmbP8xwPKbuy9NzXpij7xoa1SpCKOARb/RM2P6+yleluIsQ7YYBlBLgH
         kC5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745572776; x=1746177576;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bCu4gnKGLji0Lj1TJspCZ0JNdQdRUdGQa5Ujm73xOi4=;
        b=pn4dAlSL/b3dZDOzP2l2mNPIYriFxsXowyWJSVAeIX3CubN7HXZm5/564Bi+w6dS6V
         r1nUH/lDegiu/3eZHw2tPzjaCtPlWVQFFO2RIcfkCQFVnqgQfEkU7Sb1MWFA8J3SVab1
         TVNiy/gI404M6KgmjGetgAFteXEJDJka7jiivUPyZyNZsjHae0RLrb1TkE/l9zK9dgF3
         OlI2eUmNNuG5X0V+AbtO0WPTRZwzANXMfOWFfekVSWEGgZLynwQiAWTG4jMVk1kPBEJn
         iLl4t1PUnwsetUeuwyXhIjhMLB6cwxploGdT0RUtaEkXz8MVa9f1asCJAGyJBBzuDAqd
         GIyg==
X-Forwarded-Encrypted: i=1; AJvYcCVf9hjrCSrGXWd4mTew/uXznFsu/TdiAJ1uJZojblv3pK5kUfmPCGK57zAeKofXey1O+rnu+xA5uLY9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw35ygNmg2P5f5cODNjF9m8E4lLkklBZGjxnplr+Goa65iOLw3X
	CE+2mOMJhK2Qg3SbGL+NG6RFLNb2lay6l9O3+WraipLIKN8cXjXy
X-Gm-Gg: ASbGncvrOHQFtkLrybVD74UBR2vF0WyHn3+5E7nZHQU9kNgY3TakiOmMYmD5Jzh9OSp
	0Ttmpe4YlcU6QpVchnFW3fRVz5PFIV3doSWUWwLUcBI9631Dmp4tt8XFRmJd5GWMOp33DtvVrzd
	knHafMBr1rguamRqxQ5Tcd0b9D1h/XZnXrj2gJQyrorf3CkKpwLmAfghZUf/QIyIPYrS2Fj5Rfl
	n2qtBqVxNW36mB9O4ZdPZgT9oRHERCOzGF+PcesKZSvyEH0sa2c3u72KtP8Soie9czyn+JZZ3uG
	17eqjSlOmhS6h3hCz7LjSzMME4rSQv/ULtvB/XlqpFVAMi3/kH9+O30ZQkCIh6xX2YpeUxrWXuD
	Q4Cx9l/E/ah7JPt77EykCorBVzGWGg2BH7vTOZeM=
X-Google-Smtp-Source: AGHT+IFQdGmsvgDmR6TVPSbh/xxX9pxHi/YRxyBrg1Y1rk5Z58OPuXPUin/wfhblrZ2GuZjz8ygL5w==
X-Received: by 2002:a05:6512:b05:b0:545:381:71e with SMTP id 2adb3069b0e04-54e8cc07e43mr451893e87.40.1745572775998;
        Fri, 25 Apr 2025 02:19:35 -0700 (PDT)
Received: from IRS-520670-Linux.atlascopco.group (84-217-94-150.customers.ownit.se. [84.217.94.150])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-54e8c7f02d9sm214299e87.78.2025.04.25.02.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 02:19:35 -0700 (PDT)
From: =?UTF-8?q?Efe=20Can=20=C4=B0=C3=A7=C3=B6z?= <efecanicoz@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Efe=20Can=20=C4=B0=C3=A7=C3=B6z?= <efecanicoz@gmail.com>
Subject: [PATCH] ARM: dts: imx7d: update opp-table voltages
Date: Fri, 25 Apr 2025 11:18:40 +0200
Message-ID: <20250425091853.54437-1-efecanicoz@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update accepted voltage levels according to IMX7DCEC Table 9 Operating ranges

Signed-off-by: Efe Can İçöz <efecanicoz@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d.dtsi b/arch/arm/boot/dts/nxp/imx/imx7d.dtsi
index 0484e349e064..d961c61a93af 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7d.dtsi
@@ -48,7 +48,7 @@ cpu0_opp_table: opp-table {
 
 		opp-792000000 {
 			opp-hz = /bits/ 64 <792000000>;
-			opp-microvolt = <1000000>;
+			opp-microvolt = <1000000 950000 1250000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0xd>, <0x7>;
 			opp-suspend;
@@ -56,7 +56,7 @@ opp-792000000 {
 
 		opp-996000000 {
 			opp-hz = /bits/ 64 <996000000>;
-			opp-microvolt = <1100000>;
+			opp-microvolt = <1100000 1045000 1250000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0xc>, <0x7>;
 			opp-suspend;
@@ -64,7 +64,7 @@ opp-996000000 {
 
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <1225000>;
+			opp-microvolt = <1225000 1200000 1250000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0x8>, <0x3>;
 			opp-suspend;
-- 
2.43.0


