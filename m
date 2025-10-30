Return-Path: <devicetree+bounces-233470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9BCC22808
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 23:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9000C4F0AE3
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF38033A035;
	Thu, 30 Oct 2025 22:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aN4EaZGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD331280D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 22:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761861797; cv=none; b=iFR4XoxzfMum4HCgXVyT9G3LCwaAgvGTHDJr+AjoquLzo/A5/gS0z/HJy7jjWmRR1Q4VBOm+8Mw0IDZ8Y+Z7cQThw34OtW1DbJcHyECu1SLC8IOr0RMsp+lqLu45kJ7mJCtOZ9ZE5UDHpc7YPFp5fSwBHF/39B+tEdhDYvYBsmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761861797; c=relaxed/simple;
	bh=QBekHRPzqKsUbKsby283fcZkrUPlP9R23yy3sAWgrIc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YJ9mP6gE2dhz/SxFVSyBn/BRBVyweSM7HGB3yQdWbrtaOyCPz1BCw7ORlQIacvdJNffXil0UjJINzYiF4zXjLpF0QmHxw/O96//i2UbO6PPK1zB0OGBWGrmZOfkcFz+vx1YDlJcJ4tF2xr9z1RVauaIA9Bd3QHiCYQPrSCY6YcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aN4EaZGL; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-945a42fd465so66190639f.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861795; x=1762466595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UIkVe+mugmsixDMdOtfVXmcZx3cul0N4BhQxpoGzDAo=;
        b=aN4EaZGLCOP0FcCl1Wn08SK8+zgemiVtVgNaepx/BVJcITcMIiuWAgwyxHq7nbJLb8
         St3676w980zx/czm9P3bh6ksEC0+JpsnDGZexUHrYoKTbHhkHTRtafynXbapMO3JuvOK
         j1Xd5F288MxKUZxLdg4BMSGXj6OYsT0NLI3w2uDsiHp5x6gJmm6NK+BqD2NCjz9mlA9t
         DMDDBtPsLQ9HYOIRzzlnD9R/rHMh4lqmMRI4cQfhi17M7ZLlPJTAK4C4m69jtPKtNEiF
         NtYG/VU1Cw+RcK4XRrG6xjjNDRktMEY7obCurf7Hrr7Hc/aLbllIDBucKs936dsiWWsz
         Pdzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861795; x=1762466595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UIkVe+mugmsixDMdOtfVXmcZx3cul0N4BhQxpoGzDAo=;
        b=UEv0ZZh4UQrW7uv4Xt6YAqGRkIQRuv0cPAWSOYCZy8SRTdWo+97Y/yVtjYmZ8Hp3U6
         PMukOte+pUMwmQCrD6b6p5cVDqU/DqOyqUTa44PgJoysmQ/o6Tl5QuWZhnw1mLfFVKVr
         BiRWMGTImNL6zReWDWUaY5G4iGERCZPMqmrKT6D0ixppNSa7kTVP9Xcs6iuHz8qeRCGQ
         Bwxnyc4E1lbIo+/O6YaUoxs1g2W4eXSH7IA8BMA57G9PQF9wPImTWJ9HntIlA9do4d/r
         r9DeLFbSuWQcMVhUfqAZtRwlK+ryWCaP8zezbBRcXKF7kRPAHcUo6AXtmlcJSdHR8ufQ
         sB1g==
X-Forwarded-Encrypted: i=1; AJvYcCVErA8fMwqmlSh5kSPvaCaL8/i34/7o0jqOMp2pMUDYiikG2poT0YotEqX8cdF2hvvQonAVrPJTHdMv@vger.kernel.org
X-Gm-Message-State: AOJu0YzsWbgyhX/X9nmuSB5xYtUNcsAkXKTZzOLgRAbCresN0OrXtKHi
	fcrdKz3JGc5zHax/xWpHfRb9UF7mWtKnOaFYF34osIylw7LJ4ld9YTvLMagKoHTaNOc=
X-Gm-Gg: ASbGncsijxOEoPhKvJUG30ERE1c19oLUkEXWw1DSaDYUhzLa5QnqfGrnIDbFr9x2sDo
	fyQj4NhSTsaY23PQoOYTAqamFauNI2N6CwVxupitsraON5KoDtpmTF98g9kROkHOUUctl70OD2L
	ToChDYoU3XKHZI++QxTq4+mGiFjYXYrQ5lRpoKrUaaMu+BC54siKni6XuFB5S+GBcrNU7WcEXvH
	a6rABtb1TLjvZDdbsIogqx04Uw4SQL/x4PXiTpsbf9xQtKnxlftOxLf2lcj7mhS9o96Hofus8Z7
	/WuTfoxk+TA+l3ZTVRthj1wGQuX3lGKEGovxcmDI206KRV2a53fWJky4ggXJxvyxF79D6RkYqY0
	4Imc2drJf3iXpowMp6r8oc/cbTy1Ohv3y0PTpoyH6JrSO6KP7yVNvtfyG8/aS/qVIVxmrEmWtU5
	yFajy/3UNy0o8HAd4rrw3PtLN3SY5jdIMNR5OGjlXiJg7Y7KL6meY8Vw==
X-Google-Smtp-Source: AGHT+IEzkYNTEpto3uIRSZZUgywIjzKs10kSZ3Mcmn0s8szOm71bDrPz0GaeszZYMuu8RaE0By5r4Q==
X-Received: by 2002:a05:6602:2c01:b0:940:d7cb:139a with SMTP id ca18e2360f4ac-948228fff16mr274845939f.7.1761861795055;
        Thu, 30 Oct 2025 15:03:15 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:14 -0700 (PDT)
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
Subject: [PATCH v4 6/7] riscv: dts: spacemit: add a PCIe regulator
Date: Thu, 30 Oct 2025 17:02:57 -0500
Message-ID: <20251030220259.1063792-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251030220259.1063792-1-elder@riscstar.com>
References: <20251030220259.1063792-1-elder@riscstar.com>
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


