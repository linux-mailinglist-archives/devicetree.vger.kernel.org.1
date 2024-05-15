Return-Path: <devicetree+bounces-67029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3031F8C653E
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 12:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B36601F21CCE
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 10:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482DE74425;
	Wed, 15 May 2024 10:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jd3h8nt0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94AB627E2
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 10:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715770516; cv=none; b=bV2csSHuN+4d2iJYZaVn5YPTq0BD0UAo5Oc++gT9A/Vb6U3ssGaivVCTqjb8cluoukRREl4T36D2lTgYybW4Mm6edCjYy5fJZ6Tj86E353+V1750GkwGk4O4VKRVG1WFsk9KNReQrhGMxPuknkSMNLfaypuw3BGxq40MtQWNSXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715770516; c=relaxed/simple;
	bh=QbcBc4JXtP8FNrsiFhXtIJGTYDJA6oPqiQ8+qe0RZWI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qCcL2+K+85iymdzAEn6DMliqYJteWaSDA03S4uzhjELp8BTEHXkq0KA6mANwH9320f32DS9zC/N3PzccvQ1UTLtim1FdX/ZzPTHKItXk3TZy8bj1mcJeTHcNhNMD272a/RETTgxWS/kSnjWs5A62NJYZYeSHFloBX7jrPAAkmWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jd3h8nt0; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1eb0e08bfd2so40571625ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 03:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715770513; x=1716375313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=jd3h8nt0XppmrXScJAhUdLiukYGTQ43d7P2W23c7ofo5Cc1R70eopZI3kB0ogVx8Fa
         xMV9w179pW7o9zKpwOjQyM0W80HEZKIl52UZkZjK70bXgDy/bGG9vyZJyhD2n9HD1IU8
         3cfzXYISQ/4b9gvUThWyewa66Cmv71FCxbj5Lf62RQRpy/U3wWdWZRSAu2aQbuse6UVT
         UK7sT9N3UJ/E8U99ZoLIbY2S2DEIdHSB8lGAu21lZYmgsgvwbchKnXORf4+dZqJDRxRH
         oxMMCtYKhDlxJJuIEa9Zc0W+tR706gq4Q+3IX4tRCQYj43APVaqjNHVlnrvFFn1S4epu
         felg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715770513; x=1716375313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bURk46YiZRFAzwI3iGbvVt2z2P0j12npgAvS2/bABok=;
        b=uwOpiGdOqjYsNmUv4bxPcpb8V8Pwt5gEAk47UyeIhXJa5zCYyh+90LTSHuZlAMGdeP
         mO+OLM7QbY+4wrAJHesyxp0Ws4DA8ybB57WNm42ILPofol3YCVOz0WzxzmLaz+/KWQYm
         kH5RwFImG10Mmlin/vCEfNCYeU+Rt10/FsdAK0NpchUnHphjFLMJbOzqfkiVLRQ1zWZb
         qA7WnlWxkXTqNUZPMgdoLP/QUVLPnqPVEAB/gzFUYh6TXxy6RJg7GuaiCJO49XsyClnU
         DreIex5QuBQIzsLOM9CKT7u4Hgh029eXg2DSscyLcSYqbEXIGGQ6LGKBRMcnzp/ZKvlR
         Bn7w==
X-Forwarded-Encrypted: i=1; AJvYcCXYBlYFh99qkRvDQdp9CdEaWjR1iw30LleOugu4/4CpaWr78S0TCpCnZMgaJE9lpvk2z5uTqhq+A2/Wg0EjsMXcEJPL/DkGhmffMA==
X-Gm-Message-State: AOJu0Yy6zDvcTzQXtoxsxzGSR7CPRFgBoEnd1uZeUM1ynSbnarOTegP4
	GkEZfz0phFpygcteEgjSyAHYL73SsjxqnQszmOk95MxbG/5VrO6ZgOAeCpJJzNk=
X-Google-Smtp-Source: AGHT+IH3mNU35IB47PehPnXri4pYDWkVZdgckxVixxq7JW6/3gVm5MMHnWavXQkmo22cC7342rvq3w==
X-Received: by 2002:a17:902:ec85:b0:1e4:b1eb:7dee with SMTP id d9443c01a7336-1ef43f4d05amr182739515ad.47.1715770512933;
        Wed, 15 May 2024 03:55:12 -0700 (PDT)
Received: from sumit-X1.. ([223.178.209.205])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0bf30bb9sm115092425ad.135.2024.05.15.03.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 03:55:12 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v5 2/3] dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
Date: Wed, 15 May 2024 16:24:45 +0530
Message-Id: <20240515105446.3944629-3-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515105446.3944629-1-sumit.garg@linaro.org>
References: <20240515105446.3944629-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible for the Schneider Electric HMIBSC IIoT edge box
core board based on the Qualcomm APQ8016E SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1a5fb889a444..c8c91754fe04 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -137,6 +137,7 @@ properties:
       - items:
           - enum:
               - qcom,apq8016-sbc
+              - schneider,apq8016-hmibsc
           - const: qcom,apq8016
 
       - items:
-- 
2.34.1


