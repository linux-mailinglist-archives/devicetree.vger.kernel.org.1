Return-Path: <devicetree+bounces-13906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DFF7E1592
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A1B21F2137A
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 17:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A45D16421;
	Sun,  5 Nov 2023 17:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hetBiWVm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFE916417
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 17:45:09 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524DBFA
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 09:45:07 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4083f61312eso28914235e9.3
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 09:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699206305; x=1699811105; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=hetBiWVmbJDT0Wgd6EaZUMTJE0osAuIPUXe7wjXP0qI8CxKvZAkg7jKQ2+OW4If7v6
         6ogx8if0/2USLBGpuwgtBDpRKtJ4JI7S/RD5OyoUEGvaiSba16tFOtDRPu/+6ygOONHp
         6u8qHaY6l74CO1FSJlwTTD6A3RzPGVXyTbXSeOGT14kFHO6CtxlTRkPsGsFWmjW/RF2v
         hkGD8ft88Zp9I7rXYK9Ax5c31xNMCjjKH7jDbEruhNhgMm0TooZyjWAhT3Y6AHsoV7eT
         utpeMNxOoGOOHKhSuqEcV9SR+Hd1oNqtF20xOG7DuCAubz/fzcGtleDCruB+0Ki9VMqc
         80+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699206305; x=1699811105;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LBeLT8khJaQLixVgfl4LSRyi0x5wnZw3atoglLJt33I=;
        b=Bs+JFwYBZNDGrviTI412aDde9fqIk5DK6eIN+zU9iQqaMeOJ1Tpb5laOkNRbPvAUH2
         oimO2xIJrcRIe4VFF2NGfsMheI6xel94+e3yie2bPmTTJyOt3yO9UwC7kZ2XxTvqnKdD
         5Z7W/DJGBhbRE4altSzkmXDQlZWUdpTT7BPyCxi4/GyM6FGo/itEBTyMLCh/e1Md9R3H
         mordVx3d0D0od411Ho9mKF52+GyCXFja96FOfdKnjjp2I8U3FI+9tO627JvogkYzQmoe
         dtsoM7eo4J34RHJ1PEYg7FEwWEE/sMOBqr4zgahi7DMG9srsRR8zvR5/sLFvdHVNVpaF
         8aOQ==
X-Gm-Message-State: AOJu0YyDfw51I3hZKiRWrKzmw5NxyI2A1N3T2hmSOdG4+QS6tdzQJsqY
	MSfaUrwkO0QwnOWoVPQEtaIo9A==
X-Google-Smtp-Source: AGHT+IFB+h55Xf4s2VnkpNXIbIgE69lt05jIAsBbi1JAmQQV2biLYbRHgAdd2ZW/RG9KLrLp7HJ1KQ==
X-Received: by 2002:a05:600c:1988:b0:409:19a0:d26f with SMTP id t8-20020a05600c198800b0040919a0d26fmr22382181wmq.23.1699206305679;
        Sun, 05 Nov 2023 09:45:05 -0800 (PST)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c198a00b004064ac107cfsm9553346wmq.39.2023.11.05.09.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 09:45:05 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 05 Nov 2023 17:45:01 +0000
Subject: [PATCH v3 2/6] media: qcom: camss: Add CAMSS_SC8280XP enum
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231105-b4-camss-sc8280xp-v3-2-4b3c372ff0f4@linaro.org>
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


