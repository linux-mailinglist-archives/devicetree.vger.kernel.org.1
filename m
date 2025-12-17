Return-Path: <devicetree+bounces-247588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6770CC8DB3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1007D31804FF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFAF1352924;
	Wed, 17 Dec 2025 16:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ISMG2lk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C720350D5D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988739; cv=none; b=JPrWEUjc8uKyfsSsJ/1WMwftOlyrgW0X74YqNiSBdQYjPrd63nJXToxL+pFEYv2GbFoTxkCLgXUvnyVTAvLfxaQ8+2Q2wHbux7eek8lmEZ7ehP4+M9W4Z3T85EalqVP7wO3lUbP21HARul06F7fhtd6HZqzO0tDhcaBa1GMpsLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988739; c=relaxed/simple;
	bh=+Y0a0WIcF+OvRh+wENdR2K0SnXmQmB8D5lWAyKi2wlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tlr5nT2tkK2bWvkPsL1X4E3jJvtHzbMZnMwEiKG0MLgHHdFiXHYIEI6+W96w35ghagoekKFJSZt4lq64QPANX2RCfeipDme1ojJ/Z6zUlKmAic/NuZTCDmqgZKyK/PT3oiohrrAtSBcXBhKyW0/yMhyjQ20rRFu/mbu6hrZ7ua0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ISMG2lk7; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a137692691so25995415ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988737; x=1766593537; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JJ2g7x+wr2VIeqIG6aJACDKejjD/eomNYXl10MONUeA=;
        b=ISMG2lk7idbPYbmN2jAsii5dl+YFu5p1sYKqDDxjOJ5ZXOU01Cfm62VdFpmiVLiKYH
         WnPuubB+Cun0ruvknY9eU88DvJG3mIgUzC3Gb8cbmLVrm69ySQRtGL98L7Dnjqd5n4sm
         pcZLaiODckgPmatlitjYbGmuocBl/jQ9Gu096KKZBjZFm/5dOLCPUmd6Ag4uWxi9xyGH
         f6r7K/vBn2/pMj5arHagY867PkQT2iodqjjIHLrnpqI1kFpk+PMgKx/JO8F0EzRrKkQy
         iyJ8HWTWA9yN/3niX+hwq4CzUj/kTSBQpv1QFhXu5Y8s4KblwZzz2YvVU2ZWQKMVApQo
         TL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988737; x=1766593537;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JJ2g7x+wr2VIeqIG6aJACDKejjD/eomNYXl10MONUeA=;
        b=UtfJKUmMYe/G20dFPKW7XablLokGTAGkjpAe+O9XK+bgqhBMLOlXvQRT4s6o7QJiWS
         IWZzeUAwBnFsFe2Fh1xTNf9pkFOdj824ArgtxeZgwfgPnJtgIcu37UEvUepzcRdY+LQW
         pubmAmJdAvMPENbGJ3M5Jop6zEKszMrwU6MDjloUEvDTmB3LfYnmiBmswGDQAf6tKsFv
         yj8ZS3pZtvw5Ovwgvzry1Wt0Uku6sfmHmfFRTD9a+9JBQCcx3ovE3mVDY89Ft6YoNarY
         FYv1HvQP8mf+iwoKOJB+hxbv9oj2ia1695qQEVTUJ49NY8RIyWw06YSDTaNc9Zz7J6xa
         iMvA==
X-Forwarded-Encrypted: i=1; AJvYcCUC+Hjt4rlsfEqSRsNHuIEO8p3ZFEu7HvS8Q06csPsGGls34fbenBuSytW5VnqRofODm6jbGQdj5DnM@vger.kernel.org
X-Gm-Message-State: AOJu0YzAzoB2ISpCwPHgdq7e7XW/83tAZPZdOAbC7k6zBJ1F3PG7yvKW
	ba5DII49Qa+/QMxQXe+ByRgLCegZEUmO24oQevID2H4qW4nK8tQ1iaOZ
