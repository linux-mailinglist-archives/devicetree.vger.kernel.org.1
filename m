Return-Path: <devicetree+bounces-13780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDD77E0674
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 17:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C268B2134F
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04E51CAA6;
	Fri,  3 Nov 2023 16:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="koVvCQPr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C871C6A8
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:25:22 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D84D63
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:25:15 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso14510345e9.3
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 09:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699028714; x=1699633514; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6nsxT65QcBic5QpwyMNIvqdwRkRC1mARnt5d+1mQIn0=;
        b=koVvCQPrLrSGuPV2Ef2SpA7bmvgvl9CfCUItewz0iPUS1oYk7dhEGRJWgr/CAI2U6A
         73UjMJe1UihIkDtxBLftzgyjouoln5+llsVYOKnI0TozcvzA0HKUmV28SpNPW7ZrTmYw
         gBuzG0DW72L5F2nXPoRkF2qGrYwVx1nWncr2gSFenc/N1pxwASbLdStNkhT3N2/8m9Q2
         Pj+mY/OUzU1H5npSj7yG1rVipjIiy5joGykJj60grpnH06g9FC2rQed+PhrArDXyKaHC
         xtw9y3o8AsU+hbCEriX7nzqb5djmlq1bEPHtt3aIrj6hCPSqlq+PH5lOVx+lYlSRl9OF
         J3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699028714; x=1699633514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nsxT65QcBic5QpwyMNIvqdwRkRC1mARnt5d+1mQIn0=;
        b=ZbU8KvAQBq+2+reJTmC+qqLdCJGLThNjNUTS4dyjXh0hs0V7EDhnjvVYq5YYAzLnkB
         OwvN78XBJF5sGMcYLpBniha9a2xLBd4RLQDy8guQB+5VUyCWQMq8W7eedenBTvF3RU/D
         kf2igMNOMuv3fKl/GiacgWa4hp5I1klwH3wgfYBy5kwfzPMVdMdCRVyHNyoGt2znP4Ik
         PlP9PXUzXDyBwFdikMQdwmVFpOsC/vTzbGKOj2zpxYwLZnA+iRylDTDJh5a/yg/+OwI0
         9KNndKqn4gBH28JmLBM1yfTtFWGub7adaEpYy+bVspuuqUi7j7fFeUP84iujsUk7HdcV
         WZNA==
X-Gm-Message-State: AOJu0YyoJ5er0gVwpso0TrGLY8I+BVYdQ0N1EuqmrNecvLQJoPqbXWoO
	TXfyKggXk4m3xLk7LCv5A+RWaw==
X-Google-Smtp-Source: AGHT+IGo6lDoKqnaJdwkbAtYZA2R5l0+C8lHC4nqttrgc+u3GPlzNrionP9TVCm5xbBfEUWI/Wpucw==
X-Received: by 2002:a05:6000:18a5:b0:32f:86e7:9beb with SMTP id b5-20020a05600018a500b0032f86e79bebmr16538359wri.14.1699028713819;
        Fri, 03 Nov 2023 09:25:13 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d650d000000b003142e438e8csm2219972wru.26.2023.11.03.09.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 09:25:13 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 03 Nov 2023 16:25:09 +0000
Subject: [PATCH v2 6/6] media: qcom: camss: vfe-17x: Rename camss-vfe-170
 to camss-vfe-17x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231103-b4-camss-sc8280xp-v2-6-b7af4d253a20@linaro.org>
References: <20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org>
In-Reply-To: <20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org>
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


