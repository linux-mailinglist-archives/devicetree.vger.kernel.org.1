Return-Path: <devicetree+bounces-181843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB540AC9302
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 18:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76D0F3BF9C3
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 16:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B024236451;
	Fri, 30 May 2025 16:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WA0pHN9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC722356C3
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748621279; cv=none; b=A5yVCoVy7Uf+U5/8oESBls8cFsk+cP9Lidvd9ExR8wv2sEfjoLHzZezA/vjSq0XYFvhuRdCrVRPW6SDFN00CpUukGvxFQBFrkrBVQydOQM45sexDCAyGa85US7pHdaEQxEAWLOBCyOgCna9ZDYeXro1uLuYPQi4p/l5bmkG/7YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748621279; c=relaxed/simple;
	bh=sKyyp9KsoPPae0scG2TJa4HQa9SfU2SZ+xFe9IFIWMo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EitnE6/t8eMys7lDETKQA7SaxHPdtn0+x0GzaY4SYQDhw7GWokNkJIq3bE/hbu6Lmc+q1EjssWL1UOdOqkTjJk431O2Vn4daCV7S5OO3/nS1quC/l06hzDV2vNr9EO6T8YcGx6jJbXDgXedDwXeEWWxW+52hDVdNO3hJdQJPpLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WA0pHN9w; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ede096d73so16401415e9.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748621276; x=1749226076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ugagfCqzkkb6ZXT3N2b0w96FZKb2OG83xQzQHJvA1Sw=;
        b=WA0pHN9wZ3LOeGi1BJKeZndLXrKcfYK3cxcHtR13XmzcWKkPLMlEC8sO0euKfYBhWV
         SivDdzV6gkPbE/oAl6tKEk2WkeCC3iu3EVKlOX6UjYha5/RNrR8RkQLM85U7Wsj+cNMr
         IoNsScwiulgiYDWoizc8ckw87nG7zr0HyZJL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748621276; x=1749226076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ugagfCqzkkb6ZXT3N2b0w96FZKb2OG83xQzQHJvA1Sw=;
        b=tL96INkJBR7+iNGtAZdI78fZTPAQIK6yNe//kTKG3Dadx06UkHKopVFXDyOxAiEDZa
         8gFZ6N7Kz/ToIRGkKlW9joL9Q12pist5evvnNTlRJ1jHxEh2X3pXeB3fBqyOfaiFx0Of
         UsKvLylqoY043l5r/PgjUHaC/OMMhD00hVGDHxNdXuC0pBxiUVKb+Wxdyj9y1PNk95W9
         eJuRcbB2mKiUsnkhqZBVyo4R8fXu+Uaf6ZGTBg1KTDD9GFlu1LZuD4zinp8Bt7kbhPaj
         29kBPSGN2E1MBlbkrIWfC6HypY7u/++2HycjDYSeJrN2UxV7y2370RO2aGpd9Sl/AR/1
         2GHA==
X-Forwarded-Encrypted: i=1; AJvYcCXe4Agu7qDNfpem+9mZk6rBl1XoAWnNPLAZIniGo83McUTQ3FrXZ62/VvaPfjNDuUKFpDLkZMqPs5Q8@vger.kernel.org
X-Gm-Message-State: AOJu0YwD5bGinhy7j76bKevZxcO9COBFSC1S2RBvXKwKoFXQBpOMCa8B
	LJvTyhNk8ABaKMFxcWUoTLEpKjUC7oUNawnJbqNhUUHV4sisZFiNzO74Hds2goYnjuA=
X-Gm-Gg: ASbGncvhrmYFReXznxa+o8wjmKz9Zr5sWE5s871hN5Lhhwge5vwh0aa4Xb46Qg91a4e
	uHb6vhCh/tKG9ZpmhbFEKSltEtQR/tAbS4S4jTJn9kjbjR/PkDRqjWc2eOubblak2s30mUoXfhp
	6XlZbrt1D1VPenLcyjIpV/PxL/r2QjM8JfcWaqoigqHRIGzkfeTwSB2swMK6388UWtRFQMjVmpL
	VDuAwvprRP2v7XMpGtFWWcEPpjHKsECyy04MQn86TM4nIYl7nOYKH8zZT8gyh+5PvD5ZSksi7Zb
	i1oEsej3q0ullUU8pXwS7/hr3cEn0+kuTsb+YVFJpmRCWRQVAaD5CXD/AlCHuxIff5Ngrky+ODt
	L1HXutRrSmLYZezspEBEawcTREhOG6+IKX6+6LRjm
X-Google-Smtp-Source: AGHT+IF/FFTEstI8VczI8bSd8uyPZIXtdnlGAyynzNnJaNGF3uvbYAuD6vs/4UH6m6kIb/231ZEJww==
X-Received: by 2002:a05:600c:8207:b0:450:d586:25ad with SMTP id 5b1f17b1804b1-450d6543cf3mr43891965e9.15.1748621275772;
        Fri, 30 May 2025 09:07:55 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450dcc18a80sm9716365e9.38.2025.05.30.09.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 09:07:55 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v5 2/6] ARM: dts: imx28: add pwm7 muxing options
Date: Fri, 30 May 2025 18:07:33 +0200
Message-ID: <20250530160748.2476088-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250530160748.2476088-1-dario.binacchi@amarulasolutions.com>
References: <20250530160748.2476088-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add alternative pinmuxing for pwm7.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>

---

Changes in v5:
- Add Reviewed-by tag of Frank Li

Changes in v3:
- Add commit body

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


