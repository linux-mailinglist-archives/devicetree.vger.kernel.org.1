Return-Path: <devicetree+bounces-44109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 730C485CC65
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28AC41F236D1
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E9C155A2B;
	Tue, 20 Feb 2024 23:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sVhGVHk8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDAB155309
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473538; cv=none; b=d7uHasSUsucanCqS1Cnth1+MlVf5rzYzLhCrKcHLJB+/BRzYWXkYhbcuC0zwmUvD5n7pS0e5wrhxsAyF2WUSW4/jkdVQi1Xyysl3CDYMoYIs+Lj5HZaKljNm8FvElfdBWgGGRWDEmpIXeZXrtDQpHcAJqGFdBVW4hivpCgBpcxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473538; c=relaxed/simple;
	bh=I72GnJCLd9/WSa0N+ty2v+dNI2zZTTJ7yTodRVOBsLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m7Po2x2HNmxOqkRyfrGte+jrY70zqJQbKHgyFQ3zEtjIFet7ADXdYk9g54xvVb8dYl0XcwKGfZvQtkTexbvFJhx4qLyK5f4vgTUZtIHzdgfUVAdjSzRmsMXjp7kXBH34OLsDSz7qQgAzOqA956XsmKK1zQxul87brhoF7iWJeNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sVhGVHk8; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-512c4442095so1852386e87.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708473534; x=1709078334; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4dH1ivAwHXEfRcTfOF8u7VTWdZsEwOMNlr3FVqkNPU=;
        b=sVhGVHk8+qu5zMFpDYMIPwZRNQUp8dTSGoC8Lyv+FDHDH67lCraZ/SNGxtNWDSEeno
         /PEh79gtDYRMeBD4mMjem5wSVg8HVNkM9w7mQ/TG1RON7D84YC61xfbsrCJXvq/s2OY9
         HROT1ouoH2IfPz965cVifP0/eEN+jcA9HKYHgBnqF1LQkWoW8yb4BFQYjJy0V815zBty
         br6auFElcBvMvpkEkhOI0Bnlvy0FJDvQn2KfI1kFesvfq0ZmKmrB+14JDdjniEY/d0XR
         hFxZggi8dItnihaIEeV+CyZUSNsIEA5naOd62Z6c0Wz4L51fyVoo6TWbY1lPCI9YH6DX
         U37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708473534; x=1709078334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4dH1ivAwHXEfRcTfOF8u7VTWdZsEwOMNlr3FVqkNPU=;
        b=ph9oRvOQFv+wYm5uQSw+9yCoPPJblAf0JuM2GKvIij7Qpoa70IWinP0Vay6s633So3
         stIr+DHALd8FqTfEhSMA2l92G2GieoEOeLt9ONdS80qy+UJxjOhyI1zvGE9bCu4wWd2S
         PFd45n9X+CPdNYMLMcMNrtqv/UKaqMwfhtG+C1DfMhxw0CMjouTGP8IIK6jtL3aq3sHF
         jG0QDQu6tZ09SOVgSPJxP797XYYT1Q87OapPNTlWYIZQcANzkhV9tJw48Vl1IlHmD7sT
         pa6FsENSgR7jaCI6G9ikNS68VQ9JZzmfQO0/InEAqIh5Bf/4c3Ayap5wzCQ90oLEFZqD
         BBCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXATH0RIjvV/kNpKjnBTDu37L3p32dmlYdixPdsLjDLnqmiED0BNOKlkRYYMsfpjJVPysSHOc1VwspXR4PNjnBEKudGSNfVXgLAqg==
X-Gm-Message-State: AOJu0Yw84Tzzg3ewGU+I4LLA66WvTcXQyqAVukR1JA7yUdxNTqC54U7e
	UkvpClGJwTcTqTH+b0mmSdO2xr5luoD8mGHcO5V2/KgtQHCBYwir754rUclLrw8=
X-Google-Smtp-Source: AGHT+IEOWHRu0nBY2wHAv0SKzD6r95/9wH2ZYJzxXoOE2qLCzqw3mSA1gzeFO97Ol7nFNqgpQ5fBag==
X-Received: by 2002:a05:6512:3f06:b0:512:8d30:6dce with SMTP id y6-20020a0565123f0600b005128d306dcemr11672739lfa.52.1708473533791;
        Tue, 20 Feb 2024 15:58:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a056512055b00b0051167de8560sm1438831lfl.38.2024.02.20.15.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 15:58:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 01:58:50 +0200
Subject: [PATCH v3 1/3] regulator: dt-bindings: qcom,usb-vbus-regulator:
 add support for PM4125
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pm4125-typec-v3-1-fdd0ee0465b8@linaro.org>
References: <20240221-pm4125-typec-v3-0-fdd0ee0465b8@linaro.org>
In-Reply-To: <20240221-pm4125-typec-v3-0-fdd0ee0465b8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=I72GnJCLd9/WSa0N+ty2v+dNI2zZTTJ7yTodRVOBsLU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl1Ty7+EA1phDtHjGy+z/YkjXb+FB1VvZvKJ3Tz
 kq2i4NHmg2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZdU8uwAKCRCLPIo+Aiko
 1YUKCACNKbnhPO+7xDqVxHPQnHkNVFl5x3SNvshghflafN/vNrZ8ObGn/Ip0zE2ql1T04xserQM
 JAyqmTjPU50+c2PVmJRv/jCZs/4l+mkT2McD40NujQxRH+h1fgjJunD6hzX9YwM1F27JXGNjspu
 x07YaP51xAtmDKrZd8OnEGxZjx9NTOWAFQnNrlExaVQCVED/+Dgn/ibz7mGkAcpC5EM71Dd1IPi
 w/gUJu3cCVu2yHWNl4pFDNxlyzb98LaDrf6XqLCHdNyVMB6cvwB+dBkTD5YIjjn6Lgqm9SRIirI
 aU7Oy+I90nlGzyx/rV3ySgSNVg0LVKC7ENY81VP27ZYcAXfA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The VBUS register block on the PM4125 PMIC shares the design with the
PM8150B one. Define corresponding compatible string, having the
qcom,pm8150b-vbus-reg as a fallback.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index b828a69ccb84..33ae1f786802 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8150b-vbus-reg
       - items:
           - enum:
+              - qcom,pm4125-vbus-reg
               - qcom,pm6150-vbus-reg
               - qcom,pmi632-vbus-reg
           - const: qcom,pm8150b-vbus-reg

-- 
2.39.2


