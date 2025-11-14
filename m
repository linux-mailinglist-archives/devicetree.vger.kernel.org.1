Return-Path: <devicetree+bounces-238659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B25CDC5CFBF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D8C4535AE63
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53744318142;
	Fri, 14 Nov 2025 12:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTqe/4yM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED0C316194
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121641; cv=none; b=GuPWuWLQPgd0cW5yGpmzja7uMb7R8sGCUxt8EahXiPJ8AeiIOJX855dVplOFs+rsM/oDIrcLmS/JI8TyHCyLRTmTtHPcoEmWgGwLhvGcUJkLIY3vIYijiZIcnLU0m9u7cpbB285PcLKl/si6w9gtExTokqXlyzLLhJr0Lh7OBqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121641; c=relaxed/simple;
	bh=61olMKxaKsnKoXwZ6EUyBzqRnKHfTUWzltdyLqRoYlo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q/n3if0qj3ywkRRn0vqBSjd63sxo38tjqzQYdzmWGD8+YGSpDk1bflq3HIlqb+kcc+lDFjaS3LXfB2efKpES078ux+GXL0uJhvoEO5URHEMUOXLQJiYgXrjHsAW+xI98ZLhTU478Gii0mZvyfonGXvIpGuy9tYyejS1etCxw/EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yTqe/4yM; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3720e58eso1728486f8f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763121637; x=1763726437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oeGMZbH/yuJRS9B5j3gudhE5eHF+WzcKbi9Poy6lx1E=;
        b=yTqe/4yMcFwFbktNEtf7VchpJ9oN+6fPo0MJeo8fID1+rjSxh1MYGsomBcIkf1nFtA
         YV9UcPX+d6rdm4AjbMPX+5qo5laJ4hQAZsdFEZ58anHWalmnOjy/fLSfgGoXZcNw26oM
         MWs/YFU1yJtfcB9GJxwUpk76qJt6UPOBpc0UXOBjg46gBxsHG1fU0yXlPeKvOZByNt0w
         ZqQtYUyums0b14WcaKF9TH4PHDS+OhZG1yY1x39M8EI8RllH/lANPYU+YmcP5chgk+1G
         YIKlvp+4ZuuPXH9LarkKoe796eA6h64uzXdhx+iaCIWtHZZIaXk/OMJ3yyGNvFJbeYEa
         bWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763121637; x=1763726437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oeGMZbH/yuJRS9B5j3gudhE5eHF+WzcKbi9Poy6lx1E=;
        b=aLS7uBQ7Xil2oBG2CapJOCv933HNbYJv3+prvSVmwIg6oWHHEAElL68QA8WgpYfKZm
         bCi//RF4S5FQxraj3WJFPafmk2nuYZi15bmbxEYgyL4pmmYl0/Jdq22WrbgQT/CeEIQk
         4K0zB1+vkivLk08jb/oXTZEs8cuInF69vwses6OS0QDCsyYurPl6OwtgahRMyW4sJxtT
         /bcSRaku+F/tk2bP813TeIeaJGns9hCRbY2/wTpuzkqtPRmFyW10P2sIMCXsxCGa9ZKc
         BScw0TJ+jMov0VTzUSBKmDzetGPKU/2vTUMzX2LfocW8lTNPjmi2g0/Sa5ikqXOZ638y
         KYVg==
X-Forwarded-Encrypted: i=1; AJvYcCU/1hJKf+Zs+Q8bf8mjf4R7328+hKg16o3C8MgY+GS6aSCCNqByYH6XMaqgKR6sVAoE1Dn0WMXn5mGF@vger.kernel.org
X-Gm-Message-State: AOJu0YxyeQ0o+G9zYCfa4d//iSRwxwYfdmdX34Oclel9AWiAcM+tzvPD
	XkFcBuLE4bc3pKGa+6xBCPEV/OYYkCAyTwMb4ysdTV5cAU4VkAf5+Sn6MOCv4Pbd+F8=
X-Gm-Gg: ASbGncsy1rb9uTJQyWWCIQP2g78hdD+qDMWVdrswYaytw2cMdq/d5Gh2rKEjwGzZX0w
	dmeDcqMBaPnK8NJBh8Xj0rE21jrNoLPjJScWknvVRnsFd0CfxehIktXPzVAEfeR4xibtFx+Yg2X
	uGTtd7nqPOiMUGoe//Q+qZvJ9YnOLpXlhuC6sG77Z0JWHOdeR7i6opP1Sv0bRZ12dRUhBhePyZf
	NejDtTqvIsqI0dZtSrS9j/LLj/mEPk9vx6m0YbAcgUA0pTim1/XKm3b8J2snPF5fGP4JI8rf9NZ
	ESQekqtkwGPC6qSPp0jKqCUSU0eLUEPDZDyKb65ARwJAFzBLbyr3HTg2LQdSoUsPY/GVx4Dg4sS
	RGTu9EkWTOB/Yy7FJUHzRwUwivL8IgRsU3ed4I6EnxLS8zCWc5v7+yIG1lMVCQLYpjOiewP+aaX
	t4jCZRjzBbwKjiMPTwwGDBREvNgzPW7loOqYIAPdUL
