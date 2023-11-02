Return-Path: <devicetree+bounces-13585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A96977DF153
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6381E281A4C
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 11:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43A414F82;
	Thu,  2 Nov 2023 11:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w77L74RA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2CB514AAB
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 11:42:12 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 583C31A1
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 04:42:04 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c5629fdbf8so10623811fa.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 04:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698925322; x=1699530122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WCtyQ+lTDBrdwtq+TcgFqVgQ5Den1oj2NhFuV2sggCo=;
        b=w77L74RAWWOS7mK8xD5RkJDL0FUHcKlkjhZL1AogUKy5BhqzchsqHqkMMqEoIQYyE1
         P7wAs6ar1WsEOhsAmooYJzC450XdZKwrETPPi4xepcXvdMMYi8t9a4uMxj0QH9JPXlOh
         jCABinkJux5swY3A8D/9Sr3iQJI2/5T6qTb5cReDaMQtkDnvZ2Z+BSDeNxFw/8dyaqAB
         ikbGDFHeh2DhrYsGR2iMu68WK9V4QbbtypDasi0J6tzl0Ujz3m2lRwUVrKz/UTQzKxFv
         OxaS/IrrbEXtlG7MycNhzUOZPnvgiotDPoVgHhj+GmaRR6P5+Lnl6+T/+lWuefK93vi2
         4t5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698925322; x=1699530122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCtyQ+lTDBrdwtq+TcgFqVgQ5Den1oj2NhFuV2sggCo=;
        b=OeblF1wrgNl8cHTab7uFeUtah62FxTwem2gSamBAca27kiYXPJZmhVHqC91zRpPba9
         2SV9Q1/YDfYh7iKL5ANDRgOXOYi0bz07A9CNxqcKTOq9zOSavTm9H7wz781OqfF3Vprm
         W3Cued2T+AlK6wYy9tPWqFFvIETdzyBY12d3x9yTvtZlfNo7GEsPpZmfyr3wDVCof7kV
         QsOA6ttvt0ifeLfLon4SJgEJfTJ6R10WGUjBScIyP8daPOM1TIYjylC+EUh2H5IUju1B
         6pkzoL67TZosFNsYlc2UJXWO8tPP3JooeIYRRTGsW1MjcsDMvZ3OCwGKd8FQT0A6y9sl
         u9HA==
X-Gm-Message-State: AOJu0YxWA2nn1Uyg5mKNHencezR+Q1kH272pvKHdXz8YfEYJqmtEDfKr
	QuG1DtHKuhgeT43tWMuNOf95XQ==
X-Google-Smtp-Source: AGHT+IGvZn2wtToDUNQMUZDjxqb0jF34/Ifj7WukTVEEEaWsUDutozvPwmmWaykYhSU53fWDPgvQtA==
X-Received: by 2002:a2e:8048:0:b0:2c5:b87:39bc with SMTP id p8-20020a2e8048000000b002c50b8739bcmr14078900ljg.1.1698925322284;
        Thu, 02 Nov 2023 04:42:02 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id j41-20020a05600c1c2900b004060f0a0fdbsm2717720wms.41.2023.11.02.04.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 04:42:01 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 02 Nov 2023 11:41:55 +0000
Subject: [PATCH 2/6] media: qcom: camss: Add CAMSS_SC8280XP enum
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231102-b4-camss-sc8280xp-v1-2-9996f4bcb8f4@linaro.org>
References: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
In-Reply-To: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-83828

Adds a CAMSS SoC identifier for the SC8280XP.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index cd8186fe1797b..0c0e813d15799 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -76,6 +76,7 @@ enum camss_version {
 	CAMSS_660,
 	CAMSS_845,
 	CAMSS_8250,
+	CAMSS_8280XP,
 };
 
 enum icc_count {

-- 
2.42.0


