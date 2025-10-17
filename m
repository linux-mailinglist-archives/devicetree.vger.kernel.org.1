Return-Path: <devicetree+bounces-227966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 707C1BE6592
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 06:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51C7B4E2E81
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 04:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD1930C378;
	Fri, 17 Oct 2025 04:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rP4RCeeo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F773090C7
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 04:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760677166; cv=none; b=Qs/o7wjqshj5d6m1tXh2TXBp92O9NqpqVNFvhDZUO+bbLhLu3cUuVGoUJ8CE3tnl0laGGwnWWoXfKkPB/q8yQlv7G7VWQ97p8G9KpqUQYaJ6856VkYKOx1YITPsd2u90XcerIF47o+WsFF2dODydVfoYermFvk47XFIMJabtUCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760677166; c=relaxed/simple;
	bh=zIxLGjbus2Nm+UNtns2PpMFy6y32gwr6ft1KacyPH6E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pPGXLcFRUqHeLIYLyi+D4ohS5YQCdwuImDv8sGQkzVFJW3phws5Oj38jogCWskW4hiG951ROp0YmnpkcpEFS7gNig7QYp4iBeG+f62eWUHn/7/Wy6VLI6NUPxBGeC41zChbvbZlMf5fnSScfWXZG2Jk+m7peo3L4nvucLlshhdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rP4RCeeo; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3df81b1486so23461566b.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 21:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760677163; x=1761281963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FUnCnObHtvExaoAwWKhjWqhVzitq0j5khgwEsaU6beU=;
        b=rP4RCeeom2ius2iULpO90/E5ogtzTW1BJ8jE0yXoFGeY2KuILwHq+OlhOzNxZBOEkr
         24Gz16uTxnCkWqV5WZpNk3ZY4rJQXMlNid4OlYpmCerYy1rDdHOwO66pDgarKu1QU5Ss
         loI1WscHCA4iZF5hEGkd/PieBcwPEN8rH9T2PCn8n3qMqazlOlHiVjWlbDQY8tYJdSe3
         GrTb8MtpLoOWSrOuIWwXAgzlIA05TAByftes2Lpji9rS+71WJNpR3wOdQOhdnrTmq0Z2
         MHwoJ8LxF85EffyEg65gnHcqaGdRzml1yLBuKvj5CCI4MYdD/2z8PXg3Dhat9dMBtIEu
         RnHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760677163; x=1761281963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FUnCnObHtvExaoAwWKhjWqhVzitq0j5khgwEsaU6beU=;
        b=kKKkwLApIXBCChar9B5CSXDlf9ZYnn+B+sAR8Dc0aBVbcNymdAZcWSM+wEok6P2piS
         dfOoQ9Hc/mg0lawLDKspDrhM8PYnuPKNrGJbW/cMuqN+VOnjgBCpnfOWccpvZoYvZ8Au
         lp/4DFoZVBCRgFPq6hT9XYiof2Sy77r1H1heCy+vYIgXA5Anbmxc9GhZ5pfF5fc3hxcF
         EBDXERBR2k2EXw//tZIlHjAPFdiuwmcMY5n7qBZIXmQwpuMfQhp8CErpMGCousW5cVzu
         tGMccZenXWg91bLgvscuE8dP5wJpGuQL9uLZMz93WDj0TC61ElfWlVmz5OUPvtn9xx3a
         tWMg==
X-Forwarded-Encrypted: i=1; AJvYcCXQqwrNeKP4xCWHn2Fq95YhGQya3yBQRO2PZ6tKIepnpWL2UoU62wxUK7fWg1VMS/p/41YeWHBnPgxE@vger.kernel.org
X-Gm-Message-State: AOJu0YxQRdwreiKXQn9aapBf1/6hAsv1XD9hUp+AkAVI31Ijfmb/un1T
	drHUBG33XKpbdDPTL2Lhkp09sfmlCxB9CmYpJ8hvnFqBX7H3UCT5kNfgAv/n4Kr+i6I=
X-Gm-Gg: ASbGncu/k9zvN2FmZaTXdlj6FyOr3GhqnUU9rd+EFu+iBlyBy2Y1y8nqGbMcjK6vDoZ
	wUBb+cC1WwWUlA2xbFf43V7jQPGjcfpJUKu3WMjk/lU6/D79pCN/HevwB7zAw6inwjMdWO219Do
	8awenTpqZ92XZICQSlpC/+8tgzqhxPt3TAYqkonZB+h+rdV1syxTI/oLWx//aZR9O+VqSxNdL35
	CgsfHDt/iN648BOB2BJeb6nqJc5j3H7m6lu6/RV2mqfig7q24KoTdBBzMYp44P37Wk1VSZjiVNY
	ZgLAWMPuEtmnT4+THY5hSolbgmnbQwQhgX6UGFTAXgwPSh8e1WGWAQcfSRVaHGimfR7MhJGT3qQ
	jeZpxM+R8kbrP0/Jb+Qb3dPGM7nPGj6VA2RvMA6UPhXFMjA88NtJNcd384ga73pYpx0d9GfekZG
	ZDo5ZuXaC+3SU=
X-Google-Smtp-Source: AGHT+IFYxqz0Ttcz8UykimpyIaiCfE30akXHB7FNTj96qec06NuAlaW4UjbM/IwFrLs2OKOR1FkUpw==
X-Received: by 2002:a17:907:7f21:b0:b42:1324:797b with SMTP id a640c23a62f3a-b6474834edemr124163266b.9.1760677162690;
        Thu, 16 Oct 2025 21:59:22 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb965c599sm718858666b.11.2025.10.16.21.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 21:59:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict resets per each device
Date: Fri, 17 Oct 2025 06:59:20 +0200
Message-ID: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings should be complete, thus complete the constraints for the
resets by adding missing compatibles for devices with two resets and
"else:" clause narrowing them for all other devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd..9f5f9af6f6cd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -215,15 +215,23 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:
           minItems: 2
         reset-names:
           minItems: 2
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
 
   - if:
       properties:
-- 
2.48.1


