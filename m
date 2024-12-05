Return-Path: <devicetree+bounces-127346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A819E539D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3C70283732
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9287E2066FA;
	Thu,  5 Dec 2024 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Z7Xqp8Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6131F03DB
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397595; cv=none; b=PgFbOE4qhB6IZxAxFOSI7DiTwv9qS63lPqxT1WRVjz6562k/s7u/J28m2F33IC8oGmQ39i22DpNQyzQ63TZyDJKlMrpByxyBL6UAFg4uVhRGgT0a/v4+5q9rZHkVO1SyIbkApgVsNQ3HZrZ7JwRGsIal5LLUEl2omNSX8ON6lhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397595; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JppD3LCLU9pHCeyq2zXy+7sMQXBwkGorZkmeemLCbMDjJXm9dtzu1dHX9Mh2lUvRDk+RmlzyRMCcYVU7Ejwhpiof/8/f6nbvYVaECcK+L++R1sDtOdL5/eUMqzKoej0A+PomNsPGgaZ7LzLyx0KqQV4FiF6O7pbfhz5/hFtQVxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Z7Xqp8Bt; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa5500f7a75so110905566b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397592; x=1734002392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=Z7Xqp8Bt3QCBMN83myr49psF1QSSZiSW58Ok5ZEu6sx7+jKp1QgbrGpeSf+YS0db8c
         bjew2GmkBBr1jCUxm9zbhO/Of290nrUXby3pFPxfEmMRZMbrFhoVi5Jsf2KTVRLO9Y3d
         SqSd5DV0sDs5ju0rqYmAaJ4Wxz02QGTQfpKJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397592; x=1734002392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=F+66HK4j+NK46ZhBNERafq3t826f43PCRrUrb6KtYiHCSH3arjhlSjdqucQDD7MrhY
         1l/pxULsr9GgK43jEAT/6lyQs0lA62MOBGYIL0ZngPKH8LFOH3GaxlDowcUS5NOI3ykq
         ceyTzXjC35poSrij/3A0aqD+nMJLS36EWN5+2QvHQBYy3PnX1TZ0n7/nkj/ij6ZvLS2e
         a+RTsWkBfY2Ex9E8CIGRJY1Rs8iPVGYtOdWxzCtKMRVr7YJNvUTUtkUi8gqzU96lUF2W
         cghc0dcodGKDfePxKXgDSIYvQo0vqx2wGe6VcIVkXr4wQle6MDL0tdLYGDR4SLdV0Hiz
         OrMg==
X-Forwarded-Encrypted: i=1; AJvYcCXwZDg/ZghdWQP39RuE/ou9+bANss48H2dtoDm8l9CFtM0XTjit0STafUYt4NvoBoQzqZGXqOU3Bm70@vger.kernel.org
X-Gm-Message-State: AOJu0YyxiowN981zDyWsnP1BDwXCMLIDrJwHIb45ossr/C4eaOd7EjZE
	dvPT2HNX6VufT1p2AfC5agS9RkI2qT8OOALDFTqgzDQTBW19eVWiMRhRBOSk6lo=
X-Gm-Gg: ASbGncsFIkM/oO2wxcCmxRlzs/mD81Qpn3wF0f3YYhLv+HXJkbOv/6AJM8Jx/oQ6Fbf
	/I6Xn2ITX8fg+4qc2gg4YuWFgiNhUM+D+CknTJ3/R5VfzI9gmmYtuwdf38Z+nYS6tWGht8Q4Caa
	bBYpo4Bd4gYLprnapWsnZbX0vOLc1ei8iJZA+9navhEFNSFOVpbpeIt5bklBzmHvLozbjBuR+92
	jYrcHaVHx7Gdv998PcQI8xN/phYwQx+pxGHqxFV9UZlto5TT0dyuSRhGPrU7pZMMMcSOsmT6Pel
	QCCPzubtZ+2flidt11ZWhyIUKCbINmGMGUMTJ/BbCrovSQ==
X-Google-Smtp-Source: AGHT+IEKdcdUCceUHogmpJQSkfQi7gvSkiGqFxS5Oof8+cN49W1U5s4xMeC1Lw+OiTYCvRjxODLcuQ==
X-Received: by 2002:a17:907:7758:b0:aa5:3f53:ad53 with SMTP id a640c23a62f3a-aa5f7d8d1dfmr756999466b.26.1733397592064;
        Thu, 05 Dec 2024 03:19:52 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:51 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v5 06/20] arm64: dts: imx8mm: add anatop clocks
Date: Thu,  5 Dec 2024 12:17:41 +0100
Message-ID: <20241205111939.1796244-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


