Return-Path: <devicetree+bounces-49521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7DC876CA7
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 23:08:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B5581F21C7E
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512AE5FDAD;
	Fri,  8 Mar 2024 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W7epss16"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61056249E5
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 22:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709935714; cv=none; b=FnqfoAP094CZlFfuSzvrCcEgIAlutXlyS6aur1uSe6VD2aKXiAKW5k8RQL8tOwSz7dzx7k2ydy1TTQs5Lx6XwteFgjDMZVhZT7fJvpuVaZ0FpNe499+qqN3EXqZHQ+yty9kEOHfwHPHbV3NIo+cn+JrYqvzVd7Ege+dNt95OyDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709935714; c=relaxed/simple;
	bh=6hqLrE2kGzcpPPlaLbbol8vDLZeqtCffaioj6zahxA8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Am/GhVT9gY/sgFGl8A2sDfW61+kkKTLPluQoCwlXcG2H5fdBgTrnq5ClPnRzifH8IMcQluKvZqYkL1Gclys83Y6wI5dlRfDFkPSfP3z4OwxgFkzk3S3Q6CuS1D/+t3Sw91623DFqtzYr44cAg0lM2jZrUyvzXKVyhU47L/T1aw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W7epss16; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5132010e5d1so3676352e87.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 14:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709935710; x=1710540510; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=444788bR8YBECKjRiKnANVI+jwd9C5/5ss16HCbJeCs=;
        b=W7epss16OhMlSxauvCOCN3QjqlDzgzdrYthPdAIi58ucs4cZQd+BHwMgUElrUyB3Hc
         gExBPBHj05CUly/jPcZ848GB8cM8TOssgswcE0C4h8890xFhJdMl1YScRplnHwMor19b
         +7lJRHm3ERoLD6lUXaD7WFhiKAj7yUmde8I0seTiz+jCr2YDQXeMnUOQf7bfCt85y4mv
         il9FK2d4Q36bgpvocxPLrIM8mYETklD+XKU2dR5lGo9ZKmR/rwCf5f0eRhJgpZnhHP4b
         GPDeQq0HBx7NTVY3/NgLCxyof3XFGhxxAslGIHJR7iQN0a4tLnRH1Hd9iz4YSNkOO6SV
         Lzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709935710; x=1710540510;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=444788bR8YBECKjRiKnANVI+jwd9C5/5ss16HCbJeCs=;
        b=Gd0vCkjEifeEzQAOBFP5XQp6TljScDhyfJwJDsoycvK+kVs0qqBVFUeFovVYoyeV3Q
         H8Jvm6Z7/JtY5evkVTv82Jog7s8JjT2OtT8TgbDDx9WT96O2eAV/+YQQ7LOeX4Qp+N4R
         geZF6Ii918YL6CgeYaOqt4mderyhHMTMf/QmNZQ08f6Svi1+aHdrtJmadlrdp9eEkDnf
         M12sbjTrUQqZPx+6xLBQ7I2mkwQB+r/nBtbt5elRsA4yON7btPJUOgFyeUCLIA67sVHI
         P01ROyT/oIbc1oa+N024c1a2GhJ73APNziQ++VGEZxpOY0r2esB9hNT0tv18yiKcadRp
         nDKg==
X-Forwarded-Encrypted: i=1; AJvYcCVEi+qYg6kdzEKd7Lx05ywo1X6UmosJCHVFzkk6YkV3o5O+LsuHSZ6Hgsm6KbsJ8Jq/pbgfH8gpWqn+gJjMi8OCc2sK+OWaykXqQw==
X-Gm-Message-State: AOJu0YzkQn23v2nimnhSxP+WMMT39iydvh9+P14ySav2aIsTV/A8+ugm
	OT2a9z6AKawT3PVHjZwWR/qdUS0aXBxAfn+lO0nAN7xZ2iK3H85yzb9zrjH4Elg=
X-Google-Smtp-Source: AGHT+IGfdV0sn6fso7vz9UOJkRQBSyomE8U61mJRksNWd2WuskneuQ8WFl+tp7BYBYK96WxWaFtgLQ==
X-Received: by 2002:ac2:5bd0:0:b0:512:d575:4745 with SMTP id u16-20020ac25bd0000000b00512d5754745mr222889lfn.1.1709935710464;
        Fri, 08 Mar 2024 14:08:30 -0800 (PST)
Received: from [10.167.154.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512020e00b005130ff68b87sm78241lfo.109.2024.03.08.14.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Mar 2024 14:08:30 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/3] QCM2290 LMH
Date: Fri, 08 Mar 2024 23:08:19 +0100
Message-Id: <20240308-topic-rb1_lmh-v1-0-50c60ffe1130@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFOM62UC/x2N0QrCMAwAf2Xk2UDa9UH9FRFpu8wGajdSFWHs3
 xd8vIPjNuiswh2uwwbKX+myNAN3GiCX2J6MMhmDJx9opDO+l1UyanKP+iromOYQKI8XH8GaFDt
 j0thysap9ajW5Ks/y+09u930/AGbD0iJ0AAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, Amit Kucheria <amitk@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, stable@vger.kernel.org, 
 Loic Poulain <loic.poulain@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709935708; l=807;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=6hqLrE2kGzcpPPlaLbbol8vDLZeqtCffaioj6zahxA8=;
 b=a0axESlwZwu80bUuECyc07XfWyvUNwVbZgVKdTsfIs74EWLuM+j4lhtnGG5ZoJ8T/oa+7Ed8C
 WEN6GC92xCXDcwyiBqcfRG8tfAjyqhBfZEsuaXPDebvLzxH5pT/XrdR
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Wire up LMH on QCM2290 and fix a bad bug while at it.

P1-2 for thermal, P3 for qcom

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: thermal: lmh: Add QCM2290 compatible
      thermal: qcom: lmh: Check for SCM avaiability at probe

Loic Poulain (1):
      arm64: dts: qcom: qcm2290: Add LMH node

 Documentation/devicetree/bindings/thermal/qcom-lmh.yaml | 13 +++++++++----
 arch/arm64/boot/dts/qcom/qcm2290.dtsi                   | 14 +++++++++++++-
 drivers/thermal/qcom/lmh.c                              |  3 +++
 3 files changed, 25 insertions(+), 5 deletions(-)
---
base-commit: 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
change-id: 20240308-topic-rb1_lmh-1e0f440c392a

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


