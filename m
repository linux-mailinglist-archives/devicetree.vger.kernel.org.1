Return-Path: <devicetree+bounces-68601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD098CCDB6
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEC8B1C21078
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C73C13D504;
	Thu, 23 May 2024 08:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I8nZmBuj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7409A13D290
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451362; cv=none; b=aZ/etb7B1s3MEJe9lukH3Ch4KOQjwzEWkX8qPABMdhmzt9QQQ+e+8PWUCkgtVgZk5VJZmEmfGETn3bhiPCNgVSZnEGAO7CYlwf4oWTn5ZH9HS5Fttk2K2utmMFRn7zMO5bEmOMwsDBQ+Fmwj1ncLIt7i7hgFew2pf4hEE5QWWQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451362; c=relaxed/simple;
	bh=ouSbJlOZEY8GCBHVOJ6ME7OlvRUFtsDeo1y5EHXursA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E72wN1RxrLnBR4gmikVxX03glcGGuVEPNzKGW8X6JU8ev+6pbBaYtG/zO+8UkCpPBSUNNE+CuHCJ/cT8PAZ2lxIBbTZSFOghAH3ggKYleoWITTaNeQwN/hrrSOBm2N0BhkwdZXzWkwe/4x+HFOXXzpDwZJKlIsmBeX8WD91O4h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I8nZmBuj; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4202dd90dcfso16775715e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 01:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451359; x=1717056159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xxaqeXNmd56fs7VILfOHspA8Y/nLG+qphjjlB9Ut0E=;
        b=I8nZmBujVwHIUw6xc5zAaRpMUynxu09GIN2UMSHBgXJ83AkLVaoQUMXZ9vArRDCoC/
         Rwz7+9m4WIJkeGzVB2nceoGaBRv9utJy0Z8rXP9tzXJScyKufyKgSWeFxVvGM6et/fWd
         015kf6qauKYZXbRA5rAWF0875RxU4UH9fQUC08RUSR67RZ2uFzM+rDCoYQMc6h8CgeD9
         kGyQ/1n3W4843u+TOzvVrCVOty8hkbA16TlNecDht2QApmcbmP7FnQ7qAZu7EQrjaUgj
         0WorCn1aUv606Pv3TLP/w/FF9e2tbmXLoN2fH2NQ/i5bs5E7uErfdZECSin+wdON2ksZ
         5scQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451359; x=1717056159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xxaqeXNmd56fs7VILfOHspA8Y/nLG+qphjjlB9Ut0E=;
        b=d5CiLFpBhDD9rTSTAvKobE3DlDzunEHr1pZ6DFNdKzejfeyxbpUCruBhPUe7yTLo3u
         S9v6PGAy12wjHfQ+vy87uSVP7/z93d43NKIg0ZkuFQmJrHQovwBR2HIZM6n4618JsCEe
         E9n81viWkUFL4RFv6Ofg5szRjX8GU+2TVCGh29b8TCuLDtDOYU55zKq3reG7eeR4v8/K
         o/KcSX9iFGxOdq/Ucv7T68/hf5AE/x77i7kHe5t5itR+5M8Neu7wEOVxxy+s2p5T0ZAa
         4lCyRUqgp1gzCgHOLwfRYO3FmCA+3XUMyNdoVZb0NalHvMDJmhbO6IS48MqbwLHpEE9K
         +TDA==
X-Forwarded-Encrypted: i=1; AJvYcCUdtfcJ93DC7x89r/7lLz9c35OHDhp+tEwQeic3Nlz54jOj4cexzVOYaD7U/PMoAlrgAU3z5xFT+I7JZ8nNzngiG+WtCOGbwLyMxw==
X-Gm-Message-State: AOJu0Yyp7aRQY5stiJmJ4qeQ2gSdbh7mz3pZDQYeDTBkVECUAnxpgKfV
	uAqvknisufvWdKW1jzbb1dfXSymYDAmvZxLXU2GqYIUQgQ2FDHHFW+EE0RtzNho=
X-Google-Smtp-Source: AGHT+IGkl2Vp85pLyfdv7MQfq/S/GF6HxNSjqay+owUe5sYi6UWuSKa4o4vJy6nD+5JPxVtRVaLkog==
X-Received: by 2002:a7b:c3d5:0:b0:41b:b07a:c54c with SMTP id 5b1f17b1804b1-420fd301f7emr33153235e9.9.1716451358550;
        Thu, 23 May 2024 01:02:38 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35501abfdddsm93637f8f.110.2024.05.23.01.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 01:02:37 -0700 (PDT)
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
Subject: [PATCH 6/6] arm64: dts: ti: k3-am62p: Add partial-io wakeup sources
Date: Thu, 23 May 2024 10:02:25 +0200
Message-ID: <20240523080225.1288617-7-msp@baylibre.com>
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

From: Vibhore Vardhan <vibhore@ti.com>

In Partial-IO mode there are a number of possible wakeup sources. Add
the list of phandles to these wakeup sources. Based on the patch for
AM62a.

Signed-off-by: Vibhore Vardhan <vibhore@ti.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
index 94babc412575..4d43cc972056 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
@@ -123,3 +123,7 @@ cbass_wakeup: bus@b00000 {
 #include "k3-am62p-main.dtsi"
 #include "k3-am62p-mcu.dtsi"
 #include "k3-am62p-wakeup.dtsi"
+
+&dmsc {
+	ti,partial-io-wakeup-sources = <&mcu_mcan0>, <&mcu_mcan1>, <&mcu_uart0>, <&wkup_uart0>;
+};
-- 
2.43.0


