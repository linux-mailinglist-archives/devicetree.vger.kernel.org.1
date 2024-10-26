Return-Path: <devicetree+bounces-116043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E96569B1B2D
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 00:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 632661C20C90
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 22:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2959E1D79A6;
	Sat, 26 Oct 2024 22:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cWgH5o4q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADD11D5CCF
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 22:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729980416; cv=none; b=sgnGB28JHbR0bgyk4LXFds3YML2YvdUYIblfP5i301dq90etut3oW0nBYTp6y1k917fDgA+VM4zV0FzKAfTI8cclY0VjQ5XB/mXyIoZ+zcVJRX9fx9yGZ6Fom9NjrpjTUOoMFbffhPjDO77tItDmSilTcNOmH1uCLBfQ/OpaiSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729980416; c=relaxed/simple;
	bh=Qk+Ym3r4idGhAciZpP7bsiKTyVIiplWBdohnK11zScs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=GE9Hi/vJeOj7aRWmCGSKAvJpoaGTJTRTCKz+Ikfmg2+mnW+ED3s0TIE6UD87RRBCNqciv12H66eSQ+HUoWlRp4ThdMP9s95CSQ0M6V04RHd0mepMMw2875r8jFPu2jyergCNj58BRpIZyBUhLcQzDt/MEO+ptHkiY6eh8SrML/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cWgH5o4q; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539f72c913aso3998166e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729980412; x=1730585212; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tOM+10PF/WmAi5lL2avU0Yl3SxRZGyUCdHnkMKWAqls=;
        b=cWgH5o4qrWL3p1KrYmMXecOv9I1dICMDk8NWlRAZdCwT9V3deUKT0RbONcOTTeR2Ee
         KuZqIJvYfuuDeTpnSL/34q0Y+f96Reg6x08c/gbPfo65Rvei1WWk04oVKtRGdNAufbRP
         S8aq9TfacrNsTi//ENil6pz5FCrS9IRYGHxm/0/tublbMhyTxrLQ3onT6Dg8aUEZJYSz
         quAb2hdRh9DwXp9cM1CEG4x5pegN9P+7RmB1r8v8gXcr17yB/EPz8DtrAqPHBs31USN+
         V7RuPiGuStpazvynvTWZqDLhtPryywN0eX40RJONW6jMQjdCMyz+I4wK+J5Fp4YaJqYC
         5ruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729980412; x=1730585212;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tOM+10PF/WmAi5lL2avU0Yl3SxRZGyUCdHnkMKWAqls=;
        b=kTUB5lUD0IG1DbJxT8wXl7mso68TUdsgFqTZbGeXXAelyL8GWyn4p+OsHeuy/IU9LT
         1E1kcHoz0unIGtBGjxbGQbgM2KomGCwRuv0dHQMlMkLCMwNe7bifwCTZ59SNdBzMrgbb
         NdANB7U1sIrnx0lmPF2BIRukGlFTjQudi2Wbj9J9Quk0ZX0OhVIRKSOa0ulIS67x1jgx
         4/9IBcfm/KQ6JBELXgRCrZv9c5lDIhQ6/hTNn3/UEZA4UsmM7h46VCbnGOu49KsKEJWF
         eQ0JCyfkMmD/SAqBsf1wJBLF5KP5M4Hekd+B1NR9l9Eu9JIpOHStPG6u/OKcX2zon33K
         lWkA==
X-Forwarded-Encrypted: i=1; AJvYcCVGODf8Vg6rYG27IcgFQwfQ7l9eUTnBmQW7l15q9oFOWUzi/nIOKgvjsWK76MM/3ZjtmqhPrDB6rvs8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb33b1Niic7F/jTq7pCefdjog6+xkDhSQAziKuXAYmqAn5LEXg
	HW8Svac3YJf8fGwQp41SBZ4NWbDbrSSIwnDqCF3FRxeXD+LYjfC7FQxPKXgC533n7JvQwRSgk/s
	h
X-Google-Smtp-Source: AGHT+IFqXIUCrEouhmNIe2IAeVWXodGBWIcK1wDbnM7SxIbeemoRpF+Rf1EelR/INMrqzQVMhiO6iw==
X-Received: by 2002:a05:6512:1092:b0:53b:20a1:1c4a with SMTP id 2adb3069b0e04-53b34a19077mr1300774e87.42.1729980411578;
        Sat, 26 Oct 2024 15:06:51 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e12495fsm609694e87.93.2024.10.26.15.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 15:06:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 27 Oct 2024 01:06:50 +0300
Subject: [PATCH] dt-bindings: thermal: qcom-tsens: add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241027-sar2130p-tsens-v1-1-8dee27fc02ae@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPlnHWcC/x3MMQqAMAxA0atIZgNtrIheRRyqjZqlSiMiFO9uc
 XzD/xmUk7DCUGVIfIvKEQtsXcGy+7gxSigGMuSsoQ7VJ7KNOfFSjorGzp5DF3pqHZToTLzK8w/
 H6X0/IPzGEmAAAAA=
X-Change-ID: 20241027-sar2130p-tsens-01baed7d9254
To: Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1072;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Qk+Ym3r4idGhAciZpP7bsiKTyVIiplWBdohnK11zScs=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHWf6mTz0zWDiICzFH4N0zto4bPF3f6sAzes+J
 XJFAS1sVdKJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx1n+gAKCRAU23LtvoBl
 uCH7D/0V+hJBZfrarejumuOfdJDmdZ/BLJzTPTcA/73iOfbTIqt8uDg9Lqdhpkz3E0HhWZG/RAs
 r8lvWB7D10APc1qG6aJymiv6MOmjXQvG9kptkTKaG32pUJPG1MilDrH/SRDOB2ipE8pw+frsi71
 UcmCkQbIJm2uvExu770/sa8BLpubCDgMi4Ftxgo2qMMwV4vSiD2bs1fEjdST5Fdif8kwdB9JmvG
 B/R3aU5R5CSPGmYwVbG7cg9/Q1+8H2/RqDfggD5193HJ+42oYcb7BGhANKQGYS3iHe8QAuHr2Df
 a2VZDartX8mP7IZqtdDuqJ0Ttu/TV5k9DQuIGR+iESiUXuKtbAf3aynwd+BV8gb0zEoIGeYef+S
 WfE/oE3MuqTuxyfDo69JWvz0PW4yYL/xMHNCscBlAG5Jo6mmaqmohyAb8saKcoJEbWfbogvtDQb
 qpfKODaxHBZxux6KeYXuxzKnYqwQObPb+d+n7VUyz4HX6oZNcP7cR6I/GTb4BqLxNg1wEOqRt7H
 VjrtiPTHsp/El3QvupT8R06U4ZMspjLIzecHbfCiMGTs4iXNfHEH8A88RyJQDUi6+b/k8eWJF2+
 ewAtjX5SiPswnaL/ZqK3jZEma+adVGQZd+gtURxLcd759VcNeUkuv1MdXwzL2w3ce7gbNcu0NZY
 n4nolVfjiu93jLA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for thermal sensors on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index a12fddc8195500a0e7bdd51952a558890b35935c..30430b8ea1e866185107ba017a77bd40de68ef90 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -53,6 +53,7 @@ properties:
               - qcom,qcm2290-tsens
               - qcom,sa8255p-tsens
               - qcom,sa8775p-tsens
+              - qcom,sar2130p-tsens
               - qcom,sc7180-tsens
               - qcom,sc7280-tsens
               - qcom,sc8180x-tsens

---
base-commit: a39230ecf6b3057f5897bc4744a790070cfbe7a8
change-id: 20241027-sar2130p-tsens-01baed7d9254

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


