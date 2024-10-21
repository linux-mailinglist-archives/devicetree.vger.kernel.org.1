Return-Path: <devicetree+bounces-113576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 841EE9A6322
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECA46B2346A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C410D1E4908;
	Mon, 21 Oct 2024 10:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y9pd8YVZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D76B1E3DF9
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506646; cv=none; b=ha+ptQH4kwcUKAo7Vv2le9FqgOLEG8pYZSmJ+9zherFdnV6W1fXrD7vLsLbLq5izA+fHBOyTV5pwt+kNIgW8UuUfvFP1fo21tr0MgyZmho3mhhWqFgkMm5U6iPvBrh9K5MlE4R+t5AnvPcELzyKKabVbNfnjmEfPY2NGKTzgZew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506646; c=relaxed/simple;
	bh=xfoORnG7BJgpYsszuYcVMwpN0RRab8ojk9gSAD6d/zQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dktJnq36mR/BtiDEzW3q/U/v+I7IoUjom1WKexAw2yfzlePdqGKAPtcw9pfmIYmw4428vGZuXf9dDeIYKNz3KQaEQtPwD9SV43o6nIHm3gpuQX6WF0tTBYttLez/STzz6MZLHnedhgdatPy4AWNdkXwyZm41AAzg8Dq9CXTkACE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y9pd8YVZ; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb443746b8so43371961fa.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506642; x=1730111442; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vBMgQWjciUW4UHYAr1mygReqy4wqLPHJvE0xLDCFl18=;
        b=y9pd8YVZprccY5Bb2xjoa9vd+U+bI64OzTnZVQW0NLJ4jmrCJsytgBBfMsdJ7HtB4G
         J/LtqRPXjwUx0qUDLKtWGsTgUcQTtjys9l22L0K06k4tnldDf/hFSEJCbRmVhdSYz/2q
         OpSah/0/wbTq82s+Kcm2TPaK5kDKjxYhknkrskYZZC/BGKUFdX/RxKPRgpTj9Cpwvl+P
         lV9MlNTqxRiBJpaR9EpkQ/QP28JHZKdymjYIO/nKBKAOn70FFAoxwJsT5sQJWO4mIWru
         8AfDVJKeduUe5NkMVz0zbdKtvVq6lyLmEYQIyVta7LTXvFliJqNH77hhq6sg8KoN3q96
         7xWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506642; x=1730111442;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vBMgQWjciUW4UHYAr1mygReqy4wqLPHJvE0xLDCFl18=;
        b=dzXqiFvPD6bgEANcG856h3CBQaSSIpDJVPDl7ldX71BVKFKw2y31fm7gqE3pl81kfG
         uw8fjUPsq9L+UDnrDrUyrOizCHFij0xrUo+PTHp4zDSw6o21Ur0o3ty6upap+YOBJxf9
         u/bxfXsWiHO2PC7JuLLmd3I2pnAtviU1Rxn3Nw+HSLALhicRw58N/Wyn5TcHBHXt8Q0f
         tF+VpmdAexNdO+OHwTDwoh2h8lwGV6yKrxxqTYLyl3Pzcd7Ben1EAFUCY6S2I4xeyTjj
         9nbU3tHhvhAUHBy29ZnIGSx5rLlUy4bssHtKZE2yGAvZyVYr2Bz4OVX6vTWI32CJD43t
         Z08g==
X-Forwarded-Encrypted: i=1; AJvYcCXSVqNhTSz8RhTLbHll4NPwWsXVsN6BtRwWjfE5DYqMLHlN+fUjWC+u2JlWL/r0E65Atzq0XvRbBsZG@vger.kernel.org
X-Gm-Message-State: AOJu0YwilcypYS44z+Cso9gXcIC+K5jZ2SScYSPlwyW+09zlRV57d8hc
	cqtTjWo/x7Usv9HHonH2H9/Hoq+4zFcevjOjfvuKa4P6fXcDfnHEzpt8kSjWdGE=
X-Google-Smtp-Source: AGHT+IGT/tXs4B0uZSWMu78wEpaH5meu2vRdjMWDnaCMqFDC8BJL+LR/czkRwDQT6kRALRGdpf1x0w==
X-Received: by 2002:a05:651c:1508:b0:2f5:2e2:eadf with SMTP id 38308e7fff4ca-2fb82ea2059mr47395441fa.10.1729506642488;
        Mon, 21 Oct 2024 03:30:42 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb9ae1217bsm4522711fa.112.2024.10.21.03.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:30:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:30:29 +0300
Subject: [PATCH v2 01/11] dt-bindings: clock: qcom,rpmhcc: Add SAR2130P
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-sar2130p-clocks-v2-1-383e5eb123a2@linaro.org>
References: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
In-Reply-To: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=907;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=xfoORnG7BJgpYsszuYcVMwpN0RRab8ojk9gSAD6d/zQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi1K6cRsauW2nk76hrxxZbm/zLRuAVR/iq2Bt
 svLYVUGKdSJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYtSgAKCRAU23LtvoBl
 uJo3EAC5Nb1Ok06PCiJN3n9uBGiZp/FvcE5BWmuhzudScUhcOASnAbQ/W7S9DLepok9PLzZySkR
 HTSetGGDoxHI7jkTkfauuqY8Gh4gBDBo2kkAIJZX1n8kfOb7Pm/zP6sxa/f+wRvLaDFKHzB3mRN
 Qvq67f/iEO5TmqN6bA6KZcwtnP3kXSjupZxIYBpnmUbDuxZcay49cvWpu4EGbmn1wqdZcSKNam3
 ki2sUwMbteedROoDz+1K6tzanBfL0ur9WojUgvVs5BcJl95H1cEid8NkuhtNyYYHfcwb8Kiyafl
 GnIWIz+2ScMkFcN/sTlPVL7sJsLggueoh3QSNjJ1563FX/Ucn2aYgkwYJDLN9AmLwHRzS0V9b6Y
 nmiyo9JxTmEzsnrEPGrbegwoikZv0cIvSFyxTTur15pqOMR3nWLyn0/5zUuy9DqoiDG7yP01AzI
 8/OrjmrQHHvwLGOtPCd7YJwXfrjQ8Fnbkob3J6VVCv6gl1dytMWvFRfpah7wqGFClH6IWw00Lkg
 Gymun0xO1hLpw/Gw1jFPTj28GLCCMH1AUQ/9bbPpKxQTcq/l2g6ZSDGMhNfCXChEiQrPUltJX1+
 wBcoC/0gEH+lgRKTSgUKpeVOEbsMkc9q+zxN1kFRGKcsGL8qYGlfp27KgdpuFSKyELus5DRSrTA
 QAAp4XnSbE7rhzA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for RPMh clock controller on SAR2130P platform.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index ca857942ed6c08cd4b906f18f6a48631da59ce9a..a561a306b947a6933e33033f913328e7c74114bf 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,qdu1000-rpmh-clk
       - qcom,sa8775p-rpmh-clk
+      - qcom,sar2130p-rpmh-clk
       - qcom,sc7180-rpmh-clk
       - qcom,sc7280-rpmh-clk
       - qcom,sc8180x-rpmh-clk

-- 
2.39.5


