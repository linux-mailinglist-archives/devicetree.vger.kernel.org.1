Return-Path: <devicetree+bounces-113579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB529A6332
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB99A282AC2
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD9B1E7C3B;
	Mon, 21 Oct 2024 10:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kTvT7p+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E841E766D
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506655; cv=none; b=IQFyPKD83cDPzB03LUVoCv6xOMXwgU/5Sm1zaHQqABu0PkZMRBWjQofQtQq38T/G/mRHCY/E4n1i62CzCdyNF+uVLaO8+dsS4cdzxX08xkgjlZtIeTBzr+f+rlYwHjbQBdOl7PhnQGhtpNRbDuzOeBp70v6gDfEnjtmseJZUPHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506655; c=relaxed/simple;
	bh=1S0e8INDTJp4RQZO2xifYyW0FBrz3v2kT78lT89hhEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BFzldgL2ESAFt7OEN9Y7RTh/gtDruFfsvvwK3lLoUNe2syy4Ew5UKOK/186bDcHlD5P6ushZS6lLaIUGr/qqvfC4pRTgXnRIvFPQ7gAAqN939XDdGHq5bu85vG9gYd8meWS28VYKV7pxZgN8R03I/ydemqLkkiddDXe9bs1Vwh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kTvT7p+1; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb56cb61baso33267081fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506650; x=1730111450; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQiTcshw9Ox4It49mqmwWy0sWX4h7q2ja8AFVlIbjLQ=;
        b=kTvT7p+1ag9exQk1AeyV1bqJEaNOG/EEiyNZC6CXdCjN2EELGuDePI1LqTqPcHtVLX
         QOHDj3B6j6WQzSkMw3JY/o9A0DrJ1dPVRkgUD4Iab+B1Qx/ohcNRfNRTeKPyeZS7aPQ7
         AUieRMT5Jnu1Fdu8sOokBlIn8/4QbXAvKN7PFeSfogFpqTy9P3p15enoDan2IT3Y9v2F
         vc6/OVHpqX5EAziFJqflQYGiAAACNzg0tpgayYvqyDhOrU9JCj+ge7gM2JnyORpYNsQ8
         AS0yF5j8IS7JsMQT+MP+RUK1drc1e/nmzrSy3aXNAzpNfD/aBp1i1jpVIz4q6EE+e2Z2
         x82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506650; x=1730111450;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dQiTcshw9Ox4It49mqmwWy0sWX4h7q2ja8AFVlIbjLQ=;
        b=xQS8x3/V6slKyh5QQJjUuIRp0VSyOCNA5k7HkBsCtM/wRCsRr3CyZ9jbPRE+sEYZKV
         mzAeeUchlJVSsSTEUaFuTRoKVpZvNGK75C7KQ4d3K+gQznixEY1vGBF5ZO5GyQL4U75g
         fFLKFZUGVBJJJk/OwYxTIi/Z19xA4/ceOc4qULtcKhqyhZOjfY0f0KkcBzMEXqq6+HwP
         jH4D9GS0rCLUd7wAC2Ug96BQkkj2fYP0jBIct/F1h+sH++1Dsfpu0vKVX6mk2FNUiLYA
         11AqsIDW8isI6J7Q1kIk9n1W7PlYjzSrwT0RzSi8hGd/GZtYHTd22y7M7jhzsSu6c/0l
         /aUg==
X-Forwarded-Encrypted: i=1; AJvYcCW7f16WCG7CmGyt+zHIedv5FUTyb1rRHZ5BHDKDu5V2ZKQ5PqSfmjfS9NMVLrV3ISoJREHLQGFFIgS5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WwvSPCyuR5BzEfFzh1xeo8rPodNibBPGq8QFPBdHZ5lgdSKV
	CjtXBdIRRIaJEhSX30nMcMTBfCPOKIotexdBrnGolfT5MVkQQfaTzuWTdmf+jqk=
X-Google-Smtp-Source: AGHT+IFdlpTLDL6uAYyvCauFygr27m1FoT6MtjFdr97ltgm4aJVC2CgQpEhbCFZHza/cCrXb9elX9w==
X-Received: by 2002:a2e:4a12:0:b0:2fb:b59:816a with SMTP id 38308e7fff4ca-2fb832268bdmr30572101fa.45.1729506649961;
        Mon, 21 Oct 2024 03:30:49 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb9ae1217bsm4522711fa.112.2024.10.21.03.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:30:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:30:32 +0300
Subject: [PATCH v2 04/11] dt-bindings: clock: qcom,sm8550-dispcc: Add
 SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-sar2130p-clocks-v2-4-383e5eb123a2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=1S0e8INDTJp4RQZO2xifYyW0FBrz3v2kT78lT89hhEk=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi1LoEgArHwHyvEnghZXjDksFVQgTU920IZf7
 M9whm+DPmyJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYtSwAKCRAU23LtvoBl
 uBWPD/4iQROZaL0D58KWTrit6SzEuGMOfHuzbHZ7M2HUOHm72tW3Ws27trklsAWjsrJEfrauMbK
 UFXHbUyz5oleiJt4LqnhI5zU8p1tCWTeScjn7ROnhvlb/YWZzIPO1tjzTlt3ir6NoHyYPk+r/CJ
 qFrizxvo2cV9i2HkUGzDNrvOfIBX1l36BYo1VA/1bqMq5eHkKozt7YqjnyN1qOafPAGmKJJuU49
 O5YUcfmpGXkjnodArFXYMJlVDHV7floI4gOAyH9BStUmbza0o2lSu6eTynROeU895e82YIx/VKo
 W39EgjTN5w2qo55vSw7N0rkFOircnT4CVdzvXckb422twwqW1sYpyOF1hCEY7eSVIXVUpZgbC82
 4fehRDCrFBJGqnbcuDD83fHqu+CDDcnWfHkhNTKfHXAGvoL/H1NyvuiKV1mHVzhoIBF6UYdVAcn
 R/PR3uL9SAKlRgLCgTD4b7681dEJ80xDK6CAczG+uyqPW6tAVG6zps2sdodLDe9MEtj2CvbTeGa
 YyOmmpPqr5hxv0dEm9Jta6aZeqXlVU82xwMpODc7wCai9NDbMiO1+uE204CP+62IfmVDP63Q2Wo
 eKDhoLw8iv+s+3kQv0hzKehiCh2/U3OPFlmw8rpB2WDXqrh6EJyHaoo2mivnoQhUovqa8tFy2zl
 XYnMmjTq6tHyAuw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the Display Clock Controller on SAR2130P
platform.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
index c17035a180dbf3dde715a281bc54165122739618..c57d55a9293c214c4c101902cdd9603074e2243d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
@@ -22,6 +22,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-dispcc
       - qcom,sm8550-dispcc
       - qcom,sm8650-dispcc
       - qcom,x1e80100-dispcc

-- 
2.39.5


