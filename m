Return-Path: <devicetree+bounces-39929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B521684EA72
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 22:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D96701C26128
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 21:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477CE4F8B3;
	Thu,  8 Feb 2024 21:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="MUS1/FI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D9F4F1F6
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 21:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707427492; cv=none; b=V2lE3yf/e21CyjZUfgek0VzMDlIgtAT5vPhU5/SmtR4TPZJ2G8gTeGuIfb92qdbmb+to8pPi7uVnlyeUdgilTg8h7H2cu7MQH+FnOGzjjRG47Vi0Y5ydHzzVbWIy6Xs1LuE6tCXr6I00axmv9QmB6lVDTRbPUdcXk4/WSCFwGjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707427492; c=relaxed/simple;
	bh=Y8u0Q5dEvR+Fn85d2OW2E9F1FvSyUg6pKiCmA28YAaE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UgQtAi16foYEl6t0gXFooigcj7dyWlQDp/iGz9EKpYuZsojSAAsufMYgE+pNp1VM6ZM47cvPDp5wm/p/+zBVN/MbL3K336MEVnP2j/8W3MfRZhkrVIz4NEF9tKdRoXIuEeohKLHvTxbno0bT5BuNiMFirj8uYDug3CzTT9SswW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=MUS1/FI5; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4103be6e938so2743715e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 13:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707427487; x=1708032287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ed7A/CJnxxijWMgALoUnlypxo+TsLBBvSG1RH30BvQM=;
        b=MUS1/FI5w7fcESLab50Jm7JCkON4T02AjXSvVqRb25FslrRIVQtCOb2H236oHtWjtg
         o04g97cav6YiDjfQ5b9ZQ5KyHU37nz7PdACxlTRWq8Gt4qfeJDyHNro5qBiRyETUqjdN
         wqpWr7d+RR8kM+xhtA1oKCczy1NztsFpEBAWYMZAzaJtgJI8bxPTFj3L4gcxN2zYnoqj
         BJtCl/sqIOqBGNDalH+SUuFcr0mvwAUW6DQBmBqSem+Md6nn/VFHQuiTX0hxQ8Hrkn2+
         YFspDOyImKHP9xkPBZ+ONY3dVYywOJy0kOMBqxXoDVqR1uICRp+H8jvDqCK4UQb7FvWE
         7OBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707427487; x=1708032287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ed7A/CJnxxijWMgALoUnlypxo+TsLBBvSG1RH30BvQM=;
        b=BODXeOy1ibBOKWHZy7lNG2nQcnYSaJA2YRXR3C810EdcQdvBw7TOfu6Hr6Tr5T2bDh
         tDJSNxV+BD00YA8P8CDp6jvyRU/Ywm/Din5RgUqRR00sANN0qy24A6p5++wTYLesOAsa
         NsW8clC8mR9/ZgJimccBRqrhLoC3g5+eDQnKokpmuzuyQWO4cdqTassnFxPr+kJbf5x8
         VE4NqeSNnhP38EbPM+NliDJd2rwTSPcU9/tZZK1iCHpLz1suoBi12CLdf52oxjHEi39d
         e1qXTEzg/9rbFxKYdXwoI8w6IPFYtKEGFwr60KzGzBiKWj/VULKqgyUnABAFdtWUmKCs
         777A==
X-Gm-Message-State: AOJu0YzMXZR/xFgO4Nu6GlwenPKtDEw2bsvBpZgn8LxwANxNDdGxEOOd
	AQamxRp4TkgfiyZIZx9EJrWUp3P6RXQpOEJUQCrPUwLhVkc0oSFYXN6CAmHBwtA=
X-Google-Smtp-Source: AGHT+IEGQrKu5eIYEpCGNg1Agurkj2Lx4aXXVG9iV51WjreWvnA89A4Nqhn6cybmm7Jf8BRWyZQQLg==
X-Received: by 2002:a05:600c:2150:b0:40f:c3ca:713c with SMTP id v16-20020a05600c215000b0040fc3ca713cmr384575wml.36.1707427486744;
        Thu, 08 Feb 2024 13:24:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWPWCtxQQBFNsLuPJqb4Yo7fxZPDmyY1S08uctdZ12y1njvto/76KIP7y40GMLhVLcxESmBRWOV8ffFEzn8Q8hPipJp8lVFSIjxesI5OiPnAfm+is2h94ouDJf16phymV/ZNx1nK3T3FU5Ev3aHOq7/5u+W3ImrrjkjoTjLZXaSnsjwM9Gsk0vegqV84xoUOY2LvANtGKX0XACNtGP2NmaWx+fVSFUmC3Yy7tXzBCvNb59WjzRe/+mVOQyUZCzX0q8T12oVYmXjiL0HBtGCtVBY9Q6cmgGSIplrnI/uA7TBiN+51cNEsUwwo+UMlyWpHT7lWmBKq+wK+9nIn+rj
Received: from P-NTS-Evian.home (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id bk27-20020a0560001d9b00b0033b55661f32sm228721wrb.9.2024.02.08.13.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 13:24:46 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com
Cc: Romain Naour <romain.naour@smile.fr>,
	Neha Malcom Francis <n-francis@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e-sk: fix PMIC interrupt number
Date: Thu,  8 Feb 2024 22:24:22 +0100
Message-ID: <20240208212422.213693-2-romain.naour@smile.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208212422.213693-1-romain.naour@smile.fr>
References: <20240208212422.213693-1-romain.naour@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tps659413 node set WKUP_GPIO0_7 (G28) pin as input to be used as
PMIC interrupt but uses 9 (WKUP_GPIO0_9) as "interrupts" property.

Replace 9 by 7 after checking in the board schematic [1].

[1] https://www.ti.com/tool/SK-TDA4VM

Fixes: b808cef0be46 ("arm64: dts: ti: k3-j721e-sk: Add TPS6594 family PMICs")
Cc: Neha Malcom Francis <n-francis@ti.com>
Signed-off-by: Romain Naour <romain.naour@smile.fr>
---
 arch/arm64/boot/dts/ti/k3-j721e-sk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
index 188dfe291a32..6a8866055f77 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
@@ -574,7 +574,7 @@ tps659413: pmic@48 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_irq_pins_default>;
 		interrupt-parent = <&wkup_gpio0>;
-		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		ti,primary-pmic;
-- 
2.43.0


