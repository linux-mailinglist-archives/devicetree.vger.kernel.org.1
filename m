Return-Path: <devicetree+bounces-49613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF52877162
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 14:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCE0B1F215FC
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 13:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52AA33BBF0;
	Sat,  9 Mar 2024 13:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AX6Edpw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBAE3BBD4
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709991102; cv=none; b=g0CddPhey1Yn4iiLUAo7dvpnA+8DIm3qzo3FSP9zt5L0bDTK70qKBXY21df743ARRLcYAjjdScJ7lGwwebc6aP2B7RO0hSQIMtv2eTNr8Lqa9QYMny4gyQ1o22fnF9rsVUIIcWbRINvyJs8y/RYHlo+lVh1W6wCUSo3fO86dj4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709991102; c=relaxed/simple;
	bh=3PPGy1YGHaSdumT4F8l8zt/zKWZM90Ind2PI+taBgZw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dQEp9lzAcW0jbVviDO0L/zwQtkRBZYNxYm1CiTlnFARGajdjIQtRevcxHVc75iXGIWu8CyUhoT+Yg5DQiduwAiIqSlt+Ajzmi4ASrIquTRlVadQRBv/ArfcY+H2pOHHGItE5Tc0ZpmbeCJ7RrmIoaZKQISzWusGe09A9UeWQ0KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AX6Edpw5; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d41d1bedc9so20329061fa.3
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 05:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709991099; x=1710595899; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cKCIWQzokuJrHNFcpWWWhUjMkEYBjpikwqy95obUdnA=;
        b=AX6Edpw50p8hCL+FGZfk1HS0xFK9qvOxiC0hZSk2q+3MDkHf2zjpmSJYDwiG1NyKI6
         x1207OcYkq7Ho8vshL2FuMlTxZIjFbiG0J8s6x6FpqYSyXdIbPCqF0kIP89tBgcDeKpr
         BS1kiVs1rnGia2zT2G8t+yGCI6dhcGgiVtbnBDKHSMdyZsBr9rwqq463X27VCr/QCTHG
         FgFQHOl20FRk8A5e762mOdIcY7juDf7h10ihhCA7Sh+MHs4a4yKCEYf93nlfjcycS+c9
         ya+wsV4P9WEn5LtQ01sL/6ofemQ198u+Z5yIh3NDHw1SPMiOnx8kFZW9EQT+jaV4rX2M
         mB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709991099; x=1710595899;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKCIWQzokuJrHNFcpWWWhUjMkEYBjpikwqy95obUdnA=;
        b=AQIaTF3LF3be0zy80vBP0HoIltF8mCFIdDF4q1XAcn9sd5HRQSrBVxIhAG/QbF9l4E
         YAC6pio/eihbRjedhwSK0bDExExsOEgx9wClIHENB13fTsJkUUSrsYX2K23ZRyKv9f3E
         75AO2N2XVVSYHcYN6HB7EyPP0x/8ayyt4/JHj22qaTL1zTT2uBJrzKJy8oy8KEmrkyYJ
         KP7brorSafhF//3/fpPcJPl1DH65lDAqNYuaQnQD5zwkMo144K/WutZ0NvS8AdYNMz1z
         ZvFjQaiIG0HkI2DMTY57RLMvt/g/MsKCOR+883z5ARkr42ZJ0YNYty2M2lHJLTowOi+d
         SNIg==
X-Forwarded-Encrypted: i=1; AJvYcCX+JGBzZiKe5EJ8EDa3xRBdgs+k4nfyj9hDfcLQa2qotFGsnQNd5QUE3B8n3iK4VLYbfEeWPg3pEZcZzE01xcsen6noWhR8led0+Q==
X-Gm-Message-State: AOJu0YzjA6mSlbo3wiwGEnNQ9JM3sO7XjTgva15gSijEAHlO6YjJvNGh
	sZ/eCTMMxGzQbg8pYWMaRixlzzlC0X6gDA18vNSvHA1HAPVycNiIpESjNRQagv4=
X-Google-Smtp-Source: AGHT+IEzC7Rp20E6bhvNP3S3wyi1hQB7gbrbf/iWVD1sKJ4sYtswRuJi1mSZprYsBF0BW6EFy4eQUw==
X-Received: by 2002:a2e:928c:0:b0:2d2:7813:6ca3 with SMTP id d12-20020a2e928c000000b002d278136ca3mr1139418ljh.9.1709991098793;
        Sat, 09 Mar 2024 05:31:38 -0800 (PST)
Received: from [10.167.154.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id t27-20020a2e8e7b000000b002d08f3640b5sm298524ljk.11.2024.03.09.05.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 05:31:38 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/2] Describe SC8280XP PCIe SMMU
Date: Sat, 09 Mar 2024 14:31:08 +0100
Message-Id: <20231219-topic-8280_smmuv3-v2-0-c67bd3226687@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJxk7GUC/32NQQqDMBAAvyJ7bopJSNWe+o8iJYmrLmgiiYYW8
 e9NfUCPMzDMDhEDYYR7sUPARJG8yyAuBdhRuwEZdZlBlEJywRu2+oUsq0VdvuI8b0kyxbu6apT
 uK7SQO6MjMhO0s2Mu3TZNWS4Be3qfo2ebeaS4+vA5v4n/7L9F4owz7NFIYcRNKfOYyOngrz4M0
 B7H8QVcNBu5yAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709991097; l=804;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3PPGy1YGHaSdumT4F8l8zt/zKWZM90Ind2PI+taBgZw=;
 b=GGkbYbxDkQuoMPokNfWOq17o4bOTMTzIETydZjsZu78FIhnI/OCk7sXZeWxNZGzsEzWoMMsY7
 UeGZUINREJLB/csm2Vbx8FNPeWzwgBaaNKZYrU9UdxYYENvkFK0Mw4y
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Explicitly call the thing the PCIe SMMU, rewrite the commit msg
- Add 8280-specific bindings
- Link to v1: https://lore.kernel.org/r/20231219-topic-8280_smmuv3-v1-1-efeb32b2655b@linaro.org

---
Konrad Dybcio (2):
      dt-bindings: iommu: arm,smmu-v3: Add SC8280XP compatible
      arm64: dts: qcom: sc8280xp: Describe the PCIe SMMUv3

 Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml |  6 +++++-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi                   | 16 ++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
---
base-commit: 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
change-id: 20231219-topic-8280_smmuv3-51d8795af7ec

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


