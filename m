Return-Path: <devicetree+bounces-171272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FBFA9E091
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 09:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 820915A7EF1
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 07:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7200524EAA9;
	Sun, 27 Apr 2025 07:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cCSNRfwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B790624EAB9
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 07:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739862; cv=none; b=mJrFKvDl2ZpBFvXd/065I93ult63M31Mh4lRXmNRltK8lzov2edDYxfB6l1re3IB+qU/bHwUk0u791NEGCJ3scL5jcT9YFdGUSX3VWM1QYG6pJ+MMO33i4UPp+CSIjKx9IZgq5FRCDOnFLGyaUUcjb7teAv8Cg3qeVWqIeYNXIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739862; c=relaxed/simple;
	bh=n8jNejICJIQqsgrzxfglxNW8ClxYTcIiU+YtA8l3ZNo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vz8iaL0moXp3GxocpZAAj19i1dnBdhX6Z0Kq12PT5dJbUYOJyjbas8R2djgndUpzAFYB4mc50oq9MHi0QvWHLSnlK/wlGqGjajh8J6EmJtvAgxCfb03rsfCC8t0q9OA83mGq6VuI3dtjrYcpEFWp0ZJW5RRnjqZqx+SyGYde6E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cCSNRfwb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso24881315e9.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 00:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745739858; x=1746344658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Da7zIFrpu0j7h2mGPrNiJuERzcQJY6X/JIb6xBtGQ24=;
        b=cCSNRfwbHXscf/TEunjN6RStOgksJzx45lS4b0RrN2r6HQ1DuRXvk25QjN+myaQhQn
         Z57S06Z7dawXIzr/K1PYcvD5P0TGuIKDrp9Hg9Tpiu2xyKARepxe1VFzvBvjlETqivmt
         I4msESyxl16Q00Mx+UiGEPoIT62LSKpdwMkwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745739858; x=1746344658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Da7zIFrpu0j7h2mGPrNiJuERzcQJY6X/JIb6xBtGQ24=;
        b=V503pq4LnO+x56eiv6AaJPwE5I03H1U0BkAVwrcX9FsWrZKecCM8l8bVn4PKjX8QGC
         FfYVa7TbvRetrmnOIV2Cn4tPkyFGuyE4W2Dz+vCf6peNdw5MIrbKDCe5JphYQ6A6uigj
         874qiQ13RUGNslr3fhPKCY0z4tpmvhHeJ84Evl0lG+FuiY1/s32UCHDEIJHZv+LrQH6I
         EbPAqDS4EnufMmoEKuM3dPYmxlDTKGPREbgTyz2Gb+I0KflnpY6acbFIQPty2dl0T6Mz
         BynkHpG8jXOf5cspdYLXYlrwCOBqgKDSQkiONQIB1tAz6ebq5vF+oYnWc+9jG0LGgqjW
         R0GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUvgWUxC40uFL8oy7q2dJr4LDRjbLJX6zqD/oxNNAt41tZNQtww0o6dTwv72ylOlu/tH9B6T5AhLHv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9O3b1lqoM15QbVHQzzWtkN7oaOPUm7O2rruHVRb3LJd5FeOqz
	cMvQ6wl5liDZZuIG80Wp22gOsolFtotaoBaMgeJC5uHEc8YYTDpiVaXk3f9ieJU=
X-Gm-Gg: ASbGncvNgcURAN8NdZckRSYlKEyk1MZ9FfldIbUyjBsCS+gWBJkyNlYHn58DlhC+/UA
	fD8dhuJXEtr8oC37lrmG60/IaD+v6kzxW9NfshmDkhYHaDIful8DnkCTECI6BIY3P9ynqk6GQgd
	E0WOFs0Gv6C/d95YJw6OY6XG6fr3ymKOEecf/qVBZcyvT2cpSQpzh7kA4ipyR8zRkysCu8pghnv
	9o80xmfobB/MEkeNpUFqMNipHQSXscIC28HkElzM5and52Aa+TqzYQIIAGTM6sOZFo8eL3qEQqm
	RbJbo95LHBERQ7Onqu0XYP85LS5uaNuAUcAkBdfqwifl4ChFnK3InEmPTcykt5TB4gotRyUiBap
	avp73Qg==
X-Google-Smtp-Source: AGHT+IEuupyIlTgaign30DDDz9KUfwF9305jfDutvCc5oP7891e/+Sd1Sp7bK1ZWlfa2LaTwV1N8Ag==
X-Received: by 2002:a05:600c:4509:b0:43c:f8fc:f69a with SMTP id 5b1f17b1804b1-440ab77d34amr40034595e9.4.1745739858133;
        Sun, 27 Apr 2025 00:44:18 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a52f8915sm87682015e9.7.2025.04.27.00.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 00:44:17 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 7/8] ARM: dts: stm32: add an extra pin map for USART1 on stm32h743
Date: Sun, 27 Apr 2025 09:43:26 +0200
Message-ID: <20250427074404.3278732-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
References: <20250427074404.3278732-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an additional pin map configuration for using the USART1 controller
on the stm32h743 MCU.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
index 96022afd0168..8a6db484383d 100644
--- a/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32h7-pinctrl.dtsi
@@ -237,6 +237,19 @@ pins2 {
 		};
 	};
 
+	usart1_pins_b: usart1-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 10, AF7)>; /* USART1_RX */
+			bias-disable;
+		};
+	};
+
 	usart2_pins_a: usart2-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('D', 5, AF7)>; /* USART2_TX */
-- 
2.43.0


