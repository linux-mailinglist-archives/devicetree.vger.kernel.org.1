Return-Path: <devicetree+bounces-201473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A30EB191A6
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 04:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E24E87A73D5
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 02:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A331E7C08;
	Sun,  3 Aug 2025 02:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="y6Qn/Bvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103C1DF742
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 02:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189910; cv=none; b=RIVWxd6vAkeE5BlHBAR8Ufk5/roqQMa2o/vuWcVSrAqzsPWIzBAyf8S95pdx1XvPMK4u9Zl7bN07jFXk73xiqmLFth845lZ0FZ5WEJ4heO3jWTERLkIkeR/bjqQNK3FiGubl//Qqp14dABGb/wbm/vAV4p6jQWBG9av2K7wFPcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189910; c=relaxed/simple;
	bh=4MkO0yPVEXokF7BKWo63wkxjH8l6ox9Iw2xywkWl/sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FBf9VJttuU/DSZojROSpN5x5LzQbuBc7cd4H+18kZfFnl/4s/gSzDsYbUjSVfJWz4pJnhBgmr+AVOd5517L0aCwvv1qb+J7EWC2e0VzZD7frGii7jZ0ZMlHVSOTItmWrJIMp+2n8mUamUPnWaw/1gGbK0HXWH99QLsFgFSTSwZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=y6Qn/Bvm; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3e3f1e69090so8124535ab.0
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 19:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754189908; x=1754794708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=y6Qn/Bvm7zFtGniKursimz4TE7Pz3fffi44w8VYNvfkJhmW3X3uvkubL8AcwfXTc2w
         2Ivg8hZwL4MaGc1wMpU9Gsj3NeDfsDCJgIbjYzErCWsoZcgRI4R255ioGr/FYn5qfgUR
         QjIHEvqP1X9xERn1WyxAbYY7TqZHb01huH25j7ULTtPKIAPoH2XyMnfdmi8SoJRT1Bkb
         5CydB/XHpyXquG/4rUhduSnftfCmjyvHm2U4mYt8dKBtJgphs2M+gv8ePtDcqXoeE37g
         VqoHJEICYywhyFJwFLoxcS5N5Jsg6/3hu7KmzEKukRvXuPL8Ewr96cCEHxQ9PtGI94fu
         1duw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754189908; x=1754794708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=naE5lYOXoksCprM8bDiWHLfrOmUr8dLyipK01CS7fmNwlgPKmnQ3QL/2GpNuQmdtaq
         Ub7D6RlieWgVgP1ynX0PoFqpZ8omuNech6fcrjd6qAK9FH8Q/moPMDQAq+8Tt5DyFyaR
         RBUgViYVsmto97bipqCjTVvw2aEZF+yfUkn54lACoGq+0H0jdjF7/+AgZQokqfNrLO4R
         11ZCaTi5xJ7BxiIhV0E7NUMMINY3r+BoFasSdcJyDksKsR8ZpehbJg8t7hlSTUGu1vji
         MxpppIeJx9vRj1cT7MD9MoPUMqBEYfEjEUq50C+xTWwYXsyDFOEFFKgztcptUy+it+u+
         BnBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOxp55m4k3FbSMlGbsND0EZCUIaYgfoa+KC/C3tgSCEYratBZZdr9BUCpoAZ99Hxfy9cPC2XWuRwrt@vger.kernel.org
X-Gm-Message-State: AOJu0YwtMzKhTJZFvJxi6MMhHvit60ep3HYT2Ce3wKCBkrG8qOnqPi6K
	5c/T2EdEL7bM6q8lPo5R9aVgbRPu/b2Xx+SX+wSsB9VxTc+8alOMTZKD9Gt2B2q/zdQ=
X-Gm-Gg: ASbGncurEbDImNagH249dRBx5CWYcpNWea/oVeeYhf7VVYG61RaUai3wdVH4amwuxF9
	/RZGeOlO5ntI6M+wj4eFtrGaxuc2FeSPhexB8cyTX8h65TMYY8qG2VHL08lRs8pjP4MWfLbJN9F
	HibI/DX0XDnKbsp6iZyG2vcoMMG99M3C/Fmf3bHDNBDdX3gCTrx8hj/Lkj/3yf+CBVD7hx+Ud1B
	p5bTLYf+hMRfuhS1SG2A+Ywa5XJduCa/AZAmi57vqQrMsqoTLLuXH52aHsRT5qOMVH3XBfpvlyA
	6xkH9DUFMqfOcZAVKPozEHatSoojMjenNLC89Ixv6jqZ/WZ9gj3AdjacYeaAtLr6j18xr2pacLV
	0qbRIYoW54nMLfj0UhEyHzxT5LILBSOuvlFJ8TAHG6jRlOc85rtNCxtBmipG3/+FUnQ==
X-Google-Smtp-Source: AGHT+IFa00F5/dr/4CJjlueOFIA5pV3OJea5UsZuFhaXiwjw86cfQMhRrHQfFtqyDPs6JBYJR5sLdg==
X-Received: by 2002:a05:6e02:b:b0:3e2:aafc:a7f with SMTP id e9e14a558f8ab-3e416122d83mr105791125ab.7.1754189908398;
        Sat, 02 Aug 2025 19:58:28 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55b1ac2esm2251906173.1.2025.08.02.19.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 19:58:27 -0700 (PDT)
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
Subject: [PATCH v11 6/7] riscv: dts: spacemit: define fixed regulators
Date: Sat,  2 Aug 2025 21:58:10 -0500
Message-ID: <20250803025812.373029-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803025812.373029-1-elder@riscstar.com>
References: <20250803025812.373029-1-elder@riscstar.com>
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


