Return-Path: <devicetree+bounces-11540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 993307D6248
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:18:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52145281BAB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238CE1643A;
	Wed, 25 Oct 2023 07:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kHmiR6Q6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0B616407
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:18:33 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D62E12A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:18:31 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507b96095abso7937390e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218310; x=1698823110; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zFDz+M0UYdFKqciwDNgVINJYhQcMXvNDjn381PdtAr0=;
        b=kHmiR6Q6wl9t8FL7wozdDSboPt3wEVDq9pI2zivrjf9awI4xMAgGHp/9Bk2rpEoXUS
         hh8mSyLV979W2e6rkzTzTcFMI8lKm/ORXP4WUG12xo1keVqPijpN+MUIsiOQznreCnL5
         36VApPzLa6Nvtf3WegJbxc2tscyblu76nDuUe+IfnkWohw/kY+AlYOLm7DNzo8nFiLO1
         PakkBaNCRn5YlYhZVl44FYTfgyqAIhiLuWR4OVnYBWOftcOOksOHxfAm5UOQ5s2ckujf
         BRrhHro9EptXdfI01MK/1OFUV6Djt8XKEhcDv9El47XX7yYffv4phDKl655fEF6ZqR75
         nE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218310; x=1698823110;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zFDz+M0UYdFKqciwDNgVINJYhQcMXvNDjn381PdtAr0=;
        b=M/Q2uV4QCA9fyeqB2Sawi0etiqplgcnhTiNYBjcvqb8IQNE9zomxiVXMyf/mXnw7US
         wxk3S7e+LEOoBtTkCIICOG6s83yTUz6OTJb757iuIQpjPXV6ixrC9qrGFUoSL3MKijdt
         AYtVETon9drfWXs5vVZktLmWuRoug2Am173hqhktlYLf0jpLiH1ewpbyRfV8EEPDB/Vy
         zqpcqd4h9kz/Dlh6cV7tWfPnP6fNHrHp0Jglp/EiL48e/20JWqQ8TImeOzE4mE6mWiZS
         ssRyCK09MQpWSAdyQHukVAYhWjmFG3KYoJDs0+o793wft1X+N75zD6sqWRmu0vWSdvx9
         CS2g==
X-Gm-Message-State: AOJu0YwOYbFeMB2W7lMz6Eu2q5JpZz7bVSQl7yHGC5/nHik2wSIl8Mfz
	DqXu9AOiiPWynLFW6KMpWexnfw==
X-Google-Smtp-Source: AGHT+IFrozB4gFUphdayvOWReNoVyUqfgYENSrUOhDao0BY1Ek/2sK35eeugDqPuASwqsfeiE08bsA==
X-Received: by 2002:a2e:9cd4:0:b0:2c5:2df8:d321 with SMTP id g20-20020a2e9cd4000000b002c52df8d321mr9816552ljj.36.1698218309753;
        Wed, 25 Oct 2023 00:18:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id b13-20020a05600c11cd00b0040770ec2c19sm18514378wmi.10.2023.10.25.00.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:18:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:18:27 +0200
Subject: [PATCH] dt-bindings: soc: qcom,aoss-qmp: document the SM8560
 Always-On Subsystem side channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-aoss-qmp-v1-1-8940621d704c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAELBOGUC/x3NTQ6CMBBA4auQWTvJlGI1XsWwKDDFWfTHDhoTw
 t1tWH6b93ZQrsIKj26Hyl9RyanBXDqYXz6tjLI0Q0+9NWQcbrnIjBrv7kr4KbpV9hEnSYukVdF
 nVXzHgsENzBORvQULrVYqB/mdp+d4HH/+APZ8eQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1190;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ujpHzL2mDnNq1FMhjNya0BMA8gZVq8wjv/NajHbGyz4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMFE/LT8pcN1QmeXxafEwBE/J6eqK93jYVGIB2VZ
 mVASUXKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjBRAAKCRB33NvayMhJ0dM4D/
 97Lo2Xvsnq/migfuVva9B3GkXe7TKwaD3yTf97a5FOxzh9cnyxM+lw0uaZgpu+cx9I1g33cZS/ZrSc
 y/D9wnGLoFNzYYJRF3bh8QjcnYL+LdzmneEOS9eHyPNZPAclo787XwcZYBf4YBX/E0kDqWNIE9PZcd
 aPHNo0I+h5HaRfqX4h4SWlqFsVOFNcVh22il8feMABF53ueTs8FUdUXjtAqo1eauy5xHhIaDrU6rTE
 BWEAAosRBS+J9wtzC9KMr9YUEgszvWs4UGz8nctW38FX2TxQ3N6y71GNW4HkuUmgfWbns4WRT4/6br
 kVtqlPW/8FB5v+FaDduN9/o+nYviNG5z/v11giMB6Yb7EKe3PR4us0RPJo0PvTkQ0dMF1x+fp2nOJ5
 lxSIrsa2B8SN4RQho0EVhA+E8WElW8g6q9MT8a0776Z0y/5ZyoharCZptzaC143tEQIN3+2wAg6UIm
 SGUadBb/Mxp5X4+nc1ectCpIVBmsaHEBYAZzSWP3YX/gppRmwCeHG3akUdBRYIPem1xvrKHKtzTKvo
 6ro12UeubKcxDX4B1rp7ky0MXRG8d+Ucsu5WpygGVNiEUGbj5U/j/X7uqGcdQi8CXECFtrnKJGskt8
 L1W1Z14V87lkQY7EN/z8I2MDSVY5t2/pLH1PqBlBLxGaWakqEwVn4mmjPCqg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Always-On Subsystem side channel on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index d1c7c2be865f..109f52a0b524 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -38,6 +38,7 @@ properties:
           - qcom,sm8350-aoss-qmp
           - qcom,sm8450-aoss-qmp
           - qcom,sm8550-aoss-qmp
+          - qcom,sm8650-aoss-qmp
       - const: qcom,aoss-qmp
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-aoss-qmp-f64eeb0037f3

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


