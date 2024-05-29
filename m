Return-Path: <devicetree+bounces-70709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 753808D4203
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 01:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32088285D76
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 23:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72D11CB33D;
	Wed, 29 May 2024 23:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w0vHcW8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426161A0B0A
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 23:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717025974; cv=none; b=geVLhHB7Nq2wbXz4Ck2HUGv08Wspu/xgRUhqJhcWwtYbmge7kTSiT3U/XAJubG6/14zEWF2qUDsiGiXpBXsVhO8FxEL9veHRxQauP0DHilUKKhyw46/yzUAyGR6FgXUOf9F7Ctxs3XKgxX42IQnvus8Lu6MAIZwTlaVfH6VKYeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717025974; c=relaxed/simple;
	bh=s0pZVz/MI0VgDl0EUybJ0FTf0DKfSLrTSrzAld/N+mA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b9nVEl7lgW3baDUJI2nx4qhANXqiYAEwlySzgtqw0j1E50vePjtR1FzHMwUOPJkQnmtwVrFcszLKRr734YbF0PlCygdcZLJUTSc33CtCbYUYGl3eTdhN7LG1wL8Q6SI36R/mUMSADL0sgKgkVfV3OD4fmW58T2VAaFXfidR1Qg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w0vHcW8j; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-578626375ffso255153a12.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 16:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717025972; x=1717630772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ba6QNdc3OKHiKLVsBpfuhmd2T3t28nTqhS529Obod14=;
        b=w0vHcW8j9FgL6oGX+iAopoDdHrBn4t/Sop3hbdkqm7G5OZCF+h75tAq60ah4xbQus0
         Px60oLgptn7rCOjdVgtFLboxiBqb4WZGpnKet9S4vUQ4ZiXmqt6B05HxPYn+q/0E9aHI
         P52Z75Gthdk4xmj3KGActaGJhPvFeBkGLpWxPQmiXarjJms/JpYfK5/7RaBkwZ19UcHQ
         O4y3TTANb7F8P95x5KO48pkHA8guzptKkWz1plveqfpP9PHbS1xH0Pl2Ls5HnKynXKU0
         taze55Wm/vkqm+9eLOLr4K/Q93NlPAJ3AvxNkdkjREgiljbPiO39TkyrMlWBWY07nPCd
         R26A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717025972; x=1717630772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ba6QNdc3OKHiKLVsBpfuhmd2T3t28nTqhS529Obod14=;
        b=aX2OCfEcogWkqaiJ8nCK/54gAA2sUJK7YXDHzAf8yu/GtWMn/YGGlcWGZoiJBKsRDZ
         HDVuWDB1OZ0X2LqYQ8TWGn5s1gT553qK6dOrFyi4iX+ZTaNATa4nYlKH87xBSsDwbw3q
         bZHWClSKKtj0CemstKoukYwMrVu7cpACFCxjq9tP56cwJqtVL9TSIZYMhpqZ27d+qjtc
         TFG2dM/bkfyZqDc6zYkpIXUUYu291eSqGPOZ8wsSqg+cqNL9W7+OHI9Vz85ceJQ2uB+i
         76R9HcPYV3EjGnMyF8nwp5U2s1Xl9faLfRW4rL+z+xYCmgETRi/mIKqic4/3S3UehXgO
         QK6g==
X-Forwarded-Encrypted: i=1; AJvYcCUh4whTy1CDMLlWI3PeK9AgvXeMNjLXXzfx2/0xHxTeQGsrdX0NimPr0Z3jo569duaizuOV6x1pVOAZ9in/nYN4gNjOEpgCIwb01w==
X-Gm-Message-State: AOJu0YxFGiweW/3irgUkDep01WYaHP0fGJTdkz4ldGsF5Wr4FASPJb6t
	sJPgNuKXO9VZLvlmk4/ztt6Jt55sPanE0mUDBLRx+40mJaJeeja6lvMaIf08osU=
X-Google-Smtp-Source: AGHT+IF908oD8asAtnvvDBaB49pU2X2gVl6QEEFDLj0ciJojX0DSxBhW09ELa98upXriHs22HBLE0w==
X-Received: by 2002:a50:9316:0:b0:579:c2fe:886 with SMTP id 4fb4d7f45d1cf-57a177b15b9mr264105a12.14.1717025971708;
        Wed, 29 May 2024 16:39:31 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::8bb3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579cec28c0dsm5129759a12.66.2024.05.29.16.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 16:39:31 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Thu, 30 May 2024 01:39:16 +0200
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Add QCM6490 SHIFTphone 8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240530-otter-bringup-v3-1-79e7a28c1b08@linaro.org>
References: <20240530-otter-bringup-v3-0-79e7a28c1b08@linaro.org>
In-Reply-To: <20240530-otter-bringup-v3-0-79e7a28c1b08@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Martinz <amartinz@shiftphones.com>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Caleb Connolly <caleb@postmarketos.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=899;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=vuwvUX5YFXpssceXQQo0PcZUpaD2LShOgI/MlmUUkwQ=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmV7yx2EqXq8zNv7KFd0t65T4xyI7tgXEwVJX+4
 PhjZEaTf7KJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZle8sQAKCRAFgzErGV9k
 to00EACBUD6oC6SANHdSxaNLshZfl1suAeyyeZr/SM0WAtZUJuC1sJttyHx3bNcgjaDev/rP2Tq
 ukMHxaJjhiGmw1NQEFO6nMrvghmx6ynDLD5KGH2gpkfOIJDeRPR/Fn7Cw3+z8DiAfMgKibPtVz9
 lh6IX12QoSzVZtSnqoKEMDaP/bn6SXZ58Lnfv1LOyBV4BlwdrGZwCdYasf4qCfPyfJ2sRinR+ny
 nqJeRpCZYl/K5iKBOFmS2zKAZJCUxvmWehnzxALYGtqwzHjXxJ01JFLPc5gMFrW7K25GpEfQaa3
 hENNj4B8ODy8Plbvud+PWcNi2L/Uq5RESv0cytVHNrCjAPfvlH5oz2YFGmXdnFu3LjWRZcQoPUL
 kwsxTLZ0OF+qs/Hf78XgxiTpyV1kHDdXbe4BURJ5+4GX/G4VKgz3MnVTpa8yuo4v0/9qu7gLAZ5
 kvIuRfCE4KSOPPISv8h21dIYBVea6YFfCBCJZiUZHi9GSeqFOs7YhTHXhQLa8C/h3ZT5x25v9zK
 AGn3dud22sROJrCVVh9pgxTyvxwIwL9r6pFDwBnRITy9LzUd7WohMfZZqxEXt6cS08VOCpBcjol
 eyUHwq/VKIPGE70pUBpwhGV6iOepyvuQh/TDzTW8NpzwjL0Z12cTGBQwIQyjFoglVWKREh5Vty5
 RbQGIZyofNnL6+g==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

From: Caleb Connolly <caleb@postmarketos.org>

The SHIFTphone 8 (codename otter) is a smartphone based on the QCM6490
SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Caleb Connolly <caleb@postmarketos.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ae885414b181..5f84b38ca5d5 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -365,8 +365,9 @@ properties:
           - enum:
               - fairphone,fp5
               - qcom,qcm6490-idp
               - qcom,qcs6490-rb3gen2
+              - shift,otter
           - const: qcom,qcm6490
 
       - description: Qualcomm Technologies, Inc. Distributed Unit 1000 platform
         items:

-- 
2.45.0


