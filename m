Return-Path: <devicetree+bounces-209100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EB6B3488D
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 19:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6EA45E19BC
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 17:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34229307AEB;
	Mon, 25 Aug 2025 17:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="x5ecd3CB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AADE306D57
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 17:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142476; cv=none; b=eNNBuOYmShsCLDHCGe/tGmgNwKm155VC2Ok8Ma3Qrg4seO6sU7weLdlsqZ1+gt6YIrn9vJG6d4vlVZY8U6UNgVZ4LuZtUlQHfmy8wompDAL8cSnsFiHTxEM2eKI8pXY0zIFPCF8aKH/kVhNVlCmBBDscF/VqZ/wz5kx/yoVePcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142476; c=relaxed/simple;
	bh=4MkO0yPVEXokF7BKWo63wkxjH8l6ox9Iw2xywkWl/sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WSsTBVr3+ivM1l2Sebd0brg+bYHfPpomKFe6CJjlk8QxMzdigYIKvHsISj30auAAJEe7dykdqb3MXecgfwAMindY2b+8z6rFET+0qgi/YHP+UxDWwDIc/fo+oUs3l7VUkC6SHiKsRGejeoD7z72Wwv1FztKyn1OaTbjQ3xCAxvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=x5ecd3CB; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-8844ee2cb61so124357739f.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 10:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1756142473; x=1756747273; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=x5ecd3CBy9UbS4pAArGHDTqx+Uo0gGM+clY6B8B9JfAsiL9mruc03nOayaiO6AswiQ
         SpgBdzoCcrSOnfELmpl5hlT8uJpI6WxDtZOjtyngHphjmy9NFQEET0b0YNRlAYE4WKLx
         mZk0EetDeXcUIB7PRa61zN8ox1r8IGhUE16BRalaP6ElLKo5JEs54GOlNPRvhAezEIg/
         de8iIsLwP+71A6vQHTEtZLMf00I1zEs/I7NKH0E8t/6B5eBSTH0Gi8gLXZ6WLrSxUqHj
         mPIWGD3PNG0U+cma/J7iV0JS8mROLJchMqJa/MfLCNz0DxCKxKZBtwxfOpTiBOsoZ3ph
         BhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756142473; x=1756747273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=juFsduUYsBK1dcM96k1wLimax42UT8Ut6NFEK1iVxtoUPv8R95W6yf3KLPW+eAyi7A
         gLCU6ZxzGp83tgFYHeX/AE1DM9ga9bXIW/tPxdqslr9AWHfAlX9kz2LJ8CUjxssNNxGm
         cKQe/NuQzHjwZ2ZbaQ/u6e0AmLIL0oXI21KA0lDXN884ZpwQpBsFtN+lrTHoaJ/ymTWN
         j6J0hK4pmd8wBT2nZPa7Rj6wAuYaPpgSL5BrcO29tO4KWuzdxGx+EVe+do/LrBscF4QZ
         BAj0dmUqQ2mFQLojhSBIjVIJPTmTQX6rzwkmhOfIgLOspNNKkmIKhIj3ICbnhOpuwvMs
         edkw==
X-Forwarded-Encrypted: i=1; AJvYcCUzWbMQec0t99pn47eTlEM1GM0lrv9F/xcShESWMaCqdiJy/0Qxyz/OOZM257Kx+72hAoD45Gktx3e1@vger.kernel.org
X-Gm-Message-State: AOJu0YzgtWuLULssw0vfkOAfdEvx2jHSecamGnXc78yfG0RxNp79NKCg
	dpJDgeVgjYsqzLV0wHyuaNGjKgL98y47majfucbUMRELtIFUSfTSzhThpthZvEB4Clc=
X-Gm-Gg: ASbGncvZZ426F3O4N6ovLfW3mm8OQVO3kZvtuc8F9bxeWRx02deZz6MqbeHqPCVMzva
	rzsbBhy0N3W0cLoAtEB+B5iA/QK/uXkbMMjwDTAZm+nBrp/VZW+FMlewb3QxxRuQg2b3VC6zWv4
	l7xeQRK2PagKBTcp+WNEyNBi2dHld+wNmHFtQml4pTDw/AblnzGBeD4g01Sx+yQS8EXGFpCz8cW
	9k4vX/wreBeC6UTBPx5qlpbccrObre+rkQxc1xh20jxMpP27C/9nvsD9T6tqf5nmJhHkhflsybR
	ZCfuyH6rUwVAsMNm3h3CpGB8D/L9A9RpSvKE/C0LlVx+eHpoOJ1XlnAjD+wyH6q3z0JrdSR/RPw
	VYOTi4AR3131a6bpHeGE9mDyEFPr8kU6M+h/RNODShB1B+1UN7xjW+mzYA8BuqMt1jtQnBWXgw+
	ap
X-Google-Smtp-Source: AGHT+IHaZdCnT4aGtFFcRgzebFZsbTIztmo+Z151ok+iHPQRKBlJjXS71cSRNdn35Lml0SBstQEFDg==
X-Received: by 2002:a05:6602:4c10:b0:876:19b9:1aaa with SMTP id ca18e2360f4ac-886bd1cf44emr1652168639f.9.1756142473552;
        Mon, 25 Aug 2025 10:21:13 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-886e60c4737sm76275439f.26.2025.08.25.10.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:21:13 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v13 6/7] riscv: dts: spacemit: define fixed regulators
Date: Mon, 25 Aug 2025 12:20:55 -0500
Message-ID: <20250825172057.163883-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250825172057.163883-1-elder@riscstar.com>
References: <20250825172057.163883-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index ae9409fe398b2..a11a60b9f369b 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.48.1


