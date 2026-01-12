Return-Path: <devicetree+bounces-254141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5ED14989
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 819F3303D93A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037CE37F0E1;
	Mon, 12 Jan 2026 17:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BKVceQ6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E8A26B2DA
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240464; cv=none; b=E2au8K8HQ/nk19j/dtcOzmzD72pva5FAExVs2bl66MbzodG+Iy8p4Z8t0NGfpO9cJV98CcjO1GoSkDze/rMShIE5oJiEgqFikXOptZtA+iJWdGBkHW0uiAgIHsRoryl6Q6y4UdnS/PztvCu4c9NQc5vG/F1AxceuhsdT/gwtEko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240464; c=relaxed/simple;
	bh=RejjLBkZ0ib2NnCrdmOWkjTotcDzfMHIGFWOa9YgCzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UN4M8SuvwLoo2shUvITKrJ7nf8W7vmSuRC2tVe8G33MxL4YEYybuvP7+WuP/wBxTWLisilVyh+wc+9SH55VRL3uK8lzHwhy7M2yUbL+fSBmE00Cr6OV5KIw2vYaRyo8SBa9ZufOgqmjTJRJqqt45XnMQP+l2EkOH6gFoUzYBGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BKVceQ6B; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4775895d69cso33346255e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768240462; x=1768845262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZpLbJKWhVPbx/7ziJgJ+BUcFCiVkYgZiZuAiyt6YZU=;
        b=BKVceQ6B2GdTfaov6FbNL1ltvhW4t69zaKBd0a4g5rmQI+RMPlBXb/BVWZCvodfcOt
         C6fjftl9rxBgbpsgxhyH72Bql9SSfQo9yl0HjXHBEKyoNv+bYhIw/yTYUV5HnP7xKaNf
         s4uQH2OMYj8c1smu+gLcPhj0hO/uEQYcMGZk4CzSe/hMzb8fZyPtJbE7ItDMh+LsB6/P
         KeaCwnwz/+IJJmtawyeWG1cYwErli5mgIOP/eMi+gCc9+Lb8OaR5Z4ucLaPpbbO+LnWM
         0rLvB7ULN0McvjirjY+CVNSap5KCmR1Eyw2p4jM9mgh+6N8DdaCgJLQfLIHywipO9Cn+
         aVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768240462; x=1768845262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YZpLbJKWhVPbx/7ziJgJ+BUcFCiVkYgZiZuAiyt6YZU=;
        b=oszVVxO2Gh7gSbtM1SYpebP1kC/m9M0MEBY46htfzpqQGx7HXBVmB+Q0uGPDftS/5l
         7cDxgTJ5o1/r23+jM8xfQgNvsFSqKnvkICeKAR2HQU+GJ1sqzpeN7MKSigA7pw4pDvNh
         yIXcPI25Lggpr43mKcGbxEiLec40o5Me41SUXc4AkMaBV5rwrtsRY/kA/xykUk8aQIsf
         aYhyrt9zOasGu5VHc7O9oWPtDA8S3oFvn+TeUTimjXuNMXaoo7GxUcWItx7CwoezZZPe
         3hArtSuq8eo8uxD9O6z18bKWrS2m875hXvw+ed/jx5Z5H1tBJLv6wUvuflL3/UOam/5+
         139w==
X-Forwarded-Encrypted: i=1; AJvYcCXJU5Bd4sAHnxEbBVbIhbDZLL3qgHDef4AHYqDEa8knnSStezVJNOyvip1ngq57W7y3mx41+jTZXnrd@vger.kernel.org
X-Gm-Message-State: AOJu0YzCOQy9SQoWTvIKhwQklPS0LQcsf8wbdlaw5MNbn8gW6w9i4SMb
	MZ6yUB07ZyxIitH3CwuxPGCbfQk9Tx/qTF3VeDIqtL6VfBZl/wHNXOYn
