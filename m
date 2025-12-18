Return-Path: <devicetree+bounces-247893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04991CCC6B1
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:14:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2D2D30A1CB5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C27934B677;
	Thu, 18 Dec 2025 15:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FUtXwpq6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D777C34BA3B
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070769; cv=none; b=HQVhthzAXHczcAd9t0ZR1HTwYkmyIl/qoO3fXX+WNCwS8pd7B9Csh3nT93wLeFUhqrz4OwvV1nZaQFGnZGBV1utECZQG+mZB8wxHMrmvVmkLtb0rohBVeTrs7jnm0yH3fyv+bh8uDbfekz0KyvmwuZ4pVSXjMWyCUhh8fQsCE0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070769; c=relaxed/simple;
	bh=rpoPtr0vcuPSzME+OCHzsK/d0X2Myz27uF4+n3Cpbv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PHo2bNyoG2M5B0royMcZJZFf+j3vGAudHlXeWY0bzVwOGQRTcL92FJXbNXyLcZTXh4KdZT26I8bU6YSO2LscktsjF6xyvg2rSq7hc23YFH0XmqpJNz3D5FIlOeye9r0g1tv0ulLZdO6sFWevNmKfkAps37AnJnZ18Omw9ryfVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FUtXwpq6; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-88a34450f19so7698756d6.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070766; x=1766675566; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UrbGzwoMT9Ducrx+C40YCeeXZtuMUvm1QSQu39eFix8=;
        b=FUtXwpq6e26qRGFTx+RCzRrEXgneXeVdBE0ey6vdiXlsyi3NYiEYVtFOQk5adKWj0l
         w/FgSproFkoXxVUoNB4WJJCf8hWL11Fu5Fr4AsuyI1Z5TXtWlefixnlCLNIKkZ6fbrJz
         zoInvAprXNXHtQTHm2tYTa8FvVtCBpcHMvHFVpsNinn0kAF4Pnj4MiO5BoVupskYg6ut
         4YwdPZyFUYT79mj/RgVhuwCCRhhRThbtJ8SKB3EgRQdPZZIZ+IFhbEnVNfQp1x0V2OTu
         SL48qK7ICk5oPa7q5+LIK9UeEyVnhhks7r2Z74moHs+eXQh7/h2AgqJu1c4NcLjgeLrp
         /Lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070766; x=1766675566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UrbGzwoMT9Ducrx+C40YCeeXZtuMUvm1QSQu39eFix8=;
        b=u20AKGpOfW3z5L8b02TZn6YLh+MkwCIjonbpnio2qYvH/D5o168BgrjHqL779SNKVW
         BtYeo1h2QiPSb1JLrNMeB7inQf5ccgkppWzZkaDT749n01Y/TQYkjKmpA9IofQsCKo7Q
         olDBfTV6AJ2mns/m7E5j+OV3saTN5TltHCWwnURU3O52UjvqVbwvaZuOkMOu9MJ/ryIR
         8Fto5qh8AK4abvaOm9NskMD0kupQPxgyVz+BLxAtHGARrfEC7r529HghUsZ4ixwgYIYB
         s7CStOOTNVMBfJyTum605tHzvZT8ihydSPQaB4nDnOr+Kov4FUuh2IOalbjuxvpdbQqW
         z2NA==
X-Forwarded-Encrypted: i=1; AJvYcCWYQOj2Aep6Gwrav22eID5RzRHE/Fygm/DHZnFyRAIdWzFr/XBarCUoZaOhv+46kXlhjqCaR8fM35nk@vger.kernel.org
X-Gm-Message-State: AOJu0YwWWYpHiS/88oKq4y8PLsOsiQO3DzbTLdh3Q8kaQDOHhCVoBhuM
	TMJ88trJnWlI7faDFcJzNSCqiQtUdFdTzSq8cBAStBwgPiLrBXYyqaiZ4/XM9D120UM=
X-Gm-Gg: AY/fxX6GJpesHBKpYDV3lwpzPnFsanJpyIOzr6DTrGvrzXWeP24IoxmNOo8LUutgE69
	9xCfyNGvIV7Hy8rGWCwHnBcf3wPfuxHE/HMWoBTbzBz9X5mTFcd8jGPJXXRH5Fai06AEmOC08hj
	GHccZ5HHhv35QiX2RE7GGDB/I2K1Z9ryJlXioFu8zSXHd2cKChqE+rSk7ghURjSpdqwYlCIFCa7
	6rJm0FQEN+2YznBAfPXkXp1Q1uIb9deaoOKXHIzkQ+h8heTMpe/txJHzMSHjgu59p21NjlbFaFD
	f6rTr9NAyZRCAr8ERwbM9oZw35wugwV6pgbN2RbD3+yLPUJFQQIE5pdqpzzwFsuFThw8ZesQUcl
	k1Pq08TY7LkvWdi3UoJ4l6VsnjwrpY3cPfaJ5enAvUjZaq1pspd8SvsKGSxBYscpfqqxSRQCuMi
	1RTKV2sXksVmubgYJcQt8ivSaARc8AjDWXv6UNhrsSVG0IET9qYfQ0rdyH4R9/WeRq
X-Google-Smtp-Source: AGHT+IERRhvykRpFylfwji2IOQvYUcPVAffeIot0RaCQgPjegE4XUR5NaxLoYPi/HSBk+K0ZcroidQ==
X-Received: by 2002:a05:6214:14ae:b0:888:7c7e:fce1 with SMTP id 6a1803df08f44-8887e1e9bd8mr237057126d6.4.1766070765721;
        Thu, 18 Dec 2025 07:12:45 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:45 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/5] riscv: dts: spacemit: Add a PCIe regulator
Date: Thu, 18 Dec 2025 09:12:30 -0600
Message-ID: <20251218151235.454997-5-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a 3.3v fixed voltage regulator to be used by PCIe on the
Banana Pi BPI-F3.  On this platform, this regulator is always on.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 02f218a16318e..71f48454ba47c 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -33,6 +33,14 @@ led1 {
 		};
 	};
 
+	pcie_vcc_3v3: pcie-vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "PCIE_VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_dc_in: dc-in-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_in_12v";
-- 
2.48.1


