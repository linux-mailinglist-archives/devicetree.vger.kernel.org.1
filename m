Return-Path: <devicetree+bounces-52870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A4688A495
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 723622E3D94
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E041C131F;
	Mon, 25 Mar 2024 11:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtYcQwPL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3418318C9CC
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711363721; cv=none; b=n5osP/UM6vkw/HgJFkzYrgAZT7eJEVyssxDEG7GMlKVlz8JfuCqn73j4eW5VsairjnSLdQvRi8zsA+QTFNP0Uf6s/8f9vL7vcO2dFrAohdEEy8s0ItfoFiO07DpGN1oPejYYgW0D5DvyBJg7loCg+1FjEmTE5A8m7zy49x6iGEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711363721; c=relaxed/simple;
	bh=tla5/GdjKrTPP+kJAYRZ8KGODm6wDmTDoyN5IPNwwlg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OqZ702+k8nFwOVfoPlGWmjP85mCBSz9jcxo+n2qKUa5M1p/1mCRYuLapf9on4M62wWN87GylWILuxaUbzyWDKSXnVhVU2uW0bzLf3ay2UHXcBxQ4g7r9BC+V3jpSceWd3qXEatUuN4wdtzixkdeBgIeZALUNUobshew5J7yMFSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtYcQwPL; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513d3746950so5133658e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711363717; x=1711968517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GdyAlHz63fHy0CpLlEnn3btu6ypzjd0jIMH561mJYbY=;
        b=JtYcQwPLu/QShMcY128A/xlyxrRh9nALSE1NocBrHjhQXOHkBpuOeqXqlnnLfVqs5/
         9gDogpn7E/z4YLfKgfBP2unYjELm4o/NZEh+/a469isJ7HNN4lD7pqhD2sD/iTC0k7bM
         GMFBhvgWAy0wNCFBz/pM4Z9UA5cnl8Fc0njyMnEpMkEDDJrbUDlz/eZO1+5V65kNlpsY
         wQlbOO6cKzmEM2hp1nJv+Wd7uYpKm6FzdRPT6D8CNysJj3NE9c0l/Cv915FB+9AS9F8p
         YMMJBaLGOH7gq6Rtsi5kX2Spmcun6z/LUNJawAs6KGmFzIUyjzn7gcC6yiRkVQ2SRQCq
         QseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711363717; x=1711968517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GdyAlHz63fHy0CpLlEnn3btu6ypzjd0jIMH561mJYbY=;
        b=sQxBT6S8eZOoJsFcYBMkkN0yLD0LGR9MrPpHGJJcXAV3Lz/S6t0jgYo1CylZ5JBOqF
         P3secBvBEVbs3FthUFr8YjGSxff6Mrb+32GtdWqWE+hPdMjG0dJ9kVYKXTZVm7Lixhlo
         YpRpQjJGLb31KZsleDow1QOZLYaL3z6BPIafWrJZ7l0XU9NOeqVorlv6Fq6/Z/Nt0jGz
         T15tw20NLEKWZo76JqZie7RM8ylc3FvcXcL82NClQfj4Gw0T+pnGj9ZEI9FFYnc/wBQY
         AmM7gYGr9OpqiPHJhu6OIN3G5leANoygZ3a7pn2wLYqeIFLhBtLigrhFerngCYUprGsW
         KM6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDLwExytr1ypvzabEH6d7VhH8RbQsW9o/QiflCejn1E8pWqdKGLwmMy1OKESEUTK92M1cutQFZErnP9Be8oAS2OSnDpjz7NbfN0w==
X-Gm-Message-State: AOJu0YzUqBrmn3R2D9K80iCpGFxv5zC/nNSeDxBC41KxBOg6rITMk7qu
	ddBsjn2/56aZ7/14/IxSWVJ3i4slUtQKuyErd/TaGvA24ojjNvvXRyxbsBu6+K0=
X-Google-Smtp-Source: AGHT+IEtwhIbYV6Dwdb3Hs6WgP/TgyCYhQ1U7xeEJW156UNlPksk5MnUlGzwXG2IL7SeXUvQg/yLUQ==
X-Received: by 2002:a19:8c56:0:b0:513:c9ea:67 with SMTP id i22-20020a198c56000000b00513c9ea0067mr4160794lfj.24.1711363717293;
        Mon, 25 Mar 2024 03:48:37 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id df15-20020a05640230af00b00568d6a20717sm2859339edb.52.2024.03.25.03.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:48:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: soc: fsl: narrow regex for unit address to hex numbers
Date: Mon, 25 Mar 2024 11:48:32 +0100
Message-Id: <20240325104833.33372-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Regular expression used to match the unit address part should not allow
non-hex numbers.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

v2: No changes
---
 .../devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml        | 2 +-
 .../devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
index 397f75909b20..ce1a6505eb51 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
@@ -51,7 +51,7 @@ properties:
   ranges: true
 
 patternProperties:
-  "^clock-controller@[0-9a-z]+$":
+  "^clock-controller@[0-9a-f]+$":
     $ref: /schemas/clock/fsl,flexspi-clock.yaml#
 
 required:
diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
index 8d088b5fe823..a6a511b00a12 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-scfg.yaml
@@ -41,7 +41,7 @@ properties:
   ranges: true
 
 patternProperties:
-  "^interrupt-controller@[a-z0-9]+$":
+  "^interrupt-controller@[a-f0-9]+$":
     $ref: /schemas/interrupt-controller/fsl,ls-extirq.yaml#
 
 required:
-- 
2.34.1


