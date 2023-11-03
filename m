Return-Path: <devicetree+bounces-13778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 696487E0673
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 17:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31885B21370
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE801C6B6;
	Fri,  3 Nov 2023 16:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vr734cyq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9599E1C6AB
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:25:18 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C7CD50
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:25:10 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40859c46447so14589265e9.1
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 09:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699028708; x=1699633508; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=Vr734cyqkkMNlOstR84dmRXwAdxOZf/IwG5PVXy5aT1dh/II68WKBTMh+qXt5W9H2D
         howgdEt+TQ2464ZiwVQ1C8yjRs9dtRy6LKRuel/EenJ1VvZaH0ywTHiMAi2CMPo8wgC7
         ltbGklQwSpRBQ6vdu1IWC/GrejEzOGf2VueW5cL2kL9KqzsGqa1Ko+biG8VOZh4QZc35
         MMWUOyvIkjIfjufyrsAc4XDxAuLvk7+jtTFnahuQqoSFVjnJDdbYv6LGYT2DdXFi622z
         5d5xCxKYqdC5dZCAVjh40CR9qsXB45OpqZX8elGoTiuDrU6dvppp9T4WUyVtVuG622Oo
         mt6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699028708; x=1699633508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=RmA1/2D6jTl18mhZIEg0tdzTjntQfEFSuTy0Ymhe2dZb4k29B0wDoKjMhtgFfxBt00
         zvCnLByY/Y0t/9I7PECSqWieXt2zHjWs59V6s6qnmDXTjjaGtmsSuQQM+FlJ+fzMSrcF
         LhpN/o2gc1EKpmkqlIwiTmi8G7KD4bE9wQfVirzgGgi03FDAyNMZr5/UaW76S6AMWu0I
         iD/jp82hr8/4Q7fyq9Gujuc3qFINWhYvjsrU4C44Q8SaY3fcLNr/Zbo9rV1cIomDzZGG
         RWj4vfU2uRsNFZ81/8M41zMH/JxOKQtS68nT1K86QjFm8/5ge5QCGkywjG6nbd3yzkn/
         TuEQ==
X-Gm-Message-State: AOJu0Yxl1olhpkGBavlsxpFZ7XdvUfArmKdPWLz7ODPFu0D5P1N4ecVU
	cMyJFGCN7/2vq6uBtl3VLSs/Wg==
X-Google-Smtp-Source: AGHT+IEdTiIMGgGP+ktwzNDEaY0cO5gYG/t4sT4+snMUn/vAHQo1C3nZq898slGn9y+nWxx0xq/eLw==
X-Received: by 2002:a05:6000:144e:b0:32f:7fb1:66d9 with SMTP id v14-20020a056000144e00b0032f7fb166d9mr13999015wrx.21.1699028708527;
        Fri, 03 Nov 2023 09:25:08 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d650d000000b003142e438e8csm2219972wru.26.2023.11.03.09.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 09:25:08 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 03 Nov 2023 16:25:05 +0000
Subject: [PATCH v2 2/6] media: qcom: camss: Add CAMSS_SC8280XP enum
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231103-b4-camss-sc8280xp-v2-2-b7af4d253a20@linaro.org>
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

Adds a CAMSS SoC identifier for the SC8280XP.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index a0c2dcc779f05..ac15fe23a702e 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -77,6 +77,7 @@ enum camss_version {
 	CAMSS_660,
 	CAMSS_845,
 	CAMSS_8250,
+	CAMSS_8280XP,
 };
 
 enum icc_count {

-- 
2.42.0


