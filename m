Return-Path: <devicetree+bounces-50639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 469EA87C8BC
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 07:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 034C71F22B44
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 06:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF94B12E75;
	Fri, 15 Mar 2024 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kcumdBAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A2814AA7
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 06:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710482853; cv=none; b=EUI4hu21zAYmMUyxD2pacjSIdXtzj7p8fFHpz88Wd1AlkgfUCuNNRvSTmY4rTe2iIFpJiKFJkeVIlzRhpEyfkisimLwOtjNGxCsLoY3DYmHGKjrRQWnbiBBEpOBj+YW8sKfktBxfb5bU9XatdZpv0H0MyDZO5AB3vN8Ynj+5sDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710482853; c=relaxed/simple;
	bh=QbcBc4JXtP8FNrsiFhXtIJGTYDJA6oPqiQ8+qe0RZWI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sapwZNkS4vNTG0UiFu1tdGIx/EVrPwcxW4xRNKTjt13YzF+WlbsxlKggT+2W4RmiM7aEfDdyKJ1gE19D2zMsjGi7dndUvoZ0LdULcLB+/dQJYXYNlYBKW/w7sJcpbl1NEB6jM7HQ1pgg+LiUqi3M4evBoYp44vOL3EDtI/RSY/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kcumdBAX; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1dedb92e540so10040795ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 23:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710482851; x=1711087651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=kcumdBAXVMEzL3E601050uPR6yJJOGcscR29onNFO0BPz8mAHg9JIFOmW4MD1lyTkM
         VOElPlt/LUkuz3dkrwBrkZ7ylFnsxAvtKB27/EtA0JtnmnOGN9lFrXobt605JBXUcmhr
         m7slq94cN4xMr3jm8AZI0N1P1oh5il7FVRKUlTDZjY8647WHhAxAuLQXP7ZLatdRLquV
         479ejolLY67SN3trItWIz5saihRnxotYGsQqxMyXlJCKhMGo5rj6zA8cx1EVfOQc+jge
         OZVGGD63uZ91GceVLso0F/NXfIL94f5hJ6IsWJsCiaeYE6cgxJLQlKQB44KrwiSGeasx
         LJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710482851; x=1711087651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=iASXS1NO9Ai6lLCMHToiZXSvD1JfXoK9/Q8oOlt6tVnuUd+LDKoWPSbj900yswX5no
         Z+5HnP8KqaeOq3AcX23gGy+1WuU7WeDV6zNA7Lvk+zERAgKWUgOM0RTmi+4cbfyP3jNR
         LajoFGY9MY3Yg1mWoDnS4Wd1SEsiwOejgArmBkxo78/kx1bXIKV0+D9SQ19wl/iaFOMQ
         H6MIrRDlqIDcjU7Pl8yp9NikD3pHdF4SVbNUs0Ecfm8VmxicTAjOAcC6W+DKmo0iRJK3
         K6nbmPuD4JoS4ptLZIevibGV+Jt8/0JxP6iZ7GUJRWo28hnhMqvQrCaU258q6b+ueoao
         UN1A==
X-Forwarded-Encrypted: i=1; AJvYcCVqGYLiNZSwJ1nGSKdD3N3VccOZgXyFLuDBS/F+rSecqID1NbnBEYD8irELM5EdLOlmCYi6TZKSk6ja1ORTP/mg1r5CDWecs3+djw==
X-Gm-Message-State: AOJu0Yzhj3/l7zv3pcS0LyTPL29/fW52t7FHSudOC9BOylR4n16OIN+f
	WXGTEq0M2XPnkYtoHFXXdlRBN9llmBIGBykECAiNtxXy9j/Qdb/Tuqxv5Q830kM=
X-Google-Smtp-Source: AGHT+IEm3EmfV9isBbKMpEwODr5FLa9Dnuhgk8Uq2x3rU1u1qfup+Nm/Vo+JetWwc0EMG2u23zlWmQ==
X-Received: by 2002:a17:902:a518:b0:1dc:b323:6f97 with SMTP id s24-20020a170902a51800b001dcb3236f97mr9175623plq.27.1710482850735;
        Thu, 14 Mar 2024 23:07:30 -0700 (PDT)
Received: from sumit-X1.. ([223.178.212.73])
        by smtp.gmail.com with ESMTPSA id lf11-20020a170902fb4b00b001dccaafe249sm2852024plb.220.2024.03.14.23.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 23:07:30 -0700 (PDT)
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
Subject: [PATCH v3 2/3] dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
Date: Fri, 15 Mar 2024 11:37:06 +0530
Message-Id: <20240315060707.471248-3-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240315060707.471248-1-sumit.garg@linaro.org>
References: <20240315060707.471248-1-sumit.garg@linaro.org>
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


