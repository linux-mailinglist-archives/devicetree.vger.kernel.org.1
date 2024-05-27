Return-Path: <devicetree+bounces-69316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA43D8CF8D2
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:39:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3A411C20E70
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1880ADDD2;
	Mon, 27 May 2024 05:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WMp0kFAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCFF17727
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716788339; cv=none; b=j5Tp8nwZiOCFmNkWQSnnll+AIRrbUkL0m6eLnEA6BrPjBBEfKZpc2bt89VUVqHt8tZgQP96bPVnRRUtRb7mYJpREbkYAH4VKg3XIB9c9ugxHOADmLNV/m6OAYJUZqcOQSbM9fG3fimv4hBFDwB6LTAPxbImxz72fmnbx6Ekuqug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716788339; c=relaxed/simple;
	bh=QbcBc4JXtP8FNrsiFhXtIJGTYDJA6oPqiQ8+qe0RZWI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u1YAm9t4FdZkNMO7teCqYvbtvod27mnvylEBmbi+7ZqAmTWOFcYzhkB5e6r3t7c4SWGKIPaEosae7VlLbycuNcFFv5LXhkXL7u8A6Wwv7rkMHSyOTNVoCWXuOCZa7Uvb5fzavPU5kcpT9Qfvta+Z7eXXwsMR2Rr6ljcUq2x1r3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WMp0kFAm; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f47784a2adso6821125ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 22:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716788337; x=1717393137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=WMp0kFAmhsSfGfCfvtY1wz2zTwsMin7Dtj6x40AmZLb3JXLlJOEoIQWRUU0HtCcxQm
         FE0QQAcQNxPyzN0KR2PJEYYPQ2HQ7ley9hA/isQWg/m3FXiuiLrsCQX95G06Av5elZk/
         uovq7/gpZPoVpkT6lR7No2j4rgLvh3fzHpjuG0woG3HKmixrF0TVGaUQAAuGb7rG5cq1
         ncP7Btc7HOFHiPJPXd8Pmn0kGoy+L9hWrVr4QPvOsktc13Ag7ZbGjvJ2nkAxQSO+yHb7
         QsNBWhC8TMOZhmKyDPhT2/H0Yl3yNjxv45CDJDIsFvt5lFdZn/R96G+TuNZuY+ZgFZD+
         MfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716788337; x=1717393137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=rC6Aw+ozFJc+a7biAD6NRrxreTOt8a8xWZbCRQY3vhCyb5PBTHJ4wo2jKpJ7KY2E7L
         /XsyQPI2CrsvxCzarJNiQR6a0rHItTLt/y5Jtwx+ezTcR57cElUw27dFPNwFjUCjxiCL
         QpD881I77pD5gwADbD4r2wuBZ2zHBCL7biwLGAorbqMZxZQkRySnLWcJ10TX+qfAbbX0
         KNq6BfKxudQqmKyFSGueoZsFvVPKtrAC9+pzyp0TOcbdaMNBXbzoW82au4P2ym2q11mj
         n3QHpD0xwc5O45+okfGZmHPh/Eko5la88p01H3hS92d/crb+vR7pFE8+jtOPDHFydqrZ
         fTdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWODjSySwm2XZH2hzchalVNZfXNQBKFFkHknNAjWa9CMglUFElq3ewNnwYedLfN3Lza15w9LauDX2mpp1EDnJm4QfY0YSbj2FsUvQ==
X-Gm-Message-State: AOJu0Yw7UarzhkG2y06nxK0aRmqfOv7oMF5VFGU+l/Ijq7cEeyGcuWUA
	1HmOUPKAcE1cSPrr+9xgr0r9UtIPdqzjwTm2hBSGj+kSDEMfkVaGmB5YtpzPO1c=
X-Google-Smtp-Source: AGHT+IElckiLpq6vWSanAtQ8mg38urTdR/nlZO2m3t7z3DDr6CtbrtDx4OCgDQeu6Ghb0Q5OIRpxfA==
X-Received: by 2002:a17:903:2451:b0:1f3:3b0:61af with SMTP id d9443c01a7336-1f4494f2f24mr87991555ad.46.1716788336972;
        Sun, 26 May 2024 22:38:56 -0700 (PDT)
Received: from sumit-X1.. ([223.178.210.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f44c9684ecsm51903745ad.177.2024.05.26.22.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 22:38:56 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH RESEND2 v5 2/3] dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
Date: Mon, 27 May 2024 11:08:25 +0530
Message-Id: <20240527053826.294526-3-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527053826.294526-1-sumit.garg@linaro.org>
References: <20240527053826.294526-1-sumit.garg@linaro.org>
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


