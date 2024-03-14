Return-Path: <devicetree+bounces-50366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 531D287B627
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9346285CCA
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 01:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313E2522E;
	Thu, 14 Mar 2024 01:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qakPbirA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C44683
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 01:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710380579; cv=none; b=n+vvmzcCylju89lGHK2Df6eeOFlEVCtxwJnlwFOsKfczONtgdNFR2JS4xjxP7yf0E+LqnYQWYNEjg2Kya/RAnyF6k1XmRpyAZtTFIUQkjMJUPk8OovMA4TcbLvRqvRxDbfLEL5IPZ3jg9lFEQdr/htt7otAW09LNRZALIZHfvGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710380579; c=relaxed/simple;
	bh=QYcLYV+TGwlj9Unt//oGQ8Wx/tZMmV+Xi2zX6p7gc44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pef1T0TskL+dYA6VHSfkMIV7HMXUIXKR29tY2+afaCNRZ+YZOzlaICwypAG2AHcG9hRKRSsplcxWw/t2uL3p23QzjJ1AljQLyy2b/ntMPz0ssLc/RKfPRS0ByU4WY2L9O1mEWzHcwL7hunmfOw0iJdfcRG1//WJY6H7jYe/sG8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qakPbirA; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5131bec457eso436613e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 18:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710380575; x=1710985375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BR/2WSjaC7kiVEA/MVv8KgcDPRVdevK7R9VIuMUtZFw=;
        b=qakPbirAyTCZqq7GQwysOfXJ6u8ylSe53EO8IQOaLK2ivTiy3EUdLQYX6P2IGDf14v
         mNZBUTVKL1bALrn/wRSwNfKnkPXofoF0f+YM/mGSLZdX8Sd+4HbPbgjRnm8bXCQe1f0L
         DwZfSlnO0BMuefyIOAy8YjGLlcTTiuNpLfq77jl8AK8/lWClvkkbd1K+I1mKYUOOdg7/
         EmBxitkwZ4HeHCz2r4eOZcXji5YD4wbmNjIMjq69XEY+okzgW3xB8NNfpfK9Nw2HKeNv
         Etmdm24EazMRxYYZMSJ2Kk1A5mGzINPU/t09tNsogZrMGfwcXW9Fc1lHd9gC/noxrHPo
         mbvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710380575; x=1710985375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BR/2WSjaC7kiVEA/MVv8KgcDPRVdevK7R9VIuMUtZFw=;
        b=SiSIuttaxOnN2JJSodCrF7+6xNJoFx39CtEhZhwJaUsewHzM4jTvwdNVs5Z1t5mXgL
         +iMCvXTZekt1gKGpwcIpuNlxSdxKDrKjcwlM0LLOPPbBfAfHmPcDxD8dRr3mqUv9Js/9
         Or0jlosLB4ePJnpJ9+eiKcfFh80GbobWS5uF9PYyaQXtKnFxqRZT2CJ1MvYA6YR05u6C
         9WGtfKzZzl1KHPdImZgnNpoi4OXMkd2mNeNQe3j90i+PRNAzg2Wg9wt2OTvJ4/KxLbAi
         g/NDcWqEC+sHx99iasxR1oUEgWyIyEySqBJ7MIgnVHoiOj14exeO3LjE+XBtbzVPR2iN
         cYnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaS1zuV4L5jKMIC6pc5LfhCB9j1Rqu0NW+oa9a5sJU87BvouX5Ioz4iod+moxEX+x00cc3qne0pGj02Klu+hRCYFKOIq59BZw+sQ==
X-Gm-Message-State: AOJu0YwLiLJxT61paReACVYM5XdBCfCDHLIWR+K1fOUTzf4qqGuWHaCj
	Y4GJzdndCiaTW4xqTqvq2kBBZwrB5HHmLA5l7x+n2f+bf0M5xl/2X6NlZBwJnK0=
X-Google-Smtp-Source: AGHT+IG/xPzvetpwfSv0TVyj+DJus9Rt9JhAont7yelpvJBAXVu3YG2ObCJirWHpisht2KAV4oz2tQ==
X-Received: by 2002:a19:434c:0:b0:513:bf8b:3cc3 with SMTP id m12-20020a19434c000000b00513bf8b3cc3mr1324198lfj.2.1710380575404;
        Wed, 13 Mar 2024 18:42:55 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020ac243d0000000b005131e4804f9sm66566lfl.190.2024.03.13.18.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 18:42:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Mar 2024 03:42:48 +0200
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: drop dtbTool-specific
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-msm8916-drop-compats-v2-1-5a4b40f832d3@linaro.org>
References: <20240314-msm8916-drop-compats-v2-0-5a4b40f832d3@linaro.org>
In-Reply-To: <20240314-msm8916-drop-compats-v2-0-5a4b40f832d3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1617;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QYcLYV+TGwlj9Unt//oGQ8Wx/tZMmV+Xi2zX6p7gc44=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl8lYd6Ga/hJJVGq505U89U6Wx3RgeKo4x2Wcc/
 YFgk96qBwiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZfJWHQAKCRCLPIo+Aiko
 1e1nB/9D17HcaFonexjCtRtUG16g1l6JfCQKzzQKAEP2gfFdoKly977vAZw4UtkxBD+BOWyb6Yw
 Q/B+bQEkDk6iFGzPp92TNpF0XtHU3QxyfaCxA1XD2icGcC7fnB5/WN+PPbj4AUriEaTvo1vICRv
 qRHjzFRwGY3/2yFPpAQjI9caRKGhwXRluS7AWlo/ojAA3188ckjK04Aq/we1RgXttHyCdv2vNzl
 p/+BcV1tU6Dj2tfhYceIIkWAajYcTycZUcwPtxc+DXjMlAQHHjZT95Y4IygBtjD7xr+UELdJ7dh
 c9pQQQK3CiGH6v8nPf6WNUvhq4MmE54U+yO0aN106ArUFGmq
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop two board compatibles that were used by the skales dtbTool to index
device tree blobs. It was required to boot those devices with the
original bootloader, however all users should have switched to the
lk2nd bootloader by now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 66beaac60e1d..66c98a1c8ac6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -187,11 +187,6 @@ properties:
           - const: qcom,msm8974pro
           - const: qcom,msm8974
 
-      - items:
-          - const: qcom,msm8916-mtp
-          - const: qcom,msm8916-mtp/1
-          - const: qcom,msm8916
-
       - items:
           - enum:
               - acer,a1-724
@@ -200,6 +195,8 @@ properties:
               - gplus,fl8005a
               - huawei,g7
               - longcheer,l8910
+              - longcheer,l8150
+              - qcom,msm8916-mtp
               - samsung,a3u-eur
               - samsung,a5u-eur
               - samsung,e5
@@ -220,11 +217,6 @@ properties:
               - yiming,uz801-v3
           - const: qcom,msm8916
 
-      - items:
-          - const: longcheer,l8150
-          - const: qcom,msm8916-v1-qrd/9-v1
-          - const: qcom,msm8916
-
       - items:
           - enum:
               - motorola,potter

-- 
2.39.2