X-Gm-Gg: AY/fxX5VO3//AN72bDJ1PNrlBm67526ZOcAbHO7h/XPBrvleDAl6fixwGrfJYNe/0Vb
	EB3HUNoWpGtg02X4M0rlKr1SDbZVt3YocvaDJAJL8aro8QWO+lWvu+9yw+fujf4SrAgy2dAVjfg
	MXMg+YY5IUfBGKjCcdQGEZBdGD4MsNyW6SVjJ8Q0JvUOfEPiUu16JIUbKQWFIOifXo59dJqjmVR
	KDexR2lvq3LmySzLyQxVl1wMnQXtslO9KbnuGDL79SE1myH/VMQIcKUV7VWk5FuhVHJDxqhbc5P
	QumOMgDOlvfco4qsc78O2JlmDDMy/Mpg8IVF5SNVuTLzs+tllFTVdfY9PTR6wTpXaT41vThXD5Z
	30ExbvPrzF6ztZBS/HDMprAjbp4T4k+xgHf/Q/qiuwHabVgmBS+CX/13oNo+QmsHEtjmhRVggIK
	O5vDQmr4H9fbmROsft8dIhZ868EaQ=
X-Google-Smtp-Source: AGHT+IHmEgAivbyKanCqdWIVbxGzKMBInHrl/Nc7WUrpYqgytlUWLQD/mgSePemLvULXhTwgIMUARg==
X-Received: by 2002:a05:600c:3110:b0:47d:3ffa:980e with SMTP id 5b1f17b1804b1-47d84b4101dmr196515325e9.28.1768240461502;
        Mon, 12 Jan 2026 09:54:21 -0800 (PST)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8719d057sm134047305e9.16.2026.01.12.09.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:54:21 -0800 (PST)
From: Vitor Soares <ivitro@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ivitro@gmail.com,
	stable@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: ti: k3-am69-aquila: change main_spi0/2 CS to GPIO mode
Date: Mon, 12 Jan 2026 17:53:46 +0000
Message-ID: <20260112175350.79270-2-ivitro@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260112175350.79270-1-ivitro@gmail.com>
References: <20260112175350.79270-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Hardware chip select does not work correctly on main_spi0 and
main_spi2 controllers. Testing shows main_spi2 loses CS state
during runtime PM suspend, while main_spi0 cannot drive CS HIGH
when bus is idle.

Use GPIO-based chip select for both controllers.

Fixes: 39ac6623b1d8 ("arm64: dts: ti: Add Aquila AM69 Support")
Cc: stable@vger.kernel.org
Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi b/arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi
index 0866eb8a6f34..5119baf62a4c 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am69-aquila.dtsi
@@ -479,7 +479,7 @@ J784S4_IOPAD(0x0dc, PIN_OUTPUT, 0) /* (AM36) SPI0_D1  */ /* AQUILA D17 */
 	/* Aquila SPI_2 CS */
 	pinctrl_main_spi0_cs0: main-spi0-cs0-default-pins {
 		pinctrl-single,pins = <
-			J784S4_IOPAD(0x0cc, PIN_OUTPUT, 0) /* (AM37) SPI0_CS0 */ /* AQUILA D16 */
+			J784S4_IOPAD(0x0cc, PIN_OUTPUT, 7) /* (AM37) SPI0_CS0.GPIO0_51 */ /* AQUILA D16 */
 		>;
 	};
 
@@ -495,7 +495,7 @@ J784S4_IOPAD(0x0ac, PIN_OUTPUT, 10) /* (AE34) MCASP0_AXR15.SPI2_D1  */ /* AQUILA
 	/* Aquila SPI_1 CS */
 	pinctrl_main_spi2_cs0: main-spi2-cs0-default-pins {
 		pinctrl-single,pins = <
-			J784S4_IOPAD(0x09c, PIN_OUTPUT, 10) /* (AF35) MCASP0_AXR11.SPI2_CS1 */ /* AQUILA D9 */
+			J784S4_IOPAD(0x09c, PIN_OUTPUT, 7) /* (AF35) MCASP0_AXR11.GPIO0_39 */ /* AQUILA D9 */
 		>;
 	};
 
@@ -1204,6 +1204,7 @@ &main_sdhci1 {
 &main_spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_main_spi0>, <&pinctrl_main_spi0_cs0>;
+	cs-gpios = <&main_gpio0 51 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
@@ -1211,6 +1212,7 @@ &main_spi0 {
 &main_spi2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_main_spi2>, <&pinctrl_main_spi2_cs0>;
+	cs-gpios = <&main_gpio0 39 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
-- 
2.52.0


