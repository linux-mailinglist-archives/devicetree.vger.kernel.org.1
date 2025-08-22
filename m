Return-Path: <devicetree+bounces-208354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF69B321D3
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 19:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B2DF34E1632
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A862980A8;
	Fri, 22 Aug 2025 17:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HOjkCuXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA327F732
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 17:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755885381; cv=none; b=ieo0A8vtXhGGu1MhfYP6r5jGrhnRJ9eFeh8i6G7B8GCAFJlOhc+2SD3kbK9XmPIjHkiW2fWGvPSNglNWnz5X3od7RHzWVb8qmddNHZwDce14IlwCs18b4aRLgOhGJlT84p40fWlvQdcHQpeeGmE0TLvLxwl8Wp60R+qH3+jnSNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755885381; c=relaxed/simple;
	bh=1feJ8G3JBMHC3IiJQWeW+1ay+tqGmuF5Blp21B8GZAE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I6yfUgUWnLoO3sWVKCct8RnsZ85g+UNSKg9M3WfnAJ0LNqwQZ0BZQeujgf4WWte8sHV+qaueFUAI4Cy90vr2waGTsTFFNOgneRxhK+/YpS6n/bDhOjuLWc7x0WAh0Mv6hvh9G+5PQOlKksig9IaWRlw30SO570FYA4FaNMTmayM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HOjkCuXz; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-333f92cb94eso20767901fa.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755885377; x=1756490177; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zD5Eh+dR5v4rP4n4DXAHiXUxjMC8uNOZhNFPBWdO2ZY=;
        b=HOjkCuXzZzoYgIJxnPfgrDId6imXbqdhojYR9IJM8UjWFZLWnksTl2iRHLB7Zj9EeM
         VS1LyOz6O7N5ykyo5rlIa3hyJXDFWFfnaZdng34Maksqa6PWcTSARvNiP9Mjjd4jlZGl
         Fskh6VPksysUAGL+mB2hVjen+aFmDSRi+EYzxQeU/YnChwuLQ7DZozlobu2PxCAaJvAg
         1OmXBq/TapRETmsFeICfR7G0e6p78lBmDdCHaAEEm7T8yCULQMIQHXyki5HUz3N87hup
         /PKFyJH1beVmJ8QXpwyjLabe1eXEYmCFFHGPnE1o5u4GqeDEDUlGqgtQQFLKK3SlNAZK
         ZtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755885377; x=1756490177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zD5Eh+dR5v4rP4n4DXAHiXUxjMC8uNOZhNFPBWdO2ZY=;
        b=pn9prk6W7cUlnTNVXcpScEu2RP6VYnkpWjLnUR64k54aFFwF9Yqra8olF3G5w62Hwr
         JvBffjLn7tFqvX1H/5rUnn+olLETL+gW6OQAISZIR+fwDAMmqR3ab9LRMcDhV9QtVoTj
         Bp+8aKRiILQEQriiLyqd+tJLrJVNGTesKtAQwtNOYe/TG2OkUNX21bWpEC59Q8dpEx9B
         +kjI5YrYsf5AC5HA6StHL37c93gcPovGPwHqtJLeDkWBN69AU1chibSZenDDDgD2Ony/
         ksVzy7t+vHumaK5yVQFRrSyBD1LF3LBP+S07FaSEgZbRA9maPq7jidNakQi6gq81/DOQ
         20cA==
X-Gm-Message-State: AOJu0Yx3u+ahlrwHM4xY/wd8pIkt2awvbLEeFENawHc1YpO2u0MmByQ+
	FKy39/e+L/ylxAXsIyaK3+7iR789YY2z4219HDaYyXS3gOYfYquFnx8QGuDa8z1w3CY=
X-Gm-Gg: ASbGncv3F7ERRGaSUxxjAAcjJwRXf/luwIf908Tm7fUkTRCd2vxvX67bcsc1EoWV8bY
	YQJAlbt/m5SY9oFY3dJld1fhYNxtrxYVCHHrRD/LgKY7JLsCGLr6Wn99yWXy7hwP1wzKazqKaqv
	HKVyvV46wkPX1RmbqxvRRnKiuhs3kX4LeNNxqrJxi2MDHdgwm6wPo06fCLhv6qzDz0feW1CI/9B
	M7lQXOXGeiBOxUA2q41cQ3ugGE92cqPQA5tSLevtKwa+q9/10MCYqp8Qo4/vWuE4Qd+bcmOWrSM
	Jp/+PSmxXaMd+V1zT722OX+F89RzqhO7xHCX2Cc4ie191lsr79AQuWH205+n/6+x2MMslnm8kIE
	1f6qd51c7XsOtVke/QcQEDM0v9ChstVzH
X-Google-Smtp-Source: AGHT+IHkd4rp9o65KEVeGQOptgz31Pcme+kqRRdbSJ8EODw27p9FhUTdRXSHoHuCwjuHXwm48Z3nDw==
X-Received: by 2002:a05:651c:b25:b0:336:5d33:c394 with SMTP id 38308e7fff4ca-3365d33ea6bmr2641501fa.33.1755885377298;
        Fri, 22 Aug 2025 10:56:17 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20d2e1sm605121fa.1.2025.08.22.10.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 10:56:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 19:56:14 +0200
Subject: [PATCH v2 1/3] dt-bindings: Add Actiontec vendor prefix
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-mi424wr-dts-v2-1-cc804884474d@linaro.org>
References: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
In-Reply-To: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

Actiontec is a US manufacturer of telecom equipment.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54079a39f35b570d69f7c4c2274724..a0abe9e39291eb687793d1b4b4187524a004a413 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -48,6 +48,8 @@ patternProperties:
     description: Acme Systems srl
   "^actions,.*":
     description: Actions Semiconductor Co., Ltd.
+  "^actiontec,.*":
+    description: Actiontec Electronics, Inc
   "^active-semi,.*":
     description: Active-Semi International Inc
   "^ad,.*":

-- 
2.50.1


