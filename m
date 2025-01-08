Return-Path: <devicetree+bounces-136627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E632A05AE5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF6FD3A260E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD5F1F8EEC;
	Wed,  8 Jan 2025 12:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xrED4+/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF6A1F5404
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337748; cv=none; b=mXuQF6FITX9xm+BsSbc6UUrwv0tvJlZEX0obtMjidhubq9iIiDnC9iZVjvMqngVvh3EF7tG+nOEH08l9GtLzYJHmD8DLJxQh9Ywf+OfFhZTVqYhobtIipGxtJogIGIOtOc5m7rNX7z1/MCIGGrPOkzXofcchPMls2rKvwMv2GFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337748; c=relaxed/simple;
	bh=piZ8Qx7Zly2LRu7vla4X/tFQmM9QLWzUUZoYM5vZihY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cf8t8i1QTuxrVVlSMi9ZnEMphM/R1SvYKJ7LYe3N8zmv3SiQXRhW54C5t3k0mWAjRAyOFiirQD9npSI5wSwItDCpETy/VU+d9399O7rf6qDOXVhwn2ylqHPPurUQfDUW0P2q/IcC9ak+3y2ffRIwXP4SRWLL1It8qHN1S8/GaT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xrED4+/S; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa6647a7556so305969266b.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 04:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736337745; x=1736942545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fPL5OtvPOd0OiAnfy72yXUM/L5nYTRUqyQwYMjGIY3I=;
        b=xrED4+/SZ1gSIU20P+rL3SIfg5TBM9Xb1B8dE1HPEZDia+Bgw86PJAIh99RN8CsPiT
         hFDEXCEPBkXFurZeyx55BfXvQpBwHTOh+TXSAKMFNPNCTRGHHovUjcgFRql7DsOO5sd6
         9w/d+u6ypDsG2CawUScmt+EWdaM8+5aYO47taPvPphBthO+tPxljI0wnQ8k4j6oNgvuH
         46GjhnWnRB3lf+3ub37KoD7YIywhe8+Hl2ATs5DYUHjTQK8JveF36bIgvMBZEc9D3shd
         7rOBK2a6zCP8hRHCTCzHXX3JumuRHpB3kSGBPJiSHS1NnWnzQSLU2pdfmWbtZ4RcUh+1
         S/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736337745; x=1736942545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPL5OtvPOd0OiAnfy72yXUM/L5nYTRUqyQwYMjGIY3I=;
        b=vpFHznsMGjA5V4NIzVZJufFdLSfq+t0NXWqcA69PF/kEihThgcUXARcHS9WOiaF7DZ
         DdiZSoqlPBJv1rReEirAoYSsGO6xDEXZEtIiOHdlwHTm5unUyLkgYEz3cpZX/UAUInkF
         kbWgk4O+4t0+7TGDpVMaDOJSH4IGGiTjdDbDpaXaRH2tL4RXHltXOmz5JXC2i98500pO
         jDG7LyeuFu8wtNcD0ggAdlf3gPpZzjGKUrImZjKEH0cSR9pTzKVofed3QX7X/7Hdexft
         TN7TOrPU9IUhDyBChfDqg1i6bsbIX9Nb9JOFKjcwp7EEqGGzA5yUl47Slkq6+7gNzu1V
         Xxcw==
X-Forwarded-Encrypted: i=1; AJvYcCUi8IfElQxi6QrNvKrWMFt6YMTYpG9Ad+oQjHLc7sSxSbCNEoDGhtBrh5Sf2ErbdMHwuNAAmwPNjLnE@vger.kernel.org
X-Gm-Message-State: AOJu0YxQa1ZkMJ4j6ddlBSDzozIt5I5C7xyXYGt3UGHUtLkwyb6omBNg
	cGZNVhOaB9+Zy9K0GdEaK4UzHNthk2nh1TNDDmVyhqG+eOXseUW9UHt9z5thPUk=
X-Gm-Gg: ASbGnct2d8vDDuF2FnAsVYClLIcOVQNr/+5E5lXiBOutcTPs4rwV/pIcckGg2rM5kfK
	hChIsMDl6HQu7rkE4FAKJwx2w/tJAdMRvsygYegm72iyigEcFhd7GhbcQfGWNoDVKZUM+jvn+fl
	eL/CAdDMsQcKxnRCxLHapRmzCLIdiF1wWzYUOo0dmfe+q3Dg7ct+wfSKhjJVTie0kbpV8KAaDZN
	Vuk7FKIaxrRzf+QU0Qf9z9OgTq1LWXuk4DPSFXmsWG6qkXCOyFij/25AtsnP6XwfEiBx9U=
X-Google-Smtp-Source: AGHT+IG14SO4FyYH5nxT6SXtwZsRRGbviya4C+apjniEiW8sCLRoGXllxv2memRQQkt69l6yOVo/tA==
X-Received: by 2002:a17:907:2ce5:b0:aa6:6e2e:b7f with SMTP id a640c23a62f3a-ab2aaaa1b60mr80725166b.0.1736337744865;
        Wed, 08 Jan 2025 04:02:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f828sm2482031666b.19.2025.01.08.04.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 04:02:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: remoteproc: qcom,sm6115-pas: Use recommended MBN firmware format in DTS example
Date: Wed,  8 Jan 2025 13:02:21 +0100
Message-ID: <20250108120221.156131-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
instead of split MDT.  No functional changes, just correct the DTS
example so people will not rely on unaccepted files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
index 059cb87b4d6c..eeb6a8aafeb9 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
@@ -127,7 +127,7 @@ examples:
         clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>;
         clock-names = "xo";
 
-        firmware-name = "qcom/sm6115/adsp.mdt";
+        firmware-name = "qcom/sm6115/adsp.mbn";
 
         interrupts-extended = <&intc GIC_SPI 282 IRQ_TYPE_EDGE_RISING>,
                               <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
-- 
2.43.0


