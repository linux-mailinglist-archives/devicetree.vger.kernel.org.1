Return-Path: <devicetree+bounces-185056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DE8AD64F3
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C9E71BC09C5
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB9B7DA82;
	Thu, 12 Jun 2025 01:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GwSfncPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B0813C8E8
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690942; cv=none; b=D2XXJq9l9P2jdOUGf8NO1E8TIaRh51Sy12KQDQF/OI4BVjrEnRxssyEujqfca4bDwYAyZ9ERftDDbx8uBBd18M7X7so8kU1BaO7rvKv8CPhXYLm+WXoztCCwhGgqWjInnuqoxvYs17+lsbWlvZ/gLcgNzTFulEzvAanYpxTVa/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690942; c=relaxed/simple;
	bh=cTiCvc3M5D7VQS/RPNZMBcUtmTqxxVJOMqLiNgpATFU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bseuF4rgTwYyc3vu3q1KpLvjPpbMkYFIf9P7Mj3R4/FmLlkfEUbDrEBaScdp5m4Nqa/EtpyyINxyQXfWJY/9BUn3nZzuvgzUpqHPvgZLX9WTTGUJDy020LLRcN1AZ+G5TlMfPRK2+gG/5dlhVrgofeYDUcmNV91XaRgCq5YaanQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GwSfncPl; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5532a2f234dso7562e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 18:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749690938; x=1750295738; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MytdYQLPTBH+sqpGAkv07c7VyYUNYJf1+SknQylnEzo=;
        b=GwSfncPllO4TAQ5uNloUvjMaA3mS2eg8DKsjxYl058P5/p6Im6ZIOtBGo9qCLJIINZ
         /3lT+zApHwg+O36n8d/YDvCWUE2eIZ0VktH52OOHGcxmmasUsRzRLvj4xpzNAeitZzgz
         jEnIH68sb7cvID4bvEodXljSCKumGbhIQLViQLDYXaywVGPzRzLPEEjvStcqSLMcGYnT
         OYHx9WW2DdsmFQkSV+DedYpqtJ6+eMbHUw+24HP30PR+m7eef2gsAVnElIPhlu4HA8Ey
         obus20cBLOVKd6uf/1oOa+vjivHYXJemiAgKBKjqMTOz5QgiZbgmYK6cnzUPfjwVyYTR
         y96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749690938; x=1750295738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MytdYQLPTBH+sqpGAkv07c7VyYUNYJf1+SknQylnEzo=;
        b=qbVJ7o8fz2IbNu9ok9+7h6Xybd6MVnm430qcSLQPLC3LexZ6BWBjARrkUdpHWZz+qO
         uvCQRPuPSch9ntcxGqIzO/6YYZEZXzOfIHD6hMx6KtBpfdjY04vEjp82ME7TxlhKGFEB
         uY/g+b0cJ8mM1uyjMhH7OXTtdo9h/RJgH+SJrhAxCxT7q5Z1qY+e18fTGjan0Ltt2LLo
         lGwsoBkV9VAII/6BnSZxd2WMyIoodtn1Xbvv+Zum9eh3xGl5fIg30XZ2em/iRKlDxpt3
         nImK07kfaND9k1fMtK5zlge7aULH7kmBTFOmkmYyYnIoqd3NDX09mPZbuewqrM1yTkHf
         ku2A==
X-Forwarded-Encrypted: i=1; AJvYcCVV3WqG9HI5EQOnTuJo6QNgIuDqCcYHLg2qSMvfTkUEpH6xrMv3fSgwP05o7ZAABw3L3Ln6a1vxUhFB@vger.kernel.org
X-Gm-Message-State: AOJu0YyZaxau0n22PNakqaJcs4Aqf6VQQMKBZYmnX9y9nV1i3x5tT2aG
	Xy1KUPcvFaHTWIvJW5oNNSw62KmuGxyWnzO+mlFv/sfn0bFDQcMNx8BUI4KQEKWhieM=
X-Gm-Gg: ASbGncs6++Y4MVa8xfTG0ruV1eVVQqDpPcA4K1fVJ5iehXUIkLeYIzIHo/BMr696Mkm
	W/6Z5VbewrOHkilndnPw/IS0lMAd3fqREwQ1XtVzzOQARMRgO98aFoP+b2sfyXOLBaGzQsgRzpX
	gWWXyAaGfJ87VJwskaZlyQUsuoQ2xH9czTHLxbSIkP0rpuiEPYYwFSObZtYwzEYBJpM9uWuQoYK
	nShyVQ2C9nD2Jm5qH/lFSVYFm3a7P0wDu3X2M7lyhF7jjaSAar44e8kwZkTI5ilsOkKlCrNwQ9q
	ecZ0Qi4fz/n5dnQHlVugHPJtKCET2zr9JmxjplUungjhnU029pOTMABLb9vpObgyw7Xg+OhQnio
	8YA518scY3E4DIY/hJZzwhqYAv3UQT+VIOT6tXCrCjr6VkD09EIk=
X-Google-Smtp-Source: AGHT+IHoUp0rBCvyGGy7XmIPKelgT4UaUs9romhC0d9m5fZfQ3Q0Ot+dNcpGlYOwVncG8cNIP4xyaQ==
X-Received: by 2002:a05:6512:68f:b0:553:1fee:4aaa with SMTP id 2adb3069b0e04-5539c247d66mr533854e87.16.1749690938552;
        Wed, 11 Jun 2025 18:15:38 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553a7018069sm62808e87.157.2025.06.11.18.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 18:15:37 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 01/10] media: qcom: camss: remove never used camss_vfe_get()/camss_vfe_put()
Date: Thu, 12 Jun 2025 04:15:22 +0300
Message-ID: <20250612011531.2923701-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Two intended to be helpers camss_vfe_get()/camss_vfe_put() got their
declarations in commit b1e6eef535df ("media: qcom: camss: Decouple VFE
from CSID"), but the correspondent functions haven't beed even added.

Remove the unused declarations.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 1d0f83e4a2c9..99831846ebb5 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -160,8 +160,6 @@ s64 camss_get_link_freq(struct media_entity *entity, unsigned int bpp,
 int camss_get_pixel_clock(struct media_entity *entity, u64 *pixel_clock);
 int camss_pm_domain_on(struct camss *camss, int id);
 void camss_pm_domain_off(struct camss *camss, int id);
-int camss_vfe_get(struct camss *camss, int id);
-void camss_vfe_put(struct camss *camss, int id);
 void camss_delete(struct camss *camss);
 void camss_buf_done(struct camss *camss, int hw_id, int port_id);
 void camss_reg_update(struct camss *camss, int hw_id,
-- 
2.49.0


