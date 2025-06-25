Return-Path: <devicetree+bounces-189423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6EBAE7CA0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 285A11C23416
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420792BF009;
	Wed, 25 Jun 2025 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="q/Q929zu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8018029B228
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843102; cv=none; b=u96KyQekeiseST+OWNVx0DU2Xn5EcEXbvcOZnLgB5u2ZvWVshdjpGpI1hiEPkwiQinGQAHEaH5SHi6ajbKk2i5UZ8qZ4PxM0a9zjb6slVdAQrtDGOAR0wuGuVRknjQL2A60Bp8JnJjoZ5pcFbNw8z7h/A0UuEipM0KHa1LbuTrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843102; c=relaxed/simple;
	bh=Q3TGw5jKUPEUtYzxcKC8T0udP0qtpvhm4VtR+KWN6RM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YeijXPDfYl3QQt9efxTr2WOWKxC54iV8nar69nmBkiUkJqou1JhfR89tUPNsYre/dObFvYei6Ai7TE1KQtXZ+PVUSwNa1mB1Cvbg97Cr5RqX1NBR01mozUxXVYiBHoKWsrQUzjQyIffr0YtmHCev7ZsD96W2MUMwnVgBiKvRYrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=q/Q929zu; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad8a8da2376so1039969266b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843098; x=1751447898; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CQxJGrv8Sfeyse/iafOS7hEMMX9eU0Fpgldk2ORUTk0=;
        b=q/Q929zuX4RKUnUDTWrhdJzrNbhP0slBnLwSKFEsHRQJxJGQ7/dpn/+XtWETDqZO8K
         I/82l2h8J5uiCVBQXeQXeX0wyjZhjoPqap2J9lFCblWdQ/g1XAyYaxcd1Eq/RRZ9G/gm
         4XxFqai49qg82ar4ehgBbxmnvZ8OaQcU17NRMQHUxfRaxwqlqc95xbV8JtIAtk0+ArYq
         qXJyI1QWIOm+YHGua20i7d9xkxQdtC2VFDRwrYL9BvDivKBp897Zu9CqKgm2pDENaBtg
         CWlZYqRZC3EIL5XACiw5CtkfCskGy+swsDR7mX+Qge2fORD0dSmT8xvUOxkt8XvVdP+N
         z4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843098; x=1751447898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CQxJGrv8Sfeyse/iafOS7hEMMX9eU0Fpgldk2ORUTk0=;
        b=quVSRnw5/2xyNDsNx++f3lpTo9TmfJagLQeT3NHTRWuld0vvtyenBQvQJzCrploQJ0
         j5vAtSn4EVg5D7dDVwnzDHV/Mf5t8L4jI6iCSjnuSbF0cLsJvir9Xu0H6dryIfvcysOp
         5+EiM1zkW/XnHuGCWu6SlqoFaZqKiwlIKWf76+8puwiiMffHEfdJLtcxEr/7qct5TA3X
         UbuJjv9gCYGb0o9l/4/KufHF3St7ztkuN0TrIYDxp2IlHhX1x2IXlbuNd71lhnsEsPN/
         1Zw8eHsrNXQtWVGNC4jF1wnwYUuVqaPohY9G3RDvBrg34jWdm5U1m3YWDnDyH5XEF6om
         CgbA==
X-Forwarded-Encrypted: i=1; AJvYcCW5d+sf53XpH3cS8l94P8OJMxkP66VdQZQj1IJZDd/xNS7Bwo5dR+EwomhjJzlcTzraRy5smEz9YI5p@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Vu/EV7btNiJU1G9fxK+xlCMFl1I+snT45ngKJlTEo3p3QLX6
	+Ozxjj7OlHACw7Ca3xsv2sFnxspz9oEcmTScWjLnnApfJK0viuD9J37IfkFbPBI3ols=
X-Gm-Gg: ASbGncumLpgGBlE1mg+jISFTHjIRCZ2nEYrTZj/xFAAz/PPlkxxNhqoIf3tnjNNCRdK
	85A+EjXncQUjFAq/JoG4nfVq83CClOUb7VEZV+G+vARWH02bZcnGyDFPhtOVtZZHkmRP53AodZh
	ZU3Q/YerxyK1BJrkMHhPbdMW/Up0365zUBNxGgx0Z4Umc9GNfD/4iVs2Ub4dAlgxKwrX1ieNtjy
	iaiJCItfLy9r95z2lWYH8gNVSceq50GjHIJ14wTPhTdjDIcTbmCi6Ffdepaf9oaA125OQsoGFaX
	hTrwm60SLksajhaD/BAhf1gV22O+ruzmOkU8aDmlh32O0O35MlXUgrogUiKk7axlEcFcRkclq6Y
	322VB8b2c4+5rqZ8N+AJHGpwt9TwslAFT
X-Google-Smtp-Source: AGHT+IEHp5KgbVYQEPDjHDMZCYsZyCxSBmN0Q+/INM655tircC+AtoU2yigxwjTotLgnk+tU0Cxf5g==
X-Received: by 2002:a17:907:97cc:b0:adb:1eee:a083 with SMTP id a640c23a62f3a-ae0bef40ffcmr206735766b.47.1750843097562;
        Wed, 25 Jun 2025 02:18:17 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209c85sm1009952366b.160.2025.06.25.02.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:18:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:03 +0200
Subject: [PATCH 2/4] dt-bindings: pinctrl: qcom,pmic-gpio: Add PMIV0104
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-pmiv0104-v1-2-68d287c4b630@fairphone.com>
References: <20250625-sm7635-pmiv0104-v1-0-68d287c4b630@fairphone.com>
In-Reply-To: <20250625-sm7635-pmiv0104-v1-0-68d287c4b630@fairphone.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843094; l=1190;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Q3TGw5jKUPEUtYzxcKC8T0udP0qtpvhm4VtR+KWN6RM=;
 b=UFzRWgGItjDN277ZvG16U7Qgw4i6csFwyEmLDECaQSkQKOGh3ZfZ8uRI9WIKgcp4IXQfoJ+Yi
 rNt6NRee2WRA/kgILpUgp174ERZd+fljyCY4IkyiYVR/dxw0WOtheXW
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Update the Qualcomm Technologies, Inc. PMIC GPIO binding documentation
to include the compatible string for the PMIV0104 PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
index 055cea5452eb62ab6e251a3a9193d1e5da293ccb..e8a1f524929a710a6a65ba3e716c697f24524496 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
@@ -64,6 +64,7 @@ properties:
           - qcom,pmi8994-gpio
           - qcom,pmi8998-gpio
           - qcom,pmih0108-gpio
+          - qcom,pmiv0104-gpio
           - qcom,pmk8350-gpio
           - qcom,pmk8550-gpio
           - qcom,pmm8155au-gpio
@@ -228,6 +229,7 @@ allOf:
               - qcom,pmc8180-gpio
               - qcom,pmc8380-gpio
               - qcom,pmi8994-gpio
+              - qcom,pmiv0104-gpio
               - qcom,pmm8155au-gpio
     then:
       properties:

-- 
2.50.0


