Return-Path: <devicetree+bounces-157572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEC7A61348
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 15:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FBD13BD92E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBE3201012;
	Fri, 14 Mar 2025 14:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FNfeafim"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C5F1FFC71
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741961029; cv=none; b=OB9rZTkKbaYO+RUiB+X2m96Pp8pLi9IyxxPDjPkgkEoS0d8+6N5+rSOls+kpT6k97cphnKXVqORAkjeoMKkySA5VN+yyv0h9q3WSpBrDke4Dr857PHugKBwH/6U4FuWqw7OKytYPZvGhLK0FXru5x/D/Ip4KHJ14yhS/sqXWwnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741961029; c=relaxed/simple;
	bh=DF6LBm7oBQoMFX+SLpJBlp0Dl8XtrOzdWQmhNfaOJK0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pv3SetNNcTEiKda1cxqxQVhQ4UvQqG6fsO+iNz1mFxI+KeRVycWOtDgmPO9EZYz998LMGY9HY6KzadqHrWN8iA5XVWQko783FmuCl91DZ3eAamFYJ1qy3yW7dhgLiD50wxGC0DbT3CVgUxQmxK96YGlrKIUn/CrMSxB4DmXtfFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FNfeafim; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43948021a45so19328725e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 07:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741961025; x=1742565825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mrs2pi/IR80jSTZMZiwbcMuogKUEOta3sRCRaBeIlpM=;
        b=FNfeafimwnGu5ssoT3SEsr57SHzKNkcjq1lAdEM5gRkU/jBp4JC4EmdPvKamcNLP6m
         iO8G/xOx8kMTGLlT5ahCRxaeFecV8URUvTcJ3KdQ1gTrwPOywiqNlHy/7/B4H5O6tm2R
         ZiizeUXFNvb6C+PCpohoo3LfnhwNwimtCL8pAo/M/FXCnLtKKOZY8UdQMNgrN/ex+YYk
         Oq8EZq3dn3pieJ8W2bbXHhsNzxUk9nlbpAZn7g+Z+lDxxHx41d7XvZ27h4EDpoud8hRE
         BRBIxQ7xqKyOu4mejKt7geOIuPrrlUdsbVNEPHeT/tf3Q3K/MqEoVeFr/2dJzWJfnnjw
         ZgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961025; x=1742565825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mrs2pi/IR80jSTZMZiwbcMuogKUEOta3sRCRaBeIlpM=;
        b=vxOJjm2j+pL1EQ39zYiozDeFD9DuqDpy8SdYgD9m8vrYEN48g7Lre7mACMOzzoisrK
         POFCikOx/Afq+YnTI9PgUnLrqh+TRTWTqqfZ67w5fRYaskLj95yOzPsRYtsfreU4Y5pV
         Uw6p9lRPRDgNqkpO/mIatmILkcFdS+ZUt3AOMmmEJn+YtEaBp0C7Q2M43uFIt8/S84Mq
         eD1wwXlbs8mJA9TmX9hw25DAXqcL0R3AOgxyo8HWTZDrK/krKtl831GsvjFaSKp/iOuS
         frXKqHy6x8YmMRKak7TI/4MRDVUtp6UegKjHuEwZAz3UmPz7BoQWuh0iF0rLxBYJzsjv
         n4cA==
X-Forwarded-Encrypted: i=1; AJvYcCXEgLjTXTJZY357Ixrtb5z9yqb3bc99GzfhTXIG/jCTv9sqO8itN9bRjSU4UZbYtj0Xnsh8jPg4oFtS@vger.kernel.org
X-Gm-Message-State: AOJu0YzAJsBKrbe5IqA9DbzJy9TD9Y2+P/KQ0+PNJCHesqdCTNUivaK4
	0SmkYTyjvdjn8KWzQU1AS355ZYo2UZk+TFzNpb6dfjQUpXMEHyMImOm5inVAKTE=
X-Gm-Gg: ASbGnctNtAWYlQCIh9oJAg1ufW8cUEhPiLtWmiiBcyA8tc1Tcdab6OxUDLPdpummy3N
	G3/s/DuyZ/me2XYaonyhRPKGH6GdBlzAoiPYSmD0odeWV/sPmnDqBeMvC9sizpM2onQ8vK1ov/l
	54E0w0RcbdRvGjdghC+/A9kfa6p4qiGOE+ybK8NH471C4fTQeJ7OSErnOc2V59IXX3lQO2Iph7v
	ichB/nORAg+jt24dGnioKXY3at5W0n1Uyl1CPRNyHYJejYb+FEA2Ryh1pgBjcD12Ehu/xm8BRXa
	yVXS/id7xgINyIJTJRKz990RiHOJVvFf0ioi0rEMTRY=
X-Google-Smtp-Source: AGHT+IE5MmqvNVK29oXVp5YU+GxENy/l3KYf+hYkaIt3jW75ricplBKSUTwse/i4MPM+8TgKs3dyZg==
X-Received: by 2002:a05:600c:4f87:b0:43c:f629:66f3 with SMTP id 5b1f17b1804b1-43d1ec82c14mr33789905e9.18.1741961024508;
        Fri, 14 Mar 2025 07:03:44 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d200fae32sm18156455e9.31.2025.03.14.07.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:03:43 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: arm: qcom: Document Lenovo ThinkPad T14s Gen 6 LCD and OLED
Date: Fri, 14 Mar 2025 16:03:23 +0200
Message-Id: <20250314140325.4143779-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250314140325.4143779-1-abel.vesa@linaro.org>
References: <20250314140325.4143779-1-abel.vesa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Due to the difference in how the panel backlight is being handled
between the OLED variant and LCD one, it is required to have two
separate DTBs.

So document the compatible string for both the OLED and LCD variants.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 618a87693ac1..6260839fe972 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1123,7 +1123,9 @@ properties:
 
       - items:
           - enum:
-              - lenovo,thinkpad-t14s
+              - lenovo,thinkpad-t14s-lcd
+              - lenovo,thinkpad-t14s-oled
+          - const: lenovo,thinkpad-t14s
           - const: qcom,x1e78100
           - const: qcom,x1e80100
 
-- 
2.34.1


