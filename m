Return-Path: <devicetree+bounces-11663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3C47D64F7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95820281626
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54FE1CA8F;
	Wed, 25 Oct 2023 08:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ae6SPT/a"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353FC1172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:25:55 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 193B2D47
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:25:53 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4081ccf69dcso3214075e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222351; x=1698827151; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aiqLs+3J8ocbMk/USKLhzS0VZ0dnUDi87OArXxCKu9I=;
        b=ae6SPT/ahDNGoCCzLyaRCoO1ly+U/yMUw3xs62NvHF6BrGJCIYhZW2enQDNouqg59c
         STJ2eQttTgrlXZHj6q5zLzo2cgqtGYOsb8SrLgj7b8NixZ8iew2cZl4kLUVzbFci7u9H
         vSINPGk+xWXC28xeuhi6Mokbq8/PJIhBEvz+OCeFC/tUg/hvleiRnEW+xsPAeCqsu0FA
         B54PdPaVj+yVfcSwFQRJMNdxYlQzBmrq8RYjJV+alIYozOVvmZoYV32+6uU5OCPduvnU
         Lv80oRq1q2tCERkd1PX6yEqe0+6H6u4MGKNblw+WXYEOJzcLe/lDSndyq+AUkklstFS1
         XiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222351; x=1698827151;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aiqLs+3J8ocbMk/USKLhzS0VZ0dnUDi87OArXxCKu9I=;
        b=Ozar6iwYvo9F/5P0Z2XZ9XdbkAwV7fU6raiT9DgPFRPoZcanLUcBdzRtPVoAKVsqYL
         9zY51CC0Vmr5LXPm5qgJ3Nsgy/gIB0uimA+Rp575PfF9o8pneQobhdoYL/VtqUnAXOfc
         WbT+ThDPh9MfSreUb6J7d02oc5BVwcOG8ZpMd899rcwNydYKGsQ+WIRJT2k9EYXyrDIf
         H7HARJxeDAgh/NVTVoHZ3jYkVD4isbakpn11J+DcxIVTdQP4cAfyH7Li/GxltygFln71
         oH+1NkkB2L+YzGur7ogMPTi1Eb5UzI1LDpHlIfTNOP4FJ2qTnXbFbPhFOfqYKLtlJYcw
         lDIw==
X-Gm-Message-State: AOJu0YwlpRz8ZFo8U7KgUY1i+gUppv0vtepzQs7x8Dw4l7MuQ6fUdowO
	w8fJ/Pczt38jGVS5zaQgcA624Q==
X-Google-Smtp-Source: AGHT+IEi2BjEfe4yJYq061IxNTMQpM2ahhlufXypcgsDDRHR1BglE83aON7CdQqH9o2yY0qDiN8acw==
X-Received: by 2002:a05:600c:b4d:b0:408:33ba:569a with SMTP id k13-20020a05600c0b4d00b0040833ba569amr18364282wmr.8.1698222351375;
        Wed, 25 Oct 2023 01:25:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j14-20020a05600c130e00b0040772934b12sm18473467wmf.7.2023.10.25.01.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:25:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:25:47 +0200
Subject: [PATCH v2] dt-bindings: mailbox: qcom-ipcc: document the SM8650
 Inter-Processor Communication Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-ipcc-v2-1-b1a4670ed6fa@linaro.org>
X-B4-Tracking: v=1; b=H4sIAArROGUC/42NSw6CMBBAr0Jm7ZhO+QRdeQ/DopQRJtG2aZFoC
 He3Eg/g8r3FeyskjsIJzsUKkRdJ4l0GfSjATsaNjDJkBq10SYoanH0Qi+nRNrXCZ0hzZPPAXtw
 gbkwowVpUfcV00hWzbiGXQuSbvPbLtcs8SZp9fO/Thb7219f1X/2FkNBYa6qS2kE1fLmLM9Eff
 Ryh27btA8FxwmLXAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1310;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0PrADmM9pW58GSAafxMnkqLRaQh4TRNl79Py82x9/OY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlONENlpNBhAxj66NUXtzE0TNkFnDmb+y5gacLK55l
 h91n12GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjRDQAKCRB33NvayMhJ0fwID/
 9wQhgQULh6+c5xAUA9DNlfrh6drHxSb+qOu27GhcitqZFqX+TAW9tO7i7tG8myvkZ5cWCNgeE6EOBj
 Rm6A853hEh1eXLo5Xh+204OFjYVnPjNF+9LWIikwEPAXW9moCPi7YKUh9K5pnR5VIFh1vNDAkcO+BP
 I0PQeIg6QbEoGaHRO+kol7G63jQeXjwVbwDYfhhP2jgVCmtzFOyz+NDW2tdB/hnp16ZOvvHqROutxP
 UfNiEUC/kmnI9YgdP/tIxjggd8LcCqVpd/oUlmcnn/9Vzs8+RLgu9wde9aC5wXVB9RmKtA81kL2qE9
 FCFt5EYZfgGfZVdLUhnfkKJ54ICoorqLeBB8iNVe7LSF0m/T/wOtaeWx/XrYe39ONG7JfrQL3t9Phy
 IyVz/Vh0EASrCFhNUT6vroALv+wD6KPE2ebUpbswVIBYiQgW+cPQ2GDBsQz9l1oJb6VuVWYQJ4Uv3s
 t4QVsSVVYMEXoYldtQioPjdL2sQ7zRTg7kq0wv44a+AUBP9+rhYY7NiN7OLuZ3rhM7e70xSAe8kSEt
 3QrE1D1bxhRb+jZMCz99eh77RkrPa3F/zUNSTaioSRbOtsiIghAm1YktGBoWDJME77QtU6bbdEAUtc
 KAF1A5kBzcd3M/NBorZ38G4HOlhHAnNX7X3yLuHR6xtDP9dPQU5PjizCX0Pw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Inter-Processor Communication Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-ipcc-v1-1-acca4318d06e@linaro.org
---
 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index cc6f66eccc84..a35f9483dc71 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sm8350-ipcc
           - qcom,sm8450-ipcc
           - qcom,sm8550-ipcc
+          - qcom,sm8650-ipcc
       - const: qcom,ipcc
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-ipcc-0b4e1924ee28

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


