Return-Path: <devicetree+bounces-217013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3EFB56AD2
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7B553BDB9B
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF6E2DF12F;
	Sun, 14 Sep 2025 17:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="CF7mrgTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066452DEA98
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757870184; cv=none; b=ASVTopdlh563SsICWM043/ISpNlOUeH7NE1YxHPTS20TUcgPNlNdl2iYUWxP/3v8reld5oQtPY0raYpoJ8eNYTX09pu+H4E5xgjL/RG5PV9b2BaPwdLRaE/F9zyc5vQTEIlcIAkcrzGB5ay+CTE7bgk2PWg2OlaT2mLFT48X/eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757870184; c=relaxed/simple;
	bh=RJXStlwzS4+/UQXUO3hnO45i3KP2svoFAvMb0SbrmwY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OzreqHZf1cWOZ/4IrhaXqP+EYkfNTI8FXgxk2kIA+hyd0GNPEXw8yJUURptWAa5RXT9/s4Na9EyQMugHItf1eAAycL82S5yL3NP+AM+4/za1vftjl+Wo7NjygheZ25Eqw36P/eLdAl0HMUM0HXwtOygMhri7PNmMnSacachuU44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=CF7mrgTM; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b04271cfc3eso437073566b.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 10:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757870181; x=1758474981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WMdgI0iZ2TvocV4JZ7DyZgorR1pQL3heQi0CeqfMARw=;
        b=CF7mrgTMDalZ3SCRHrEyOUgyTsYwPAy+4kpAHCl27Wnnrgm62ESOw4PGIK15JJy1g4
         Yxv+FreXh0s7xbb99bAbtIXu+RG0Nq+ORO5LAVOfvhteDUojSKyeh1zYuI0kVGx39Qhr
         AnP3Fn65Nv0oGyGZWCMVB1fhA8XG2JRmO47AM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757870181; x=1758474981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WMdgI0iZ2TvocV4JZ7DyZgorR1pQL3heQi0CeqfMARw=;
        b=EyEHenM7fP8sz5FtkYCxBLecrUR3MsFYcA0fe+AX5uyn5khaj//U/pVeNt/b64c6vV
         wo4aoT2Bb75o+9jel5sdg/RL/6FoV4ApUCvJpU3hEU89s8KQVLxCu+5CjAiO/r8yOxxt
         hOrM0qbPhwecDf+vLymAuylNAdueSlYSOuX2GNDMJ7Yy62s6GVjQMOhUbFNztiZkTEg0
         6zqUYUH2uVs6ATkH8EAJs7ZiJtyJxdYPlPLJlU14twg8tw/zZxLXBWkK3Ql4NJzyQ/9C
         N5sh2uDMz60Z7bzStN3ETcw0bsGjXpk0An6HMinHrFh4dXrO66Y3aJab9ypXM0h84a15
         K0QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYwJr8hOS88/V5Zo4XpaZgRkhRkxC+aFGRmFlLUyquZbCiOQKOKAlZyfDohBwlXmyXKxlrgNhta5EK@vger.kernel.org
X-Gm-Message-State: AOJu0YxYMkq0NGRSK1thXoB72r1/aGsPJdmN+ismHEnZajKaI53aRBSk
	r46eQk3A6plbNmSZDm4zyAPjGajaE/+YR+fYjNUit4Un64DxtcG5eMa8uUrmmKK5fgY=
X-Gm-Gg: ASbGnctJ9eEmUnQ05YOYLf0WbL8geA5zFAlUFT43apI+H6ZwwHZPiJRv0x3umHup4Lb
	b+RwaXuDp8+cT2pJOq0rfe8YaENzsSkfjIgEjimSQXI4+FE/siM8jtZUCuA+cmnXSq8Y2tsB/za
	5ZW0p/Oa6gAdJKelqL5HRXNLp9R81epkPZwtb7vY+nz1LU1O3P15MszuJBAdUs03+KGOYlMXjWp
	LYlfLK/VFTCCJLdJXQpp0RVS2C01uNYdjxyM4CyA0sWNsJjHIXR+Y/co41c/fXcqpc4cyR4jckv
	oOJLe1HH2mSVSirzDRsm9744Dptex8iily1N8nsf0d2ev36HNeVIOVf5+lAu1csVFpt0NWBSIpw
	KJ2u4FFasMrh5QuBTszdAqYeI9g2iybEjf7ln/aDgW10iXHfQDcakMdBH7u94IOYPo6xoqLI/6V
	8ihjqw9FhEDbiXwc8iePkPq47SkmdtrWk60yzjDy10nnVW1+d59mqC65BbSteicYik
X-Google-Smtp-Source: AGHT+IHfjFWKG/mF8+Rc9t6eyI85z35rKOGB32yV2tBXoq5uOjqdENe0BpELyw7Da4eiS0RVUPNPpw==
X-Received: by 2002:a17:907:c08:b0:b04:3a46:c4f2 with SMTP id a640c23a62f3a-b07c383f1bemr990265066b.48.1757870181371;
        Sun, 14 Sep 2025 10:16:21 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e76dsm776980466b.102.2025.09.14.10.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 10:16:21 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v2 4/6] dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
Date: Sun, 14 Sep 2025 19:16:01 +0200
Message-ID: <20250914171608.1050401-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
References: <20250914171608.1050401-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support the touchscreen-glitch-threshold-ns property. Unlike the
generic description in touchscreen.yaml, this controller maps the
provided value to one of four discrete thresholds internally.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 .../input/touchscreen/fsl,imx6ul-tsc.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
index 678756ad0f92..310af56a0be6 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,21 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  touchscreen-glitch-threshold-ns:
+    description: |
+      Unlike the generic property defined in touchscreen.yaml, this
+      controller does not allow arbitrary values. Internally the value is
+      converted to IPG clock cycles and mapped to one of four discrete
+      thresholds exposed by the TSC_DEBUG_MODE2 register:
+
+        0: 8191 IPG cycles
+        1: 4095 IPG cycles
+        2: 2047 IPG cycles
+        3: 1023 IPG cycles
+
+      Any value provided in device tree is converted to cycles and rounded
+      up to the next supported threshold, or to 8191 if above 4095.
+
 required:
   - compatible
   - reg
-- 
2.43.0


