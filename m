Return-Path: <devicetree+bounces-45129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DED8B860D32
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 09:52:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75EC31F248CF
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 08:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C371AAC4;
	Fri, 23 Feb 2024 08:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cfgRO46U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC241865A
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 08:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708678337; cv=none; b=hoLeyC0g8Xhl552F+JFNRUnEHYjQy8COl4Q/+J7YkADKn+Lp1ImfdYKJig1Ljf1A13WtZ0sQl8Bcvs+7FOZpBAk905ElAq5Y+AwB07G0RYuZzp4TTwJrVSNubcqwUt9iPqbfuQwcGcjeP7zzkzjqMMXlpdt4E11uYHD+eJUsgNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708678337; c=relaxed/simple;
	bh=EQO22abW8bcA5milvZJUErbhe15oKZJEeJtPj2aKW3U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=huhDpyxS0USY7pdAIN3StoIoa89kkJHmp/erX+kW6vWu6oQXeOONUtgq6eQYlYaZCrJUQ+vkly+Uqa2c6mEPfU63zBd7JXnuITYNi/HsJoELpCR+et+2z139rqFIc9ZhLl5fkwetM9H0fdYmG5g7UB1aKsdYAU6hGcEN/QPGB8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cfgRO46U; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4128fe4b8c8so4040225e9.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 00:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708678334; x=1709283134; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fkRHnQA3TdEeSotmMCTtjLGOi2rOUesgI3//PK5Jk1o=;
        b=cfgRO46UeAhxgXZSvDd4adGmc0LL0oJUz+xrKINQYxdVhUVU/o8JP9EHAN3f/IQTkO
         C3uZfSedIBibODiP224iwquTWpZmAtes5j4CMQJAFP57fA9VSLVDsr/YNZgMtb5+AVAt
         r4Z3GwvWZ5r0JUt8EFP3FJHvn683iaJJ2Ns8KyfhXh7esBgrJ0W1vdxWo4lWfwvvEFuE
         8v1PjPX4g9i6JoZQ6eI3kibgbo6yNg+2D6xBcXRFcNMrm8th9TFS8ahRDFZJSSlbhSrk
         0URC+73JjvAEvH7Yj3zBoRVLxVvlQtBAf0Ux4p2LFtq5XD1/Idpc43b+f5EcBH6MhaZP
         Jo3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708678334; x=1709283134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fkRHnQA3TdEeSotmMCTtjLGOi2rOUesgI3//PK5Jk1o=;
        b=Zm0KKd4064yEIic0VwAezZFQqP5EBOhlRTUJrCKBNfaOoQzXmlIDKaUPIi2SC6rADt
         kk68Vgbn7D1JGEQt7yGrZLy+XfI8Pgk/322+bpMtPRcgNtN4RvRYHedRhlPOEbO7Zw9x
         NuRIK407o8xH5Pz0kqOtv8N/o5oa8zKcqt8ednEL4mhcar8GyoTVWw6FkBm5eMaM8W6V
         rRY5fydqGFVzgPmj3diPOjrLk0S1LiiT/B3mqpxOWGgY3jJ+m/aWJutNJFmFHXErqXf2
         o4pKx4Qm79bwl/CQLHCHgDSjSTnbnkmi0eewmRvXWWg8xKrt9FNyFUWsqaDpnhvosNvl
         mfvA==
X-Forwarded-Encrypted: i=1; AJvYcCX3/PhFMQsTdRiXOxn/Z2grt3k3/bxV3w6jVMP8bZzwK8wfxo2IQ3XxwxwPDPazcuzxm+t1iDvKj+WrXpn/qZYKJsslZdTZVyg8Qg==
X-Gm-Message-State: AOJu0YymF5G46E2z2ec4RWmS7WqRjMbiBfGL7ur5KuF5ozENva2KG0wS
	zLYD23WSkfxRrl6IkzA0OzVjC69wxA/X+f8OivsJ6eIRGilNzrHdcCMU9e48OHQ=
X-Google-Smtp-Source: AGHT+IFM2v8MWewvT/cRoLLvSvr6O0tj20W39aCtHT2jhUIWHXtnMk+i1hpIrjFMr4CI9IrnoX5LEg==
X-Received: by 2002:adf:fdd1:0:b0:33d:a010:5add with SMTP id i17-20020adffdd1000000b0033da0105addmr1023131wrs.54.1708678334268;
        Fri, 23 Feb 2024 00:52:14 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 11-20020a056000156b00b0033d1b760125sm2028168wrz.92.2024.02.23.00.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 00:52:13 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 23 Feb 2024 09:52:07 +0100
Subject: [PATCH 1/3] dt-bindings: arm: qcom: Document the HDK8650 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240223-topic-sm8650-upstream-hdk-v1-1-ccca645cd901@linaro.org>
References: <20240223-topic-sm8650-upstream-hdk-v1-0-ccca645cd901@linaro.org>
In-Reply-To: <20240223-topic-sm8650-upstream-hdk-v1-0-ccca645cd901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=713;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EQO22abW8bcA5milvZJUErbhe15oKZJEeJtPj2aKW3U=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl2Fy7h1QSL5nrtuJPpysMfFIPGa7uVvnz/x3ypKPp
 Z7foSNaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZdhcuwAKCRB33NvayMhJ0ZzjEA
 C228C9/QT7FdF69I9BHoLqtPQZMHsu+ja6YCGYVxpt6EdY2fbc9xocjYM9z5G9epvTzhKaE29EZFDU
 zMoGrK3/BrP6DLbHdvC1oWkRtZVZLf6dc8LYh4Gsfe/JFgyDlcVVnVSQWbtI2/Cjaw5xYiTt4MLawc
 px3+1TGJj47LT+3+0u/jQ5/becgRrgIn2E4ky6KzXByNpMD43a6p4yf4Am08SEtTiQ43Pm9UoKC1YO
 NXOrQn4yq35B+CSfSZ5AAF4syn9+q3Lsl40aVbeM9f/T/XLcZFFL5ooxtNEpMiRd9aSClcMgaUsXAE
 N1dG4mSMNWNaldXXKWCY0KpWUioL+5x3D9pTd4IuNS5qzVOmxcVYKuIYrdekdc0I1Sn9MHjxS98hYY
 aptk5hDZF1KkKJheyGXe4zAjzXqPavqMvY76wiGzF+NmZw9V8ShJdC9vvn+3P/u8CjrshoybM5CUIi
 iF188IlsOpesGe97rT3IXqzGh/rmkEtONoU7tCb13on+iCOcRztPVTIMPOAn1zgWgR3rplKy5Zx8sP
 aZKt5a5AzGW2KrbQ2DAuV0Tjkhud1eE/SN73pWWE1RKO0T2qBt9idZOrMXZiI9t9VDnAYSv0KRfqsq
 J+Bx7Q7XTyYIthCEGuga4xBr6Ay2oYG37N9LHt8pka4h8HOQ+94UobANQeoA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Qualcomm SM8650 based HDK (Hardware Development Kit).

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 66beaac60e1d..fc0649da74b9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1007,6 +1007,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sm8650-hdk
               - qcom,sm8650-mtp
               - qcom,sm8650-qrd
           - const: qcom,sm8650

-- 
2.34.1