X-Google-Smtp-Source: AGHT+IEztOiRpEt8WUe38io4Rq4V3TPo5iuLJqFfsDHDoi0i3ebJPfWcuKcGzYpn53XxYHF5bQAiog==
X-Received: by 2002:a05:6000:228a:b0:42b:36f4:cd24 with SMTP id ffacd0b85a97d-42b593495bemr2671290f8f.24.1763121636785;
        Fri, 14 Nov 2025 04:00:36 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.83])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae5bsm9487578f8f.8.2025.11.14.04.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:00:36 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 14 Nov 2025 12:00:16 +0000
Subject: [PATCH v2 1/2] dt-bindings: soc: samsung: exynos-pmu: remove
 syscon for google,gs101-pmu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-remove-pmu-syscon-compat-v2-1-9496e8c496c7@linaro.org>
References: <20251114-remove-pmu-syscon-compat-v2-0-9496e8c496c7@linaro.org>
In-Reply-To: <20251114-remove-pmu-syscon-compat-v2-0-9496e8c496c7@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, willmcvicker@google.com, dan.carpenter@linaro.org, 
 arnd@arndb.de, robh@kernel.org, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=61olMKxaKsnKoXwZ6EUyBzqRnKHfTUWzltdyLqRoYlo=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFxnhY18qA9fN+bzswZTOhmCb/8dkhaKP8HNV5
 YnhjB6HhWGJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRcZ4QAKCRDO6LjWAjRy
 uhhkD/9CwFscXzPW9AOUDeBbnI8PcjSa9eHy2Jmuw48KyfYzI6SU7GywBCzpYaQ530W4jqpt/Xn
 g/dqQdPVleWELDvJ31V1Koj2lataLeuj3zVVca4r1uB2kOgJCIvdnwPE77PQGfSO/1FqCU4HG6e
 A0vWvduDTyu851SEHjWyqaAMYLY1T40wXbaWstxBFqJDniAUVNfJqRESLUpnl150DL7BQUMJhJe
 VAtXeUxaCNSPvCCCIlpa8OKNEYxnnwrSpcB2EsBldf9r1rJXAZ5ZbsKOnP7qWMq9YcUHN4xCx8M
 +PSqHvfwwdInx8fdMed1mS4DIs9ZsCp7jEBFrkJgF4dkatTMhPrr/gQzgavwViyJmAGS+gu4eOD
 fG5kdlRbUqVP+OJ+X2Nf6aLdx0L4yo0zqD13Vph112sZQzaLEWE2RFcHWxzf3yFKI9/UKrQ3SCR
 orNcLtPeP1Vc4feiCVIb5tUy5UEk/UmZTIvU9Jc3/EmpRpjDwngFvrEGEpj4C7qLra5g8UmnHrB
 +w+RQmfDjfnEx0Jt5Vhb5+loXod+0lCp/GsFsK9niXMOd2qy+ygAeGHnq2pCUl2viVPNPPkOyGk
 /SVRGs9OGsCrN4RBHe4Fi6hRuTzQ2ONTtW3fSs+tkRfAp3DSgUKfYoixZwVP+o81/KtYoSlEAia
 aK1EeK8P/19JmfA==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Since commit ba5095ebbc7a ("mfd: syscon: Allow syscon nodes without a
"syscon" compatible") it is possible to register a regmap without the
syscon compatible in the node.

Update the bindings for google,gs101-pmu so that the syscon compatible is
no longer required. As it isn't really correct to claim we are compatible
with syscon (as a mmio regmap created by syscon will not work on gs101).

Additionally (with the benefit of hindsight) PMU register writes were never
working with a MMIO syscon on gs101, so the ABI break is justified.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2:
 - Update commit description (Krzysztof)
 - Change Items to enum, remove const (Krzysztof)
 - Checkpatch warning commit msg length (Krzysztof)
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index be1441193feeea1c12d0d5370168e9316c8dcf76..84821c38d28d0be6d44fca06bfd63bffc12a8656 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -34,9 +34,10 @@ select:
 properties:
   compatible:
     oneOf:
+      - enum:
+          - google,gs101-pmu
       - items:
           - enum:
-              - google,gs101-pmu
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
               - samsung,exynos4212-pmu

-- 
2.52.0.rc1.455.g30608eb744-goog


