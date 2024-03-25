Return-Path: <devicetree+bounces-52868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BD488A475
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D2C2C5FAF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C591E1BDB97;
	Mon, 25 Mar 2024 11:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CehMgnEi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78BD14D29D
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711363223; cv=none; b=HDq6X6wna3sb6uoNxThX6oRDeoduiVc9Y4lUjrjXXFj+lXVUGDfrnXgjtQPPmjb3whgUsuVe4SBjlHOTnKCaq9r7ZtbKfQHOHErnhOPnuhYMfyCVq4EeOvx5qc/gqgph+B55HOkf8DdW9mJugUmbWCEK9Ju983Nrmnj1BA+DM8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711363223; c=relaxed/simple;
	bh=JpQ7CBs4TNzQj81lAcXgPlGQHMAvTZfg1UGMvx358SM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QBt0ZFD0nP6hSbYPRswLjvxDNJ7RAlgEtmk70Wo7cgimmkxTlzIcjhQgdFPmMqEOEgx4BGw+XWud9nV13TyS/ZTZ+r9Hj6lV6bjBAU7IQGfi4azCgYpaU6uwT6D/kmw3ghFZM3mYZ1G1E65txPm+TCmBVUttkiXNxJpYXb5zWkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CehMgnEi; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a46dd7b4bcbso510016166b.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711363218; x=1711968018; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh27uHBDlOwJXD9zu1d03ZYCWsYvKaRsKsqhKIOkSNE=;
        b=CehMgnEizOZ3bJbr8W4ZwxP5muyAHHXqGPKCXTDZO6XJZqmLrnxz4nf4jfiqCmrtG2
         S5/Tx5ToqTuFXemM2fycRPmF5Xi3PwK353RRyCGq2+fKw9grIBwbMDLqWttW5hmG2Aq6
         aLeZAxO0Ot4a7TMfX0SomZvAeSOqWMoG4vthIclkGHX95r6OljKY9Fk6SrcOz7Om0g/1
         ZdE9Mn/5uQlu4z/1lAUmRMU3NQ+ymaXui1zPzE2UgzzsuD+tJzs05roThnzb9sjFYt7j
         lhCp6WyJDsvSJveqxNO8O2sVaq+E2bdNobvqjPI3LQZQCtz42YEDLrj32yv0QSrgh3th
         PS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711363218; x=1711968018;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bh27uHBDlOwJXD9zu1d03ZYCWsYvKaRsKsqhKIOkSNE=;
        b=oG+ve/QveUg8cYoV+AteaPblvWFBZPFEfEb6RUvW+8lSoXyr6JbG/J7xCNjQ7ocNGU
         YPgeFC17SQ6rUJIiU9eRADrGC4hCNLRc5z9O65zNg5LzZpJ5R4ejj3YtiHD8lXO3OnX4
         uG7Re2zo5jC1vvdLzsBs6pdv6cdWXSZt/+K84yXole/OLAMQTTKd398uQbvheRIb0Vgr
         FMWWMX8k52s57idHwWPw4cBlEgHO6W59ttzmKaGCE797dPpuQ0ETCKDVT1x/kLKAtW61
         DDGHlR7ELBnvKlxr1755Dtn/Y7P8U3LCRFpE0pnxyiBdh2ukKb+CxjZwLUOPC2/SYNMN
         mRJA==
X-Forwarded-Encrypted: i=1; AJvYcCUX0LZTrAmzRNFy6QCRJUM/NlKp6MOfq/x6nYSAs0PlvebNwQs1Q4/v6lnMJsrOsHJId5rdgOCgxzZVusIbnUSvo906bFwgxxr99Q==
X-Gm-Message-State: AOJu0Yz6kC76nPnsRvAr91EvBJqv2SN1lk+heqVTk/pjCALxN93A3X2n
	m1O8btgn/1eSF4SPMuBZ/f4dwnAZ9Dgi89B+0FcCFk5dyZzbR0+VhW6TSSNnX5s=
X-Google-Smtp-Source: AGHT+IHTfa+BKIpTQB0urlFntgkIyWScFG7sgDJ+xvspP10kWtTwtUdJT3QIhx7lCX5OkkNOym7N0g==
X-Received: by 2002:a17:906:230d:b0:a46:6ba1:4c8c with SMTP id l13-20020a170906230d00b00a466ba14c8cmr4028033eja.44.1711363218095;
        Mon, 25 Mar 2024 03:40:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id q2-20020a1709060e4200b00a4674ad8ab9sm2876653eji.211.2024.03.25.03.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:40:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Tao Zhang <quic_taozha@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND 1/2] dt-bindings: arm: qcom,coresight-tpda: drop redundant type from ports
Date: Mon, 25 Mar 2024 11:40:06 +0100
Message-Id: <20240325104007.30723-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"in-ports" and "out-ports" are defined by graph schema, so defining its
type is redundant.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

No changes, but patches were split from previous set. First patch in
previouis series was being discussed, so let's just make these accepted.

v1: https://lore.kernel.org/all/20231206115332.22712-1-krzysztof.kozlowski@linaro.org/
---
 Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
index ea3c5db6b52d..7fbd855a66a0 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
@@ -66,13 +66,11 @@ properties:
       - const: apb_pclk
 
   in-ports:
-    type: object
     description: |
       Input connections from TPDM to TPDA
     $ref: /schemas/graph.yaml#/properties/ports
 
   out-ports:
-    type: object
     description: |
       Output connections from the TPDA to legacy CoreSight trace bus.
     $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1


