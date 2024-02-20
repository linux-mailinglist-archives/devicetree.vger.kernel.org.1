Return-Path: <devicetree+bounces-44081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0D85CA56
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 590871C211EF
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A1DD152E16;
	Tue, 20 Feb 2024 22:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p1czGN7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D0152DF6
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708466743; cv=none; b=WbGBLw/B6BXyCl4P6LCLz94LD76HXvp/dTOP3opj6xE5vio06rGb44yTlLrMbBk8gxBMo6jfwYVPm+lcChGRUPQ4BMYKXJ6kIgqqG6njXfJ9GbmM1UOh0ZPkRrW1KtZjIeMpjcv1D8WsqhjOHKSxif62uAUbjvIWiA6+bafCltQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708466743; c=relaxed/simple;
	bh=V/CsRJK5dBL6FhEiKdapNWTr3x/7L4biYQT7b7ByxUo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jZeGC6Nk/TnieUPPiGj+f9QHxfQweVp66zJB1zoEZQmenubB1xg/LeQDQebacezGryNlE9e9GiJJO4YQZR3VXB66EncBi8uEWY95cmpvLYpBuy7QH2OYNqHkfhMwLRU8MHfM/BGSz5IzNmzXqSYZpoFffdtKo2F8zX9GM9k6i/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p1czGN7w; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a26fa294e56so937783866b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708466739; x=1709071539; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w1o5o0rtU3riUEVqHaeM6o4aeQxNzmsXVTdrU+/IBZs=;
        b=p1czGN7w9Eeiu9LlKZ4Lha16D2cx2ofB1D7tyYou5FAJWqnY/qkfB+JA/c3gHfbE72
         DfQ2vQbS1NHwUxil1fjP3zRtayCdDzZoIeRuIt1BOHTDYF+MWK62rhLN51ZceNzgxauL
         glcbwybcokh+wTroz0mocxJTiER433RTdog8y7LWNONFBTNLBFUi6wGC0Tmfug2ZIxek
         en5nw5XP6KHZvaKogiZFAGIoUtSso+mlViNeVlzKouR1UN0bTE2PUzHC5o1+ukg/I65f
         SlpsvMdTsAajkrKnwaN7UYksrIsFaWi1l3Vn7DsnWn2aCYxU5YT5vh1v57biEMZ1nynb
         xSOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708466739; x=1709071539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w1o5o0rtU3riUEVqHaeM6o4aeQxNzmsXVTdrU+/IBZs=;
        b=ZbvpRbitaF1jRQkkKnXN7x+OaoBDzdJ4jA7QvnczChT9dKi4Skz+QqjIeIMLpHBwUT
         Rs6rYrAED2TsubpfodPJrO09Ikhsa8MpLd0j/oSZRikvZ8h+n0Wj1CN8989xB2qXFCo0
         QpgaOf++AoLsyOjO/oiwNDYGuPPp87CC+a4lSir45RStrC0cHEVoIFybbQw27r4PIMaQ
         q6YRui+nyBLXJizePx7jENfH0htfNYv7ZjoxUIMytw6fhItS/UuJSu95zA0qR7WLnFOJ
         Oof8T4YToTUtnLNBqABEPIdrL2qbrxjI35QFas2a4g5xmxey6hbcXcroahhab6FHmJyE
         UClA==
X-Forwarded-Encrypted: i=1; AJvYcCUTpqTr1u1AbKNllkkZkXgceIgCrYeiTuu00I4cYdg09uidlb9ImNVCoqd4CWPcrpvm1u5+/9YkEAeq7ufikQWHomcZudSDMmruqQ==
X-Gm-Message-State: AOJu0YxluRiCOeVfZcX6Qkr2LrUqUHsIwzQpuVIeUUBUkQJxuUNchcDY
	afuvpkRf3zw5gZJ9vI1ZXK7wZtj936Mwxtj6cQE1Uy56CIWSKs2oR/OBtzVmU38=
X-Google-Smtp-Source: AGHT+IHmoAPk3JgO9HDpUxponDQuxtT5LOpJhUNhni4/utq2j908cgl2h0aVFjzeI90dynFlCYJC/A==
X-Received: by 2002:a17:906:4c44:b0:a3e:cff1:4504 with SMTP id d4-20020a1709064c4400b00a3ecff14504mr4561818ejw.71.1708466739622;
        Tue, 20 Feb 2024 14:05:39 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id jw15-20020a170906e94f00b00a3e86a9c55asm2716087ejb.146.2024.02.20.14.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:05:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:05:21 +0200
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-phy-qualcomm-edp-x1e80100-v4-1-4e5018877bee@linaro.org>
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=765; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=V/CsRJK5dBL6FhEiKdapNWTr3x/7L4biYQT7b7ByxUo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1SIt+7SDcb7BLBsf3Jy6heH1BgMXajZMMAzfG
 5WMTFqKNCmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUiLQAKCRAbX0TJAJUV
 VoweD/9jk35sRLTvDsLKj5i2FKVECAXpkSRrWAZ3x47htTp4PHUDBDfcx6oT7s4iemloEirnJ7A
 zu551cZcYF4JyC5bTDqpw6BcSTwYK3HQwKutZ2bqptUnCu0DXlHW4Dq/EwyOsyOZmic2r5e5myh
 EeA7pEItYot5YI+Ll/eMfjl2LHBAG2d1rQkGzCxKxx4sLq62LdmovzTbJiNqpUrbZ8E4AKDLWuJ
 o6Ssu+wUxB7sYEmkjfCWMU7pfTVJI5eSuuGMRY6oNVT2yys9a5GQAaLs0FD2QcYqr6aqlve6Sll
 f2FXA1Dv3hlROYJGP/7nQJPyV3jmBpMtaXEvxb3iT1MposHhUSg2r+PfJnDiLeETYyzfjSrjqo7
 66/RbhH6LdVJa6za1z0hHL6khJUWSms5qpVEhoO0xmGQVtA0cTeTDe0QdlePxWZhDMdsHJkm41/
 LnhpMLKrcxMT6Qz7HJqFrXzmPG6rhy9H6INusts0aYfgzUdw+/0C2uB9gpjyNeFBdjdiM85GcPQ
 igrp3TxP8lk9dXMmmVSzB2V+rn2x9LYtM4yGhWyQ5TXkAwhBwE1Q10FnylJi9OThbkyXd7Nuj3a
 EILdMAuQPa4m366BhljgWOKbOw3XZZq55+xG27LHugXDOzLjHg7r6VR/YcKfKedjEhfQP3VnhaB
 z52dgvcv7P1tFOw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Qualcomm X1E80100 platform has multiple PHYs that can work in both
eDP or DP mode, so document their compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..4e15d90d08b0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,7 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
 
   reg:
     items:

-- 
2.34.1


