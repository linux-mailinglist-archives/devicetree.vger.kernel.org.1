Return-Path: <devicetree+bounces-177069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD65AB65D6
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24B551B64D37
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B124A221F12;
	Wed, 14 May 2025 08:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EFwWVFo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59CF22129D
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211120; cv=none; b=NjFTNEMb3CARr+QF66aEp5AqjgOdpwAYZ0ugURDp5m0LmmM9wgYew2986rW+p0Y5UxCZpQDUodf5xLiOXEwbVVmyO5z64ruz0i88JkEAQ2bz6NpymNeTBCbdpeg9HZEHhjJx/8xF7AHM3KVPcD0H2c6FYqWaDORTZZqtZHBcuNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211120; c=relaxed/simple;
	bh=N9X9vZIT1A6rctLeeZT1ABMvd9sNG2VCtajtyJLONQc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vm5bL1hVSGtR5Ohy/ns4zzMws17J8KEIKd+AvvkZTInGqYRLpgC3CTy/GmZ/j/8yi8BjJahK829Bbn6mrZRwPF7beqhLEzQbhWxM+Xe6TRcf6aDc7AdNxYdC3cc0cU1l9qjXAH9vpb6f1NHBO+n3SlZIJPdkzEiOLB4exoq8VDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EFwWVFo6; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-440685d6afcso72301525e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211117; x=1747815917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CU3p2HZazfv/x9pcuc+uTWk5M51PePRd/7turTCqc5k=;
        b=EFwWVFo6MOjrBFsl+yc+01qh0upFgSuk1wuDNoTuev4Z/oeq/z/q9FfB574ZgWTqb5
         5UlbMxVsxG/oEhNOHrJHh01N/XYUjctaU2SBxTw4YSBYttz/0THyzoxSz811VtFRrpAK
         V6C7gBsWyWycgGFdNfF/ZMLjBzZk2DlnHO7Kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211117; x=1747815917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CU3p2HZazfv/x9pcuc+uTWk5M51PePRd/7turTCqc5k=;
        b=LXc8HMn1K2ICaI7H3VCd080BzsQE5m2v+djLN2B2kaZjIK36ieA4rX9rbUnErVSbTH
         VmuX/YkAjxVc0PANJRUHntslkuiiF7gQvdA6md6XodZvzZCbpaK9TBJLQsl67Mks/yMj
         BxyhyogA3duqxDnYNLvB+WgiSDXbeqeOlmCDuXCWxc3lwVkAhACopr/ipsDnFUnQbkaX
         0zzCXDljwL5JW9m96/U1fP7I2xaIMT23O1lF/0mWPDCoOG/S2pxbAsr91sg8Ic/tY9EY
         0CSB4q605dkUQu126lfpRxWmbdmDAf8AIdbTdCcogG6PP5z2BYX1CH6aE/42/+NPNNI8
         iTwA==
X-Forwarded-Encrypted: i=1; AJvYcCUlaMcqJluEdpF8Hvq/e8x3U8L+rNf6ltXOyaSR0IE3XfIlhu8abD5hYBFgn9gzgpLRuT3dY6QtEvVU@vger.kernel.org
X-Gm-Message-State: AOJu0Yze4CNmcZqsdJ5PykndIxB4DimVGN7UBFkoz6BhBVSK7bnaf5wm
	tnB9+27EvcLRpvXo90DplYzz3wb6unhnY1UNV3iMgOcJzWfTfQVuV24eVN2pJIU=
X-Gm-Gg: ASbGncttst2PdDq9jbQUhJ4hG48IIUMy1hIqC88ljlt8zzh9bLGP9ZbYzoprxGAfSLe
	kMiqeClrXYEw1wkqjhJs40x0GY/Uu2ouzsiuUIghekT79Qseg3c3Je7HNPFmuPlZEJcsnX95/eT
	w1TkMSpASwWxTlmUJ8N8d69Cu9H3qqhNul/epJFuSmcpaKOVZSYxOdEXyiyLakSLzGtK9l69jn6
	7XiB2ukpq5XEeSqY1FiT8uc/Ve0wuD87O16xCcEXU9Q3lIWifVmMAKkta8434BHTwXRckMpS3zu
	mtPzMID1Vnmx1YeKsKnjBQbWcmuBwatQ5EWrywE8hgLQageQIPkiT91JL53CYdxfwHSfz/2WFEr
	LGthrK2Gc4lSLIhLNQrc8OBmsYLroKvLwYUEKVTkIPHc=
X-Google-Smtp-Source: AGHT+IH06rcSnfaOB2OZhMFuSXU3getNgBYXw3VlOzykqn2k2DHIALSzS9mBkCxcxDKGZiq9xxXxLQ==
X-Received: by 2002:a05:600c:1da5:b0:43c:fd72:f039 with SMTP id 5b1f17b1804b1-442f20dc6e7mr19271805e9.11.1747211117060;
        Wed, 14 May 2025 01:25:17 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:16 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/9] arm64: dts: imx8mn-bsh-smm-s2-common: Enable GPU for smms2 and smms2pro
Date: Wed, 14 May 2025 10:24:58 +0200
Message-ID: <20250514082507.1983849-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>

GPU is enabled in order to use image processing so it must not depend on
display

Signed-off-by: Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index a983072fb835..de70cd3a392f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -77,6 +77,10 @@ ethphy0: ethernet-phy@0 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
-- 
2.43.0


