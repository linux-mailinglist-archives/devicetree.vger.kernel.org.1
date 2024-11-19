Return-Path: <devicetree+bounces-122807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5259C9D267B
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 14:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 187AD281A90
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 13:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6E51CCB49;
	Tue, 19 Nov 2024 13:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OfWaAXN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559F31CCB25
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 13:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732021838; cv=none; b=n8Q+SPKbxYabtQryZmTkoCnylimPRbNoUFJEr5cCD1GfzI+tSzetKqFL9BTIjPJjnoE3ASjC5ah42sd+FBVVsC08dZtAeBQWRGpIpAnfCBnMVjZPnMTC2kwuz3wqy7VrOMWSLZE4zGj51bNld5zpxxX2SHP1qUUUVmezXHG141s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732021838; c=relaxed/simple;
	bh=+Z/PdD2MYfcpiCWwU8ARGvFmCClzUqxWTTx33AL6Y8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CjLpzW7rAAGLI7znH5bYjrr0cyycmWuIsvtvIOvRUzP2F/RIrdUq4SUnRPWzAeOIXryoKf3NscchN/pn9fQUcuudH/scb+DcnWEI46K8MF7sPiG/+oeM/kVQxHbJTRmK1Mq24ynjJp4ZTwlwBJnnPEXbhnYH0wOU+SpHrRw4Ijw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OfWaAXN0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4316f3d3c21so45468465e9.3
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 05:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732021835; x=1732626635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLg4Ldyb3QyH8qI2mLCFcOUNVAsIDeqLMDJbc+hKrrM=;
        b=OfWaAXN0w8BpXd6aMfcE7DJ8fZ9gufPDHRZWgi9XnFGYpgdyH3Rz43E8Tz+y3UwZ2V
         3q4RSftD6zBtUOzB3FL89XKmFQC8ntr61LmedQkAI6boWUqa5uiagJX7OJw+7bYTeW57
         HItDlwKvrM1kP67z42KYM/HDJPTQBl+EkkLyrnBVL3J1t8v/9FBgXRxDlbU/YVo0gVsG
         OdTY6/UXXxLVf9XnJvB6DdvJ97Y2FXeigKCF08IXhwlMcAdbF+aMXyyGzrR+s+vTDRMh
         kEUNHjC3MbEJS2FI2UBIg/jqbZxPAi5TuTjLCObGAbkIX9XMpVoynoTu44kL4hUJDEse
         RYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732021835; x=1732626635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLg4Ldyb3QyH8qI2mLCFcOUNVAsIDeqLMDJbc+hKrrM=;
        b=mRoosU3Jr8+a416UzMV5AOrf7jWoX62rCRphxYpkRdABDPXzn8GAQxjzixvBt/AGZn
         7GafPkcJH9OkFFuylr7l3G5pQ4RKqyStULA058PiUc+0yB8khjDnICnzDrmesVvqJw6j
         5lu0NGXynPUEd90jV/Pf0UF4LBPfMavbKnYP14wSdBRfH5t5k2rQcIvvz/6GFOaTHDM6
         cj/zXi1zbY47dVy16jdDjn7xGs1FtNyhKFm/ZIjStGp/MxZFmTjGu+eq1+tM98I1vufr
         zxTr2PCBPB04ljwiU3e1/ruvURx2+JGdfDvztSoOjYDsowR2VqMSai7e40ft5ZCF/ziR
         P0xQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqJXCzGGj4+99xQdHZrptmIXOTz3WC1BhsSSJJInomAXwlIg25fzuX9n+yxLA2Tqx9elDZpquOhwNP@vger.kernel.org
X-Gm-Message-State: AOJu0YyxFWsBN5L+5jiauhc3jtcG3+LqzrERSfKoWi5naAWDAZOwro2C
	LAJ4FJIqcy1yv5Z4AJPzaIv4MbDqANoy0+hQzGY39apO+nuGfe6ygUMwwVB4idA=
X-Google-Smtp-Source: AGHT+IGJzaFaJz3YJohGuDkgPzfL38B4e04J3jb4J8DFuGIWIjaFuEed7tFXmMa3NleNtFete+AYwg==
X-Received: by 2002:a05:600c:c0d:b0:431:680e:95ff with SMTP id 5b1f17b1804b1-432df72b93cmr138509745e9.9.1732021834697;
        Tue, 19 Nov 2024 05:10:34 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432dab76dafsm192016185e9.10.2024.11.19.05.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 05:10:34 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 19 Nov 2024 13:10:30 +0000
Subject: [PATCH 1/6] dt-bindings: i2c: qcom-cci: Document x1e80100
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-1-54075d75f654@linaro.org>
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
In-Reply-To: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-355e8

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index ef26ba6eda28e95875853fe5043fe11deb5af088..89f852ca0d6b8a6b57b596eca0a3765efd058f39 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -34,6 +34,7 @@ properties:
               - qcom,sm8450-cci
               - qcom,sm8550-cci
               - qcom,sm8650-cci
+              - qcom,x1e80100-cci
           - const: qcom,msm8996-cci # CCI v2
 
   "#address-cells":
@@ -205,6 +206,7 @@ allOf:
           contains:
             enum:
               - qcom,sc8280xp-cci
+              - qcom,x1e80100-cci
     then:
       properties:
         clocks:

-- 
2.45.2


