Return-Path: <devicetree+bounces-152191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BAA48481
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23DED189598A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C27526D5D9;
	Thu, 27 Feb 2025 16:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OqchTtQS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D3526D5AB
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672277; cv=none; b=G2vsvgtmtgyShz//hBhgwWnEfF/75f6yjHjzAZv3BsN3n8vG+ogqKG8/9BTq7pJRD52BPjPJi18/nfM34QwshZJ2wRSYeeRtPoh3XYoF2F36CMPkImEFUnQ1zgTBd5D5aDF3kaU96m4gooDAI+Z1UaOKWtoqp06g6FJHUKJlznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672277; c=relaxed/simple;
	bh=avp5U2ArcxVFxLs1woTW98jIWChVR3WUm7VeH/MWMhg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HnrfJEDSk35Ls8Lod1akcvv+fSuNmj4SFzbTBxG7lkhWc781BWeVkEJYqZyQ7NfMthThA5NnW8rAz9jQoylxk0jIKSUhbH30o0BI+E7CbkCIYp8mAemKGFZk/3zdjGaJjwH+5L0zbWAfN5tWjlIWonwIUFte51VECiXYw2Kopa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OqchTtQS; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43995b907cfso7617785e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740672273; x=1741277073; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+LpVcR+tgBc8Za0a/AHb+X7CyJqNO2eqvlf4iMe7ONs=;
        b=OqchTtQSP7Z0igSzK4XYl0k2CqBLm4xe6PqsD17AJ89PLCGp+/q7PuaGOwwk+v6ZPi
         tIsEQBwAU9WbAOZaE22RsZxVkEMw7hkNKAvTjbS7DWQyD5JdZZScarn7e/cMGj0t1B1G
         dSJudeRhPNf7e/FbW80Oll7dZvHzXu5MX81RDUKMnjEQaZtal5SB7G3Km0q7R9Of1occ
         jqwvjlJRHdbzjc7LlbI2SdJYvXaHjjgob4f6ZfSUxad5uyGFZzdE+C3SVNLZzTmmngFq
         ZneK8YlQiWOErpZghdwXfZ2xjZQy8JnXigNQEtBXdJcH6Rw5cm2mlpdPVkyIfTBHPOe6
         feng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740672273; x=1741277073;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+LpVcR+tgBc8Za0a/AHb+X7CyJqNO2eqvlf4iMe7ONs=;
        b=XKMocibVDKJ9STsDjLTDRBJE5RmLfwTh0gBNj4wdII3X+V4gksKXTcsojmSm/ctnQ7
         j6+Rq/8oivHiMdexOyFShW6N5KPRtWi6AmOPBcIGvPxo6zNXDmo+NQvtYNTLxtUD7llq
         yFgN/jvL8VM63a4KYPd48FTZsRMeEVdz4cTeYHQQBjWEpK6iDgjmkwkfqyR3o+EYGS8f
         YxssHHjBTAXvecSAhYsKeo+hU3N+qhWqe4tlLEZmmZVgyRgt03qhcMsLjorVEaEdEBLA
         SVzIP5NUNlkVSsc+Cr37WdNI7o0f8M2bnkTGQYmw2L+FRhmnj+uPYuPGZATnt6InmFaR
         P29g==
X-Forwarded-Encrypted: i=1; AJvYcCX7il06leA43l5JdoCxyCycnCW6ZFR5wP78KIAofv/4MJwgfpq93nNamcK1YnkTxS2bjxk9W29L9drj@vger.kernel.org
X-Gm-Message-State: AOJu0YyiKK2pErtE+VTlLpYhB7ijmKp9tk2+vzdj4JBAhwWJf2lUq2SM
	br4zMs4VpadXSIEvV1hdqCGpW2SvZl8AYKYAr1P/u+6gYy5vFEx4hxKGO/L/sXM=
X-Gm-Gg: ASbGncuY3YrxGNhJols4iBbTewXefc8SsaSV59zUneLJ+Zrw4SKFjtWa/2Gh2zN0U/f
	7xfvKSbMRwjUvFGWWlZxQ2Si0zBfASvS3U8tsfj53YqKraf7CdkC3ZKiQ0x+vDH9IX95uxk2VLa
	jtC+UavAr+udmokgh9gL4nmk0wRvdMOLP2STmSxFeg73JBu+yEY8FIffvv/PwRHQfIsy6gAVTL9
	yaKuTmF3YegbiNqTalPDivaXwLvAM7K/FhAyu3W0fI1UtQSTuYE0HHDHSUUwErtRCCkVCcngv0i
	TILemgV1ZbHsNNwvMFjLNnTbvAZtLFXBAiQtveO9R9sPfnM=
