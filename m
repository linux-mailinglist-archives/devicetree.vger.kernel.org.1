Return-Path: <devicetree+bounces-143940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 788FFA2C492
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D65F6188E97B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C191F78E0;
	Fri,  7 Feb 2025 14:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sfIF97fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF3D1F4183
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738936952; cv=none; b=dUeWhC9uWXt4HOLWDk1dmG7zxdFvE/tkQSI2ymsaOuuV3fu/g9ki4yV/kDrZZUEHrW3RYQFk83K2QrsX3TgmS6blRr1uFzC9z1vKmKGDJ8rT8+eJ8FNxLvBDp1H0XTLhrnQ+81xwwRMiIUqT35rYGa13pp/O1dJ1igAq4VPcHzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738936952; c=relaxed/simple;
	bh=yHmpriYTThEulo6xT9RHvGEqSO7uKIIyE1xA3fKVsy8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pLzJa6c08VOd1UweK/r42+q99s473P9R0FnKf28yocuNcSBKb8tlXb/B7UMNqM6jaUMitijZCxSUu7ZoSLikI6HNOsybIwvk8dSCIgOxkg5JLIapJ4prvFlNun3EZXUUVLckecRJyLWLXayUTZeA+R+WS58SW1PSqZZ82QH/LuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sfIF97fu; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so14090595e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738936948; x=1739541748; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=InbuS/CYzZdN7pnMEKIr+CtCUcWjZ9PfYIqG/HLZbPg=;
        b=sfIF97funTTsAERadwedtBVGEWq9WiFv6rITE9NciJsMv5gHRfvXVUs0jBfyl6ShNu
         DRy4E+uFm/zyXA/NnlGw6ZIHH0GwJyaUsEMV4rXC1GCT/YYwQzTteyJXOrSy+zeqCna0
         ZZi6Hslz3rR161INIzNnw8WWfoVjKpun7timZBFXEeFDTnXzb7Jy+72TmwVY7iCJnYpP
         uEhOAZeykfp7s2NPGrSj0GBGBAspVff5HRAwfI/QDxG9w+icQ/TTsU3I/VrBCMuirzVu
         2w9ko4PSf5gMR42XbANTFkIHvoNgKSSBqI68L04+pAG8WrExwuB0y0vyRX1p2C920K6b
         m1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738936948; x=1739541748;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=InbuS/CYzZdN7pnMEKIr+CtCUcWjZ9PfYIqG/HLZbPg=;
        b=LdYeVDu7lthSo9QDNbH55wTDp73shhlGK1zLPQ9E81zzt0/2Qf3IZpEuwMIPzUEesE
         B+A3Ufg7y6zGe64fhDANX/vXHMaeypMMUt5k23Az0mVfWiynjler+Z3DQ1kt1IDAAnJN
         +AGKLjVlvWwrl8EzYdukhrL97OKdamUSm5PhH+DB2fRR1FEEOvBpOqKZayEA5Tprl4zJ
         96K3NBOXvpi0zSTmrcQ9pOa9xX4xajHCVPOlpxoQoJ9Rr/SqcrcF9YvD2PVBx2W20eBn
         40lDMnKQJCgg0ix4YMio0QcM8IGd8bHfyz/84T1HgHCVrnUiZCW7M8s51+YBPmfiBx9r
         XLtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVy0Eu449Q2dbmIFiSa0SsSGwfkPOgAyGTbAlYqcQkq4Lqr4USz1Y2KiDxk0g9HouN/o4aBOjUm1vN0@vger.kernel.org
X-Gm-Message-State: AOJu0YwguYPQzuJdFHvHbZcXB0Us5lBHDiTrSf7NcTHCmbYFeQX19mAU
	ZtwLsfSw0hCSC87+vYZr+4Bs/NQkEbMDEV2XXYA/nHCMk8zcsKjrPslsZrYgaWg=
X-Gm-Gg: ASbGncvi4WDEqhswK0uTEYq8libgJFhQulZW12Aemg+h6Ikvnh382h6YrHYMKhrXOMY
	67dh9f+5PKylERn48Ta0DyR07dNc//2rv+hVLwZkgyM6C81Yny8M5V27DBvBZbObw7Qs2FjnxNC
	E5SWp5mvf5eoq6/XtGBFkg6pHbrY0j9S7iUTi9CuOOsdtPR0WEjL9+U2pFJwOzOTM9DOyjCd43A
	ryCz4dT48HLM0zRR1z4HVanDyOFMiEcZg1nqvheNdZ2asl6uKoyAgwOQRI31OVMcj6uPArRhps0
	1TRimqdK+SvPTMG2BEMpGCnvbYFMs0uyNMND
