Return-Path: <devicetree+bounces-71278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A99CB8D63D1
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43D0CB275CB
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598B1183092;
	Fri, 31 May 2024 13:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GZPeN7KX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1431822F9
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163591; cv=none; b=oUq3fjJTLvuwcF0Bb0I4EV4coE+HSHWwMmaR3Wc4xYdSTtJPAZv1MgHiD/hpLyiZg9wQPeRVRYvS/j0YUML75Z5d/H0/0kyO/Xr0PKnqzD6mVLAD4zSLSmkZzBFmxfpxMiJ5PjT8VyWaWJOgQiu+2xmtOH+qcCfvJhKnfDsRRhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163591; c=relaxed/simple;
	bh=ksw1dGtcuFGYmqV0VwqlYR5ZUezhxW3IRe2STnM77yY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JdhEsEC4oG2JL89d0z7foS55lM4wibzXv96xp0SK9lz0U7fsZH7eGdrFIYM9EQLEb55o6ayuzYkhJPeCGs4/RFExCBxCFg6sr9/RkHSglFSRhysTxQOTFuN9gjwF0yh5/HGqPfXLEG0fCzDXX8qdm8p6ocwRl8qq4y1EkdSyzn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GZPeN7KX; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-420180b5838so14059545e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717163588; x=1717768388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=su/OgBx6YfPX3DIZ95pqxfeUtNbtsthTdIU3wY/p9Xw=;
        b=GZPeN7KXahZhEesHIUZOg3tNu5ZXcCVAktXl9156zCNdEZZD76tulXJaNMHVeZLgP4
         b8+NGc36f6dSVInbF/v7ASj3vYLEoIBtVakOacs7tx5LzqjS84HQRjbUZaZOmKvB1Its
         tZbyLOUqHV4ocm9tk8t1duAtn3VBgjU6x8LCUP4MYTwh1Y5WtUJBKflKvApn4lQ0pLEj
         qVjY0/xTFxGKEdoHCF2YqU6YfQDOt0iC54k3G2VELx15/h3m60EcYnfQRv+2JohLTnhm
         KZf+P6+xBGJnVEhNizWeqwm9hrtIBJRoF7bJwQNuIoad+Aa8fW0KaVhZs0U77AmnwYsb
         zHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717163588; x=1717768388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=su/OgBx6YfPX3DIZ95pqxfeUtNbtsthTdIU3wY/p9Xw=;
        b=VzwDTUXJ2zrcFF1p7B51B/ZjXdRzTKIXyDV573kRtqjzEISCxmbbLYWqcn9FDNKTET
         hU7rraiGQosKdsr1TpWdN4PSN12kTnYA+H7ZanWnOcNHX/u1+iH7w+Ds2O/hAjI8dHms
         X37jnhg3bra63DzYkXAOm3Mb7PTchV6Eh9WX0dTkYkImB1SEvllM5vzytQaj2hM1iZua
         +DpsCth2YHQQRBDG26vSAVfrWjh+XClookzdMrF4H2oC8JFVk4eHr00aK8tJco123mye
         qC+PXR+ecjOo9+kxEOccwM0Sr/RKek6XCTx+Wat/RzkiX3flJHjlukXxj9LPgxBjgrK8
         4D3A==
X-Forwarded-Encrypted: i=1; AJvYcCUpL/ueae6oDIfNCQl3OieYVO4Oq53oKhYzPqQoAQXoB4z5GcOUwYw+DfLeRy5/ybXC+LKyZOsKrQfMEgTQ4T70PAwfDIvUxwUoeQ==
X-Gm-Message-State: AOJu0YwMWEcTBjIxok8r7hQuDMMoGbim7pd3xDUtSn9SKiI1JU2tY7NA
	ZgnkPcAO/Us+frSHNI8uCsgqegpF63kCL2hwfDOUAxSRFmcoOO2prgTJaF5Nl4s=
X-Google-Smtp-Source: AGHT+IH5YfFRUYxD/8yJ2A9rKYJFA5nkcR8Qt3qr75QsVnAa8JdDuC+ghCwHgluvg2pVqFBPMNHcxQ==
X-Received: by 2002:a05:600c:1552:b0:420:1aba:5030 with SMTP id 5b1f17b1804b1-4212e0cbc4fmr13903845e9.41.1717163588028;
        Fri, 31 May 2024 06:53:08 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b85ec87sm26762735e9.27.2024.05.31.06.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 06:53:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 31 May 2024 15:52:32 +0200
Subject: [PATCH 14/16] dt-bindings: clock: qcom,sm8450-dispcc: reference
 qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240531-dt-bindings-qcom-gcc-v1-14-b37d49fe1421@linaro.org>
References: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
In-Reply-To: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1440;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ksw1dGtcuFGYmqV0VwqlYR5ZUezhxW3IRe2STnM77yY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmWdYirH2g+dMm4KrBh7mmI5pPI8qw/09KYdDw3
 AEUwaNMKpyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZlnWIgAKCRDBN2bmhouD
 17rdD/905nupPjJ4kEUvXUaeqglhRKD2NU8HNzuO4eIz9/aS8UT0l10yIE9lHgOoXMMnln7hkjL
 FpEhEK13TAZaaRCgu+9AMIQAf5TmUSs8L5dPP532NF2mWHbjyLy8oxWah/8WWq3lroFE2k7X9CF
 jZFHO2QhkZmN0qHlyx0rEByp3ee+xg6C7Uu9WDIYFWRyXUHZvwH2WCQaouJuFgvLFaDVYrJcBZL
 jkXB2YUBBo0VK3aOOmz/XB3519TKwjBSSjtnokfCmqujCjO4LvbWJSFXW5GeTQK7rT8Uxk3oryX
 P09Mz/R5DTKtwYfAeznVRGMBMK8jH6acR5uukv5Gwc0AnrAGYTM17a/hlri/2IwdnPtbVZmwduo
 Noob1bNeTwP1GQllOG0dG2znjNgPg3SyZlA1gR8YnViZ3HDhPjW2wWbEuw3jWgk5FVDjo59eE3L
 2cIhoWwbMgvphIZ1LAlxg/BCNgVCZEuwLRloYo7czyc8hOjUdZquBDRvD7bktvqbHwDnztPZbot
 dHy7cEVsqivw1OQ5So0VdtUBSAvVmMnAI6yZqBCMRiSfagAip6CxOj8dVVfswzSpsAI6jwGOhpb
 xxTWLm9vnoeO7siEwpnGwbz5MUSFBBgb6TKnnIxhhUpsfcSytyiTIUIgXi/9HKdpPQMj10lPSlS
 Rk7NSshb9Hi7Wqg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of clock controllers, the SM8450 Display clock controller
is also some variant of standard Qualcomm GCC, so reference common
qcom,gcc.yaml schema to simplify the binding and unify it with others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/qcom,sm8450-dispcc.yaml           | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
index 2f22310b08a9..4794c53793a8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
@@ -40,18 +40,6 @@ properties:
       - description: Link clock from DP PHY3
       - description: VCO DIV clock from DP PHY3
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
   power-domains:
     description:
       A phandle and PM domain specifier for the MMCX power domain.
@@ -64,13 +52,13 @@ properties:
 
 required:
   - compatible
-  - reg
   - clocks
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


