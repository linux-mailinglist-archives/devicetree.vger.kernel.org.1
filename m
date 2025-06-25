Return-Path: <devicetree+bounces-189642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 226A8AE8A24
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 18:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3324517D2B0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3112DA769;
	Wed, 25 Jun 2025 16:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ByZhU4AS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847232D9ED6
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869695; cv=none; b=dEa3zGaagKaA56QqrT7mXtr5vZJbj2ONhrseoWS7/B7fx8wUxQFbpi22waRU5RJrt4XyiI07jBWywwgSBBbDkx+n0H0J5i4Rfko4h8KdZ/4alyEqOx7HH0aUeFEOAALIJQsxwClfDDZVi64SA5UvxOgZ2E0g9LqkPWTGoR7g3Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869695; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ftH3e2inVPQl7raY5dLgL4eNhuryiz66GXSS0rRFVUYqM+mdyEOtQG/IZCRfBfJ73NwetAJqOFM+s/yUkznpwhdTD+Dcdj7rr2J41F0mTyALdq4g8g3C1pf72hEOapm2yPNuTq9Hz81rJ3n2zX2xHe5uz4PQdLKp3lel/UJkhzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ByZhU4AS; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7d3efcb9bd6so5373885a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750869692; x=1751474492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=ByZhU4ASm4CXKPpovfGRQ1bXfrIbanTBNjGn/9AQW6m3/KAhKbFlMyjeMlharBhSRQ
         FGQWtgHt+Vy3KqoZg6FqaXiwhdaSViEN0sPLTapZqfBzYqc5Mz11SVyef2o+Ou4c2ltE
         M4nFBS+ByV3oenO1Pl4P0D23Nf4hvsaU8e+3t85OA0b+4ZDDCqlRKm3UsDl57KH5ccv3
         0zIrQ2PO9w0Omw+c2y3NqD23J3v9GAhkwXE58zn3bXeKnaBcFxmvA1OAJrRcGFcwwZtn
         uqIl5o2aFpQYxsatuJiU3Wyrs0JzFjLWrYQkSrEgZ5v06OWsqZ3bjDEZoO8vhm7VzoQk
         ZXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750869692; x=1751474492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=eyOms79JIzMKDWji7CCNZvqcQRv376BzCf50q55h7vojr4X3R3Tjtv82I+kGNNJodM
         FKg+EJB71PHVpjyH7bHNLPbNg++4ZWalPj0oMnTo75BJ94fR8R8Yn71WVz7gbEQaRA5l
         9NRrYnSWB4gy/E3Y2QlkulXJqTw7N706EuytK9ebnJz2x1+Z1tz4TRvBRVcAt7uhLR4e
         X7p7mO2B+98sU5ipNfamGSxoy+aPXNdyUT5A+R2k3rvlcgg8hzSw/oCSMIkl9tVEhQAz
         Z57qAOtHNsb0zk1LL5Oa5YNNh1vBKFwdP4hHTkre1HMhSSywFOC3GgBMxJi2dnKO+zOq
         iWhw==
X-Forwarded-Encrypted: i=1; AJvYcCUeUnlJmMjhPTO8jLoME/Rp2vPDT0cRCs7aR+PSh8cq+rrJklyQWwJ8gAdph8kz2KC531R7k0X4bpKb@vger.kernel.org
X-Gm-Message-State: AOJu0YwP7FobTs0hseyYKXFvTu8LllLOfj33UihLRTaLcx8+/gTUFEsF
	XT6Hdv3mB58Mqi5dzqvaWeBU7cnLJlSfqi0k49Zvomgo/9qPvodOLknsk1XxgYpqUPg=
X-Gm-Gg: ASbGncuJDRQWdllDXZagx8IZP5ZggQ9K0MZHApitJeAAF9/uz9eCL/DMhm1FiSj0mjs
	sFpEgZcWB0oh/gmuh5I7ityNk4pAeGMyz5dHrxj0Edfv6d+NECkIXS+ozxDyMwsS5tMr2e3iSLz
	0RHT2wjGRbfwxY00g/cVmhKBjm7JULTasE3tUDqrvd+sIlzkmN4/KUAWYjC+ynGLXTaptBQ72dB
	taTamyHlMSfEpMjED3YHfCmUum+9hQuwHjVEMvWPZ/QwaIxrippgGXZZ20JqZRY0+9lrFycFNrN
	+mw09tdfYgIf4XBT+E+rWhw+anP+c4hGV9Z6/a0YQXp+aZ0MjJSP0qwS0uFX0Jim507KVoQHxSV
	iQPJm8/maqTCQQ+/QYNEpSbwezAQzBhufk+o=
X-Google-Smtp-Source: AGHT+IEwItQMBBDI1vzRkKuMV76VC7n5WgZIJe9oGLx0Xn+RTJyLSXPBEu2hmGxf93T+cVf1NqqyAw==
X-Received: by 2002:a05:620a:3186:b0:7d2:26e8:d186 with SMTP id af79cd13be357-7d42971d918mr638041085a.36.1750869692268;
        Wed, 25 Jun 2025 09:41:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3ffdb190esm576783085a.86.2025.06.25.09.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 09:41:31 -0700 (PDT)
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
	troymitchell988@gmail.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 6/7] riscv: dts: spacemit: define fixed regulators
Date: Wed, 25 Jun 2025 11:41:17 -0500
Message-ID: <20250625164119.1068842-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250625164119.1068842-1-elder@riscstar.com>
References: <20250625164119.1068842-1-elder@riscstar.com>
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
index 7c9f91c88e01a..a1c184b814262 100644
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
2.45.2


