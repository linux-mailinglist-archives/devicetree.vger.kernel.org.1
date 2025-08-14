Return-Path: <devicetree+bounces-204777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC31B26C41
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A4FDAC2D20
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915C1305E23;
	Thu, 14 Aug 2025 16:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IjbXN+IY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DDA302CAB
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187639; cv=none; b=omNf1qzPlozNTSqCNhQ1bX1HPALNWnxbRsgsDEik1IAxlJETfdb/1tWfYetbs49ltxnnpk3IdV+85aaYEx8WlHAwJqHmaO78HnvJgUW5WvoLK43lvlxNb/yOZAZfXDPSIJyJoXtX5BNt5Rbjj1NWsiop5sMTfFu/Dqr/nRo6iEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187639; c=relaxed/simple;
	bh=+rq+9BGDr8wJ7iR/RwIfiOewQa5sKFiC9C2659q5u04=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VNo5wmRIzQ3AqSEBpu7mawuI4yceJLUeGIT0uVks/+QbaFELEJapwp+PlLHknGzmZ+CKpvVlybkIKA/h1vUfVP9mKQPUeXKXX0iN8ci4CalHgkLjHIP4GWFSJMkKRpCNLP5IuZ77TzyCGD8Els73Fm5XrsSwI9HwyCSYtZ1ulIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IjbXN+IY; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45a1b0c82eeso7634495e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187636; x=1755792436; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DdsFgMvzLev3pjfqMcBF4MpZ0JDQWqKgzuICi66wU9g=;
        b=IjbXN+IYqeYBNZdqhxXrQUSAT7XYY/KjSN25ICMHW/uBv8+Pr9s1+oW8bw+iqj27BU
         4ntem6jamDJNDSPdvsoheJavAOW+4Pw3nJr2wPtQ5rqtzXkH82Gyk6Hxn3yfzY+0KHUq
         LxQeHWl5DlcKg5wCm2PCZq8a7nIeIXvBjKCr202c0jBp/JxaLTeJzEBBSMKYPwiF+rC8
         54RL7T2ilR6jSKkUnTACIB1V2KbdwtVNAFHKLymWqa3Ra2ZFRP8q926O/m/CPFj3VuG1
         3dhw3dA5Q3dpOh/eyaUFYy5a7WxVg2GDQP7NMYAa25L5Z8JDIG16LdfuSHsyLqg/Rb+r
         rA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187636; x=1755792436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DdsFgMvzLev3pjfqMcBF4MpZ0JDQWqKgzuICi66wU9g=;
        b=MrtGERySWF9ontuB6VeU/LFKSapKalWI3evq4Yd4l+Mp7tcyX1hktp5Wkwfj3oDvKA
         AAozgeucEGJmHW7uT5+UMeQcAksx23bY1YmUo/eAe8QCLEdqh/pyNQqiRxgI8t3SGNjc
         VrL1OUR74YwrHGt9tRd+drk+VtbqDPMAv+6DEwPTWOhaH9T36E7pHB5BJqP1KNtNYpmq
         vL3tX/d+r+sZ4NNCSmNws36RmTRTGfzAyZXsnNspDlEnTDhe9wdem2p0Vsdxsz8sCmMv
         Uh3MOWOKhNLFdCdW2UUOxfbbu5jQfUfQ35ByALslomGUgAgpt//oXP+sC8WfikCpD2Ym
         OGrw==
X-Forwarded-Encrypted: i=1; AJvYcCUId0zB16tRBSakrjz5MJgiwAcydw8Ll1pzDljgmmKPLjcUXy1GWHlaIdLmNbFCH1JnxgLVoVNlwPrG@vger.kernel.org
X-Gm-Message-State: AOJu0YyDKiZww3CiJ9fGu3OPpYxCMFM1lIPLxeylHwA1IFZyRnRQtiq4
	MoHZlSrKlEl2IR1Xiu1ZhkPgKeQXKp4Pz7bVy4NhjJh5MQlIlbI6b1eyjY7HbiBF8m0=
X-Gm-Gg: ASbGnctYGjPXr4F73jbgAjy5bx3v4IU2mYJfBAKLBT3dX3O3IKTn00TUwymQbPV73Zi
	yCtwwatszTfY/8VZb0uWSimVqGU+vNlsVhbMjV+apd3HSmjRmPNeZG2lK4p5NncDxvXLtkFZUV+
	U1sgzDsQ+D3vCEsxPl0qpOKS44qy2/E2iSG6wJt69R/L2aveKlnuULzYDBh3543bwDvVTEgXRQK
	GNUpUCULuj4oTRAsXxWxqMwvFUsdsJMaM/Jx7EJJpE2VTBtCPJ1FAcgrRhy50YyHm2GAo9pSxV+
	bFGHpd63YUf4xQ+x6RHx+5lUNtNsGbQOw/qTcxL3nlXDMuXahNaP1S0+IqHTdFqNpq/ow10SZ/2
	86EWZ8z440v2lg0H8KjonWQGSq4BWWMs=
X-Google-Smtp-Source: AGHT+IHYk5C7hCYyM8ADnaIqffGtiumP8f9Dmz3RPTAWKY3pFIZH3LXw+Mpypp1GBsMLsBv+UgnJRA==
X-Received: by 2002:a05:600c:8b4b:b0:456:1006:5418 with SMTP id 5b1f17b1804b1-45a1b61eaf8mr35450955e9.13.1755187635781;
        Thu, 14 Aug 2025 09:07:15 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:15 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:52 +0100
Subject: [PATCH 12/13] dt-bindings: lpspi: Document nxp,lpspi-pincfg
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-12-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

Document the two valid pincfg values and the defaults.

Although the hardware supports two more values for half-duplex modes,
the driver doesn't support them so don't document them.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index ce7bd44ee17e..3f8833911807 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -70,6 +70,19 @@ properties:
   power-domains:
     maxItems: 1
 
+  nxp,pincfg:
+    description:
+      'Pin configuration value for CFGR1.PINCFG.
+        - "sin-in-sout-out": SIN is used for input data and SOUT is used for
+                             output data
+        - "sout-in-sin-out": SOUT is used for input data and SIN is used for
+                             output data
+      If no value is specified then the default is "sin-in-sout-out" for host
+      mode and "sout-in-sin-out" for target mode.'
+    enum:
+      - sin-in-sout-out
+      - sout-in-sin-out
+
 required:
   - compatible
   - reg
@@ -95,4 +108,5 @@ examples:
         spi-slave;
         fsl,spi-only-use-cs1-sel;
         num-cs = <2>;
+        nxp,pincfg = "sout-in-sin-out";
     };

-- 
2.34.1


