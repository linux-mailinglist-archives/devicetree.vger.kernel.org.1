Return-Path: <devicetree+bounces-70094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2238D2627
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C294B27E1A
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3D917B42A;
	Tue, 28 May 2024 20:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EfPkJD7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE8717A92E
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929020; cv=none; b=fpTAAxFtRGbIgah8JKpG9VmgwKaad6jPaybzRNxZ6HrpiEla0NNInaF6ZpIMYNyd46vxz9MnC6tENY2XhktSfsHSWFWKcIdcVCjw6OUr1d1KYeq1oFz/kFlqchMpt5HnsDpFiA5CZNmyqeNRp1i5KNfHqCRX22q8dwt9ErdtwP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929020; c=relaxed/simple;
	bh=QJb6MOZuJ1l8+SXTs1zISgRCfAouoFR1KK6HAKTHvlA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YFYVGwIkmNN7OYvQo/II0+cjKbsY3TQVI7OpR/+ewzneG0bqFVj27RpcPspORQbfq56kvGIF3Teou81bNGROyZOboT0GtWW7GhwIzrxG0v7il/r5Zm04Ugp3UMu9tcSu3L93K5PMQadyxW08lZiRAavdQpkHE0b7uXfgo55XcKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EfPkJD7z; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5295f201979so1410591e87.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929017; x=1717533817; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYWC2OO8+TX+WVqRbufjy89Z4tSr959TzuDka+3hDdE=;
        b=EfPkJD7zw63pJKvB3+69mQpvPM8fFaRdUdn9n8KfBjkor179GA8sJwFi7TMr94qRur
         RhTWZPgE7Xng81BNNiqhdr4TkvvKv+q981xGrNXJsIzOASlqmheEXxFSemdBPiCG6jB8
         miTUz2sfkU/mJczoPO0bs7t6v9D+9SZZbr3N4U/2szXQXPKca4EHcyB6K3aid6J6jl+E
         1gXZzFGIfRgVRp66yR9xms93MnYMFjA6GMCc1zkPj3BbICooiluuq27ExHSXst36Qdga
         6b/YBbPOST6whDl/xppgoEPZ/2C8vuiaGjuYqp+X5sBAeVWId4JT8TEnfd/xktt5Z6gL
         iOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929017; x=1717533817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYWC2OO8+TX+WVqRbufjy89Z4tSr959TzuDka+3hDdE=;
        b=aRbynsVjV5g8HPGj4IrOo6mNdXoyWrnv4y06+XlkoIeZARM1PxjPsHpnduscozvBjT
         TJmQpZ7y6kO80pg5gKHCx2DgML/5xgTsPBEAnhlq961W83JTCqlW9xIHZRoEE3uxBAVU
         uhcFb4BAkmpTImMdJxN3vZm1bTKfrWCEQD4DBPeR4Po+3L8PsnjePlIydDCG0glplJ6O
         r6nvwoNWMuPLxGk7ZVAj7xgZ1fpyDswAed1tY6zmmor8Lpd4nfSOdwKP1YKnhxK1ARkR
         I1GT17VRSO4u6cuodvFqWZ04EhV48I+qOCnm/HLaQres/dNIwW5KP2RQnJdjkY2tOlRV
         +qtA==
X-Forwarded-Encrypted: i=1; AJvYcCX+CGumrPqepNdydmQ+Wg254v0A0ziQVV9VKAW7+Mec887eMUup60qwVHbED63GPtWkzsVSyOt8zUhp/tS9/0GMLeCGUHCckdgYow==
X-Gm-Message-State: AOJu0YyvAQN+WuMJBef82TeVD5qxA2DsY+dJUzmUKJzdw4jQBpGkDysB
	qSs4xWCjFmG9w7j6UAqOiJEfVVSSyKPgB04bKvJIcmQHR9Jo6QrCpU/wmcQ+YiY=
X-Google-Smtp-Source: AGHT+IGBK926eY4Av8NjtfOLfgRX17yI3m89Lc/bWSAvjt0WfUsXme3HWKiMhZPPb2IvW6NlPuB19A==
X-Received: by 2002:a19:6442:0:b0:518:ce4b:17ef with SMTP id 2adb3069b0e04-52966ca838amr6985773e87.60.1716929017237;
        Tue, 28 May 2024 13:43:37 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm1095493e87.127.2024.05.28.13.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:43:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 23:43:21 +0300
Subject: [PATCH 03/10] dt-bindings: clock: qcom,gcc-msm8660: use
 non-power-domain version of GCC schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-qcom-gdscs-v1-3-03cf1b102a4f@linaro.org>
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
In-Reply-To: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=814;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QJb6MOZuJ1l8+SXTs1zISgRCfAouoFR1KK6HAKTHvlA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkH0IPASHnmQXbfFinNlIMcMT5QPEOsuhJMUD
 VUL4Rjpm8mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZB9AAKCRCLPIo+Aiko
 1f8WCACRdDIynYciR+WD4JOavvUzNX1jCnBta+4miw77bBiykd5Ts8TsuIyzg/2v4fC6rtt63jq
 WiT6w7GQ28oCBWjx/7RLKNjTCnvcqktBa5+vdri6SY/6Ui5QgbkF04KaFbfmvX+vh1Ky8oY3IB/
 zHdkJycwHkLpRMKFbNUFtpnWT+Lxxns7x1ivkQqd8MZjj0p0JdPqB9sSntKJIAfwbopY10zw9fD
 AyGDELCIVZyh2XOwWgM94Zp4BCxOh12VTS8XAcsC2Zy4GLVwzSR02m9zd7d/u68qwFpzoxhS/HC
 r4Xgy36lJCODq2n3miNLVE71rKkzLH6G1teUeUP4w/SbOuye
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On MSM8660 the GCC doesn't provide power domains. Switch it to use new
qcom,gcc-nopd.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
index c9e985548621..d2dcfaf2e4cf 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-msm8660.yaml
@@ -19,7 +19,7 @@ description: |
     include/dt-bindings/reset/qcom,gcc-msm8660.h
 
 allOf:
-  - $ref: qcom,gcc.yaml#
+  - $ref: qcom,gcc-nopd.yaml#
 
 properties:
   compatible:

-- 
2.39.2


