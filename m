Return-Path: <devicetree+bounces-135650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F86A019E8
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 16:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6947218838F5
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 15:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA4EA154C0C;
	Sun,  5 Jan 2025 15:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SbDHfKcs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BA11E535;
	Sun,  5 Jan 2025 15:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736089444; cv=none; b=KJLJZMNw0detLcPfZf0sVHD2+Q/kIBVw/dbN+QRwY/+5HnleSqL/ju4JK5VX4lVmaHwXv95G+A7OeZv+6Bj+vWGw/cCNE4hSKBozlt9zg0FM6uY+SINqZr2D+zqbDyv2VAOQsHR22zsewfX5aBhivsA/rfP7NRjpbWQ0DA4Wl2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736089444; c=relaxed/simple;
	bh=hGi7kn4ve6k0WJdjZzqvKHSnMHlQE4CpW+7oy5X8+yA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nhOkg+RBdxXhOGfb3jlAjk8X0fiS9zazKZZ00iVmOVd8nsWVIql/IS3zge/ii1crwMKJvYf8zjoIw7ZWL1FOjiuFAM/azVwy9aAeZkZTAEHTvXYGmnDKoA2RKSIDMut1WkRhqNVcG32KABD8/2jfa4UwZqUsevI+T/zAB03eFac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SbDHfKcs; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4361f796586so140589305e9.3;
        Sun, 05 Jan 2025 07:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736089441; x=1736694241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dtzdoCK1pLVvB1zE9MUnJC58og1L/CHaPNxbBawxTyg=;
        b=SbDHfKcs03w1q4doos6wp/hhFhDkP7CkZmNbLX4wuWxlcfjTjHZ/nX6COK1hyM1Jyg
         u2hkhjG+mhrhKyxzJSTHn5p9hTstHlgJN7mSN1MP5UrMGc6gbEISoL2iJ3cvhi5VX04/
         6Etr+EcKIYnIEIrMYVQU0d/I5mTIW4DBYlzOVsang6ExtvzihcC+oiuDIzQlql/wwEWf
         w5K79numdrOQi8rnK53sfyk8lrIDp3ko00HWl9rDmNX1GfhrMwWSz19sHd2KWoy6yWGb
         zzinoSxhWREHC/TETIFtl3cAom+srgCA+5wUBDq/Nwr6ui7z7Ckl4n3wEy4v/ujW7SLp
         e/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736089441; x=1736694241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dtzdoCK1pLVvB1zE9MUnJC58og1L/CHaPNxbBawxTyg=;
        b=UQIs7KvCYhym/ZblpeeAhahT/XYGnHE9+VQ2We+uIKfGxQFLrltqSCSmJjKW2quCOx
         UEpYIgLKcmiTXAPfHyNFNEP7Kyohqg8FVwQt/11wpZiD8tHyPhXwzkHVuQEj+YlaBE6P
         qdSRgKEHll6FsH7WuhR3hY2ozsV7Z6+EecV3DYPy6CFswBxmDM/bnUeXBT7BbiOgD5cw
         nZmBgi1hf2y2zaf3avZF+a4ceTNtO58nSP3k0P5rTrAWarPEydEKqxHrnIyVGz0nKQN2
         3NvXrFTl/u/DF4GuNh3dmk5cHt/vo1G5nBbfn5B2p2iIY4tK9zC7OGt4zURBUGL3U6tv
         TS7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVhEUB90ucIuc23ezWZ61HqlG7kkcpdKFbHoYuCYeQH+mgP9uaPLOCoPpA8nMYb0LG1qDlyPO8v6DsY/Rd@vger.kernel.org, AJvYcCWSuYcPzo+k2TEkH4kXBbKx9GhRCQZF49EujMux5BKTJ8X8I+JWBof6W+T/Z3hgUitWXZpMuo6FnO0f@vger.kernel.org
X-Gm-Message-State: AOJu0YyyHsbvPAmiMTFBKRX5qNl1o0ZKOQ6W/pXeeiLKoql9Bdk3oId1
	trr0l9CS6qOxCpnwOkE3Slowlfm19NvqnOdWD5K6tWWNF1G+xYiB4daTZA==
X-Gm-Gg: ASbGnctkbVSIzsT2vLQl4VuRssEmX9XQgFZgodRbRRHmPzttN0m4gmifQYE9B0/cbac
	fTlsijZnPresDCqp2rQKWPnZF0S6KVKWcxEsSjmK4A1QnO8agTjCcLY7SVbN8vDyJVDc4TkvObf
	bt5ao7dWCCHeJH6M5QIdYyAZWSSAexyETGH0dmXlXIhnYfMyPERU3PdcHghuUB8pXOa0YKuVgDW
	26P5TtitA9us8P8XqhLxS+p2JurneyAi88JPO/gprkXtkt3hQQ4MEuhwDKhpQlGTicMma5wSyVk
	7F5084eI38e2UgpaPZuTTqmw8Rtz7h0HmndwcKyY6w==
X-Google-Smtp-Source: AGHT+IF280nSFgoXoUlNi8TvaM3rt+A989qx+fLP3YDk+HkIfh1cCeGL719PHIZ5TukaCSGyzW/aog==
X-Received: by 2002:a05:600c:1383:b0:434:fddf:5c0c with SMTP id 5b1f17b1804b1-4366835c41emr474736025e9.4.1736089441256;
        Sun, 05 Jan 2025 07:04:01 -0800 (PST)
Received: from localhost.localdomain (host-95-246-253-26.retail.telecomitalia.it. [95.246.253.26])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4366128a62asm536258685e9.44.2025.01.05.07.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 07:04:00 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Daniel Danzberger <dd@embedd.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH 2/3] arm64: dts: airoha: en7581: Add SNAND node
Date: Sun,  5 Jan 2025 16:03:03 +0100
Message-ID: <20250105150328.15172-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250105150328.15172-1-ansuelsmth@gmail.com>
References: <20250105150328.15172-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SNAND node to enable support of attached SPI-NAND on the EN7581 SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index f584409e72cd..dbd296b049f9 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -143,6 +143,29 @@ gic: interrupt-controller@9000000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
 
+		spi@1fa10000 {
+			compatible = "airoha,en7581-snand";
+			reg = <0x0 0x1fa10000 0x0 0x140>,
+			      <0x0 0x1fa11000 0x0 0x160>;
+
+			clocks = <&scuclk EN7523_CLK_SPI>;
+			clock-names = "spi";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			spi_nand: nand@0 {
+				compatible = "spi-nand";
+				reg = <0>;
+
+				spi-max-frequency = <50000000>;
+				spi-tx-bus-width = <1>;
+				spi-rx-bus-width = <2>;
+			};
+		};
+
 		scuclk: clock-controller@1fa20000 {
 			compatible = "airoha,en7581-scu";
 			reg = <0x0 0x1fb00000 0x0 0x970>;
-- 
2.45.2