X-Gm-Gg: AY/fxX6+zSWJ8SzGjR13F7xv9JtogsXBCoZ4PaDm3nJy0qDikwijxVzsWZdq7H8o/Rj
	w91OFSDcEpn/8CsOTGd093I/u1z1CuQTKIvRP59ES/MjVQrYckdbHolAuPZYXltcOktmrPXEI9/
	ZtuaO7zwLQWIZoRQHrGvlD5D4Wz1/2DlmLrLYdHiH/gEXA4ZGOxf6UMrfWDzp2kFp48+q/vtziI
	0z698Q+jN2qzUTCRpt/PHyWikXKUbLh8eALBVJrmfjfwqqw6R6LXSM1xEVM4c4fL2KcjHcfqgMr
	lyOqW9qpnFzVG3QCGEieCbpOUicyeDulM36ywXLtLeeAo2w0ZE4EC4Yyw1H0YrpXFAOUPXx478c
	UJxg7cqf/x8q8cV7hnpkrhDsU+Dh4bzDcCJVdpGjHgfXqqCINcHGcrvOaEGL5/J1s7tBjx3Mg42
	7SmjanlIbfwv2WuOGEd4aCNHU=
X-Google-Smtp-Source: AGHT+IFkx8/ULLaclRWeXQnp3FknE4nFeL1wYOatsRa4nxVopZsYO4Ep0g1d9Nf6orRKrMY5yv7hDA==
X-Received: by 2002:a17:902:ef44:b0:2a0:a9f8:48f7 with SMTP id d9443c01a7336-2a0a9f849f9mr145464645ad.55.1765988736603;
        Wed, 17 Dec 2025 08:25:36 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:36 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:31 +0800
Subject: [PATCH v9 18/21] arm64: dts: apple: t8010: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-18-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=894; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=+Y0a0WIcF+OvRh+wENdR2K0SnXmQmB8D5lWAyKi2wlE=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlC/iLREqKTBWyiQSUcAXdch2o0njKG9Al08
 TcC+2X5MZWJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQgAKCRABygi3psUI
 JD0eD/4pVaQ23XX6B+Fz65fzVa5a1N7gDangt8BRGmtK4RbXJQcwK12ed/KSO6i6t7r6RkeZH5G
 b3V3+h15nme7HrfFyIbxJ+TklHl4e2rZA28BBmLoVn6dOFV/x3ZtPYuwHVdWNSp2/7DhZzH1Q37
 6BTuOSseNtCcLPe8n/KEvx5CFEr5gREp+EQY4NUDqtceqA/zFJg/jHS4jNQBfu0se39Pn4Jxcx/
 QzXxUucO0/dVcYGKQ79a6BpnThLu6Fy4hwh1wfT8y0N1XgV1bSw6QeFDkvYuXmWGbwOutGhAm/X
 /Wb765ZpIaT/vgi69kbmCXgqur0RsDyAR7uy5L6+4knysMmxnosG8ZuXpCwzdESChCoXncYfGxD
 p1cyWUPC20AQftH6PJwuWyS8ph1DIs91Q4pvllAVhpmYq8NPMUxJy62vOy6GTRHb4yxAfHvGLoe
 4SWngvxXBl70SPMghL99HRz6vDi7jXn6SY4e31zSKlV2sHEk1tUzXO4LjzyLuhj+3Jc74qx5Sik
 e7791dK35Hiz/iCy2gD/eMqNwUUIioKkZQe02O4n4ccQNxK74tRwvxuUdf5b3Mz0sI4hSuusTXu
 +VvyfdhXT3MVurzPfyigziyJNrpjAK+nMzdaNMgdJwGrekEMjGwD7J6cGpf3UCYzwX4MxKkv95z
 ahy8p7F0lBtPoGA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A10 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8010.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8010.dtsi b/arch/arm64/boot/dts/apple/t8010.dtsi
index 522b3896aa87eb290dc831cbbf2cc8e593844097..3cf1eef5cc261fa1dc699e8b5c9991e2215a6010 100644
--- a/arch/arm64/boot/dts/apple/t8010.dtsi
+++ b/arch/arm64/boot/dts/apple/t8010.dtsi
@@ -332,6 +332,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "t8010-pmgr.dtsi"

-- 
2.52.0


