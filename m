Return-Path: <devicetree+bounces-50250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D996087A79D
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957DA285727
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507D94205B;
	Wed, 13 Mar 2024 12:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HuPL7V28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10AC40860
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710333049; cv=none; b=gk+9tn0/5zBFPYpYdE44hg20PTme2YyqQT4v9SqHm1i62k9dpxOdFnWkDngn5p3uJgRDW+GqEMjZ6yje1lvo6JrvO/SLGWAWhEiiPmu/s5fY+b70wCgoyAUU+C/HCTBVNFr7GX1oT296ZQZH5+5hFhACbo4dF0aW0sav48Zhhhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710333049; c=relaxed/simple;
	bh=ZAE+Yktw40BN4peAT1IoL6Hojxedr4pT0iCyAxCaaG8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RMBkLoRUV4+BTuFFcXwGD1//8EzmdqZkM0bWt7We505Tvq8Pl9IFtlR2rfLih2Mo1ADmxdKmdCl7MJ9leLaPuOh6sOobuPC3nYxDVtwRWvPrYgTkfVsJGktu9iGX0Wc7WoLxQ2edCTSfcmpP5YXRa01EfK8+sEZS2Q511qCvQhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HuPL7V28; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6e6b6e000a4so528831b3a.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 05:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710333047; x=1710937847; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AomqpqdqnNJFFIX2Vi3Rj/WxWBB11Z7CxIS8lwHzLds=;
        b=HuPL7V289mVV9p8AXTEUQCRLnpvcFop62s3G9iUCHLp9xmf/+/qSyItd7F5gN4ZXqX
         RaXz7SJCqTP1Kq7K265iO60tq9maN8qLIgmomAK9mC17LlCiLf4SoF4yVjL/9Ksd+dir
         R712K8Spjq/NvDt+sinj/hm9haiv92yFc8bZ7uArClcMPx4yBZA1SkSsQ5WGpTaHNmFq
         oQvGh++cMbHkAc98ozmiOLWhZOxl9DtNvZuiMFu7z509ILsIM+DvQR7U6qCyNmIQy8hv
         UfkB9Y5DlO0H0q8Uik7xY23/HzDH5i8G49ZLqPnLTdDyA3rJOK1j22YPKHsSpyylsipx
         ySfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710333047; x=1710937847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AomqpqdqnNJFFIX2Vi3Rj/WxWBB11Z7CxIS8lwHzLds=;
        b=m+TJlXIlbGux+VtRBnrCZfU8Y6a9HU2ZofU1yHNfRJsASRqSCVwdY3JBgMgKS5tYcQ
         lIM7NGiolcBSfzvLf8MpBLAsjKXEWPlw8FPi8a6J2ERPCtNObPjp1zUPDnl6IeQ/2ste
         rqd0ioDq4qVjDAHNwQ5qhC8APhRsuE5VLcD87KrsKvlGUjl+uZwLEhxJ8ApQLYNFMAWR
         +iwYhGh76uY3479k0hzCX1jt76r5K3x9+0x1Qu6WmTXDPap0sVR3Mjl9MRXqPNbPrUpR
         1nj7uiA7TzA+99DVO/gu5OWHQ9rJs07cNcL2Lt/KXKdIHATaIjWbl3d6un4A7PFp5ISP
         XnvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRHIsHyZpWnHlFnUrOvH6nHVfTzZm4B0AuuffAKrcWjW54X/RGdb77TsbV6HoUvWvq+Fjobe+8dHnzDFfmOFHjmJzYUrclV4kncg==
X-Gm-Message-State: AOJu0YxJwz7Q4hTY4jtBYGzz91aoxza1y5+tfgk9TNeEo7Ldlo6RHLcp
	1xVZCw+1MjIRu5RzsoHcNzoirYApFm2RFOuSCJEsss+nfIuUjtJbOmfuy8TCBlM=
X-Google-Smtp-Source: AGHT+IGWZhRmzmU0VFv7aV0OtvCCtFKX3l1UXFqb5z1fccxgBQaXfPwjjPbHkfoEcVCacXXIf2Uf4w==
X-Received: by 2002:a05:6a21:182:b0:1a1:8bd6:af65 with SMTP id le2-20020a056a21018200b001a18bd6af65mr3568045pzb.20.1710333047250;
        Wed, 13 Mar 2024 05:30:47 -0700 (PDT)
Received: from sumit-X1.. ([223.178.211.36])
        by smtp.gmail.com with ESMTPSA id z17-20020aa79911000000b006e6150a5392sm7797307pff.155.2024.03.13.05.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 05:30:46 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
Date: Wed, 13 Mar 2024 18:00:16 +0530
Message-Id: <20240313123017.362570-3-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313123017.362570-1-sumit.garg@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible for the Schneider Electric HMIBSC IIoT edge box
core board based on the Qualcomm APQ8016E SoC.

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


