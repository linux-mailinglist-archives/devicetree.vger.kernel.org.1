Return-Path: <devicetree+bounces-177067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D6DAB65D3
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA2E43B0CAF
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA1422127B;
	Wed, 14 May 2025 08:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="aFQul6C5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124A221C9F6
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211117; cv=none; b=CYaPD/d4Omz39zyYtGO2CSV4LhKXCxmaa35IZItVbv4cXrWEcpQGnLABsmc2Mxw3AbkdIjC4onLhA/zx9zURbyBfueB0tAmrhJPWkfXjp4ELFevtwB1JtArR8EwzerEDu1S1mEV+6dzxZZTeoQNrGddZBasVEKkdJo2mhKlimgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211117; c=relaxed/simple;
	bh=VuPsb9OXhGwndn/qTWajYUOCGIqhS428Kk9CJNyTJy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p4Sp6DmKfdxefSn9EWN8wvhPctY5q0w4DOdqABin6DjM/iiJ3Tt+dLjoX1hE0piL1mwPz44+0CgS3JO1CwMmjZpH4X/yHdKmlxzm9DMQiGwgZjaXOfLTX7CXlOEIS6SQFb/YTZvciAukoGhNhfc4uUWD9vZ4hXW6jad3Cq44bXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=aFQul6C5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so67396005e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211114; x=1747815914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L2agCRR6IRGaR3EtCVbw6MISEmkDLJru9ZVgwOeM9qk=;
        b=aFQul6C5qjAFFI3JzW39LeqGtQFAXxYPBD1dE+KenmlhAV2OnvUi3p2YvBe1DyPojd
         lN199qg0vwp7JOqaAkp1mitPe3q1K3LzLzwQ848uYpjyGXJWD2b6VZF/29UwVe4Z2cEO
         0Q9IR9B2xzJjhGKNWJkrFnG4tF/mgHJnNiRQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211114; x=1747815914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L2agCRR6IRGaR3EtCVbw6MISEmkDLJru9ZVgwOeM9qk=;
        b=bnIQGew8VzGbLY7ZQXVFHuKLY7Zdj5DnCwspiU5Wt92a3XUV9ceOFB9cL+BWpYsQ9t
         enaXuKH6XgZtsqQqfq2PUlLjopLS1L/jHn7BWqDBLIkbGEgzHXRDCA6m4jBVBc9shf6j
         EMToaa/ox93+NXjvzWDg2SEiIOW0d27FtRPi53RJk31z65kYOIUAryTJpr6V8wbi7aeK
         Zabz3xIBuwFyULG8FS57DL388herOxbc+z0GzDspnMaJGnyN0fSyg6/STuwrvsZCwlhc
         VQBWytZ2EQq2mvDE4V7pDbj9OOWL4Zl5MFaFiZz6bL9TGlBetqKWgYbRLRkEX2V5P8sV
         kxmg==
X-Forwarded-Encrypted: i=1; AJvYcCU0ZA1xVuKWbOt5pMkKY6Cvpzk1HFsld6eeCaOQMB+0p/vNM5lsKpa5sny8/vgHJCEo8iOKzVczgbaB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu/fRmUMvUyLvFZdpaPWrzn6UQVghUfOimVZnobTzGflwuhNnT
	JrVZ0xySdx/U6i7+DecAG4BbvRwdr/gjtluXSunyKrUtNUSzXx4hRtbVSvci4IA=
X-Gm-Gg: ASbGnctoQfYK7bG9saQI8HO4kJtKLqVh/dYPqnEWlDbAtMBkzG66i7zOASMYe2o6lvB
	E5YCvvo9xRJ3j+5u0+eREwnTXJ/ZoXkSlpKAerYkszxkIIGYv2dM5JT+Dd1snQzGS7JpwCyR/NS
	0rAyG4H3E+K5ljdRdcnUNcS0VWRATYKTRHq5vbH0PBd6cNm+VZ8BEzUqF2JQbUlEVod+1eeN0K5
	0MA4EhGuQm+ThigTYMEOp+SE+NgMN2AiHDFw3u/mWM1zPnOmE3UDq2/saVn63jY0bUbCzV5z1Mq
	7J13r5bkVEldnzAYjEqdT1aTfapRgpW2n/zhMuog0QhJhH4leWSll8Byrmy7D4bdGRKQXIpyvpf
	/03cu2izZWaWILwCuTPXbMDfo3zMncksF/V8viDxHVPo=
X-Google-Smtp-Source: AGHT+IHVtazkKOvjOJrOfm04DNRArnB952epM/1Ur7L3bzWPScmWVjAQPWu02+n0E7WC/TG7fAuzAQ==
X-Received: by 2002:a05:600c:34cf:b0:43c:eeee:b713 with SMTP id 5b1f17b1804b1-442f21683cemr21843635e9.20.1747211114278;
        Wed, 14 May 2025 01:25:14 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:13 -0700 (PDT)
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
Subject: [PATCH 2/9] arm64: dts: imx8mn-bsh-smm-s2-common: Leave regulator under hw state machine
Date: Wed, 14 May 2025 10:24:56 +0200
Message-ID: <20250514082507.1983849-3-dario.binacchi@amarulasolutions.com>
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

From: Michael Trimarchi <michael@amarulasolutions.com>

Let regulator to be controlled by hardware state machine.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index 5a1ec2f6a552..0d343ffdb7f9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -144,6 +144,7 @@ buck4_reg: BUCK4 {
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
+				rohm,no-regulator-enable-control;
 			};
 
 			buck5_reg: BUCK5 {
@@ -153,6 +154,7 @@ buck5_reg: BUCK5 {
 				regulator-max-microvolt = <1995000>;
 				regulator-boot-on;
 				regulator-always-on;
+				rohm,no-regulator-enable-control;
 			};
 
 			buck6_reg: BUCK6 {
@@ -162,6 +164,7 @@ buck6_reg: BUCK6 {
 				regulator-max-microvolt = <1400000>;
 				regulator-boot-on;
 				regulator-always-on;
+				rohm,no-regulator-enable-control;
 			};
 
 			ldo1_reg: LDO1 {
-- 
2.43.0


