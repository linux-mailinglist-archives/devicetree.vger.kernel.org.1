Return-Path: <devicetree+bounces-68600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 793558CCDB4
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19C1FB22BE6
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFAE613D29A;
	Thu, 23 May 2024 08:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N2sVzYyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25813D26E
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451360; cv=none; b=GEUNGR7h3dm2qLLa0Nbgf7cIoepS7G1KTTQ49iFp+Sk4mBFvBzequz3qw/LuhV0XOgt4VXxvqlVFQbkLjwYWkThSgWvQs9NbDsNFMlcixzIneWm9jCWgZDfX/8njAXchMY3RbeerE2TDBMlynn8NFYgQs4TOjusYtvmUawnEjpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451360; c=relaxed/simple;
	bh=F3HLan+EFrrhgGJOCJBcZod3FUMJQinkw6hx3P+yk+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pnFtHwpL/ugB6PsapgOJojAg1qT8GwKa3WmKDweizQSQW0rfjZ8frsXAoDHR2Y5xuM16a2Ra+8J35p1KgZPnfi92DkvEqjwKgtoLxy86l/eRbI1pIeAhMhkK6CZRw84/u8p3ae8cPwQUrTYBOgrKlp85gnNCTL4imAQQotOGEjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N2sVzYyv; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35501a905b3so36255f8f.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 01:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451357; x=1717056157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWlrESD1hPbK1jELiQUm0maGQhBf2warBvSE6Jg46pY=;
        b=N2sVzYyvzRTKT2HH8IlxaYswHGz/4nEStmu5iWFGFoJXOKWDLzk6kSymRIX5T3SEI4
         ZP1SCwUWEVvVS62YVvHZ8ErtvmAzoZBJCNbsJAYjatyvbkeoAbum4UYO1U1GZv2NEbhw
         JzxBvnjCFPiWYPe9IS7ofvmKHKt7ROEyi8+D5T+vTrHOXIBfkuVEKsW7q+u0x4oroesP
         w8cYycmgYdeUxm2Mlxgvi/lTlJFRC39AzMOicDCkX/U8bPXEWUT2kFptcGaEfDi0i+sC
         iC/GhYVOMrm5S4t9H0th08kHlQ7ImlKZRsr+kj/JSNUPl2A01WEP+OQuidPn8183BW16
         Fafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451357; x=1717056157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWlrESD1hPbK1jELiQUm0maGQhBf2warBvSE6Jg46pY=;
        b=a5ooSGbcKrZywnr70Rn77n/iZuWiV1e5kwJxIC2/BWEkZWNqN6Pn7hor4Wy+k8vjdd
         E9eQwOBrubhMrXeZEsYanHLNpL2Ir7enCVVvYSHo636b1tt9UzrCbdaeWeskRtwwjRfC
         /rVGDWlktntP2c4poTkGq07cD/RLdmiNWWr1Yv0kNqUel/pgBctlFVP68Pw3kpfu6teP
         NJHkzaHF72bWf+dcHnWw4KT2zazQksm+/uWK61GsToOugCSCL65gIOTpcICU0yHwH0dS
         u0QgXiwVSyHNVR4z/yecxSjnkpccH9y6tYDlT3fomXxHuIS2SOrX+8qvo/UNAP86rLP4
         nDcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVe2aRMZwtV+TPtw7GsDJMG+RWTSiyrxq9YZtQfmDrCF91anR8BppcU3AL5KJjiOVyPSy10jAn48pOLqPKW9hONvuaKgqNkdnZb4w==
X-Gm-Message-State: AOJu0YzWN3VAINA5ptLsdxFe49v6KX/vuzCKBnnuIHawgYhbzGzTZw0s
	cQ8Yx0znXRg8qwRuD8fnoBySp9qtk9QwItJFSLPR3YA9zdZrN66nCAJoO2Rg39M=
X-Google-Smtp-Source: AGHT+IF1GFP+Prk8Sx8nfsKKmPVEsEvOgzLyVffBGqv+aRehf2+t9mnt83aCEYUlD2pGPfUSBjfp1Q==
X-Received: by 2002:a5d:66cb:0:b0:354:f308:7cf2 with SMTP id ffacd0b85a97d-354f3087ee9mr2824214f8f.50.1716451357249;
        Thu, 23 May 2024 01:02:37 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35501abfdddsm93637f8f.110.2024.05.23.01.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 01:02:36 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 5/6] arm64: dts: ti: k3-am62a: Add partial-io wakeup sources
Date: Thu, 23 May 2024 10:02:24 +0200
Message-ID: <20240523080225.1288617-6-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523080225.1288617-1-msp@baylibre.com>
References: <20240523080225.1288617-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In Partial-IO mode there are a number of possible wakeup sources. Add
the list of phandles to these wakeup sources.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a.dtsi b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
index b1b884600293..5c13851c29ec 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
@@ -123,3 +123,7 @@ cbass_wakeup: bus@b00000 {
 #include "k3-am62a-main.dtsi"
 #include "k3-am62a-mcu.dtsi"
 #include "k3-am62a-wakeup.dtsi"
+
+&dmsc {
+	ti,partial-io-wakeup-sources = <&mcu_mcan0>, <&mcu_mcan1>, <&mcu_uart0>, <&wkup_uart0>;
+};
-- 
2.43.0


