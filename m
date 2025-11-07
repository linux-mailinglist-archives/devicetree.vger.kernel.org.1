Return-Path: <devicetree+bounces-236227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8597C4169E
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 20:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C92A83A3627
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 19:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F93303A3D;
	Fri,  7 Nov 2025 19:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="odI8zLLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C9D303A0E
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 19:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762542975; cv=none; b=k5nNTh98QjPUtiaNIbYgx0vu/NDkv0/vuh9w1dxBIlmUq/tchYQlKza3QA5CN1UZ97T4VhdlxZ4CgBSuRmWkW07M9WFrryjSoU8rFsQaJD1oBY4+tNEVeUnOS88BcL4irykMXwl6/BucZWJeMA3CLv6pak0Z2400Ii9Rb/nt6y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762542975; c=relaxed/simple;
	bh=QBekHRPzqKsUbKsby283fcZkrUPlP9R23yy3sAWgrIc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EPe75KguVYR3V7l4G20azDJQjaQiNHI5CiCowEFn4G3b8AqjilsVJi6gxDlfCqkJj21D5utQ5PF9CeHW7RdG5pKmkSCGJvShfV6sdxiPrqHjSfP6rDc2zvnVC05piBvdJONY8t/Us9vngfFIryG5aiWtZnYiEa49EWYE7i1IgS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=odI8zLLB; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-433101f2032so4245095ab.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542972; x=1763147772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UIkVe+mugmsixDMdOtfVXmcZx3cul0N4BhQxpoGzDAo=;
        b=odI8zLLBuDqw6Su63pKfdOspSOoYdgHfACPdP1g5I4WkhVypCzWhURcH96Dwul4sVY
         BJ785D0Md8ZkdVwKsMPoFXyMIxmhXB0U/zMhGxPsq4gojcwExZEmmBPelPZCHAKgQpSN
         iXDkzwDlbSq1GX0JA3GU+g4UyDMeVSBM5XGhGVuBcBnqhwPBL7wQRDVKrcVI0a7d1xwW
         CSLAPVmxQmBSpCb8aNZSxFB/b9/duZ5QakW6vMlewFHOSHRUWYte4oqbQeKxfcIVK7Zm
         V3JArmqckJ6eEduhFVsr7hxabG9kyDZv4xd7X5n39z8gOoR/LJVANsFXh3edRSvShcbz
         qjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542972; x=1763147772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UIkVe+mugmsixDMdOtfVXmcZx3cul0N4BhQxpoGzDAo=;
        b=Nj5OXixF9xGD+9zDebBJmFVDXhyTKso5/q3fsmKp1JjHKjK4mWKk9rixGqPDuBt7MO
         /qA422GmmgxW8oAsSi3i7MBvmf5/NdMZz+CsrM8t+LJHCuQkUVOPsPRqmhfhCj9ijtwc
         qZnpyqSIgLT6mdExYWP5YsPT/SGP4F+PlPNs7gRpmL7uBuNN83rvJ46TWeV179g5NGeB
         SE3KIvUC9CLSwM1IIpLD2ytXeG60qXnFMAvEDorh74IuXJp+NmeYT1hW8JLVc1I35yaL
         bXJr5ldPnz2O9fpPKzKVgSFitZDejWWYMHN0GMFCyx603f82eaumoE26zSt6O19nWcFR
         mNcg==
X-Forwarded-Encrypted: i=1; AJvYcCVtQL3PSUVMgaW5oTFOEAodroWpntPj4eh39CXCApdJKT4CEHciXRmb/D1LN7La+BAgW97Q55Zk0M6v@vger.kernel.org
X-Gm-Message-State: AOJu0YwX1P+pz32ltL9qCBDA6enkQ/fM/EAGlqN6AwlBlqso+K4lJwsP
	YG4bPgVCnT1Es/wiRKGHQSFCOWWir76hxi+z98Vc4rkx/CaYitHe5JbSb+G3X33LAYg=
X-Gm-Gg: ASbGnctBVtbH77xfDDWJ2HZ61uqbRQX7jhkGS54Y+LZQlnvdSqyvcZXtHX2/OUIRK0J
	jTXHNxOnzNNOZx9KZ+5Bc/1RFu0GN9oUXnihOfwEcxyneHkk/2oF5IYvLETX6IrU21cN0egGB3h
	5k8FBrQYGIemzBoFiyzXZjDwSW6998eD/FfyI7MFLjdStJKsHV0SKK2bFMPFVzpMgFb/xFwIuRI
	OQ3dQfrtD07aNOKqC9fTlYpx1tytf3hJGqtPeDJSFFhO4V1OUAaxravc7oxLGE9v2tcG1HLyWS7
	dasHuvQ+Mr0g+Wk0cRcZeS3tooUwmS/uhoS1ov5wHLC9ZX/ZJ5jPa5DXwbXdxuexLvgKUTf78uY
	VS1ZdiYIpUdy5Lgyn/CCvaHy7qWStdtWgNtyqIYTfGpJZ93qGIRXzZ7Nu3HBFtTJzDRoYCAGNYI
	a2+bbavoBMgIxnd42qQYBaA7V/kWPY0pl+H+H0D7M4RiFEC69jw1iF4w==
X-Google-Smtp-Source: AGHT+IFlqajTRrH6GkEYkSY6pfJF5GBL4YJImuL4SDohElEvyYDysB5Vc0X5vM04WS5bSAaQD5USYA==
X-Received: by 2002:a05:6e02:3e91:b0:431:d8ce:fa15 with SMTP id e9e14a558f8ab-43367dfa481mr8936525ab.5.1762542972541;
        Fri, 07 Nov 2025 11:16:12 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:12 -0800 (PST)
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
Subject: [PATCH v5 6/7] riscv: dts: spacemit: Add a PCIe regulator
Date: Fri,  7 Nov 2025 13:15:55 -0600
Message-ID: <20251107191557.1827677-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
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
index 33ca816bfd4b3..a269c2cca3ac9 100644
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


