Return-Path: <devicetree+bounces-12792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4F17DB6E5
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:58:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 250281C20AA9
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E886AFC08;
	Mon, 30 Oct 2023 09:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="is6GpgZV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6129AFC13
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:58:05 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F71CB7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:58:04 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4083f613272so35467355e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659882; x=1699264682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eUKa+dq+yboEToV9c6wS680Ux5CIHHimAdjadaUPKj4=;
        b=is6GpgZVk0nr97OimA+v0V599OyY76WPzXHImVeVgV8mTvbtY+VVY5bYdyp8pt0VpO
         4sG0yy3UcYllNleiX/+tco3q4rzIToUXxJJfmDpNVeqIn6sqRxUmoqNEFw8CKthl9coM
         4JjjYDTTiKNQlToumULjY4+V2JgpvN2v8PaowUAK5blhQT4lIo8Z8BFLy3Gb0Qdo7ODx
         ypvFVp71oCQ+xcF+C3GPibQGRhc4PPnmjy2a+UY5yJc2XDT/UEObeBBlNxvyZCB6FjOk
         SpY6dZcy/gEDztQcw0IFr9cjmA6rDJt3pszkijqHdBTJaED3wkrZrr4T61flSkY3V7j4
         +j9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659882; x=1699264682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eUKa+dq+yboEToV9c6wS680Ux5CIHHimAdjadaUPKj4=;
        b=mF7EApnmox20S33ufKFSJvIFkdGJaMt5Kp56RVKCzuBrJL0f4HZF2s2ed3lZHMdYKJ
         NAQw7MP+grCYtF39+qVL2hKmwJuRfTFP5JEGIqnA3brwDtxSpHuAgbvR2+SQGYa10wc3
         jzr8f9Rbx6mdjRcryOZzXNCFZEM4ZHqviNx7t4FWoG+SiFxPRiqkf8pEbyebfTQU/7Yc
         BHn9TXbhL7kHA+2Ije9ZDTO+utNWD+WNlEF3inSTfWd5+QEzYW9PjhMtU2ECdopsh3ze
         qMZF/ZP2GwHK48CZKaQ0pVo2LsYacqc0OZJrtLCHNhrhzZZMBFhGlBpO2jaIIwSZQ7+l
         LMtg==
X-Gm-Message-State: AOJu0Yw3TRUEE67fVcFlIb7GZu3L0GGxCWmZVsb0RIu77GZfwTeMCXcI
	61Y52Np7uz01Hmh83LPJXY9Cuw==
X-Google-Smtp-Source: AGHT+IHVsrvswZ/Wng76D9Yw4X9SzjZslqNvbPOy7uP7Nu6iedTaWK7qWiumdE7z1Gpv/xUm8/LgSg==
X-Received: by 2002:a05:600c:c0f:b0:405:458d:d54 with SMTP id fm15-20020a05600c0c0f00b00405458d0d54mr7694233wmb.33.1698659882514;
        Mon, 30 Oct 2023 02:58:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c348100b00402ff8d6086sm8703714wmq.18.2023.10.30.02.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:58:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:57:52 +0100
Subject: [PATCH v2 05/10] dt-bindings: clock: qcom-rpmhcc: document the
 SM8650 RPMH Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-clocks-v2-5-144333e086a2@linaro.org>
References: <20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=775;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=3OGk8WniY/E80D7AnGFZsLrGftq5gP+nMB6OXCYdMrI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP34hShmOzsR2b9L0oaoVascRLZOcZVGH5x6fX34J
 NeDb5vaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT9+IQAKCRB33NvayMhJ0V6xD/
 9TSYUCbv3OQqv0rEZCHu1/ATFtcfvBA/2NBnH2oXasiW1mvBBnnqMSTzI9BgptQ9YyCGWIe62A/3Ak
 iVcgLg7d/XRe+/JFEYkHmgpTKDdxqfvVhLBLpDBeR517i8rn6xwZ2vtTmBFNcDNz8Np+oUijDGuhR/
 ENewGOSzQxRKw9Wxb/8yI7FM4lAqIfcvsrvvHS+T7MLDaM/zFdyLroMQThTyqFhlwP6bnsrybWYGX1
 Qc8wtU9dNGcbUNTO1C7cy8kwgygdOLNx6BOPlHZms4Dacd9sbicggqZhNLs/cO3ArcOgCRvxEYZ2Bm
 2z7qlVP8odT7howPIlOJksU3wZgPfK/OLq88hJUfceVpPNjg/5uXi4uRgZSfY4R+RnvhohYtokfyru
 b6tdtoqegu6uAEpQACMQulVAewQjvuw4fKlADLi7Iy1h6oWeMiuXgYz3IEGzgSowPuibJfXL+zWhCx
 U4+ivQkdpTTy4ifFQUO2W8AlomtreHhLvlS04Vu2DlIV8VOmyBSUoto5y6qtuaHubaJnfG1jYl4Srs
 Qqb26tBRS/hDzFP+NaKS5f2K8F5nC0F0GT6K9HYVT+WBmo3RdsCvyBu45njWULW6M9Ybyj00p7Ts97
 BVL3i6Vo4RDl5Jy5LkPJQ/qA80dyOBYzZMo7JnzL6GLw5qQ7tWAZoxg1yB+g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add bindings documentation for the SM8650 RPMH Clock Controller.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 4eb5e59f6772..9be952a5a227 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -35,6 +35,7 @@ properties:
       - qcom,sm8350-rpmh-clk
       - qcom,sm8450-rpmh-clk
       - qcom,sm8550-rpmh-clk
+      - qcom,sm8650-rpmh-clk
 
   clocks:
     maxItems: 1

-- 
2.34.1


