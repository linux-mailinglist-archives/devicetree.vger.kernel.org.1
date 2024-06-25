Return-Path: <devicetree+bounces-79834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1379691702E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 20:28:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94A581F22620
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB84A17A906;
	Tue, 25 Jun 2024 18:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SyyhZV3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F6717837A
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 18:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719340097; cv=none; b=frgNghiMmNlgZOueKvhCEhwH95sfbBt5R4moxD6Kbul2WBvMKmjSwbRVxCuF+axYIY3i0NhgK8P1Z1sWtnOXv62pqLKPMnqdVUvSYX7r3Ehf6Al11SxTMBBTv9XVbyn+LRuWyJKkmRgOHFHD4jOZEV43IG5+zhaXsMgxAxfxTd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719340097; c=relaxed/simple;
	bh=q0yzDllR7onfBxBeyrsV8zllafTESKitM/Jyq0s9Emo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TqzJYzF5uugpqb3uCpqrOzPLKzdHY8lk7oPLzQ0YLY8lYNzRfU1DLacUa6gJs9hUsnWyN6ZnqvTOACHJMpazsiPkVC56fv5kMzHoX725Xyt0H8t/Y7pyEIVUbXG201BMR9+2MtYVpZxJ0NaOHaJnDvvWGJbzS/qzfHc4C/ljQnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SyyhZV3q; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57cbc66a0a6so795414a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 11:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719340094; x=1719944894; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bfK5oQFXpCisBGUPV0qRGTBcMOIBNALBqfecObZ2uqg=;
        b=SyyhZV3qIJMpZSgYX2JzCy7aPvaXcTrCEDctLZL+mcoGOCD3RckI3x6gkn+xbb838s
         Rg1bmvQOwGR78HwJcN/r61xdu7iwKphp3SVErVq3dLbXLHtVvM+uO2TZAZU76oVUA4am
         +WzW2U4uucHQe2agrKY0KAkwsQUkdod9u9whZVGWeXhHRonDNuw1JxHIDqqnZjr7mWvv
         VlTwpArQUi7oylaoJoWf9nEVQfVj728ZE3/X/Yzl6yVSyb8S/wscJHUI048nYAcxiIhU
         Y3PPE0z5hSx40M+dORxlvTa0aBiqulikAAG7XjAFqVga+CGqld+b0pUZcCUJ1mby76RT
         1s5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719340094; x=1719944894;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bfK5oQFXpCisBGUPV0qRGTBcMOIBNALBqfecObZ2uqg=;
        b=FwjHn+Z5ndR6Tkojq5dSD++SxQBSgo271SWOCr+49DJTt6R4qkdGFG1CLEw/l3VQj9
         96fobk7TIIvIiZSgilp/HyhegOdvs69uVH6OMTjTFctpxV6j5J63xfZvxaivw+l0Xisb
         6GIcARSZbhVDBR+wi7OOPW6ZwaruOqpdjrOJhD74VZS/XQ9Ryy3fA+vP+vSDcIdpZzo7
         Q5CX1bdRlNSxRPjm9cPeiXdJjLzd16h3mANXUJL0Pvpf+FmVbpbf3PRQIQEX9o4h4/YQ
         QYrmQgtojxWGSspOMTv/HjppiWL0i0ksq8atYCxi8Z3wc7MgvD2DyiCqdhtaxtWsQ03N
         TTXw==
X-Forwarded-Encrypted: i=1; AJvYcCXi8/zbfXYrxyLcpTrb5CqN8Usxd1EYAMHZhtugOFGzrt97V/B8S7Np3+SEiQpeAM3c7IHF50iCiSQp5THWkCCHW2zdBpApmKFEJA==
X-Gm-Message-State: AOJu0Yxj6l4nU4ZYCzZU/sZCotvJe+AZl9qxN1WaQ8I3etTtoaFRqBRI
	yhK/D13WUXjEHecUZMmjPB84uQ2kaZDz2CL0wiDk/e3y1qOSWJyIHjVteOGKSwQ=
