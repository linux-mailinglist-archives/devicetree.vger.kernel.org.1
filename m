Return-Path: <devicetree+bounces-195156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BB6B00AD4
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 542FE5C26B1
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C192F5C5C;
	Thu, 10 Jul 2025 17:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yowRgb65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9AB2F1FE3
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169885; cv=none; b=QlatcShsPngYw+k6djtwoqaIvrgTQr0JSwAjEuHqSLivrIlltEaogwzqsjCSx5lCAIYAKfp0SWYl+b43ft337raz2z4O54t7z0iwfGLSbitY9TzIJbygE7NkGOKvj4hSSLw7+YNuHodFeIIkEddPX5q9xPucalxCChqV96s7pSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169885; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HJWQX649kr1f8tnWrIvawQLjpxFsZwVwtntAQojYmc+axcKGHAAHzDPeZDPbDVdunK5LrTmp89wown+ulmGIjje8g1HnHPj0c/Xyza1/VEr06vPDzgkUyXPXKE7AINxAOWvD6bVZgIDog0i61tcTaA5Zvf8ZkoakguC5YawWeT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yowRgb65; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4a44b9b2af8so8711271cf.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169881; x=1752774681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=yowRgb65dlYl1UwLNtYu5kyk7CABjg+hzIqxKhirf90/AmCf0nUnWdEler/8E4QQfJ
         hlRbR93GHuILIsm49sGSiWTAKJ9KxMwwCzwiOzjED4xTbS2TCN2q221S7ZLOz+nUAvia
         9YNxSFYm9fCxIYy/Prpnj5Wm84vHI/cvsdMyV98iilEazXOfugHf4rg5uCrf1fCqBV96
         lg+fZZU0Ls1TZAtZ1amP7vP4t5XqtkqOKAa3I00ed1I29CbACFaot8XDyHokUxKeAUS/
         g8LkCorvKRLPtfTPMZgJODf5UgQORHjWgsAP/tWD/nmUQUNUlUtCXvRhtMM7n7x3pTli
         iQ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169881; x=1752774681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=sEcO/9TpCl+7MqT8nyDE9C39uwicp/iN4VLI1n8sEI8yUJsw6pb5GC4yoZEuYhikRj
         XlobqbCwr1Id86dN4OPBlqIZp/4GpYMpGGJnhjxg9VqyOywBcGVUVTOfe2XUGUTND2gv
         XPiLlZu6NC1qaRL0KP+THV3UKQVwVYCSFqiUq7sUPBB2UzFagLSJP7P7YDEi8vJB7h+/
         EYqbFjgZviwmFemhCsppyw3b2upWBCrwP9OsjgOwntu6J6G2G8KO/fuBfQYXin1kdIT1
         bXLUB0YVJRaWF5ZYrRsvWd9xPuuaYgepFVt7pkeWmauVBepZdrFGFdPEiBYsE6LfDb1g
         bCGA==
X-Forwarded-Encrypted: i=1; AJvYcCX05f0gYlsMKSZpYp3OUk9ans7Xq37iinBLJujfsojnc5Bp23Ale+UPgEiF2iSrbMpalCFWHjmA4G4+@vger.kernel.org
X-Gm-Message-State: AOJu0YwtQrcYo3SaG9LizH/4Z8XV1uF8zr6hTxvwYUB6jPd+cngZm11O
	XbqFti0Ya+cwJkqkqfWqSFfOwpNVsDRcSX14IH8tGTKpw2pPxhXjxJTkLQH2i/sFQMY=
X-Gm-Gg: ASbGnct0xN5yDZjKCLkwVXmgR5lI45Ci3Wb62qSxelxjmhjFshDTyPw9AJQKOWwp79O
	cOTGbh8awVtzdHDErz117uUnWuEy5G/y2O04Tg+2Dfc+clX3/NbbwRLtGuR4k2Qu0lH8m1S+7tn
	fD6nTn2as3xiGP61wcQN6r7gK3xL7tfxGBSNwf1P4L/nauXo8Vabep5LjC5FRMpK34cGQ4Z6nxh
	Qe5mWhUd4/3AUiKwSFEuwmxjY9clyovDXFGVh1kkWzyfTROp+rG3UEn/wcgbqmzL/OQ08R4pT4x
	NJhHSTggoTMFLLdPXlP42Qdv0eOrKmzWC321Y9Td8bFLG/XuEWwr73AFQhNHFyX9SLfOV08fLej
	OxxHyfIjEx7zR0s29xAaN2iFtZoDigncA7m8=
X-Google-Smtp-Source: AGHT+IHBaLoGy+mXI82bk9r9JVDCOAUDtCda2f1J3UcRVBL1tXN88/2gwPEvHSrFuX0VVuYTud0GuA==
X-Received: by 2002:ac8:4e07:0:b0:4a7:7b5c:90a5 with SMTP id d75a77b69052e-4a9fba23006mr2458881cf.7.1752169881236;
        Thu, 10 Jul 2025 10:51:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:20 -0700 (PDT)
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
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 7/8] riscv: dts: spacemit: define fixed regulators
Date: Thu, 10 Jul 2025 12:51:05 -0500
Message-ID: <20250710175107.1280221-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710175107.1280221-1-elder@riscstar.com>
References: <20250710175107.1280221-1-elder@riscstar.com>
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


