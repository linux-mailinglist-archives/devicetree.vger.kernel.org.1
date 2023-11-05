Return-Path: <devicetree+bounces-13911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE4D7E1594
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6BCA1C20A6D
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 17:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7869416425;
	Sun,  5 Nov 2023 17:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fKltRj0c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0F0168A6
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 17:45:13 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5450F125
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 09:45:12 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4079ed65582so28676115e9.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 09:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699206311; x=1699811111; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6nsxT65QcBic5QpwyMNIvqdwRkRC1mARnt5d+1mQIn0=;
        b=fKltRj0cRkSYhOacX4946NZ9wttS7PvGlyYhb+UCMRLYfnpFSXHaKBozRlgGufbpBq
         KegN2oqm5eZCy4iKLLhInnMEKViXPWzu3qVR4RI+1hPx9Fq13Da+6/gMoQPrEiid2Fyw
         ENkxgmm3IFBS6WREYMUNeszLTEjbgXGI8o7zW24bt6EYeE0NHqRnw5LOeQ/eEOzPUWn5
         kaFCP09pp8yjv5Uuf4NM3UJf+8l57aSqNOfB5WZhGisFIp0qD+K5t8tKYJYqvzKQjVB5
         Iv8JHxi+IOSPH5mdVtJkxdbdGdXYRry94FuiWFsjxeV5BZHhen+kICQC+L+sqq3YmSM2
         oQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699206311; x=1699811111;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nsxT65QcBic5QpwyMNIvqdwRkRC1mARnt5d+1mQIn0=;
        b=O1fhuwZNBHibVGLKFxfHjCsyIfHMDT7p68uA95YLJGgSslFTJs5ByixteFueQlIKrk
         7PcOOeAGfITuhtUHEEppjXxssZJN6ShXJ8kNg6LE/IH8nv8nh2UfSA/KqjJMcvpJci5K
         UHTtdRGhdI6wBDTZUNy/oI8LHtKMJDxg+l5qY+pYG16oWVBZSPQh57k+wpWNN5wvRcbM
         u2c9wFxx9Mgc/dCVjGDJSKkJ+5E2eDB2uWJZ/B+Gj8KGAxn/lrDJX6ms7RZKPXcCLdHd
         WqLN/mAUVrWgJPG3bJPBPrrp0hO2ajm+2jri9Vg4lCY486KhxEakJANS7wTZtyBl6Eto
         2f9w==
X-Gm-Message-State: AOJu0YxvsOr0N4/LsLlXWy+uTvNwcllRWKNRmKLMcA5LKNmqleouhT8R
	U+y//oeoW/dc5Uo7qdmtrsFAQA==
X-Google-Smtp-Source: AGHT+IFFFRuz5vVVkHwIrrGRHAatUQU8Q0oj5X8fGZWbfIzQP9xKHSbLk69wwANaHGU7a2ULP4fVaA==
X-Received: by 2002:a05:600c:c0f:b0:409:50b4:3da8 with SMTP id fm15-20020a05600c0c0f00b0040950b43da8mr13704559wmb.38.1699206310740;
        Sun, 05 Nov 2023 09:45:10 -0800 (PST)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c198a00b004064ac107cfsm9553346wmq.39.2023.11.05.09.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 09:45:10 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 05 Nov 2023 17:45:05 +0000
Subject: [PATCH v3 6/6] media: qcom: camss: vfe-17x: Rename camss-vfe-170
 to camss-vfe-17x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231105-b4-camss-sc8280xp-v3-6-4b3c372ff0f4@linaro.org>
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
In-Reply-To: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-26615

vfe-170 and vfe-175 can be supported in the same file with some minimal
indirection to differentiate between the silicon versions.

sdm845 uses vfe-170, sc8280xp uses vfe-175-200. Lets rename the file to
capture its wider scope than vfe-170 only.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/Makefile                             | 2 +-
 drivers/media/platform/qcom/camss/{camss-vfe-170.c => camss-vfe-17x.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index 4e22223589739..0d4389ab312d1 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -14,7 +14,7 @@ qcom-camss-objs += \
 		camss-vfe-4-1.o \
 		camss-vfe-4-7.o \
 		camss-vfe-4-8.o \
-		camss-vfe-170.o \
+		camss-vfe-17x.o \
 		camss-vfe-480.o \
 		camss-vfe-gen1.o \
 		camss-vfe.o \
diff --git a/drivers/media/platform/qcom/camss/camss-vfe-170.c b/drivers/media/platform/qcom/camss/camss-vfe-17x.c
similarity index 100%
rename from drivers/media/platform/qcom/camss/camss-vfe-170.c
rename to drivers/media/platform/qcom/camss/camss-vfe-17x.c

-- 
2.42.0


