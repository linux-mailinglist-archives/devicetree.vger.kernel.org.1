Return-Path: <devicetree+bounces-53754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F0588D699
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 07:39:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF65C2965AD
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 06:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CED6225D6;
	Wed, 27 Mar 2024 06:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OtWPbe5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02768339A1
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 06:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711521480; cv=none; b=cBz6N8wi3ZvJOyKglQaW5DTp0SRiisPNvxT+65RD3ZUBbgM8qPyWKdkcrL5gls2AtLnaAyr5DMGI0fdoBDKOiWOb1+/cfbOdRScmXBdB2Qbw/KngGDBOM/qxrOBv0DvpoYhQrSQW3APGrQvvzgVOTpc+eiatBpUhHag3EfLeXEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711521480; c=relaxed/simple;
	bh=QbcBc4JXtP8FNrsiFhXtIJGTYDJA6oPqiQ8+qe0RZWI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BackCXddlMiI9//HXpl7wC4YJXUpgqykyXREDqPjCFoMPjLP1XEzu6lKBlqjdfxkmAf0d8RUjRxw7iOWyUM4+uPrAOZwBSXafGA/BxSvn2NJFhFKXy2y5OiMTt1a0Y4phDKHPLB+ThACIyO6qN96P6pJOWrFhroNncDP3pL+4H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OtWPbe5y; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-5c66b093b86so409170a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 23:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711521478; x=1712126278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=OtWPbe5ysg3syklmGxL+J8f5iP707ds24J3M05fbKtSFaR1OrRgJQ9TlaQ+RrEbKD1
         i/3XjyO4potAMEZAGSO0NlcwOvT8KOKIaDBAW81kxZKvjqhO0XBGFIEgQtSqE9uwXkoA
         RnWR1kSUzhAB57OINLkEk+YWwXEw3HQ7sP7/8cxU2u+BYk5mOvovdRL8XCboOT3qRKFD
         YIMF77Lf84+h8kSlN9tkQwGk/gPYnQ/6P4IQnIiVSeJ10s/l0mp/QKciFRpLOjnj62mZ
         qQT9FDRZGOD/0Wkmbyo9bRdYf2E4fEdJRERD9Pa+p4zx94nHYLbDTYDmEITjxZfJ99qM
         RZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711521478; x=1712126278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=u5DID1HUCycFjjbLEpM/0KDdsaCtfpiAE43XVydqsWwl3uSxLdhy1LPdb2VpxmntZR
         jY7d5WhPwzHP7AddHVNcQW4pXjag7DILomG+BIRBECVRIJPqYCkBB2ac30wVm6CynpmJ
         OXmygKuSOZ2pfHUNH6j7GTBwY3XWX3GZu1JXrCLwYChoLF4Nbd1hXnECoU6pzBApRmaN
         Dc+FQwK4aHmKhVJWT1zFsAZn6FEqwOPF/JwozLTlgxRw9+pTbun6/ECWuup57g7wC9AA
         jEAmg6PjlmPwCeU1at4ZCPY9zDWsElZ1n//pi0jIrEo59IqXsRFS5KplJBw3uyj6RMSq
         BkGQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4BIcvTPDKAIxMHMcBoiYSDEvsTM4tgdYWFpEB5tK0Jr4b1HSqAC30Q3OOhViaEQCilNgEHNqJA/a7ogebc3OkXBDG6WaoQV132w==
X-Gm-Message-State: AOJu0Ywb+FBvyL+Gd+7eLhbSszcgqhXcLXDjJ0LarMeIiwYOxHkv0JXt
	zYDzoC9DEc27N8ZEI8yP10K8SKZF8e2vgX684kAfe3KE2irqgXcXnZX10qtdg9Y=
X-Google-Smtp-Source: AGHT+IGiOSRG4WswVfIPOXhLIrCEmwf3k2/SarBwimFsXkFNv1QRdA2mSDE830dZcR/t9cA5nnqjhA==
X-Received: by 2002:a17:90a:ac16:b0:2a0:905a:45c with SMTP id o22-20020a17090aac1600b002a0905a045cmr4070004pjq.9.1711521478368;
        Tue, 26 Mar 2024 23:37:58 -0700 (PDT)
Received: from sumit-X1.. ([223.178.208.127])
        by smtp.gmail.com with ESMTPSA id qd5-20020a17090b3cc500b002a02f8d350fsm772765pjb.53.2024.03.26.23.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 23:37:58 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/3] dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
Date: Wed, 27 Mar 2024 12:07:33 +0530
Message-Id: <20240327063734.3236117-3-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240327063734.3236117-1-sumit.garg@linaro.org>
References: <20240327063734.3236117-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible for the Schneider Electric HMIBSC IIoT edge box
core board based on the Qualcomm APQ8016E SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1a5fb889a444..c8c91754fe04 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -137,6 +137,7 @@ properties:
       - items:
           - enum:
               - qcom,apq8016-sbc
+              - schneider,apq8016-hmibsc
           - const: qcom,apq8016
 
       - items:
-- 
2.34.1


