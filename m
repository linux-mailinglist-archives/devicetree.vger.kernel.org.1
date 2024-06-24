Return-Path: <devicetree+bounces-79262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB4A9147E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD5551C2118C
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F86137774;
	Mon, 24 Jun 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wlDUiYXQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC4213774D
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719226553; cv=none; b=hCDJaHg7A+kOqXP/Ftx+uZn6/2DvehjZtLgeZJBt8WsDdnF+iwNNPaCVMkWg+bUzbUpo6h2GgIqFIx2pRQ8ceNTRrRzDA6A5WKVclLidzQ5bLtxUcxMQC1JzpDTw7VsWMv6i+1IeebUBH1kWzzJKZ2plZrfVJiG4p4j/gnfkgSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719226553; c=relaxed/simple;
	bh=6367hGzeakJasC40r15rTdK5ilfV2BK9eYE+HkbL4Q8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nWE5aSqnWzNwK5ZpBbkEe8Ev8l1mNy653qWnKRgSu50wvoqQzUhN/E+yp0V96mnBPYaCnCPVmoCjQ1gyrc87Qo7Askakx45Y1NCre9+j3Hm0t5bSIBJh8UFz3pm9EXibqFgVysSPNH9iIu8GsiR46wE1Il+EF6Pw0vwmfQAvIOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wlDUiYXQ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4217dbeb4caso35411255e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 03:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719226550; x=1719831350; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rkrzp1pQCHCRHVB41zDa54DEhIYuBW3NTbbDcyAlUxs=;
        b=wlDUiYXQS73flDpOmH1ZxmdbBV+wrLI1gHA718ISQ+5hogmhu8wm0SwU3h2+w44UbC
         +PvcDTNGxrTHpCei8vzWRJntOYeoJ0VtpbVlztY94L0/dnckmHZnqO4/OyQVL5powShh
         f1fvF1tXFXY36iaMKiiQ6I5CXZPPpOHwNBMRIA+XpiFmAgT4ORztne5oweoHWqY/4hZs
         7hQSpun1vGskP7mYNxPRStKrY91PA7QPDJmf6YD1sOYrjkBxsgFNJDNqLsAE5t9ApUgM
         1GLWswnS/hPWP6mKUqpzImkQXIRe5PzgZkF3f7A4VestUejxecq8HV6zYeTnWIqdk2Nh
         OjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719226550; x=1719831350;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rkrzp1pQCHCRHVB41zDa54DEhIYuBW3NTbbDcyAlUxs=;
        b=spbQUgHhRFV4OfQ8obkqLpNsiv0kvEfB73a2WdhKvUD+0g5SJpOX696X5wmSfuN/Qm
         3/Rc8scY7NytbZS17NQgMxI9Xp3BOhcH0exQoh7snTIzMB2zkKzVo9WPa8aNutqe7mtg
         biYOyTbMQ3Zfgzpj8G6vxz8vZCinyWFZkpFPQFIfWCVq4e9dNqS1O47e9sAUMBNCNSNY
         6OGpuKPaTP/+7f81gTUVe+FbmzHbx4oq3MJINQE++1bVczKsCSSmqLwrsfOLXSpBwAOu
         Nz8/cpfut/heMfLvFNuMjkGj3sm1w3BhWieFUh1Eb4dEF8NhMEBS/WhMKhfD9leaP6vM
         9cNg==
X-Forwarded-Encrypted: i=1; AJvYcCX+JaHVXBE6eE+bNJZvJBbX6WRqCWLGsBPPpn1XBVeppwTqDoBkrJxBYPC6xddYhhLJOwIfHJVKCXboxRdqk86gHJyyeCDSeUFPCQ==
X-Gm-Message-State: AOJu0YzV3FLWtlCYDmwOlWx/Vg3yQx9Ky11mpyKaa7CkKGIZdtC0Osmy
	w7GTAI7i2PEYHeVu0fraVWuf9GQ1c0eB+pcrxV7CySK9+f1slywH4zCk8vn3wOA=
X-Google-Smtp-Source: AGHT+IGeLt9MLWM0/iK4yYiWJneT2T+UllXxc+aPbLKaalJUg66Og1zdEVhVBrrav2wkD1CQrhLDqQ==
X-Received: by 2002:a05:600c:63c7:b0:424:8cc8:9840 with SMTP id 5b1f17b1804b1-4248cc89962mr28820045e9.5.1719226550351;
        Mon, 24 Jun 2024 03:55:50 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d208b6bsm172479595e9.32.2024.06.24.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 03:55:49 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Mon, 24 Jun 2024 11:55:30 +0100
Subject: [PATCH 1/3] dt-bindings: clock: Add x1e80100 LPASS AUDIOCC reset
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-x1e-swr-reset-v1-1-da326d0733d4@linaro.org>
References: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
In-Reply-To: <20240624-x1e-swr-reset-v1-0-da326d0733d4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=966;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=6367hGzeakJasC40r15rTdK5ilfV2BK9eYE+HkbL4Q8=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmeVC0KxIUUkpXnraw47dA0gcgXpmbOTg2B6CAO
 14SsrDrBjiJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZnlQtAAKCRB6of1ZxzRV
 N5htB/9VU5Iun6L1F23YrDlZFRFFlTuto9fcfxVPKDWLZNa9x8aL3KoF5MKIKf4acnVxf5wmcnS
 8dZYVl2cNoRC1FZUovHqQrXhomaB1KJtkG1R9eZP6B9u8WmiT3opecRUxt0kL30XNUZMSWqofrL
 C75cQCwLe820c9ftbtEsKF7anXckglLNxv437VWo5WtyMf2a2H7jzYvKcyr/RBPp5q4862s4Ztn
 gnHxo6BSDtBsS6Y/8RCDT6Y72o4B3aEKwcnvDWYGU1FJ+W85sZIxDge4ja7MaKvbICSNjvtf71p
 9xSiXCaQDFpiEidfO/+CPCE/OXeKZ0q9wiARyCUaupvVpRJ+
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

X1E80100 LPASS (Low Power Audio Subsystem) Audio clock controller
provides reset support when it is under the control of Q6DSP.

Add x1e80100 compatible to the existing sc8280xp as these reset
controllers have same reg layout and compatible.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
index 3326dcd6766c..1565252be672 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
@@ -21,6 +21,7 @@ properties:
     enum:
       - qcom,sc8280xp-lpassaudiocc
       - qcom,sc8280xp-lpasscc
+      - qcom,x1e80100-lpassaudiocc
 
   reg:
     maxItems: 1

-- 
2.25.1


