Return-Path: <devicetree+bounces-204778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE6B26C45
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42208628326
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37AC306D4C;
	Thu, 14 Aug 2025 16:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MDc5ysOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB0F303CB9
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187641; cv=none; b=F+vmSuuLq1YCahpSjUmoi0TkAYgxL867BWE3IzTEe/s1ucDOOsQDONsmwaLOqsYkIWPlM1FPCGP4lu07MgktCATsaLFMthCmsQcIbjsKzQ+WTHOHflTV4OkGsVfCpfHzRAVb3JtU+D+SJQIxALDj1D/UKgraofi5gUGCdLlB4ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187641; c=relaxed/simple;
	bh=1ZN/hBU5KFnWEm5a5v90vlczlCZ4mmlahGdTTa+btSo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HyWj2lppQdJq2HuIkB/7wWJa99zyjtx19gZj+HLsSB5L92WpHPO0q54hPZ0v93Rxhz80fxmSEA3GxouIQAMdYLMrS1cEmGJEnI5RpI9rBHDdAGwEr4sCrl82xZLPCg9180n9JtvIWBB7TkVupZKwrfj+QJ+fQbnpckEzDjFxrLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MDc5ysOE; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45a1b281d25so4763355e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187637; x=1755792437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6w8t1k0+L73Z3H7zGEQgr6I4vcHFOJ0Mhc+O6mOnc/w=;
        b=MDc5ysOEPsZpzRLgJeMRCPc62mgSbmRtYz5mn8RCsRC0ZfxWSJxaVLcurIktGTYoXq
         aHfAeXwv0mGTR+PLepNlQ/yFKudtVkHj6VC6ceWmve5Bh8Jcd0Jf2q8BSnABSwZaAImj
         fLQ67WN5HktggrpfpcwkDFzdmtrT8Gey5UW5jITC55NtneQ5fTLH8Mbst7vqCJ0x3H7m
         UAyy6y29IMoU6sp5jDAWBl1fGPCDyGC+l/luneApY3pnri1C7Ys4cQbVnv59CybQuxzH
         3MQhmiIwT+fVVpK40pYUOjgHohbCD4/V2nh2xUU4XmrAzk0isM1MdxQA+Z4ivS0B0cLA
         lgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187637; x=1755792437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6w8t1k0+L73Z3H7zGEQgr6I4vcHFOJ0Mhc+O6mOnc/w=;
        b=n7+hl/RjtfDxtxt5AYNqbLciWYvfPEoog3q6FSJC0UeUgn4hc4A1QjUPBCniWjp0ph
         l2b0WEZObna+BB1yBD7JChNaTCU7t4Renvca9F2lkKhTpsnj5orFzmtDzDnyG6jTpBd1
         5DNrN7NOqr3Dh6u8huWWWMmzFyLsA9G+ar2qZcvi8cpglvDZgjxmPr4Ex8RmzlFkZKBj
         BlNxtPwfBI1CwDaK6okP4yg0OCDp80fZsVyTMqokyw6sZl7StQUfRHprCmpkiI+o3o93
         U5hIExNutXuQ3VfXgATNTyFsZUua5JvVorIxk4nbUhDLW0ItPhV0twGpWQCgJvr5DSEa
         EE0Q==
X-Forwarded-Encrypted: i=1; AJvYcCX5TQ7BO76HxvFTx6ZriscnTEzjAXf4chXhnAHcGOaXLNSraPUnUAjuYzAAS2IE8zo7sAoOVeLq3LAP@vger.kernel.org
X-Gm-Message-State: AOJu0YywcNwM5SkZNs9WuzRmPnDdIGxz5Q8VHTnSwA964R4zC7eTKRXk
	EB+WiF4Lz7EyIx18syi29HiJNKALzm2EKlZKwnWKxpnlBk33e59MPxGygKzrvQRmPg8=
X-Gm-Gg: ASbGncuJU4y+HMKWar9BEc5MIxlauBV16a2Lyvdz1QTHC17e88zjwqEuAa3YsUmQ+s7
	pq7bpcQy0BMidSh8iBbzL93cIzLuPQ7WfRKfHZqAlCW0nd3c7scAX/nu6QpvYUKnvy12iW3qEBD
	JlzSebyX5JKFrEZeLgODKfDxcPbDB8wTb4aY4Ry7JtyErkD1ParB9cBRMGrpx/j7St5SJPe8c4c
	5BsWTUw5tVg7oKRU1Uy9xGTlfJZXzN05eaI57FuuH1xLzgrp/vDO1GQwcWS8HsY4o3/UEsQPBfr
	stM8xfbYDtEtPzEN7ob1QTHMH6jlaaJcTDtoOPIoXRDIfldeCa/HXuMm3xZ6QmCCpvhc//Ki94z
	1QVQkrGdaJ43GQbSulpbcZI4bLuRMbOs=
X-Google-Smtp-Source: AGHT+IEZbpliyIDsPb6R0FpfpFlg3UBRXfnKDNpZBswiqyG30cWnXAPOznL3hegH/Ef1DZOEk8/F0Q==
X-Received: by 2002:a05:600c:45d0:b0:440:6a79:6df0 with SMTP id 5b1f17b1804b1-45a1b644c34mr26991495e9.22.1755187636941;
        Thu, 14 Aug 2025 09:07:16 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:16 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:53 +0100
Subject: [PATCH 13/13] dt-bindings: lpspi: Document support for S32G
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-13-9586d7815d14@linaro.org>
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

From: Larisa Grigore <larisa.grigore@nxp.com>

S32G2 and S32G3 are currently treated the same way in the driver, so
require that S32G3 is always paired with the S32G2 compatible string
until there is divergence in the future.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index 3f8833911807..9fc98b0f3428 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - fsl,imx7ulp-spi
           - fsl,imx8qxp-spi
+          - nxp,s32g2-lpspi
       - items:
           - enum:
               - fsl,imx8ulp-spi
@@ -27,6 +28,10 @@ properties:
               - fsl,imx94-spi
               - fsl,imx95-spi
           - const: fsl,imx7ulp-spi
+      - items:
+          - const: nxp,s32g3-lpspi
+          - const: nxp,s32g2-lpspi
+
   reg:
     maxItems: 1
 

-- 
2.34.1