X-Google-Smtp-Source: AGHT+IGixxfp2vVnu0wNY2WrQxScXmsEJRpI+NlNtNPSw4o2xKrKS7GRX+gjA8je7436JMFa8YwqLg==
X-Received: by 2002:a05:600c:35cb:b0:436:a3a3:a70c with SMTP id 5b1f17b1804b1-439249b2cfbmr26167995e9.28.1738936948229;
        Fri, 07 Feb 2025 06:02:28 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da9652bsm57384605e9.2.2025.02.07.06.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 06:02:27 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] dt-bindings: display: qcom,sm8[56]50-mdss: only
 document the mdp0-mem interconnect path
Date: Fri, 07 Feb 2025 15:02:24 +0100
Message-Id: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v2-0-f712b8df6020@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHASpmcC/52NQQ6CMBAAv0J6dk2pFtCT/zAcoF1gE92SbkMwh
 L9beYLHmcPMpgQjoah7samICwkFzmBOhXJTxyMC+czKaGO10TWkMJMDeTer1fD2IkCcMLrAjC5
 BT+yJR4GBVvD+VtvBmIvXVuXiHDHr4/ZsM08kKcTPMV/Kn/3vs5SgobGmL33VIV6rx4u4i+Ec4
 qjafd+/kOYojOcAAAA=
X-Change-ID: 20250207-topic-sm8x50-mdss-interconnect-bindings-fix-dd975f223d05
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1360;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yHmpriYTThEulo6xT9RHvGEqSO7uKIIyE1xA3fKVsy8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnphJx9MTyEErowqwBRaSGtJfWWc4eXnA12SCLXliH
 XBvP4GqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6YScQAKCRB33NvayMhJ0SWjD/
 9nJtrSWVCNZt7y5dqdR0Pp4pdlGN62cvsLbDQWSdEqiWdpIB7X+az0j03zA9PESyf5A8z7+CuAaZ+l
 tppmpfNoYnIGrvZsNphVxY7Zdah458L/B+ICXhMilgSpXwF/KoDHeGjYBa4lOFCEUQyyDID9WNqXCh
 +W+YHPwCitfohGL6SyIK2JwxYWzCFSxryjK+dR4BHgl+lpR2mji2iYV0z4hvH/AuuqPnvo2xwKn5cB
 4Mh0+osbG8BOoefF9Tb1wCfDjq8SCd0lArr1xruGwVuu0W0teHygXaXl0Xq5MRCoWVjNFAe/spvwEX
 dyWPE3Y0mEvROqrDVLvY1FGbqgDBeqwZS4etuoCpifaJXanako4XLpQRXpXJ35iUBceeYyzjJDy1K0
 Fy7y+lY5B8aS4YTyDeC6BEPyr43i3MWKnI9V08Oh06oJXsMbb+cGo05GIzJ1dIl0X+tbhgEwvk0JXK
 z1uPTbq1ExxCD3DQ/uWYo+OUWgKsiVCBVRmb0yKt7qECvNnyh62qysBjdxj7I5bfB6Bfa9ghfxX7Cl
 n+keYwI1rafwusC0WCtHYvRTpKCAZgKWR0Eb/yYFgKA7S+UW+UWDcBL+KfEa9Gg1H0nB1RH5sYSlnE
 wYimISrkGJEwa/A0ZUlwQvv2CkJFFPlYTi/L2Jk+EmwGfeXyGlB930r6HpVg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 & SM8650 SoCs, so only support a single
mdp0-mem interconnect entry.

This fixes the following errors:
display-subsystem@ae00000: interconnects: [[200, 3, 7, 32, 1, 7]] is too short
        from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#
display-subsystem@ae00000: interconnect-names: ['mdp0-mem'] is too short
        from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- fixed example in qcom,sm8550-mdss.yaml
- Link to v1: https://lore.kernel.org/r/20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org

---
Neil Armstrong (2):
      dt-bindings: display: qcom,sm8550-mdss: only document the mdp0-mem interconnect path
      dt-bindings: display: qcom,sm8650-mdss: only document the mdp0-mem interconnect path

 .../devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml        | 9 ++++-----
 .../devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml        | 4 ++--
 2 files changed, 6 insertions(+), 7 deletions(-)
---
base-commit: 808eb958781e4ebb6e9c0962af2e856767e20f45
change-id: 20250207-topic-sm8x50-mdss-interconnect-bindings-fix-dd975f223d05

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


