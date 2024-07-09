Return-Path: <devicetree+bounces-84438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3592C333
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 20:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 766802841A1
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 18:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58B817B02D;
	Tue,  9 Jul 2024 18:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sh1GmSLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2677815F314
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 18:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720549248; cv=none; b=C5rLNsy+czSw2cMHzd1hOIQS9sPgvFDIgXVzzi9ZUmuVLl+f6cRZRjF3a3V0GS5vcVPcPcL5A+LaWf7iwmWfFVQ4cOJXYrkkdp3sBx8wODbYDl0DImMmm+/GZiy/RxuuaE/khK+Zui5q3h927JoaQOD5CokrouO5/5+x8npmCcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720549248; c=relaxed/simple;
	bh=Nopg6gWn+xnN+wInLwbrAkQ700rh9UPFIesYcOUV4/U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=J8W44EnkcwLIqKXqImQ1/8ai82yY3tVXmrM93dFgkjAmSQKkQgdpux/ethVdiTNMJSacAIZXvWa3Cl6dMv5LHQldxgnek7Xogz5Bau8e12PvEjBTqOGBAadeWAl9pzuMJ7RdYjFfhv3jK8cwkirhtuxuypjPjpzGKqslSaPdNRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sh1GmSLS; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52e99060b41so5912119e87.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 11:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720549245; x=1721154045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AgwpESBd3HzhEeC9qZ9nJrYrNU2j8MOT5fOcyXDiJDQ=;
        b=Sh1GmSLS1yoi/i8TeVUk7lke2u0j2Paif1+yG0H0sss6hvrx8BSHs8kpQ/uzhuWhgu
         6YMuYXouL1nChQOQ5aVd3VR6T3cJHcbnpna1+OhtN0qnTmTV4cUEa3pVUaf2AzR/ERYJ
         tonW74hhbkZ7xCeILIT+0FVF7ccJqiEU/1DUJLaOmgNrAYNPx9PM6goHDU/uFbNDQElt
         8oWMxIQ4vdyoSbQE1ZuU+BLlFsqvn9sRy9Cipjl56CC8vXhAKqcNIbgRYXpaLAOA1SVi
         HAwgXFJ2Ez159nWkdKmjqlGtNZrWnGkKAljq0y4vvEIY8v4rxtFcy5d3HuT4CAzjuBJN
         ab9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720549245; x=1721154045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AgwpESBd3HzhEeC9qZ9nJrYrNU2j8MOT5fOcyXDiJDQ=;
        b=U7V6OcZ6tOoBg8VzM+s8XCrki8c2t2hm7w3ncMZz/gCskC3NZUxZLS7+TMGgzqe7/n
         O+E6c+Lz7gpAO96GeaaQ+h2idXxgaV55G4291aQoP+TCDJTwJUXr9CNR+pAY/JS3THBD
         yG4mEnJyTl7atsK6ldn7TawWkSF5d5ERrJ25hxfH3AqXoKizYBZJ6dooLaJR/HXRiD7q
         5jndSteP9Al5Ey6tHNy8CvVGsn00Hsr14Jb5xRaY36pz5dBt/O+vh9stK7EtvQVknP/H
         0uQmbS878qvPau+tdU7BILg9XaHSnVSHwARZZwY6Mq16J8owHjGwz/KykVeqgJ4zcKs4
         Plng==
X-Forwarded-Encrypted: i=1; AJvYcCXpy20e4XRPUuHh0OBi+7cXtRIYmw+YVbkHfXcJifX5BLUluXGFjJ35FGwVOxXPtYT61FT6QS2YwAtJvPSInETymzdUUhwPWfIMVA==
X-Gm-Message-State: AOJu0Yxjeez26Ca1ZMpWbaQQl+XhLz2DS95c074Pf/SxU8tuvLjEHGvM
	mpBP8udroY8QqZYt8mKzziLYC7kSzWtz18TtSJvasjjR4p1ufkHG
X-Google-Smtp-Source: AGHT+IGWm5UqeXQ+hUOKp35wwH1NOJ3PRBmLFFiGY5YaH4+9v2zhZDQMB1eL9w0r4CknMvRZQg/jXg==
X-Received: by 2002:a05:6512:ea1:b0:52c:df6f:a66 with SMTP id 2adb3069b0e04-52eb99d4f5dmr2008685e87.58.1720549244341;
        Tue, 09 Jul 2024 11:20:44 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eb8e34556sm316850e87.60.2024.07.09.11.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 11:20:43 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Remove broken tsadc pinctrl binding for rk356x
Date: Tue,  9 Jul 2024 21:20:29 +0300
Message-Id: <20240709182029.1318214-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no pinctrl "init" handling in the tsadc driver.
Let's remove this binding.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 4690be841a1c..c72b3a608edd 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1592,10 +1592,9 @@ tsadc: tsadc@fe710000 {
 			 <&cru SRST_TSADCPHY>;
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
-		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&tsadc_pin>;
-		pinctrl-1 = <&tsadc_shutorg>;
-		pinctrl-2 = <&tsadc_pin>;
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&tsadc_shutorg>;
+		pinctrl-1 = <&tsadc_pin>;
 		#thermal-sensor-cells = <1>;
 		status = "disabled";
 	};
-- 
2.38.2


