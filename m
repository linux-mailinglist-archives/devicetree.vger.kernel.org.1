Return-Path: <devicetree+bounces-217014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B311AB56AD4
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:17:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC2273BF5A1
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624322DF15A;
	Sun, 14 Sep 2025 17:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="CZNKGi/I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BC22DECDF
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757870186; cv=none; b=YbaZSgDXkcG8gNcBGcMRJmAGMxEpNmuqe2GGxJ18sS8TqNuuYviSqYRwv/fY1DFxxmgLcLjytSUJNmK+DddA5UDun/Ol2qJZYkUagXLusfPeXMiqKfowkgihjSIBhyTtjbuW0uQkGcJub43kc055QXejyi+hcE+4cX/eVPq4l8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757870186; c=relaxed/simple;
	bh=7R8rcOL3f1HwsUpPHaL0+BUAREAOiXb98Mm1tlgtyCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nbUcrB6IYxY9VSxl78L4tsQEpaWkOFsM4TIPdPdA+7ArW+Z3hnORO7nLu+YeSFT1K4N5rXGlxe62NdvZwtdiOMcjCbnS3L6wVe7t6VHP+G/W6a5dZE4Xx2iGwYq68UftrrhjK1HxzJ10xD3vV3q1wnKs3K1/fIGRrZiunBtjH7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=CZNKGi/I; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-62f277546abso1380263a12.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 10:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757870183; x=1758474983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=CZNKGi/IHBMBaVws9rL4ax1ta6pLgauB7OVRZScLOr7GMmxwpF6Mn1vRQs0Y4e3wRZ
         BVnds2dTwTS6sB0cLZy0mZaUx1HvPMy+x+yVf/W9lifjneFWy3Wbo3E2tGVNdVrZcq4j
         PGJ2xZPqqs1iE7AD30ofJv2M3m1VmSVqQAGoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757870183; x=1758474983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJ9ovkCr6DqOwPekQL9mbbfb8pXGwCeM0TnyH7IdLxU=;
        b=JCzkDQ+2WlD6cM6lJ9RfdZngTfTmdZonWN/w/JyahLZ6KH3VGAhGElL3IdQPHJgpPG
         IvZDjWKAosTsSbf42r8Lx+a8Ro9N23g/QQfwIWbCpo8XZsoXHMDEtryevbt4IZzvjf2r
         UZb7E+6tewmbqfBFubC7AMzCLLVIuOHQ7+mg/WfSUVsLoLrZBeoe0fXjX2Nw3nOD1oq8
         3oKrRbo0eRNC9gjmt9VAW/hzSSNNrnoasqjO3hVf1RPDzqvEw8njfTtjG0m5ii/TJbCr
         G5df70pvJy3dMwcilYr4vwD8if5cmSZiB+33XpUE9hkejffOYeyFZ5s7R6BxGKIQLsLv
         EVpA==
X-Forwarded-Encrypted: i=1; AJvYcCWtAVVpOR4LrbH3r6DC18MoEKpGeg7D8PSwWJSgnM5qrvlhx+9mOsJVVkv/7seENHI+bLm2VxVZV7c4@vger.kernel.org
X-Gm-Message-State: AOJu0YzMFsB6ubykULIBz/J7BvsNR+2O6pGQzt9C3J2Be41j+53xAnVM
	i5fqEuepIu0LkosGnCJ5dd0WxubG2zRYpa+xoKo8VNko2wN+WjMixLU9pCnnQkmwozM=
X-Gm-Gg: ASbGnctLYN1GAKvmEKWDXLDwADkyHdW49zDVtLaouglnGYSJM0fXQwn/AV4pXrO7xX2
	nHzMGTBxOsyxp3Q9g3jRvZp+7sHwzWmCm0xDUvEq0+gpf+3qMw2UQVHbEdLhK4N0SkgJF/srkfb
	2thXIc4h8kZm087qiuraU37aN76nIsve4zsL+p6AbjIQ8nkMVHIo8kCpgLklCs6wPkl6yunwADx
	RgT3P2TrBbI/WCl4iOKf+ri1xCnxiQoiXbF6I7C9K+/MujjouQCD3BrgRDZBbz37TWi4OpFKnUE
	e1iRihsoFMaWisZoGYC3ZzrOvDDLaXPdXt6mp8n9154EYciF7pFYB6m31i+ZU1XFgr8Fiei8v7d
	TPGXwVnq18V6lf/ja494T3suRtt9RY4pAPa3M3UzDBlt26JVzDX3wcpdjKBybj63/24CPRGgLtj
	a+/GIl0FOpZRcZplNQUMbE5RsNdJXbodZD4hY+qgRpy3IBipZg4sLNBiFgGpp/+7hw
X-Google-Smtp-Source: AGHT+IGvSuqYu1iID/ihliDiP5cWiNfNXKYVhuVRH/gmTXAOtDLlKa3rm5WJL/vzrHXGf7HRci4VUQ==
X-Received: by 2002:a05:6402:1d51:b0:628:62d0:fdaa with SMTP id 4fb4d7f45d1cf-62ed82c5a2dmr9785589a12.23.1757870182851;
        Sun, 14 Sep 2025 10:16:22 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e76dsm776980466b.102.2025.09.14.10.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 10:16:22 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
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
Subject: [PATCH v2 5/6] ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch threshold
Date: Sun, 14 Sep 2025 19:16:02 +0200
Message-ID: <20250914171608.1050401-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
References: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This way the detected signal is valid only if it lasts longer than
62 µs, otherwise it is not sampled.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
index 279d46c22cd7..f12084d8f2a0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
@@ -154,6 +154,7 @@ &tsc {
 	pinctrl-0 = <&pinctrl_tsc>;
 	measure-delay-time = <0x9ffff>;
 	pre-charge-time = <0xfff>;
+	touchscreen-glitch-threshold-ns = <62000>;
 	xnur-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
-- 
2.43.0