X-Google-Smtp-Source: AGHT+IGYcPfGhxR2qd9lV9RQpT/kfz8AAlMutIlIqRMdGFSuAXPYnXUh75y4GKOhz84HlYitRV3xoA==
X-Received: by 2002:aa7:d3d3:0:b0:57d:4340:7269 with SMTP id 4fb4d7f45d1cf-57d44a302d2mr7098674a12.14.1719340094143;
        Tue, 25 Jun 2024 11:28:14 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d3042fd72sm6323136a12.48.2024.06.25.11.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:28:13 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v4 0/5] Add SMEM-based speedbin matching
Date: Tue, 25 Jun 2024 20:28:05 +0200
Message-Id: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADUMe2YC/22NQQqDMBREryJ/3ZQkaJGueo8ixSSjfqiJJBJax
 Ls3Fbors3oD82ajhMhIdK02isicOPgC9akiO/V+hGBXmLTUtSwRa1jYijRjfqQFcIa9aB1gnTQ
 YJKgsl4iBX4f13hWeOK0hvo+TrL7tz9f89WUlpLDQpr3UulFG3Z7s+xjOIY7U7fv+AdJ3CbG3A
 AAA
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719340091; l=2579;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=q0yzDllR7onfBxBeyrsV8zllafTESKitM/Jyq0s9Emo=;
 b=JpscgSq2npI58xUw7s5ODs4eaHFpU60RrwK7wt+iCLtnc4alqW1yzeSbp4IicnuHW33OHT9cx
 TdPQeojNOYjAao4bhOjQLWkZE7s4MEyzgVdw6s2U2WYiI+bU0eEJuie
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Newer (SM8550+) SoCs don't seem to have a nice speedbin fuse anymore,
but instead rely on a set of combinations of "feature code" (FC) and
"product code" (PC) identifiers to match the bins. This series adds
support for that.

I suppose a qcom/for-soc immutable branch would be in order if we want
to land this in the upcoming cycle.

FWIW I preferred the fuses myself..

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v4:
- Drop applied qcom patches
- Make the fuse/speedbin fields u16 again (as Pcode is unused)
- Add comments explaining why there's only speedbin0 for 8550
- Fix some checkpatch fluff (code style)
- Rebase on next-20240625

Changes in v3:
- Wrap the argument usage in new preprocessor macros in braces (Bjorn)
- Make the SOCINFO_FC_INT_MAX define inclusive, adjust .h and .c (Bjorn)
- Pick up rbs
- Rebase on next-20240605
- Drop the already-applied ("Avoid a nullptr dereference when speedbin
  setting fails")

Changes in v2:
- Separate moving existing and adding new defines
- Fix kerneldoc copypasta
- Remove some wrong comments and defines
- Remove assumed "max" values for PCs and external FCs
- Improve some commit messages
- Return -EOPNOTSUPP instead of -EINVAL when calling p/fcode getters
  on socinfo older than v16
- Drop pcode getters and evaluation (doesn't matter for Adreno on
  non-proto SoCs)
- Rework the speedbin logic to be hopefully saner
- Link to v1: https://lore.kernel.org/r/20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org

---
Konrad Dybcio (5):
      drm/msm/adreno: Implement SMEM-based speed bin
      drm/msm/adreno: Add speedbin data for SM8550 / A740
      drm/msm/adreno: Define A530 speed bins explicitly
      drm/msm/adreno: Redo the speedbin assignment
      arm64: dts: qcom: sm8550: Wire up GPU speed bin & more OPPs

 arch/arm64/boot/dts/qcom/sm8550.dtsi       | 21 +++++++-
 drivers/gpu/drm/msm/adreno/a5xx_catalog.c  |  6 +++
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c      | 34 ------------
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c  |  8 +++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 54 -------------------
 drivers/gpu/drm/msm/adreno/adreno_device.c |  2 +
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    | 84 +++++++++++++++++++++++++++---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  6 ++-
 8 files changed, 118 insertions(+), 97 deletions(-)
---
base-commit: 0fc4bfab2cd45f9acb86c4f04b5191e114e901ed
change-id: 20240404-topic-smem_speedbin-8deecd0bef0e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


