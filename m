Return-Path: <devicetree+bounces-92712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F66894E1DC
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 17:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F1581F214C1
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 15:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B973914B075;
	Sun, 11 Aug 2024 15:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T0oQ0+vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A9C1CA85
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 15:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723390486; cv=none; b=os85uRmmUvfSmk53j5JeTdnHCI1VFsLqhUkvcnYig6WMsOe9GP7TDL4AEy6UWpQNu0kArLhgF+Qz3r3uR5BJh9GSJ3EV5bSmhKN0HgX7umVTwFHX+XoJ8KqkttxLzyBOhaEOPM7VD6pOaxBCQGPGT0eQAOr7gztkz/7fFLJ0PdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723390486; c=relaxed/simple;
	bh=/1IErUjrGRfgokTB7myjq49LMHtkALojTPhMnZQ10TQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kRGQLWXnk5bF0iipmvjRU7Y9j2HyD1V4RjTH6t9sj8QcBTYZnPhu3gALqHC4IVSZ5KVk6bM+LPsuDWhjHjJwqPOBzl79nl+ePqVvibLmW+fJPQFzUqT454F0UB6wWxZCwOkRFmqZL9d6rzZ8vMwlw3GWo7PASP+z7qvFR58kULc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T0oQ0+vg; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ef7fef3ccfso36831101fa.3
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 08:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723390483; x=1723995283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l0DtWhSlXUfATpzkMixs1eIp2TMyzpsmPgL1CzoYoK0=;
        b=T0oQ0+vgEu4RDxzMMs5HH65Syi9wLRfSF2qHeCgTKNI5uH+wHTMklgxGYWAGAcTmvG
         XGJSdZ85nQU9B17WGv7PS44hEIpN4LXR7Lf8F5GkGebm/tHRkhcleFraf1JO8uleIBQs
         0dku3RE3OAneKtiNYnPG4EYMR6XVh91PmkJOr1XOpu9xYjwSiSshMvF+mYtlZGiDzz1L
         BSFzvWa4ZOiuEfetybXT8/CZC/1TWTbT+tdiMQtnQ5ERod++yRmZPVbTn0qffOV+xbAW
         xmRqus4QPc8vOwQRBwpE/7sia2Qk2Cyoh7UAHJ9riPRHQ8lNzYe5/RehlwAkJuMIASd4
         6CQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723390483; x=1723995283;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0DtWhSlXUfATpzkMixs1eIp2TMyzpsmPgL1CzoYoK0=;
        b=BVK4BxIX1KmpWAGb/3OvHYKVCNnnimwt+Q9NZUcyRpL5Jeix819cMYvGxkTwh9x5Au
         3T4tiXpqfMNn/HLWxN9zY0XbdJyClGAvPI0eEJe5Bsh23FOwA41dMGR+vTpFRm5bqERY
         XHP56+otejfAxOUKp06iAMIi1TG8HeTrcwY4vzm22b7+OQ00gUZZXG/iejahUdaWQV48
         WlCOUAiCtVL2Kwi2zl9avLQmSAXt6t2I+ORDzhrPHnFYvWfWVscB4C531WoxwFZmhZ81
         m8oVBhTBhaeU/IE5i1e2neCe22rJ/y+a/535mGeKM+fIMFhAzKJiKL7/Lwwrl79exYUG
         l/Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUxoQyDS7e66ns3vw6c4MkzC3h2LLlsps2wtZJDrru3aBhthoIy08AE52R+lU//ym+9WzJO6RP55zWATg6QlJHuOY7BIQM6pQRpFg==
X-Gm-Message-State: AOJu0YyWDuQQ1LrTVog8SsyObF/lsTSVU326ic8NT9V4WFatddgadBo3
	qGfjsOV3dPX2HIJEyjbhlZyvTCMEqoHwAz5owGBbnvy/uDoVTBbvnaO+rgb00zXPFrTgikLrS+p
	4
X-Google-Smtp-Source: AGHT+IEjtCXJrQfWFLvuJhoOjMVUW23DEOgZIPInR/kK2N8EKDLphE9zK1Mzzh0T+oYV0DVRW3R/ug==
X-Received: by 2002:a2e:b88b:0:b0:2ef:2c27:6680 with SMTP id 38308e7fff4ca-2f1a6ce8d4amr44289641fa.12.1723390482614;
        Sun, 11 Aug 2024 08:34:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c9ca1067sm43615145e9.1.2024.08.11.08.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 08:34:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Ben Levinsky <ben.levinsky@amd.com>,
	Tanmay Shah <tanmay.shah@amd.com>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: remoteproc: xlnx,zynqmp-r5fss: add missing "additionalProperties" on child nodes
Date: Sun, 11 Aug 2024 17:34:38 +0200
Message-ID: <20240811153438.126457-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All nodes need an explicit additionalProperties or unevaluatedProperties
unless a $ref has one that's false.  Add missing additionalProperties
to fix dt_binding_check warning:

  xlnx,zynqmp-r5fss.yaml: ^r(.*)@[0-9a-f]+$: Missing additionalProperties/unevaluatedProperties constraint

Fixes: 9e1b2a0757d0 ("dt-bindings: remoteproc: Add Tightly Coupled Memory (TCM) bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml b/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
index 6f13da11f593..ee63c03949c9 100644
--- a/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
@@ -62,6 +62,7 @@ properties:
 patternProperties:
   "^r(.*)@[0-9a-f]+$":
     type: object
+    additionalProperties: false
     description: |
       The RPU is located in the Low Power Domain of the Processor Subsystem.
       Each processor includes separate L1 instruction and data caches and
-- 
2.43.0


