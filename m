Return-Path: <devicetree+bounces-95429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8CC95979C
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52E58282380
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930641C1ADF;
	Wed, 21 Aug 2024 08:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PbLA4wAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3DA199FD8
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 08:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724229563; cv=none; b=AqSEMGklw8oNOUGOKJ46+XVSNLgFxBASygaz8Tlf0YfXsTnHLKqsL+EzILE7R7xtpyscgnFgFChQkPIFLRe3t+dNTOuB7+MaYtVzmcjuKDydwpHml5GBevH09J2QofUtv7RbBu/1pi28P/pVeC0et4lQEBpt7FbcPwff8OXDvgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724229563; c=relaxed/simple;
	bh=0hjm0dG0v8Da7V655fPK+1NlV7mcfIrkrKbGwkw3CAw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f0wPvHgQaeKLBRH9u+8mxJPL2iqbXHHXVAsmma1bLEmblN7N+TjN2TfXkwb2Qos7cdaBusn2Nl0hFaL6W/aMLLP30vS8L/H6ZQF1Xn8fsVkuGMw4Z0ASlnbzeHk1VCtqw4O6JmxEOkasXLGR6ImkFCI3nZBtXNcQXDPKVWsNx1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PbLA4wAX; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f3eabcd293so21857421fa.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 01:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724229560; x=1724834360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XW5mUnNxro8riCIyxaHkbcC2c1AimCjEWCDq55C4owo=;
        b=PbLA4wAX/H+1R+dTybgr+ZIcWGOMM8byeKRaxDQtF/TvOUKnp+6QGvUsK+D3xmcqxO
         TqNWZpo6lNKhK7zjIZrR2d/EnK94fe0t3B06JzpiNN2RufItbEQxuG+O6kZFUlml43Qf
         NEa94BhWX9p0AJDxA0s8uGHpmvf0dcix/EjCAac6ibmJ4UcaoG6HGmntTaiRlXfo/Hr4
         i8hbtvyChVkVbdWfTShV8ZEB6py3f2zz/EQxFoC75SLITfOHtTUzuQYf927YRvUaqKQy
         E/JtOjK1usEppPqAv+ttTNo1mGvN2mWqpKCM6m7j3SWMiitcH1O4kyWLSV2dSD3GkCZA
         qPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724229560; x=1724834360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XW5mUnNxro8riCIyxaHkbcC2c1AimCjEWCDq55C4owo=;
        b=hwuQsPjDAmRa7jLf8Xf2ypQ8wvOJfYMPIpRYWGQtaIPZE8EFMbl22+y4Iu4vMWXu9A
         PeiPMt/ieL1ICg/x4e3Nj7WR9aUWCijdtv5eCU8W9O5ZfE4W2Qq0TgtZbUDDBTaDQGCf
         pmtVyo1j7FjEkFPrMCyYenUkCtTXPu3AkSyuryr1SlAaSdwTQ11MqzPRTJ0WJkdj7SlQ
         0G+I6WYVHmNPb8e3stbYtwZ0qYlFIAw4VwldqBXygBKyQbePBPMkhXQPltK+PVs4qDfd
         O6+iM+Ellx52jf02Z/eaFKWKExWAOgUd/9WqE3pZNdopottqlDv0Jtoh+0j5fMS9xFrS
         RMzA==
X-Forwarded-Encrypted: i=1; AJvYcCXtrG8uiQQ+GicPJAtT7aWFqTGjJKZYSKjPVqZqLL6MCKh14u6p3jzhqMWfEIKpdELATSiP2pP+Gvne@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4GMK22+WaiTVVkQ8ueFJudZbTKUXnCP5xV4L1uXVKMLOMzM9l
	GfGtZCwd0yL4cX6jBmryJEFZ0c2KyRqydWl3CaUL4+6Va4JzKWi5OeX64yy9KyI=
X-Google-Smtp-Source: AGHT+IERO+IDQyEBp/hErnAumhznnmvnA3dFgXMO7vZvWt4uQGrSdNVPCWdcTB6bCEgyLm2lNmDM0w==
X-Received: by 2002:a05:651c:b12:b0:2ef:26f2:d3e2 with SMTP id 38308e7fff4ca-2f3fd22519bmr3157451fa.2.1724229559656;
        Wed, 21 Aug 2024 01:39:19 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc0817a8sm7785019a12.84.2024.08.21.01.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 01:39:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Aug 2024 11:39:00 +0300
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240821-x1e80100-phy-add-gen4x4-v2-1-c34db42230e9@linaro.org>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1471; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=0hjm0dG0v8Da7V655fPK+1NlV7mcfIrkrKbGwkw3CAw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmxaeyZXFTjg8Mcst9z+XweZ39L4hKqTRTHYjv4
 hZfQCe4LEiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsWnsgAKCRAbX0TJAJUV
 VlauEAC0aywWt3dkE/aKcT3+0s01lx7RDGRvwXYEkB4sc1i1pN2MW7fxw8dBtY95ed05z/SLakb
 P5dyowNz+CtjoOUmZX4ZuNrDOCuS50RkTkDk8GiKJHF+CT7jCDCaR209SZQXVRXEcbxC0DH9zle
 MC+nENCbfJ4DV3WItRt6V0bxjcYA8qRWa1wrwNQ7xIl/gsrhvRj3b3obYgDp5enIE/3KR3JQ2jN
 KkGOjPxbyG9AhiusOE963s2QY264GHHLARqqVt++TtPl8uQ1bHbG5dK/OzD4faM+o8w3uuqVu86
 bYGRoLSKBYNq0bFqjf+E2iX8dOfaJIyUtHfQiLoM5XtRt+5xK/6T/U1zjyJQqQR1a/XTbP2Ng0v
 S/iYy6hUeAlec82mTabzRpohNsXlP8LJQFvQu2C/IE/Jhfyz76v/VDkWLeG/WTNwW89AP4KTbXB
 lscfEHhXaXkq1g46LSy5bZhQb8d14Hp24IOuNO4XIPteTzU9o9pzmPIYZ3ImsLtT0cXcoG3e+Ns
 7+rWRru2+eNyz2geJ7uvt+D01XL64IsHCvZCqead/tORbwTrk8jGV0D9jzAcaTd9DpYO2l59lDQ
 LCCHF+Fq8sqE791eHbZ1VMnXbpgwGJ1lNtDv7XO0In4RusHsxoPC3+K/unlBEbIFu95M0iZ2Dtx
 JP5ywwt53W20AKQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
2-lane mode. Document the 4-lane mode as a separate compatible.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 03dbd02cf9e7..dcf4fa55fbba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8650-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1
@@ -118,6 +119,7 @@ allOf:
           contains:
             enum:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         reg:
@@ -169,6 +171,7 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:

-- 
2.34.1