X-Google-Smtp-Source: AGHT+IFw1iZ8PHqDP50lbvHr/QN+q8AeRJQLFUhigT++dJwaFcXnDe88Uju6JnhPV1oUTANomVeNFQ==
X-Received: by 2002:a05:600c:1ca7:b0:439:9898:f18c with SMTP id 5b1f17b1804b1-43ab0f72a40mr91982225e9.26.1740672271515;
        Thu, 27 Feb 2025 08:04:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba5393e5sm58811225e9.20.2025.02.27.08.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 08:04:31 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/3] arm64: dts: qcom: sm8650: switch to 4 interrupt
 cells to add PPI partitions for PMUs
Date: Thu, 27 Feb 2025 17:04:27 +0100
Message-Id: <20250227-topic-sm8650-pmu-ppi-partition-v3-0-0f6feeefe50f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAuNwGcC/43NTQ7CIBAF4KsY1o7hJy2tK+9hXECh7SS2EECia
 Xp3aVe60uWbzPveQqINaCM5HxYSbMaIbi5BHA+kG9U8WEBTMuGUV5RTCcl57CBOTV1R8NMDvEf
 wKiRMpQrMtqZvdCOlUaQgPtgen/vA9VbyiDG58Nr3Mtuuf9OZAQVjhFZMamGtutxxVsGdXBjIZ
 mf+4fHfHi+ebgWltSofQn5567q+AbEiOecdAQAA
X-Change-ID: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=avp5U2ArcxVFxLs1woTW98jIWChVR3WUm7VeH/MWMhg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwI0NA5W/VcDmKSxOz9vnKm/SSP9tv8R1FwL4IZZJ
 HLp3aaeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8CNDQAKCRB33NvayMhJ0QPiD/
 0cvnPMwbuPi5yEHrPD5jTZRteEMOu2YmxkdU9RWbWBGI/f3AKnL+GErxiYvD0GWWjxOJS7EuNIW/7P
 60m+Ghbjgy4RvNGLsqTL+v1oD82V3740SdQoXYNzeiDASpgnJASU09slk9T6hEJsB0g6bjI0wXUIAd
 gi+dGEfhsZSY5ieHKbP+8DcPzS09W5A566y4wmCz65aWMGEoUs+/HNci9TW3VCJHoEsrhDGenIMBKx
 b0uAt88ra0fNeujNYMM1bvLnGhHLTjd+v6uzlCKAKo0Yp7un7VeXqLkuLLtAi2peLqdZ6KOUB4sWjQ
 vgyWhOkf6tnpunCOBCDseQSSsVJDnM8Ru77iS9r6KlM3z44BlEO+y80s0CJ3CxQYb+y5dqRy193PmX
 gwsMka3WYeQkRQoYMf/NjfpcCqLuJRf/poVqKn5FJNjslKvlxMsD81l1gPwiIKqXcWiyAhFFHbQsJd
 cKPc5vRPot5fmHVuoe1RlDGoh0shx7qijOULwc8lRRktNWI96/j6OhSSu/c7qOLTIhtG6/Swl5CAXc
 pNw22ULeV3pCUA/AlwRNjbW8EP54yfdQrrtU6xSYczbzJq9bt/gHUoiXI2Bx8jqnQzDjgzVfdRpYPG
 VBkFm8gHpDb4FBKPWvOiWdFUVH32GGJ4DQUnwjUWTtVfNTIf369Chq3wgTRw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Swich to 4 interrupt cells on the GIC node to allow us passing
the proper PPI interrupt partitions for the ARM PMUs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Add a patch changing the interrupt polarity, thx for dmitry
- Link to v2: https://lore.kernel.org/r/20250227-topic-sm8650-pmu-ppi-partition-v2-0-b93006a65037@linaro.org

Changes in v2:
- Added Konrad's reviews
- Rebased on linux-next
- Link to v1: https://lore.kernel.org/r/20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8650: fix PMU interrupt flag
      arm64: dts: qcom: sm8650: switch to interrupt-cells 4 to add PPI partitions
      arm64: dts: qcom: sm8650: add PPI interrupt partitions for the ARM PMUs

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 556 ++++++++++++++++++-----------------
 1 file changed, 285 insertions(+), 271 deletions(-)
---
base-commit: 0e2a500eff87c710f3947926e274fd83d0cabb02
change-id: 20250207-topic-sm8650-pmu-ppi-partition-1e9df8b877da

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


