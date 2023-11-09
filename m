Return-Path: <devicetree+bounces-14798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E2F7E699A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 12:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 583FAB20C6C
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A5E1B284;
	Thu,  9 Nov 2023 11:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Juxoq7L3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7DA1A72E
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 11:30:29 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1670E2D73
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 03:30:28 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32ddfb38c02so422307f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 03:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699529426; x=1700134226; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=Juxoq7L3u+h+pN5wt+A9nnrJfhN4o/9Ms4OhbBmgZUrlrwfXe7m4RRK0awxCRNjwtb
         JNKcKvGuy88JXr91h4sZ4r3c9NY5PJa508bJhGeFDjV+qJbxDcP8O0y9WUh0cHfvPke8
         dWAJffvyVSJCqbvpAEv4p+SN2G/rAyDH1n3Esn8hc6y1mzP/cJdFgRQWDzuXSmQRdrZ6
         8BZPVFYToGE6QffHG6ZE+8I6qvcZRip/yWNMpkWi2Kv2ReEygrjsPKXyKY42HBpPBvRU
         DaqZz5U4TpqWIEzNcnqob4CEDTt28ELBN+Un1KmnxTdblPuczxQQwZWmo+2tFuuMfplg
         OKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699529426; x=1700134226;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=Io2V7X+JXmEFbKRPONO1cjVyWHJYfxaOQAgBlWeWUkxt7Ok+32gYmT4lismQKZ4lGs
         YJVRtShA5AKX72qVxJyQbFzDdiAk6YW/9pTViUvgeDDb68avLHJp3j2woirESzQaW59J
         Y03iBfEsNu62qkQwa9Fod+u4drjdc02zVSfWXlzxDXbrPIy2kYOfqVisd0Ac7DqBoJ13
         YjJ6X6AvuOYt1GehtrXByuCS4mtRbIlhEZc+t2VN92OwphHZ0ywGdTfNWeIQM3tAafK+
         JafseiWj//o5vMtYucOE3Gcvzk7YPi1rRvi4O8G4P9/E9ETtWEqJPbrUbMre6BOTvYqb
         afOw==
X-Gm-Message-State: AOJu0Yxz2wGfki5xg4PU2ru1c6VbDQOdZk8pJL6/JrlogwKmd4b7U466
	VvTQUc7ynpVTTfWAK2SX/UoZTQ==
X-Google-Smtp-Source: AGHT+IH9g1dM8JtaeRl45dHdYAd+VVMtAgJ8quU4adS2pEwB13j1c9WbgRHCaQYb4u3x1vQ4STGbRg==
X-Received: by 2002:a5d:6c62:0:b0:323:15d7:900e with SMTP id r2-20020a5d6c62000000b0032315d7900emr4343733wrz.53.1699529426402;
        Thu, 09 Nov 2023 03:30:26 -0800 (PST)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id a11-20020adfed0b000000b0032d9337e7d1sm7185790wro.11.2023.11.09.03.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 03:30:25 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 09 Nov 2023 11:30:22 +0000
Subject: [PATCH v4 2/6] media: qcom: camss: Add CAMSS_SC8280XP enum
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-b4-camss-sc8280xp-v4-2-58a58bc200f9@linaro.org>
References: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
In-Reply-To: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
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


