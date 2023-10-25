Return-Path: <devicetree+bounces-11542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F37F7D626B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA203B2101E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24771168CC;
	Wed, 25 Oct 2023 07:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k/u5op/S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C88156DF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:25:12 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E45FCAF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:25:10 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c51388ccebso78793111fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218709; x=1698823509; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ri458HBpNHLXsYlIQQ4bff/ThAPB9PgG4OupwV+LdXc=;
        b=k/u5op/ScPCafrXtdeprSu+GuVnvEHCcTkG6Cds5yp0QFNAgeWXAK95XYoFt00vGxH
         i89iRCXEKAeYLsfAdXmDu8Fj45dU2QvRQ2XjSevFzdpKRn3tKUmJdEQwpK1mzPANMGR0
         w7iMgDl2t49edW95o8wIKwlA988bNuBXYhhpFpXuH75OW6OC2yxbAVP4ndNsZjo9bWph
         q2I8376Mbt9csUJLTDcraySW4ciNXrdxHMa90XpgD47h9brsMJDyej8exU4iLm+v6YNC
         yGQTeslcIe6sl5xdrYIg16a3TyS7TtIM5lCw/M7cbCNeKMu0ksr+r2HIYn1VPMqH5nQq
         KlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218709; x=1698823509;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ri458HBpNHLXsYlIQQ4bff/ThAPB9PgG4OupwV+LdXc=;
        b=oCP15/BI2TEhrFG2IVYzxvdoefNM9IBFSqnTg/oxq02jy7LqPaB42SLa2gfFGbNvxJ
         NdFyD11Ek5IREAzlHeUGeFeKKzL5kB5GbOW5pvCXk3IWdcJUJ3GVaDSLU9tVPpMCk1Pe
         hOgP1PjE3sqzcXs3bxbdfvtyX5ulwiiRoCEpEa2gjOcDGIcPa/Uiwc/uBCafLi+Dl99C
         CYqIR8Mhgl71WcSNJpYZX0ts9DAbK3LXlpWuRt6UaPhI+KulQxW0N/oSSKfyqaid9ZNk
         Wokq7ztAg/crw8Fhh5KmHsz9lv5otE2gJNElJcp/XTImxqwAUULB01mk4cQEHU7K0I2Y
         mQqw==
X-Gm-Message-State: AOJu0YwT2fMBz7z4R/o+hKYKTNBuTstT3pPWq2U52NX3DF2TwZkcFWrh
	cbJtpccTiYHiyaGaJ8R+6JzKlA==
X-Google-Smtp-Source: AGHT+IEO018Y3r90kMqB6BOJDhpYBiNCTIKIo9VOfLP7dcc8SejJfgrHZaQCp45Z3X8iUkMLdH0KNQ==
X-Received: by 2002:a2e:7218:0:b0:2c5:4a0:f3cb with SMTP id n24-20020a2e7218000000b002c504a0f3cbmr9445936ljc.11.1698218709213;
        Wed, 25 Oct 2023 00:25:09 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id fc11-20020a05600c524b00b004064cd71aa8sm14033102wmb.34.2023.10.25.00.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:25:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:25:06 +0200
Subject: [PATCH] dt-bindings: cpufreq: qcom-hw: document SM8560 CPUFREQ
 Hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org>
X-B4-Tracking: v=1; b=H4sIANHCOGUC/x3NwQ6CMAyA4VchPdukm5EZX8V4mKODHhizBWNCe
 HcXjt/l/3cwVmGDR7eD8ldMltLgLh2kKZaRUYZm8OSvjlyP61Iloc33/ka4VVuV44xvKYOU0TD
 VLSt/MGZi8iG44DO0WFXO8jtHz9dx/AHAXyuleAAAAA==
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1218;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=wkyJSzNygVePEVNeV4ngw1vtxt+msc+22f2dDIh8Bnc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMLTLfu4jLiWmaKbHJcTJ/6Cr7L6bVBFzsp2zodf
 aFZC9VeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjC0wAKCRB33NvayMhJ0TQoD/
 9FLfE3wwPk2VylrBBo8tInn7AwsFB7rL3do91rUVv+qK7YJxojfV0MWR3nEiKvIvI9yCJe6NzMIphq
 kKpx8CGVHg0wLFtFLI5L/uYqzEdiJ1j89RkgiBp8Juahg3JFjkChFrfLgq+Y/LfWL3J06kqyZzKDr2
 zyzfJNAdv8/KUIVOLpTuL8+uIK8QK/AkSXq6pYWyRnS4drXj/soCtPMP9LutpjB+cOxErli0DVvE4b
 CaEeUDPiNg8DapUXYgLmEkUoF7J6/NvnI7x1rWDpy0EVo4LenLeiYE4G4oiycg2sO8FublTjetBT3+
 R2FsSV7sPKPecyidzmlgcndl3tU/mgRzRxjQd/FMok35yW6z4ME5B2SZ/fnSsMmCVSYMilSD7Z8lmN
 E/u54XFNJSb+ekK/6EC83MftFgPAzTLJAg+lnYWGqtm+radI7RYw9ISaIcqqaaZUxesBJZ2/8slUZ/
 EAHZv55tdgdydMAkCIaP0K8USWyBYRDiNRX/zvLrY4AV8x/Dk07hzAs9MXO8yLKLyw8EiLJ5rCSCne
 LARWbCirwyp+A/HoXElAsoISu0cR8AzEGbWJTRV3Q9dege5zJ0f9MrUaqq6rqO4MrTQu4hAtP/Lvwu
 kff8cvOCcBnN+ZZcuYJv+UB7MBqURh0S4FoLnqvJAbBDB5hLkssiAKOwhFKg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the CPUFREQ Hardware on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 0177d1ef0bf9..56fc71d6a081 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,sm8350-cpufreq-epss
               - qcom,sm8450-cpufreq-epss
               - qcom,sm8550-cpufreq-epss
+              - qcom,sm8650-cpufreq-epss
           - const: qcom,cpufreq-epss
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-cpufreq-af0e0277172f

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


